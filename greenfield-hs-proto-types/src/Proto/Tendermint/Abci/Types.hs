{- This file was auto-generated from tendermint/abci/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Tendermint.Abci.Types (
        ABCI(..), CheckTxType(..), CheckTxType(),
        CheckTxType'UnrecognizedValue, CommitInfo(), Event(),
        EventAttribute(), ExecTxResult(), ExtendedCommitInfo(),
        ExtendedVoteInfo(), Misbehavior(), MisbehaviorType(..),
        MisbehaviorType(), MisbehaviorType'UnrecognizedValue, Request(),
        Request'Value(..), _Request'Echo, _Request'Flush, _Request'Info,
        _Request'InitChain, _Request'Query, _Request'CheckTx,
        _Request'Commit, _Request'ListSnapshots, _Request'OfferSnapshot,
        _Request'LoadSnapshotChunk, _Request'ApplySnapshotChunk,
        _Request'PrepareProposal, _Request'ProcessProposal,
        _Request'ExtendVote, _Request'VerifyVoteExtension,
        _Request'FinalizeBlock, RequestApplySnapshotChunk(),
        RequestCheckTx(), RequestCommit(), RequestEcho(),
        RequestExtendVote(), RequestFinalizeBlock(), RequestFlush(),
        RequestInfo(), RequestInitChain(), RequestListSnapshots(),
        RequestLoadSnapshotChunk(), RequestOfferSnapshot(),
        RequestPrepareProposal(), RequestProcessProposal(), RequestQuery(),
        RequestVerifyVoteExtension(), Response(), Response'Value(..),
        _Response'Exception, _Response'Echo, _Response'Flush,
        _Response'Info, _Response'InitChain, _Response'Query,
        _Response'CheckTx, _Response'Commit, _Response'ListSnapshots,
        _Response'OfferSnapshot, _Response'LoadSnapshotChunk,
        _Response'ApplySnapshotChunk, _Response'PrepareProposal,
        _Response'ProcessProposal, _Response'ExtendVote,
        _Response'VerifyVoteExtension, _Response'FinalizeBlock,
        ResponseApplySnapshotChunk(),
        ResponseApplySnapshotChunk'Result(..),
        ResponseApplySnapshotChunk'Result(),
        ResponseApplySnapshotChunk'Result'UnrecognizedValue,
        ResponseCheckTx(), ResponseCommit(), ResponseEcho(),
        ResponseException(), ResponseExtendVote(), ResponseFinalizeBlock(),
        ResponseFlush(), ResponseInfo(), ResponseInitChain(),
        ResponseListSnapshots(), ResponseLoadSnapshotChunk(),
        ResponseOfferSnapshot(), ResponseOfferSnapshot'Result(..),
        ResponseOfferSnapshot'Result(),
        ResponseOfferSnapshot'Result'UnrecognizedValue,
        ResponsePrepareProposal(), ResponseProcessProposal(),
        ResponseProcessProposal'ProposalStatus(..),
        ResponseProcessProposal'ProposalStatus(),
        ResponseProcessProposal'ProposalStatus'UnrecognizedValue,
        ResponseQuery(), ResponseVerifyVoteExtension(),
        ResponseVerifyVoteExtension'VerifyStatus(..),
        ResponseVerifyVoteExtension'VerifyStatus(),
        ResponseVerifyVoteExtension'VerifyStatus'UnrecognizedValue,
        Snapshot(), TxResult(), Validator(), ValidatorUpdate(), VoteInfo()
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
import qualified Proto.Tendermint.Crypto.Keys
import qualified Proto.Tendermint.Crypto.Proof
import qualified Proto.Tendermint.Types.Params
import qualified Proto.Tendermint.Types.Validator
newtype CheckTxType'UnrecognizedValue
  = CheckTxType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data CheckTxType
  = NEW |
    RECHECK |
    CheckTxType'Unrecognized !CheckTxType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum CheckTxType where
  maybeToEnum 0 = Prelude.Just NEW
  maybeToEnum 1 = Prelude.Just RECHECK
  maybeToEnum k
    = Prelude.Just
        (CheckTxType'Unrecognized
           (CheckTxType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum NEW = "NEW"
  showEnum RECHECK = "RECHECK"
  showEnum
    (CheckTxType'Unrecognized (CheckTxType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NEW" = Prelude.Just NEW
    | (Prelude.==) k "RECHECK" = Prelude.Just RECHECK
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded CheckTxType where
  minBound = NEW
  maxBound = RECHECK
instance Prelude.Enum CheckTxType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum CheckTxType: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum NEW = 0
  fromEnum RECHECK = 1
  fromEnum
    (CheckTxType'Unrecognized (CheckTxType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ RECHECK
    = Prelude.error
        "CheckTxType.succ: bad argument RECHECK. This value would be out of bounds."
  succ NEW = RECHECK
  succ (CheckTxType'Unrecognized _)
    = Prelude.error
        "CheckTxType.succ: bad argument: unrecognized value"
  pred NEW
    = Prelude.error
        "CheckTxType.pred: bad argument NEW. This value would be out of bounds."
  pred RECHECK = NEW
  pred (CheckTxType'Unrecognized _)
    = Prelude.error
        "CheckTxType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault CheckTxType where
  fieldDefault = NEW
instance Control.DeepSeq.NFData CheckTxType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.round' @:: Lens' CommitInfo Data.Int.Int32@
         * 'Proto.Tendermint.Abci.Types_Fields.votes' @:: Lens' CommitInfo [VoteInfo]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'votes' @:: Lens' CommitInfo (Data.Vector.Vector VoteInfo)@ -}
data CommitInfo
  = CommitInfo'_constructor {_CommitInfo'round :: !Data.Int.Int32,
                             _CommitInfo'votes :: !(Data.Vector.Vector VoteInfo),
                             _CommitInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommitInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CommitInfo "round" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitInfo'round (\ x__ y__ -> x__ {_CommitInfo'round = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommitInfo "votes" [VoteInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitInfo'votes (\ x__ y__ -> x__ {_CommitInfo'votes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CommitInfo "vec'votes" (Data.Vector.Vector VoteInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommitInfo'votes (\ x__ y__ -> x__ {_CommitInfo'votes = y__}))
        Prelude.id
instance Data.ProtoLens.Message CommitInfo where
  messageName _ = Data.Text.pack "tendermint.abci.CommitInfo"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \CommitInfo\DC2\DC4\n\
      \\ENQround\CAN\SOH \SOH(\ENQR\ENQround\DC25\n\
      \\ENQvotes\CAN\STX \ETX(\v2\EM.tendermint.abci.VoteInfoR\ENQvotesB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        round__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "round"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"round")) ::
              Data.ProtoLens.FieldDescriptor CommitInfo
        votes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "votes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor VoteInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"votes")) ::
              Data.ProtoLens.FieldDescriptor CommitInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, round__field_descriptor),
           (Data.ProtoLens.Tag 2, votes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommitInfo'_unknownFields
        (\ x__ y__ -> x__ {_CommitInfo'_unknownFields = y__})
  defMessage
    = CommitInfo'_constructor
        {_CommitInfo'round = Data.ProtoLens.fieldDefault,
         _CommitInfo'votes = Data.Vector.Generic.empty,
         _CommitInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommitInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld VoteInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser CommitInfo
        loop x mutable'votes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'votes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'votes)
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
                              (Data.ProtoLens.Field.field @"vec'votes") frozen'votes x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "round"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"round") y x)
                                  mutable'votes
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "votes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'votes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'votes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'votes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'votes)
          "CommitInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"round") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'votes") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CommitInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommitInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommitInfo'round x__)
                (Control.DeepSeq.deepseq (_CommitInfo'votes x__) ()))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.type'' @:: Lens' Event Data.Text.Text@
         * 'Proto.Tendermint.Abci.Types_Fields.attributes' @:: Lens' Event [EventAttribute]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'attributes' @:: Lens' Event (Data.Vector.Vector EventAttribute)@ -}
data Event
  = Event'_constructor {_Event'type' :: !Data.Text.Text,
                        _Event'attributes :: !(Data.Vector.Vector EventAttribute),
                        _Event'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Event where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Event "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Event'type' (\ x__ y__ -> x__ {_Event'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Event "attributes" [EventAttribute] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Event'attributes (\ x__ y__ -> x__ {_Event'attributes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Event "vec'attributes" (Data.Vector.Vector EventAttribute) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Event'attributes (\ x__ y__ -> x__ {_Event'attributes = y__}))
        Prelude.id
instance Data.ProtoLens.Message Event where
  messageName _ = Data.Text.pack "tendermint.abci.Event"
  packedMessageDescriptor _
    = "\n\
      \\ENQEvent\DC2\DC2\n\
      \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2]\n\
      \\n\
      \attributes\CAN\STX \ETX(\v2\US.tendermint.abci.EventAttributeR\n\
      \attributesB\FS\200\222\US\NUL\234\222\US\DC4attributes,omitempty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor Event
        attributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor EventAttribute)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"attributes")) ::
              Data.ProtoLens.FieldDescriptor Event
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, attributes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Event'_unknownFields
        (\ x__ y__ -> x__ {_Event'_unknownFields = y__})
  defMessage
    = Event'_constructor
        {_Event'type' = Data.ProtoLens.fieldDefault,
         _Event'attributes = Data.Vector.Generic.empty,
         _Event'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Event
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld EventAttribute
             -> Data.ProtoLens.Encoding.Bytes.Parser Event
        loop x mutable'attributes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'attributes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'attributes)
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
                              (Data.ProtoLens.Field.field @"vec'attributes") frozen'attributes
                              x))
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
                                       "type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                                  mutable'attributes
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "attributes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'attributes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'attributes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'attributes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'attributes)
          "Event"
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
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
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
                      (Data.ProtoLens.Field.field @"vec'attributes") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Event where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Event'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Event'type' x__)
                (Control.DeepSeq.deepseq (_Event'attributes x__) ()))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.key' @:: Lens' EventAttribute Data.Text.Text@
         * 'Proto.Tendermint.Abci.Types_Fields.value' @:: Lens' EventAttribute Data.Text.Text@
         * 'Proto.Tendermint.Abci.Types_Fields.index' @:: Lens' EventAttribute Prelude.Bool@ -}
data EventAttribute
  = EventAttribute'_constructor {_EventAttribute'key :: !Data.Text.Text,
                                 _EventAttribute'value :: !Data.Text.Text,
                                 _EventAttribute'index :: !Prelude.Bool,
                                 _EventAttribute'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventAttribute where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventAttribute "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventAttribute'key (\ x__ y__ -> x__ {_EventAttribute'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventAttribute "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventAttribute'value
           (\ x__ y__ -> x__ {_EventAttribute'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventAttribute "index" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventAttribute'index
           (\ x__ y__ -> x__ {_EventAttribute'index = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventAttribute where
  messageName _ = Data.Text.pack "tendermint.abci.EventAttribute"
  packedMessageDescriptor _
    = "\n\
      \\SOEventAttribute\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue\DC2\DC4\n\
      \\ENQindex\CAN\ETX \SOH(\bR\ENQindex"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor EventAttribute
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor EventAttribute
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor EventAttribute
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor),
           (Data.ProtoLens.Tag 3, index__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventAttribute'_unknownFields
        (\ x__ y__ -> x__ {_EventAttribute'_unknownFields = y__})
  defMessage
    = EventAttribute'_constructor
        {_EventAttribute'key = Data.ProtoLens.fieldDefault,
         _EventAttribute'value = Data.ProtoLens.fieldDefault,
         _EventAttribute'index = Data.ProtoLens.fieldDefault,
         _EventAttribute'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventAttribute
          -> Data.ProtoLens.Encoding.Bytes.Parser EventAttribute
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventAttribute"
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
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData EventAttribute where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventAttribute'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventAttribute'key x__)
                (Control.DeepSeq.deepseq
                   (_EventAttribute'value x__)
                   (Control.DeepSeq.deepseq (_EventAttribute'index x__) ())))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.code' @:: Lens' ExecTxResult Data.Word.Word32@
         * 'Proto.Tendermint.Abci.Types_Fields.data'' @:: Lens' ExecTxResult Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.log' @:: Lens' ExecTxResult Data.Text.Text@
         * 'Proto.Tendermint.Abci.Types_Fields.info' @:: Lens' ExecTxResult Data.Text.Text@
         * 'Proto.Tendermint.Abci.Types_Fields.gasWanted' @:: Lens' ExecTxResult Data.Int.Int64@
         * 'Proto.Tendermint.Abci.Types_Fields.gasUsed' @:: Lens' ExecTxResult Data.Int.Int64@
         * 'Proto.Tendermint.Abci.Types_Fields.events' @:: Lens' ExecTxResult [Event]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'events' @:: Lens' ExecTxResult (Data.Vector.Vector Event)@
         * 'Proto.Tendermint.Abci.Types_Fields.codespace' @:: Lens' ExecTxResult Data.Text.Text@ -}
data ExecTxResult
  = ExecTxResult'_constructor {_ExecTxResult'code :: !Data.Word.Word32,
                               _ExecTxResult'data' :: !Data.ByteString.ByteString,
                               _ExecTxResult'log :: !Data.Text.Text,
                               _ExecTxResult'info :: !Data.Text.Text,
                               _ExecTxResult'gasWanted :: !Data.Int.Int64,
                               _ExecTxResult'gasUsed :: !Data.Int.Int64,
                               _ExecTxResult'events :: !(Data.Vector.Vector Event),
                               _ExecTxResult'codespace :: !Data.Text.Text,
                               _ExecTxResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExecTxResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExecTxResult "code" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExecTxResult'code (\ x__ y__ -> x__ {_ExecTxResult'code = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExecTxResult "data'" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExecTxResult'data' (\ x__ y__ -> x__ {_ExecTxResult'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExecTxResult "log" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExecTxResult'log (\ x__ y__ -> x__ {_ExecTxResult'log = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExecTxResult "info" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExecTxResult'info (\ x__ y__ -> x__ {_ExecTxResult'info = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExecTxResult "gasWanted" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExecTxResult'gasWanted
           (\ x__ y__ -> x__ {_ExecTxResult'gasWanted = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExecTxResult "gasUsed" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExecTxResult'gasUsed
           (\ x__ y__ -> x__ {_ExecTxResult'gasUsed = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExecTxResult "events" [Event] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExecTxResult'events
           (\ x__ y__ -> x__ {_ExecTxResult'events = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ExecTxResult "vec'events" (Data.Vector.Vector Event) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExecTxResult'events
           (\ x__ y__ -> x__ {_ExecTxResult'events = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExecTxResult "codespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExecTxResult'codespace
           (\ x__ y__ -> x__ {_ExecTxResult'codespace = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExecTxResult where
  messageName _ = Data.Text.pack "tendermint.abci.ExecTxResult"
  packedMessageDescriptor _
    = "\n\
      \\fExecTxResult\DC2\DC2\n\
      \\EOTcode\CAN\SOH \SOH(\rR\EOTcode\DC2\DC2\n\
      \\EOTdata\CAN\STX \SOH(\fR\EOTdata\DC2\DLE\n\
      \\ETXlog\CAN\ETX \SOH(\tR\ETXlog\DC2\DC2\n\
      \\EOTinfo\CAN\EOT \SOH(\tR\EOTinfo\DC2\GS\n\
      \\n\
      \gas_wanted\CAN\ENQ \SOH(\ETXR\tgasWanted\DC2\EM\n\
      \\bgas_used\CAN\ACK \SOH(\ETXR\agasUsed\DC2H\n\
      \\ACKevents\CAN\a \ETX(\v2\SYN.tendermint.abci.EventR\ACKeventsB\CAN\200\222\US\NUL\234\222\US\DLEevents,omitempty\DC2\FS\n\
      \\tcodespace\CAN\b \SOH(\tR\tcodespace"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        code__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"code")) ::
              Data.ProtoLens.FieldDescriptor ExecTxResult
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor ExecTxResult
        log__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"log")) ::
              Data.ProtoLens.FieldDescriptor ExecTxResult
        info__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"info")) ::
              Data.ProtoLens.FieldDescriptor ExecTxResult
        gasWanted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gas_wanted"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"gasWanted")) ::
              Data.ProtoLens.FieldDescriptor ExecTxResult
        gasUsed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gas_used"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"gasUsed")) ::
              Data.ProtoLens.FieldDescriptor ExecTxResult
        events__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "events"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Event)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"events")) ::
              Data.ProtoLens.FieldDescriptor ExecTxResult
        codespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "codespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"codespace")) ::
              Data.ProtoLens.FieldDescriptor ExecTxResult
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, code__field_descriptor),
           (Data.ProtoLens.Tag 2, data'__field_descriptor),
           (Data.ProtoLens.Tag 3, log__field_descriptor),
           (Data.ProtoLens.Tag 4, info__field_descriptor),
           (Data.ProtoLens.Tag 5, gasWanted__field_descriptor),
           (Data.ProtoLens.Tag 6, gasUsed__field_descriptor),
           (Data.ProtoLens.Tag 7, events__field_descriptor),
           (Data.ProtoLens.Tag 8, codespace__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExecTxResult'_unknownFields
        (\ x__ y__ -> x__ {_ExecTxResult'_unknownFields = y__})
  defMessage
    = ExecTxResult'_constructor
        {_ExecTxResult'code = Data.ProtoLens.fieldDefault,
         _ExecTxResult'data' = Data.ProtoLens.fieldDefault,
         _ExecTxResult'log = Data.ProtoLens.fieldDefault,
         _ExecTxResult'info = Data.ProtoLens.fieldDefault,
         _ExecTxResult'gasWanted = Data.ProtoLens.fieldDefault,
         _ExecTxResult'gasUsed = Data.ProtoLens.fieldDefault,
         _ExecTxResult'events = Data.Vector.Generic.empty,
         _ExecTxResult'codespace = Data.ProtoLens.fieldDefault,
         _ExecTxResult'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExecTxResult
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Event
             -> Data.ProtoLens.Encoding.Bytes.Parser ExecTxResult
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "code"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y x)
                                  mutable'events
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "data"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                                  mutable'events
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
                                       "log"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"log") y x)
                                  mutable'events
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y x)
                                  mutable'events
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gas_wanted"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gasWanted") y x)
                                  mutable'events
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gas_used"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gasUsed") y x)
                                  mutable'events
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "events"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'events y)
                                loop x v
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "codespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"codespace") y x)
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
          "ExecTxResult"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"code") _x
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
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"log") _x
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
                   ((Data.Monoid.<>)
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"info") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"gasWanted") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"gasUsed") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                        _v))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'events") _x))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"codespace") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8 _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData ExecTxResult where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExecTxResult'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExecTxResult'code x__)
                (Control.DeepSeq.deepseq
                   (_ExecTxResult'data' x__)
                   (Control.DeepSeq.deepseq
                      (_ExecTxResult'log x__)
                      (Control.DeepSeq.deepseq
                         (_ExecTxResult'info x__)
                         (Control.DeepSeq.deepseq
                            (_ExecTxResult'gasWanted x__)
                            (Control.DeepSeq.deepseq
                               (_ExecTxResult'gasUsed x__)
                               (Control.DeepSeq.deepseq
                                  (_ExecTxResult'events x__)
                                  (Control.DeepSeq.deepseq (_ExecTxResult'codespace x__) ()))))))))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.round' @:: Lens' ExtendedCommitInfo Data.Int.Int32@
         * 'Proto.Tendermint.Abci.Types_Fields.votes' @:: Lens' ExtendedCommitInfo [ExtendedVoteInfo]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'votes' @:: Lens' ExtendedCommitInfo (Data.Vector.Vector ExtendedVoteInfo)@ -}
data ExtendedCommitInfo
  = ExtendedCommitInfo'_constructor {_ExtendedCommitInfo'round :: !Data.Int.Int32,
                                     _ExtendedCommitInfo'votes :: !(Data.Vector.Vector ExtendedVoteInfo),
                                     _ExtendedCommitInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExtendedCommitInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExtendedCommitInfo "round" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommitInfo'round
           (\ x__ y__ -> x__ {_ExtendedCommitInfo'round = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtendedCommitInfo "votes" [ExtendedVoteInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommitInfo'votes
           (\ x__ y__ -> x__ {_ExtendedCommitInfo'votes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ExtendedCommitInfo "vec'votes" (Data.Vector.Vector ExtendedVoteInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedCommitInfo'votes
           (\ x__ y__ -> x__ {_ExtendedCommitInfo'votes = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExtendedCommitInfo where
  messageName _ = Data.Text.pack "tendermint.abci.ExtendedCommitInfo"
  packedMessageDescriptor _
    = "\n\
      \\DC2ExtendedCommitInfo\DC2\DC4\n\
      \\ENQround\CAN\SOH \SOH(\ENQR\ENQround\DC2=\n\
      \\ENQvotes\CAN\STX \ETX(\v2!.tendermint.abci.ExtendedVoteInfoR\ENQvotesB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        round__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "round"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"round")) ::
              Data.ProtoLens.FieldDescriptor ExtendedCommitInfo
        votes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "votes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ExtendedVoteInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"votes")) ::
              Data.ProtoLens.FieldDescriptor ExtendedCommitInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, round__field_descriptor),
           (Data.ProtoLens.Tag 2, votes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExtendedCommitInfo'_unknownFields
        (\ x__ y__ -> x__ {_ExtendedCommitInfo'_unknownFields = y__})
  defMessage
    = ExtendedCommitInfo'_constructor
        {_ExtendedCommitInfo'round = Data.ProtoLens.fieldDefault,
         _ExtendedCommitInfo'votes = Data.Vector.Generic.empty,
         _ExtendedCommitInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExtendedCommitInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ExtendedVoteInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser ExtendedCommitInfo
        loop x mutable'votes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'votes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'votes)
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
                              (Data.ProtoLens.Field.field @"vec'votes") frozen'votes x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "round"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"round") y x)
                                  mutable'votes
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "votes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'votes y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'votes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'votes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'votes)
          "ExtendedCommitInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"round") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'votes") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ExtendedCommitInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExtendedCommitInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExtendedCommitInfo'round x__)
                (Control.DeepSeq.deepseq (_ExtendedCommitInfo'votes x__) ()))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.validator' @:: Lens' ExtendedVoteInfo Validator@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'validator' @:: Lens' ExtendedVoteInfo (Prelude.Maybe Validator)@
         * 'Proto.Tendermint.Abci.Types_Fields.voteExtension' @:: Lens' ExtendedVoteInfo Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.extensionSignature' @:: Lens' ExtendedVoteInfo Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.blockIdFlag' @:: Lens' ExtendedVoteInfo Proto.Tendermint.Types.Validator.BlockIDFlag@ -}
data ExtendedVoteInfo
  = ExtendedVoteInfo'_constructor {_ExtendedVoteInfo'validator :: !(Prelude.Maybe Validator),
                                   _ExtendedVoteInfo'voteExtension :: !Data.ByteString.ByteString,
                                   _ExtendedVoteInfo'extensionSignature :: !Data.ByteString.ByteString,
                                   _ExtendedVoteInfo'blockIdFlag :: !Proto.Tendermint.Types.Validator.BlockIDFlag,
                                   _ExtendedVoteInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ExtendedVoteInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ExtendedVoteInfo "validator" Validator where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedVoteInfo'validator
           (\ x__ y__ -> x__ {_ExtendedVoteInfo'validator = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ExtendedVoteInfo "maybe'validator" (Prelude.Maybe Validator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedVoteInfo'validator
           (\ x__ y__ -> x__ {_ExtendedVoteInfo'validator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtendedVoteInfo "voteExtension" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedVoteInfo'voteExtension
           (\ x__ y__ -> x__ {_ExtendedVoteInfo'voteExtension = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtendedVoteInfo "extensionSignature" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedVoteInfo'extensionSignature
           (\ x__ y__ -> x__ {_ExtendedVoteInfo'extensionSignature = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ExtendedVoteInfo "blockIdFlag" Proto.Tendermint.Types.Validator.BlockIDFlag where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ExtendedVoteInfo'blockIdFlag
           (\ x__ y__ -> x__ {_ExtendedVoteInfo'blockIdFlag = y__}))
        Prelude.id
instance Data.ProtoLens.Message ExtendedVoteInfo where
  messageName _ = Data.Text.pack "tendermint.abci.ExtendedVoteInfo"
  packedMessageDescriptor _
    = "\n\
      \\DLEExtendedVoteInfo\DC2>\n\
      \\tvalidator\CAN\SOH \SOH(\v2\SUB.tendermint.abci.ValidatorR\tvalidatorB\EOT\200\222\US\NUL\DC2%\n\
      \\SOvote_extension\CAN\ETX \SOH(\fR\rvoteExtension\DC2/\n\
      \\DC3extension_signature\CAN\EOT \SOH(\fR\DC2extensionSignature\DC2A\n\
      \\rblock_id_flag\CAN\ENQ \SOH(\SO2\GS.tendermint.types.BlockIDFlagR\vblockIdFlagJ\EOT\b\STX\DLE\ETX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Validator)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validator")) ::
              Data.ProtoLens.FieldDescriptor ExtendedVoteInfo
        voteExtension__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vote_extension"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"voteExtension")) ::
              Data.ProtoLens.FieldDescriptor ExtendedVoteInfo
        extensionSignature__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extension_signature"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"extensionSignature")) ::
              Data.ProtoLens.FieldDescriptor ExtendedVoteInfo
        blockIdFlag__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_id_flag"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Validator.BlockIDFlag)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blockIdFlag")) ::
              Data.ProtoLens.FieldDescriptor ExtendedVoteInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validator__field_descriptor),
           (Data.ProtoLens.Tag 3, voteExtension__field_descriptor),
           (Data.ProtoLens.Tag 4, extensionSignature__field_descriptor),
           (Data.ProtoLens.Tag 5, blockIdFlag__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ExtendedVoteInfo'_unknownFields
        (\ x__ y__ -> x__ {_ExtendedVoteInfo'_unknownFields = y__})
  defMessage
    = ExtendedVoteInfo'_constructor
        {_ExtendedVoteInfo'validator = Prelude.Nothing,
         _ExtendedVoteInfo'voteExtension = Data.ProtoLens.fieldDefault,
         _ExtendedVoteInfo'extensionSignature = Data.ProtoLens.fieldDefault,
         _ExtendedVoteInfo'blockIdFlag = Data.ProtoLens.fieldDefault,
         _ExtendedVoteInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ExtendedVoteInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser ExtendedVoteInfo
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
                                       "validator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"validator") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "vote_extension"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"voteExtension") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "extension_signature"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"extensionSignature") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "block_id_flag"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"blockIdFlag") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ExtendedVoteInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'validator") _x
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"voteExtension") _x
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
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"extensionSignature") _x
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"blockIdFlag") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                               ((Prelude..)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  Prelude.fromEnum _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ExtendedVoteInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ExtendedVoteInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ExtendedVoteInfo'validator x__)
                (Control.DeepSeq.deepseq
                   (_ExtendedVoteInfo'voteExtension x__)
                   (Control.DeepSeq.deepseq
                      (_ExtendedVoteInfo'extensionSignature x__)
                      (Control.DeepSeq.deepseq (_ExtendedVoteInfo'blockIdFlag x__) ()))))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.type'' @:: Lens' Misbehavior MisbehaviorType@
         * 'Proto.Tendermint.Abci.Types_Fields.validator' @:: Lens' Misbehavior Validator@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'validator' @:: Lens' Misbehavior (Prelude.Maybe Validator)@
         * 'Proto.Tendermint.Abci.Types_Fields.height' @:: Lens' Misbehavior Data.Int.Int64@
         * 'Proto.Tendermint.Abci.Types_Fields.time' @:: Lens' Misbehavior Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'time' @:: Lens' Misbehavior (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Tendermint.Abci.Types_Fields.totalVotingPower' @:: Lens' Misbehavior Data.Int.Int64@ -}
data Misbehavior
  = Misbehavior'_constructor {_Misbehavior'type' :: !MisbehaviorType,
                              _Misbehavior'validator :: !(Prelude.Maybe Validator),
                              _Misbehavior'height :: !Data.Int.Int64,
                              _Misbehavior'time :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                              _Misbehavior'totalVotingPower :: !Data.Int.Int64,
                              _Misbehavior'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Misbehavior where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Misbehavior "type'" MisbehaviorType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Misbehavior'type' (\ x__ y__ -> x__ {_Misbehavior'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Misbehavior "validator" Validator where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Misbehavior'validator
           (\ x__ y__ -> x__ {_Misbehavior'validator = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Misbehavior "maybe'validator" (Prelude.Maybe Validator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Misbehavior'validator
           (\ x__ y__ -> x__ {_Misbehavior'validator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Misbehavior "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Misbehavior'height (\ x__ y__ -> x__ {_Misbehavior'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Misbehavior "time" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Misbehavior'time (\ x__ y__ -> x__ {_Misbehavior'time = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Misbehavior "maybe'time" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Misbehavior'time (\ x__ y__ -> x__ {_Misbehavior'time = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Misbehavior "totalVotingPower" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Misbehavior'totalVotingPower
           (\ x__ y__ -> x__ {_Misbehavior'totalVotingPower = y__}))
        Prelude.id
instance Data.ProtoLens.Message Misbehavior where
  messageName _ = Data.Text.pack "tendermint.abci.Misbehavior"
  packedMessageDescriptor _
    = "\n\
      \\vMisbehavior\DC24\n\
      \\EOTtype\CAN\SOH \SOH(\SO2 .tendermint.abci.MisbehaviorTypeR\EOTtype\DC2>\n\
      \\tvalidator\CAN\STX \SOH(\v2\SUB.tendermint.abci.ValidatorR\tvalidatorB\EOT\200\222\US\NUL\DC2\SYN\n\
      \\ACKheight\CAN\ETX \SOH(\ETXR\ACKheight\DC28\n\
      \\EOTtime\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\b\200\222\US\NUL\144\223\US\SOH\DC2,\n\
      \\DC2total_voting_power\CAN\ENQ \SOH(\ETXR\DLEtotalVotingPower"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor MisbehaviorType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor Misbehavior
        validator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Validator)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validator")) ::
              Data.ProtoLens.FieldDescriptor Misbehavior
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor Misbehavior
        time__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'time")) ::
              Data.ProtoLens.FieldDescriptor Misbehavior
        totalVotingPower__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_voting_power"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalVotingPower")) ::
              Data.ProtoLens.FieldDescriptor Misbehavior
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, validator__field_descriptor),
           (Data.ProtoLens.Tag 3, height__field_descriptor),
           (Data.ProtoLens.Tag 4, time__field_descriptor),
           (Data.ProtoLens.Tag 5, totalVotingPower__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Misbehavior'_unknownFields
        (\ x__ y__ -> x__ {_Misbehavior'_unknownFields = y__})
  defMessage
    = Misbehavior'_constructor
        {_Misbehavior'type' = Data.ProtoLens.fieldDefault,
         _Misbehavior'validator = Prelude.Nothing,
         _Misbehavior'height = Data.ProtoLens.fieldDefault,
         _Misbehavior'time = Prelude.Nothing,
         _Misbehavior'totalVotingPower = Data.ProtoLens.fieldDefault,
         _Misbehavior'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Misbehavior -> Data.ProtoLens.Encoding.Bytes.Parser Misbehavior
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "validator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"validator") y x)
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
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "total_voting_power"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalVotingPower") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Misbehavior"
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'validator") _x
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
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"totalVotingPower") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Misbehavior where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Misbehavior'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Misbehavior'type' x__)
                (Control.DeepSeq.deepseq
                   (_Misbehavior'validator x__)
                   (Control.DeepSeq.deepseq
                      (_Misbehavior'height x__)
                      (Control.DeepSeq.deepseq
                         (_Misbehavior'time x__)
                         (Control.DeepSeq.deepseq
                            (_Misbehavior'totalVotingPower x__) ())))))
newtype MisbehaviorType'UnrecognizedValue
  = MisbehaviorType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data MisbehaviorType
  = UNKNOWN |
    DUPLICATE_VOTE |
    LIGHT_CLIENT_ATTACK |
    MisbehaviorType'Unrecognized !MisbehaviorType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum MisbehaviorType where
  maybeToEnum 0 = Prelude.Just UNKNOWN
  maybeToEnum 1 = Prelude.Just DUPLICATE_VOTE
  maybeToEnum 2 = Prelude.Just LIGHT_CLIENT_ATTACK
  maybeToEnum k
    = Prelude.Just
        (MisbehaviorType'Unrecognized
           (MisbehaviorType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum UNKNOWN = "UNKNOWN"
  showEnum DUPLICATE_VOTE = "DUPLICATE_VOTE"
  showEnum LIGHT_CLIENT_ATTACK = "LIGHT_CLIENT_ATTACK"
  showEnum
    (MisbehaviorType'Unrecognized (MisbehaviorType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNKNOWN" = Prelude.Just UNKNOWN
    | (Prelude.==) k "DUPLICATE_VOTE" = Prelude.Just DUPLICATE_VOTE
    | (Prelude.==) k "LIGHT_CLIENT_ATTACK"
    = Prelude.Just LIGHT_CLIENT_ATTACK
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded MisbehaviorType where
  minBound = UNKNOWN
  maxBound = LIGHT_CLIENT_ATTACK
instance Prelude.Enum MisbehaviorType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum MisbehaviorType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum UNKNOWN = 0
  fromEnum DUPLICATE_VOTE = 1
  fromEnum LIGHT_CLIENT_ATTACK = 2
  fromEnum
    (MisbehaviorType'Unrecognized (MisbehaviorType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ LIGHT_CLIENT_ATTACK
    = Prelude.error
        "MisbehaviorType.succ: bad argument LIGHT_CLIENT_ATTACK. This value would be out of bounds."
  succ UNKNOWN = DUPLICATE_VOTE
  succ DUPLICATE_VOTE = LIGHT_CLIENT_ATTACK
  succ (MisbehaviorType'Unrecognized _)
    = Prelude.error
        "MisbehaviorType.succ: bad argument: unrecognized value"
  pred UNKNOWN
    = Prelude.error
        "MisbehaviorType.pred: bad argument UNKNOWN. This value would be out of bounds."
  pred DUPLICATE_VOTE = UNKNOWN
  pred LIGHT_CLIENT_ATTACK = DUPLICATE_VOTE
  pred (MisbehaviorType'Unrecognized _)
    = Prelude.error
        "MisbehaviorType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault MisbehaviorType where
  fieldDefault = UNKNOWN
instance Control.DeepSeq.NFData MisbehaviorType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'value' @:: Lens' Request (Prelude.Maybe Request'Value)@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'echo' @:: Lens' Request (Prelude.Maybe RequestEcho)@
         * 'Proto.Tendermint.Abci.Types_Fields.echo' @:: Lens' Request RequestEcho@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'flush' @:: Lens' Request (Prelude.Maybe RequestFlush)@
         * 'Proto.Tendermint.Abci.Types_Fields.flush' @:: Lens' Request RequestFlush@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'info' @:: Lens' Request (Prelude.Maybe RequestInfo)@
         * 'Proto.Tendermint.Abci.Types_Fields.info' @:: Lens' Request RequestInfo@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'initChain' @:: Lens' Request (Prelude.Maybe RequestInitChain)@
         * 'Proto.Tendermint.Abci.Types_Fields.initChain' @:: Lens' Request RequestInitChain@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'query' @:: Lens' Request (Prelude.Maybe RequestQuery)@
         * 'Proto.Tendermint.Abci.Types_Fields.query' @:: Lens' Request RequestQuery@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'checkTx' @:: Lens' Request (Prelude.Maybe RequestCheckTx)@
         * 'Proto.Tendermint.Abci.Types_Fields.checkTx' @:: Lens' Request RequestCheckTx@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'commit' @:: Lens' Request (Prelude.Maybe RequestCommit)@
         * 'Proto.Tendermint.Abci.Types_Fields.commit' @:: Lens' Request RequestCommit@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'listSnapshots' @:: Lens' Request (Prelude.Maybe RequestListSnapshots)@
         * 'Proto.Tendermint.Abci.Types_Fields.listSnapshots' @:: Lens' Request RequestListSnapshots@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'offerSnapshot' @:: Lens' Request (Prelude.Maybe RequestOfferSnapshot)@
         * 'Proto.Tendermint.Abci.Types_Fields.offerSnapshot' @:: Lens' Request RequestOfferSnapshot@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'loadSnapshotChunk' @:: Lens' Request (Prelude.Maybe RequestLoadSnapshotChunk)@
         * 'Proto.Tendermint.Abci.Types_Fields.loadSnapshotChunk' @:: Lens' Request RequestLoadSnapshotChunk@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'applySnapshotChunk' @:: Lens' Request (Prelude.Maybe RequestApplySnapshotChunk)@
         * 'Proto.Tendermint.Abci.Types_Fields.applySnapshotChunk' @:: Lens' Request RequestApplySnapshotChunk@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'prepareProposal' @:: Lens' Request (Prelude.Maybe RequestPrepareProposal)@
         * 'Proto.Tendermint.Abci.Types_Fields.prepareProposal' @:: Lens' Request RequestPrepareProposal@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'processProposal' @:: Lens' Request (Prelude.Maybe RequestProcessProposal)@
         * 'Proto.Tendermint.Abci.Types_Fields.processProposal' @:: Lens' Request RequestProcessProposal@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'extendVote' @:: Lens' Request (Prelude.Maybe RequestExtendVote)@
         * 'Proto.Tendermint.Abci.Types_Fields.extendVote' @:: Lens' Request RequestExtendVote@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'verifyVoteExtension' @:: Lens' Request (Prelude.Maybe RequestVerifyVoteExtension)@
         * 'Proto.Tendermint.Abci.Types_Fields.verifyVoteExtension' @:: Lens' Request RequestVerifyVoteExtension@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'finalizeBlock' @:: Lens' Request (Prelude.Maybe RequestFinalizeBlock)@
         * 'Proto.Tendermint.Abci.Types_Fields.finalizeBlock' @:: Lens' Request RequestFinalizeBlock@ -}
data Request
  = Request'_constructor {_Request'value :: !(Prelude.Maybe Request'Value),
                          _Request'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Request where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Request'Value
  = Request'Echo !RequestEcho |
    Request'Flush !RequestFlush |
    Request'Info !RequestInfo |
    Request'InitChain !RequestInitChain |
    Request'Query !RequestQuery |
    Request'CheckTx !RequestCheckTx |
    Request'Commit !RequestCommit |
    Request'ListSnapshots !RequestListSnapshots |
    Request'OfferSnapshot !RequestOfferSnapshot |
    Request'LoadSnapshotChunk !RequestLoadSnapshotChunk |
    Request'ApplySnapshotChunk !RequestApplySnapshotChunk |
    Request'PrepareProposal !RequestPrepareProposal |
    Request'ProcessProposal !RequestProcessProposal |
    Request'ExtendVote !RequestExtendVote |
    Request'VerifyVoteExtension !RequestVerifyVoteExtension |
    Request'FinalizeBlock !RequestFinalizeBlock
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Request "maybe'value" (Prelude.Maybe Request'Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Request "maybe'echo" (Prelude.Maybe RequestEcho) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'Echo x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'Echo y__))
instance Data.ProtoLens.Field.HasField Request "echo" RequestEcho where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'Echo x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'Echo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'flush" (Prelude.Maybe RequestFlush) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'Flush x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'Flush y__))
instance Data.ProtoLens.Field.HasField Request "flush" RequestFlush where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'Flush x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'Flush y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'info" (Prelude.Maybe RequestInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'Info x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'Info y__))
instance Data.ProtoLens.Field.HasField Request "info" RequestInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'Info x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'Info y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'initChain" (Prelude.Maybe RequestInitChain) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'InitChain x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'InitChain y__))
instance Data.ProtoLens.Field.HasField Request "initChain" RequestInitChain where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'InitChain x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'InitChain y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'query" (Prelude.Maybe RequestQuery) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'Query x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'Query y__))
instance Data.ProtoLens.Field.HasField Request "query" RequestQuery where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'Query x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'Query y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'checkTx" (Prelude.Maybe RequestCheckTx) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'CheckTx x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'CheckTx y__))
instance Data.ProtoLens.Field.HasField Request "checkTx" RequestCheckTx where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'CheckTx x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'CheckTx y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'commit" (Prelude.Maybe RequestCommit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'Commit x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'Commit y__))
instance Data.ProtoLens.Field.HasField Request "commit" RequestCommit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'Commit x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'Commit y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'listSnapshots" (Prelude.Maybe RequestListSnapshots) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'ListSnapshots x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'ListSnapshots y__))
instance Data.ProtoLens.Field.HasField Request "listSnapshots" RequestListSnapshots where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'ListSnapshots x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'ListSnapshots y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'offerSnapshot" (Prelude.Maybe RequestOfferSnapshot) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'OfferSnapshot x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'OfferSnapshot y__))
instance Data.ProtoLens.Field.HasField Request "offerSnapshot" RequestOfferSnapshot where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'OfferSnapshot x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'OfferSnapshot y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'loadSnapshotChunk" (Prelude.Maybe RequestLoadSnapshotChunk) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'LoadSnapshotChunk x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'LoadSnapshotChunk y__))
instance Data.ProtoLens.Field.HasField Request "loadSnapshotChunk" RequestLoadSnapshotChunk where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'LoadSnapshotChunk x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'LoadSnapshotChunk y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'applySnapshotChunk" (Prelude.Maybe RequestApplySnapshotChunk) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'ApplySnapshotChunk x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'ApplySnapshotChunk y__))
instance Data.ProtoLens.Field.HasField Request "applySnapshotChunk" RequestApplySnapshotChunk where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'ApplySnapshotChunk x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'ApplySnapshotChunk y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'prepareProposal" (Prelude.Maybe RequestPrepareProposal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'PrepareProposal x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'PrepareProposal y__))
instance Data.ProtoLens.Field.HasField Request "prepareProposal" RequestPrepareProposal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'PrepareProposal x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'PrepareProposal y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'processProposal" (Prelude.Maybe RequestProcessProposal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'ProcessProposal x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'ProcessProposal y__))
instance Data.ProtoLens.Field.HasField Request "processProposal" RequestProcessProposal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'ProcessProposal x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'ProcessProposal y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'extendVote" (Prelude.Maybe RequestExtendVote) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'ExtendVote x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'ExtendVote y__))
instance Data.ProtoLens.Field.HasField Request "extendVote" RequestExtendVote where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'ExtendVote x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'ExtendVote y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'verifyVoteExtension" (Prelude.Maybe RequestVerifyVoteExtension) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'VerifyVoteExtension x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'VerifyVoteExtension y__))
instance Data.ProtoLens.Field.HasField Request "verifyVoteExtension" RequestVerifyVoteExtension where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'VerifyVoteExtension x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'VerifyVoteExtension y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Request "maybe'finalizeBlock" (Prelude.Maybe RequestFinalizeBlock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Request'FinalizeBlock x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Request'FinalizeBlock y__))
instance Data.ProtoLens.Field.HasField Request "finalizeBlock" RequestFinalizeBlock where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Request'value (\ x__ y__ -> x__ {_Request'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Request'FinalizeBlock x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Request'FinalizeBlock y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Request where
  messageName _ = Data.Text.pack "tendermint.abci.Request"
  packedMessageDescriptor _
    = "\n\
      \\aRequest\DC22\n\
      \\EOTecho\CAN\SOH \SOH(\v2\FS.tendermint.abci.RequestEchoH\NULR\EOTecho\DC25\n\
      \\ENQflush\CAN\STX \SOH(\v2\GS.tendermint.abci.RequestFlushH\NULR\ENQflush\DC22\n\
      \\EOTinfo\CAN\ETX \SOH(\v2\FS.tendermint.abci.RequestInfoH\NULR\EOTinfo\DC2B\n\
      \\n\
      \init_chain\CAN\ENQ \SOH(\v2!.tendermint.abci.RequestInitChainH\NULR\tinitChain\DC25\n\
      \\ENQquery\CAN\ACK \SOH(\v2\GS.tendermint.abci.RequestQueryH\NULR\ENQquery\DC2<\n\
      \\bcheck_tx\CAN\b \SOH(\v2\US.tendermint.abci.RequestCheckTxH\NULR\acheckTx\DC28\n\
      \\ACKcommit\CAN\v \SOH(\v2\RS.tendermint.abci.RequestCommitH\NULR\ACKcommit\DC2N\n\
      \\SOlist_snapshots\CAN\f \SOH(\v2%.tendermint.abci.RequestListSnapshotsH\NULR\rlistSnapshots\DC2N\n\
      \\SOoffer_snapshot\CAN\r \SOH(\v2%.tendermint.abci.RequestOfferSnapshotH\NULR\rofferSnapshot\DC2[\n\
      \\DC3load_snapshot_chunk\CAN\SO \SOH(\v2).tendermint.abci.RequestLoadSnapshotChunkH\NULR\DC1loadSnapshotChunk\DC2^\n\
      \\DC4apply_snapshot_chunk\CAN\SI \SOH(\v2*.tendermint.abci.RequestApplySnapshotChunkH\NULR\DC2applySnapshotChunk\DC2T\n\
      \\DLEprepare_proposal\CAN\DLE \SOH(\v2'.tendermint.abci.RequestPrepareProposalH\NULR\SIprepareProposal\DC2T\n\
      \\DLEprocess_proposal\CAN\DC1 \SOH(\v2'.tendermint.abci.RequestProcessProposalH\NULR\SIprocessProposal\DC2E\n\
      \\vextend_vote\CAN\DC2 \SOH(\v2\".tendermint.abci.RequestExtendVoteH\NULR\n\
      \extendVote\DC2a\n\
      \\NAKverify_vote_extension\CAN\DC3 \SOH(\v2+.tendermint.abci.RequestVerifyVoteExtensionH\NULR\DC3verifyVoteExtension\DC2N\n\
      \\SOfinalize_block\CAN\DC4 \SOH(\v2%.tendermint.abci.RequestFinalizeBlockH\NULR\rfinalizeBlockB\a\n\
      \\ENQvalueJ\EOT\b\EOT\DLE\ENQJ\EOT\b\a\DLE\bJ\EOT\b\t\DLE\n\
      \J\EOT\b\n\
      \\DLE\v"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        echo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "echo"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestEcho)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'echo")) ::
              Data.ProtoLens.FieldDescriptor Request
        flush__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flush"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestFlush)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flush")) ::
              Data.ProtoLens.FieldDescriptor Request
        info__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'info")) ::
              Data.ProtoLens.FieldDescriptor Request
        initChain__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "init_chain"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestInitChain)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'initChain")) ::
              Data.ProtoLens.FieldDescriptor Request
        query__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "query"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestQuery)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'query")) ::
              Data.ProtoLens.FieldDescriptor Request
        checkTx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "check_tx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestCheckTx)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'checkTx")) ::
              Data.ProtoLens.FieldDescriptor Request
        commit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestCommit)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commit")) ::
              Data.ProtoLens.FieldDescriptor Request
        listSnapshots__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "list_snapshots"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestListSnapshots)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listSnapshots")) ::
              Data.ProtoLens.FieldDescriptor Request
        offerSnapshot__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "offer_snapshot"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestOfferSnapshot)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'offerSnapshot")) ::
              Data.ProtoLens.FieldDescriptor Request
        loadSnapshotChunk__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "load_snapshot_chunk"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestLoadSnapshotChunk)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'loadSnapshotChunk")) ::
              Data.ProtoLens.FieldDescriptor Request
        applySnapshotChunk__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "apply_snapshot_chunk"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestApplySnapshotChunk)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'applySnapshotChunk")) ::
              Data.ProtoLens.FieldDescriptor Request
        prepareProposal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prepare_proposal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestPrepareProposal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prepareProposal")) ::
              Data.ProtoLens.FieldDescriptor Request
        processProposal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "process_proposal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestProcessProposal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'processProposal")) ::
              Data.ProtoLens.FieldDescriptor Request
        extendVote__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extend_vote"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestExtendVote)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'extendVote")) ::
              Data.ProtoLens.FieldDescriptor Request
        verifyVoteExtension__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "verify_vote_extension"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestVerifyVoteExtension)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'verifyVoteExtension")) ::
              Data.ProtoLens.FieldDescriptor Request
        finalizeBlock__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "finalize_block"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RequestFinalizeBlock)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'finalizeBlock")) ::
              Data.ProtoLens.FieldDescriptor Request
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, echo__field_descriptor),
           (Data.ProtoLens.Tag 2, flush__field_descriptor),
           (Data.ProtoLens.Tag 3, info__field_descriptor),
           (Data.ProtoLens.Tag 5, initChain__field_descriptor),
           (Data.ProtoLens.Tag 6, query__field_descriptor),
           (Data.ProtoLens.Tag 8, checkTx__field_descriptor),
           (Data.ProtoLens.Tag 11, commit__field_descriptor),
           (Data.ProtoLens.Tag 12, listSnapshots__field_descriptor),
           (Data.ProtoLens.Tag 13, offerSnapshot__field_descriptor),
           (Data.ProtoLens.Tag 14, loadSnapshotChunk__field_descriptor),
           (Data.ProtoLens.Tag 15, applySnapshotChunk__field_descriptor),
           (Data.ProtoLens.Tag 16, prepareProposal__field_descriptor),
           (Data.ProtoLens.Tag 17, processProposal__field_descriptor),
           (Data.ProtoLens.Tag 18, extendVote__field_descriptor),
           (Data.ProtoLens.Tag 19, verifyVoteExtension__field_descriptor),
           (Data.ProtoLens.Tag 20, finalizeBlock__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Request'_unknownFields
        (\ x__ y__ -> x__ {_Request'_unknownFields = y__})
  defMessage
    = Request'_constructor
        {_Request'value = Prelude.Nothing, _Request'_unknownFields = []}
  parseMessage
    = let
        loop :: Request -> Data.ProtoLens.Encoding.Bytes.Parser Request
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
                                       "echo"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"echo") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "flush"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flush") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "info"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "init_chain"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"initChain") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "query"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"query") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "check_tx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"checkTx") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "commit"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"commit") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "list_snapshots"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"listSnapshots") y x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "offer_snapshot"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"offerSnapshot") y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "load_snapshot_chunk"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"loadSnapshotChunk") y x)
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "apply_snapshot_chunk"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"applySnapshotChunk") y x)
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "prepare_proposal"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"prepareProposal") y x)
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "process_proposal"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"processProposal") y x)
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "extend_vote"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"extendVote") y x)
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "verify_vote_extension"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"verifyVoteExtension") y x)
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "finalize_block"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"finalizeBlock") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Request"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Request'Echo v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Request'Flush v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Request'Info v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Request'InitChain v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Request'Query v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Request'CheckTx v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Request'Commit v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Request'ListSnapshots v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Request'OfferSnapshot v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Request'LoadSnapshotChunk v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 114)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Request'ApplySnapshotChunk v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 122)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Request'PrepareProposal v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 130)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Request'ProcessProposal v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 138)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Request'ExtendVote v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 146)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Request'VerifyVoteExtension v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 154)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Request'FinalizeBlock v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 162)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Request where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Request'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Request'value x__) ())
instance Control.DeepSeq.NFData Request'Value where
  rnf (Request'Echo x__) = Control.DeepSeq.rnf x__
  rnf (Request'Flush x__) = Control.DeepSeq.rnf x__
  rnf (Request'Info x__) = Control.DeepSeq.rnf x__
  rnf (Request'InitChain x__) = Control.DeepSeq.rnf x__
  rnf (Request'Query x__) = Control.DeepSeq.rnf x__
  rnf (Request'CheckTx x__) = Control.DeepSeq.rnf x__
  rnf (Request'Commit x__) = Control.DeepSeq.rnf x__
  rnf (Request'ListSnapshots x__) = Control.DeepSeq.rnf x__
  rnf (Request'OfferSnapshot x__) = Control.DeepSeq.rnf x__
  rnf (Request'LoadSnapshotChunk x__) = Control.DeepSeq.rnf x__
  rnf (Request'ApplySnapshotChunk x__) = Control.DeepSeq.rnf x__
  rnf (Request'PrepareProposal x__) = Control.DeepSeq.rnf x__
  rnf (Request'ProcessProposal x__) = Control.DeepSeq.rnf x__
  rnf (Request'ExtendVote x__) = Control.DeepSeq.rnf x__
  rnf (Request'VerifyVoteExtension x__) = Control.DeepSeq.rnf x__
  rnf (Request'FinalizeBlock x__) = Control.DeepSeq.rnf x__
_Request'Echo ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestEcho
_Request'Echo
  = Data.ProtoLens.Prism.prism'
      Request'Echo
      (\ p__
         -> case p__ of
              (Request'Echo p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'Flush ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestFlush
_Request'Flush
  = Data.ProtoLens.Prism.prism'
      Request'Flush
      (\ p__
         -> case p__ of
              (Request'Flush p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'Info ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestInfo
_Request'Info
  = Data.ProtoLens.Prism.prism'
      Request'Info
      (\ p__
         -> case p__ of
              (Request'Info p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'InitChain ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestInitChain
_Request'InitChain
  = Data.ProtoLens.Prism.prism'
      Request'InitChain
      (\ p__
         -> case p__ of
              (Request'InitChain p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'Query ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestQuery
_Request'Query
  = Data.ProtoLens.Prism.prism'
      Request'Query
      (\ p__
         -> case p__ of
              (Request'Query p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'CheckTx ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestCheckTx
_Request'CheckTx
  = Data.ProtoLens.Prism.prism'
      Request'CheckTx
      (\ p__
         -> case p__ of
              (Request'CheckTx p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'Commit ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestCommit
_Request'Commit
  = Data.ProtoLens.Prism.prism'
      Request'Commit
      (\ p__
         -> case p__ of
              (Request'Commit p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'ListSnapshots ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestListSnapshots
_Request'ListSnapshots
  = Data.ProtoLens.Prism.prism'
      Request'ListSnapshots
      (\ p__
         -> case p__ of
              (Request'ListSnapshots p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'OfferSnapshot ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestOfferSnapshot
_Request'OfferSnapshot
  = Data.ProtoLens.Prism.prism'
      Request'OfferSnapshot
      (\ p__
         -> case p__ of
              (Request'OfferSnapshot p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'LoadSnapshotChunk ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestLoadSnapshotChunk
_Request'LoadSnapshotChunk
  = Data.ProtoLens.Prism.prism'
      Request'LoadSnapshotChunk
      (\ p__
         -> case p__ of
              (Request'LoadSnapshotChunk p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'ApplySnapshotChunk ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestApplySnapshotChunk
_Request'ApplySnapshotChunk
  = Data.ProtoLens.Prism.prism'
      Request'ApplySnapshotChunk
      (\ p__
         -> case p__ of
              (Request'ApplySnapshotChunk p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'PrepareProposal ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestPrepareProposal
_Request'PrepareProposal
  = Data.ProtoLens.Prism.prism'
      Request'PrepareProposal
      (\ p__
         -> case p__ of
              (Request'PrepareProposal p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'ProcessProposal ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestProcessProposal
_Request'ProcessProposal
  = Data.ProtoLens.Prism.prism'
      Request'ProcessProposal
      (\ p__
         -> case p__ of
              (Request'ProcessProposal p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'ExtendVote ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestExtendVote
_Request'ExtendVote
  = Data.ProtoLens.Prism.prism'
      Request'ExtendVote
      (\ p__
         -> case p__ of
              (Request'ExtendVote p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'VerifyVoteExtension ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestVerifyVoteExtension
_Request'VerifyVoteExtension
  = Data.ProtoLens.Prism.prism'
      Request'VerifyVoteExtension
      (\ p__
         -> case p__ of
              (Request'VerifyVoteExtension p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Request'FinalizeBlock ::
  Data.ProtoLens.Prism.Prism' Request'Value RequestFinalizeBlock
_Request'FinalizeBlock
  = Data.ProtoLens.Prism.prism'
      Request'FinalizeBlock
      (\ p__
         -> case p__ of
              (Request'FinalizeBlock p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.index' @:: Lens' RequestApplySnapshotChunk Data.Word.Word32@
         * 'Proto.Tendermint.Abci.Types_Fields.chunk' @:: Lens' RequestApplySnapshotChunk Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.sender' @:: Lens' RequestApplySnapshotChunk Data.Text.Text@ -}
data RequestApplySnapshotChunk
  = RequestApplySnapshotChunk'_constructor {_RequestApplySnapshotChunk'index :: !Data.Word.Word32,
                                            _RequestApplySnapshotChunk'chunk :: !Data.ByteString.ByteString,
                                            _RequestApplySnapshotChunk'sender :: !Data.Text.Text,
                                            _RequestApplySnapshotChunk'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestApplySnapshotChunk where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestApplySnapshotChunk "index" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestApplySnapshotChunk'index
           (\ x__ y__ -> x__ {_RequestApplySnapshotChunk'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestApplySnapshotChunk "chunk" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestApplySnapshotChunk'chunk
           (\ x__ y__ -> x__ {_RequestApplySnapshotChunk'chunk = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestApplySnapshotChunk "sender" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestApplySnapshotChunk'sender
           (\ x__ y__ -> x__ {_RequestApplySnapshotChunk'sender = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestApplySnapshotChunk where
  messageName _
    = Data.Text.pack "tendermint.abci.RequestApplySnapshotChunk"
  packedMessageDescriptor _
    = "\n\
      \\EMRequestApplySnapshotChunk\DC2\DC4\n\
      \\ENQindex\CAN\SOH \SOH(\rR\ENQindex\DC2\DC4\n\
      \\ENQchunk\CAN\STX \SOH(\fR\ENQchunk\DC2\SYN\n\
      \\ACKsender\CAN\ETX \SOH(\tR\ACKsender"
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
              Data.ProtoLens.FieldDescriptor RequestApplySnapshotChunk
        chunk__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunk"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"chunk")) ::
              Data.ProtoLens.FieldDescriptor RequestApplySnapshotChunk
        sender__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sender"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"sender")) ::
              Data.ProtoLens.FieldDescriptor RequestApplySnapshotChunk
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, index__field_descriptor),
           (Data.ProtoLens.Tag 2, chunk__field_descriptor),
           (Data.ProtoLens.Tag 3, sender__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestApplySnapshotChunk'_unknownFields
        (\ x__ y__
           -> x__ {_RequestApplySnapshotChunk'_unknownFields = y__})
  defMessage
    = RequestApplySnapshotChunk'_constructor
        {_RequestApplySnapshotChunk'index = Data.ProtoLens.fieldDefault,
         _RequestApplySnapshotChunk'chunk = Data.ProtoLens.fieldDefault,
         _RequestApplySnapshotChunk'sender = Data.ProtoLens.fieldDefault,
         _RequestApplySnapshotChunk'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestApplySnapshotChunk
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestApplySnapshotChunk
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
                                       "chunk"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chunk") y x)
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
                                       "sender"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sender") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestApplySnapshotChunk"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"chunk") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sender") _x
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
instance Control.DeepSeq.NFData RequestApplySnapshotChunk where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestApplySnapshotChunk'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestApplySnapshotChunk'index x__)
                (Control.DeepSeq.deepseq
                   (_RequestApplySnapshotChunk'chunk x__)
                   (Control.DeepSeq.deepseq
                      (_RequestApplySnapshotChunk'sender x__) ())))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.tx' @:: Lens' RequestCheckTx Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.type'' @:: Lens' RequestCheckTx CheckTxType@ -}
data RequestCheckTx
  = RequestCheckTx'_constructor {_RequestCheckTx'tx :: !Data.ByteString.ByteString,
                                 _RequestCheckTx'type' :: !CheckTxType,
                                 _RequestCheckTx'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestCheckTx where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestCheckTx "tx" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCheckTx'tx (\ x__ y__ -> x__ {_RequestCheckTx'tx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestCheckTx "type'" CheckTxType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestCheckTx'type'
           (\ x__ y__ -> x__ {_RequestCheckTx'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestCheckTx where
  messageName _ = Data.Text.pack "tendermint.abci.RequestCheckTx"
  packedMessageDescriptor _
    = "\n\
      \\SORequestCheckTx\DC2\SO\n\
      \\STXtx\CAN\SOH \SOH(\fR\STXtx\DC20\n\
      \\EOTtype\CAN\STX \SOH(\SO2\FS.tendermint.abci.CheckTxTypeR\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"tx")) ::
              Data.ProtoLens.FieldDescriptor RequestCheckTx
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor CheckTxType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor RequestCheckTx
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tx__field_descriptor),
           (Data.ProtoLens.Tag 2, type'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestCheckTx'_unknownFields
        (\ x__ y__ -> x__ {_RequestCheckTx'_unknownFields = y__})
  defMessage
    = RequestCheckTx'_constructor
        {_RequestCheckTx'tx = Data.ProtoLens.fieldDefault,
         _RequestCheckTx'type' = Data.ProtoLens.fieldDefault,
         _RequestCheckTx'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestCheckTx
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestCheckTx
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
                                       "tx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tx") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestCheckTx"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"tx") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
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
instance Control.DeepSeq.NFData RequestCheckTx where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestCheckTx'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestCheckTx'tx x__)
                (Control.DeepSeq.deepseq (_RequestCheckTx'type' x__) ()))
{- | Fields :
      -}
data RequestCommit
  = RequestCommit'_constructor {_RequestCommit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestCommit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message RequestCommit where
  messageName _ = Data.Text.pack "tendermint.abci.RequestCommit"
  packedMessageDescriptor _
    = "\n\
      \\rRequestCommit"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestCommit'_unknownFields
        (\ x__ y__ -> x__ {_RequestCommit'_unknownFields = y__})
  defMessage
    = RequestCommit'_constructor {_RequestCommit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestCommit -> Data.ProtoLens.Encoding.Bytes.Parser RequestCommit
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
          (do loop Data.ProtoLens.defMessage) "RequestCommit"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData RequestCommit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_RequestCommit'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.message' @:: Lens' RequestEcho Data.Text.Text@ -}
data RequestEcho
  = RequestEcho'_constructor {_RequestEcho'message :: !Data.Text.Text,
                              _RequestEcho'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestEcho where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestEcho "message" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestEcho'message
           (\ x__ y__ -> x__ {_RequestEcho'message = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestEcho where
  messageName _ = Data.Text.pack "tendermint.abci.RequestEcho"
  packedMessageDescriptor _
    = "\n\
      \\vRequestEcho\DC2\CAN\n\
      \\amessage\CAN\SOH \SOH(\tR\amessage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        message__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"message")) ::
              Data.ProtoLens.FieldDescriptor RequestEcho
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, message__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestEcho'_unknownFields
        (\ x__ y__ -> x__ {_RequestEcho'_unknownFields = y__})
  defMessage
    = RequestEcho'_constructor
        {_RequestEcho'message = Data.ProtoLens.fieldDefault,
         _RequestEcho'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestEcho -> Data.ProtoLens.Encoding.Bytes.Parser RequestEcho
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
                                       "message"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"message") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestEcho"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"message") _x
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
instance Control.DeepSeq.NFData RequestEcho where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestEcho'_unknownFields x__)
             (Control.DeepSeq.deepseq (_RequestEcho'message x__) ())
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.hash' @:: Lens' RequestExtendVote Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.height' @:: Lens' RequestExtendVote Data.Int.Int64@ -}
data RequestExtendVote
  = RequestExtendVote'_constructor {_RequestExtendVote'hash :: !Data.ByteString.ByteString,
                                    _RequestExtendVote'height :: !Data.Int.Int64,
                                    _RequestExtendVote'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestExtendVote where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestExtendVote "hash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestExtendVote'hash
           (\ x__ y__ -> x__ {_RequestExtendVote'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestExtendVote "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestExtendVote'height
           (\ x__ y__ -> x__ {_RequestExtendVote'height = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestExtendVote where
  messageName _ = Data.Text.pack "tendermint.abci.RequestExtendVote"
  packedMessageDescriptor _
    = "\n\
      \\DC1RequestExtendVote\DC2\DC2\n\
      \\EOThash\CAN\SOH \SOH(\fR\EOThash\DC2\SYN\n\
      \\ACKheight\CAN\STX \SOH(\ETXR\ACKheight"
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
              Data.ProtoLens.FieldDescriptor RequestExtendVote
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor RequestExtendVote
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, hash__field_descriptor),
           (Data.ProtoLens.Tag 2, height__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestExtendVote'_unknownFields
        (\ x__ y__ -> x__ {_RequestExtendVote'_unknownFields = y__})
  defMessage
    = RequestExtendVote'_constructor
        {_RequestExtendVote'hash = Data.ProtoLens.fieldDefault,
         _RequestExtendVote'height = Data.ProtoLens.fieldDefault,
         _RequestExtendVote'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestExtendVote
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestExtendVote
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
                        16
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
          (do loop Data.ProtoLens.defMessage) "RequestExtendVote"
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RequestExtendVote where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestExtendVote'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestExtendVote'hash x__)
                (Control.DeepSeq.deepseq (_RequestExtendVote'height x__) ()))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.txs' @:: Lens' RequestFinalizeBlock [Data.ByteString.ByteString]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'txs' @:: Lens' RequestFinalizeBlock (Data.Vector.Vector Data.ByteString.ByteString)@
         * 'Proto.Tendermint.Abci.Types_Fields.decidedLastCommit' @:: Lens' RequestFinalizeBlock CommitInfo@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'decidedLastCommit' @:: Lens' RequestFinalizeBlock (Prelude.Maybe CommitInfo)@
         * 'Proto.Tendermint.Abci.Types_Fields.misbehavior' @:: Lens' RequestFinalizeBlock [Misbehavior]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'misbehavior' @:: Lens' RequestFinalizeBlock (Data.Vector.Vector Misbehavior)@
         * 'Proto.Tendermint.Abci.Types_Fields.hash' @:: Lens' RequestFinalizeBlock Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.height' @:: Lens' RequestFinalizeBlock Data.Int.Int64@
         * 'Proto.Tendermint.Abci.Types_Fields.time' @:: Lens' RequestFinalizeBlock Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'time' @:: Lens' RequestFinalizeBlock (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Tendermint.Abci.Types_Fields.nextValidatorsHash' @:: Lens' RequestFinalizeBlock Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.proposerAddress' @:: Lens' RequestFinalizeBlock Data.ByteString.ByteString@ -}
data RequestFinalizeBlock
  = RequestFinalizeBlock'_constructor {_RequestFinalizeBlock'txs :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                       _RequestFinalizeBlock'decidedLastCommit :: !(Prelude.Maybe CommitInfo),
                                       _RequestFinalizeBlock'misbehavior :: !(Data.Vector.Vector Misbehavior),
                                       _RequestFinalizeBlock'hash :: !Data.ByteString.ByteString,
                                       _RequestFinalizeBlock'height :: !Data.Int.Int64,
                                       _RequestFinalizeBlock'time :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                       _RequestFinalizeBlock'nextValidatorsHash :: !Data.ByteString.ByteString,
                                       _RequestFinalizeBlock'proposerAddress :: !Data.ByteString.ByteString,
                                       _RequestFinalizeBlock'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestFinalizeBlock where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestFinalizeBlock "txs" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestFinalizeBlock'txs
           (\ x__ y__ -> x__ {_RequestFinalizeBlock'txs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RequestFinalizeBlock "vec'txs" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestFinalizeBlock'txs
           (\ x__ y__ -> x__ {_RequestFinalizeBlock'txs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestFinalizeBlock "decidedLastCommit" CommitInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestFinalizeBlock'decidedLastCommit
           (\ x__ y__ -> x__ {_RequestFinalizeBlock'decidedLastCommit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RequestFinalizeBlock "maybe'decidedLastCommit" (Prelude.Maybe CommitInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestFinalizeBlock'decidedLastCommit
           (\ x__ y__ -> x__ {_RequestFinalizeBlock'decidedLastCommit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestFinalizeBlock "misbehavior" [Misbehavior] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestFinalizeBlock'misbehavior
           (\ x__ y__ -> x__ {_RequestFinalizeBlock'misbehavior = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RequestFinalizeBlock "vec'misbehavior" (Data.Vector.Vector Misbehavior) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestFinalizeBlock'misbehavior
           (\ x__ y__ -> x__ {_RequestFinalizeBlock'misbehavior = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestFinalizeBlock "hash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestFinalizeBlock'hash
           (\ x__ y__ -> x__ {_RequestFinalizeBlock'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestFinalizeBlock "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestFinalizeBlock'height
           (\ x__ y__ -> x__ {_RequestFinalizeBlock'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestFinalizeBlock "time" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestFinalizeBlock'time
           (\ x__ y__ -> x__ {_RequestFinalizeBlock'time = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RequestFinalizeBlock "maybe'time" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestFinalizeBlock'time
           (\ x__ y__ -> x__ {_RequestFinalizeBlock'time = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestFinalizeBlock "nextValidatorsHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestFinalizeBlock'nextValidatorsHash
           (\ x__ y__
              -> x__ {_RequestFinalizeBlock'nextValidatorsHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestFinalizeBlock "proposerAddress" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestFinalizeBlock'proposerAddress
           (\ x__ y__ -> x__ {_RequestFinalizeBlock'proposerAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestFinalizeBlock where
  messageName _
    = Data.Text.pack "tendermint.abci.RequestFinalizeBlock"
  packedMessageDescriptor _
    = "\n\
      \\DC4RequestFinalizeBlock\DC2\DLE\n\
      \\ETXtxs\CAN\SOH \ETX(\fR\ETXtxs\DC2Q\n\
      \\DC3decided_last_commit\CAN\STX \SOH(\v2\ESC.tendermint.abci.CommitInfoR\DC1decidedLastCommitB\EOT\200\222\US\NUL\DC2D\n\
      \\vmisbehavior\CAN\ETX \ETX(\v2\FS.tendermint.abci.MisbehaviorR\vmisbehaviorB\EOT\200\222\US\NUL\DC2\DC2\n\
      \\EOThash\CAN\EOT \SOH(\fR\EOThash\DC2\SYN\n\
      \\ACKheight\CAN\ENQ \SOH(\ETXR\ACKheight\DC28\n\
      \\EOTtime\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\b\200\222\US\NUL\144\223\US\SOH\DC20\n\
      \\DC4next_validators_hash\CAN\a \SOH(\fR\DC2nextValidatorsHash\DC2)\n\
      \\DLEproposer_address\CAN\b \SOH(\fR\SIproposerAddress"
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
              Data.ProtoLens.FieldDescriptor RequestFinalizeBlock
        decidedLastCommit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "decided_last_commit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommitInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'decidedLastCommit")) ::
              Data.ProtoLens.FieldDescriptor RequestFinalizeBlock
        misbehavior__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "misbehavior"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Misbehavior)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"misbehavior")) ::
              Data.ProtoLens.FieldDescriptor RequestFinalizeBlock
        hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hash")) ::
              Data.ProtoLens.FieldDescriptor RequestFinalizeBlock
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor RequestFinalizeBlock
        time__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'time")) ::
              Data.ProtoLens.FieldDescriptor RequestFinalizeBlock
        nextValidatorsHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_validators_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"nextValidatorsHash")) ::
              Data.ProtoLens.FieldDescriptor RequestFinalizeBlock
        proposerAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposer_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposerAddress")) ::
              Data.ProtoLens.FieldDescriptor RequestFinalizeBlock
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, txs__field_descriptor),
           (Data.ProtoLens.Tag 2, decidedLastCommit__field_descriptor),
           (Data.ProtoLens.Tag 3, misbehavior__field_descriptor),
           (Data.ProtoLens.Tag 4, hash__field_descriptor),
           (Data.ProtoLens.Tag 5, height__field_descriptor),
           (Data.ProtoLens.Tag 6, time__field_descriptor),
           (Data.ProtoLens.Tag 7, nextValidatorsHash__field_descriptor),
           (Data.ProtoLens.Tag 8, proposerAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestFinalizeBlock'_unknownFields
        (\ x__ y__ -> x__ {_RequestFinalizeBlock'_unknownFields = y__})
  defMessage
    = RequestFinalizeBlock'_constructor
        {_RequestFinalizeBlock'txs = Data.Vector.Generic.empty,
         _RequestFinalizeBlock'decidedLastCommit = Prelude.Nothing,
         _RequestFinalizeBlock'misbehavior = Data.Vector.Generic.empty,
         _RequestFinalizeBlock'hash = Data.ProtoLens.fieldDefault,
         _RequestFinalizeBlock'height = Data.ProtoLens.fieldDefault,
         _RequestFinalizeBlock'time = Prelude.Nothing,
         _RequestFinalizeBlock'nextValidatorsHash = Data.ProtoLens.fieldDefault,
         _RequestFinalizeBlock'proposerAddress = Data.ProtoLens.fieldDefault,
         _RequestFinalizeBlock'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestFinalizeBlock
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Misbehavior
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
                -> Data.ProtoLens.Encoding.Bytes.Parser RequestFinalizeBlock
        loop x mutable'misbehavior mutable'txs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'misbehavior <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'misbehavior)
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
                              (Data.ProtoLens.Field.field @"vec'misbehavior") frozen'misbehavior
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'txs") frozen'txs x)))
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
                                loop x mutable'misbehavior v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "decided_last_commit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"decidedLastCommit") y x)
                                  mutable'misbehavior mutable'txs
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "misbehavior"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'misbehavior y)
                                loop x v mutable'txs
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "hash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y x)
                                  mutable'misbehavior mutable'txs
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                                  mutable'misbehavior mutable'txs
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"time") y x)
                                  mutable'misbehavior mutable'txs
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "next_validators_hash"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nextValidatorsHash") y x)
                                  mutable'misbehavior mutable'txs
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "proposer_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"proposerAddress") y x)
                                  mutable'misbehavior mutable'txs
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'misbehavior mutable'txs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'misbehavior <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'txs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'misbehavior mutable'txs)
          "RequestFinalizeBlock"
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'decidedLastCommit") _x
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
                         (Data.ProtoLens.Field.field @"vec'misbehavior") _x))
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
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'time") _x
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
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"nextValidatorsHash") _x
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
                                           (Data.ProtoLens.Field.field @"proposerAddress") _x
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
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData RequestFinalizeBlock where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestFinalizeBlock'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestFinalizeBlock'txs x__)
                (Control.DeepSeq.deepseq
                   (_RequestFinalizeBlock'decidedLastCommit x__)
                   (Control.DeepSeq.deepseq
                      (_RequestFinalizeBlock'misbehavior x__)
                      (Control.DeepSeq.deepseq
                         (_RequestFinalizeBlock'hash x__)
                         (Control.DeepSeq.deepseq
                            (_RequestFinalizeBlock'height x__)
                            (Control.DeepSeq.deepseq
                               (_RequestFinalizeBlock'time x__)
                               (Control.DeepSeq.deepseq
                                  (_RequestFinalizeBlock'nextValidatorsHash x__)
                                  (Control.DeepSeq.deepseq
                                     (_RequestFinalizeBlock'proposerAddress x__) ()))))))))
{- | Fields :
      -}
data RequestFlush
  = RequestFlush'_constructor {_RequestFlush'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestFlush where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message RequestFlush where
  messageName _ = Data.Text.pack "tendermint.abci.RequestFlush"
  packedMessageDescriptor _
    = "\n\
      \\fRequestFlush"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestFlush'_unknownFields
        (\ x__ y__ -> x__ {_RequestFlush'_unknownFields = y__})
  defMessage
    = RequestFlush'_constructor {_RequestFlush'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestFlush -> Data.ProtoLens.Encoding.Bytes.Parser RequestFlush
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
          (do loop Data.ProtoLens.defMessage) "RequestFlush"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData RequestFlush where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_RequestFlush'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.version' @:: Lens' RequestInfo Data.Text.Text@
         * 'Proto.Tendermint.Abci.Types_Fields.blockVersion' @:: Lens' RequestInfo Data.Word.Word64@
         * 'Proto.Tendermint.Abci.Types_Fields.p2pVersion' @:: Lens' RequestInfo Data.Word.Word64@
         * 'Proto.Tendermint.Abci.Types_Fields.abciVersion' @:: Lens' RequestInfo Data.Text.Text@ -}
data RequestInfo
  = RequestInfo'_constructor {_RequestInfo'version :: !Data.Text.Text,
                              _RequestInfo'blockVersion :: !Data.Word.Word64,
                              _RequestInfo'p2pVersion :: !Data.Word.Word64,
                              _RequestInfo'abciVersion :: !Data.Text.Text,
                              _RequestInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestInfo "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestInfo'version
           (\ x__ y__ -> x__ {_RequestInfo'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestInfo "blockVersion" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestInfo'blockVersion
           (\ x__ y__ -> x__ {_RequestInfo'blockVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestInfo "p2pVersion" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestInfo'p2pVersion
           (\ x__ y__ -> x__ {_RequestInfo'p2pVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestInfo "abciVersion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestInfo'abciVersion
           (\ x__ y__ -> x__ {_RequestInfo'abciVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestInfo where
  messageName _ = Data.Text.pack "tendermint.abci.RequestInfo"
  packedMessageDescriptor _
    = "\n\
      \\vRequestInfo\DC2\CAN\n\
      \\aversion\CAN\SOH \SOH(\tR\aversion\DC2#\n\
      \\rblock_version\CAN\STX \SOH(\EOTR\fblockVersion\DC2\US\n\
      \\vp2p_version\CAN\ETX \SOH(\EOTR\n\
      \p2pVersion\DC2!\n\
      \\fabci_version\CAN\EOT \SOH(\tR\vabciVersion"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor RequestInfo
        blockVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blockVersion")) ::
              Data.ProtoLens.FieldDescriptor RequestInfo
        p2pVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "p2p_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"p2pVersion")) ::
              Data.ProtoLens.FieldDescriptor RequestInfo
        abciVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "abci_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"abciVersion")) ::
              Data.ProtoLens.FieldDescriptor RequestInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, version__field_descriptor),
           (Data.ProtoLens.Tag 2, blockVersion__field_descriptor),
           (Data.ProtoLens.Tag 3, p2pVersion__field_descriptor),
           (Data.ProtoLens.Tag 4, abciVersion__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestInfo'_unknownFields
        (\ x__ y__ -> x__ {_RequestInfo'_unknownFields = y__})
  defMessage
    = RequestInfo'_constructor
        {_RequestInfo'version = Data.ProtoLens.fieldDefault,
         _RequestInfo'blockVersion = Data.ProtoLens.fieldDefault,
         _RequestInfo'p2pVersion = Data.ProtoLens.fieldDefault,
         _RequestInfo'abciVersion = Data.ProtoLens.fieldDefault,
         _RequestInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestInfo -> Data.ProtoLens.Encoding.Bytes.Parser RequestInfo
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
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "block_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"blockVersion") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "p2p_version"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"p2pVersion") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "abci_version"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"abciVersion") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestInfo"
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"blockVersion") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"p2pVersion") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"abciVersion") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData RequestInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestInfo'version x__)
                (Control.DeepSeq.deepseq
                   (_RequestInfo'blockVersion x__)
                   (Control.DeepSeq.deepseq
                      (_RequestInfo'p2pVersion x__)
                      (Control.DeepSeq.deepseq (_RequestInfo'abciVersion x__) ()))))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.time' @:: Lens' RequestInitChain Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'time' @:: Lens' RequestInitChain (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Tendermint.Abci.Types_Fields.chainId' @:: Lens' RequestInitChain Data.Text.Text@
         * 'Proto.Tendermint.Abci.Types_Fields.consensusParams' @:: Lens' RequestInitChain Proto.Tendermint.Types.Params.ConsensusParams@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'consensusParams' @:: Lens' RequestInitChain (Prelude.Maybe Proto.Tendermint.Types.Params.ConsensusParams)@
         * 'Proto.Tendermint.Abci.Types_Fields.validators' @:: Lens' RequestInitChain [ValidatorUpdate]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'validators' @:: Lens' RequestInitChain (Data.Vector.Vector ValidatorUpdate)@
         * 'Proto.Tendermint.Abci.Types_Fields.appStateBytes' @:: Lens' RequestInitChain Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.initialHeight' @:: Lens' RequestInitChain Data.Int.Int64@ -}
data RequestInitChain
  = RequestInitChain'_constructor {_RequestInitChain'time :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                   _RequestInitChain'chainId :: !Data.Text.Text,
                                   _RequestInitChain'consensusParams :: !(Prelude.Maybe Proto.Tendermint.Types.Params.ConsensusParams),
                                   _RequestInitChain'validators :: !(Data.Vector.Vector ValidatorUpdate),
                                   _RequestInitChain'appStateBytes :: !Data.ByteString.ByteString,
                                   _RequestInitChain'initialHeight :: !Data.Int.Int64,
                                   _RequestInitChain'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestInitChain where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestInitChain "time" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestInitChain'time
           (\ x__ y__ -> x__ {_RequestInitChain'time = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RequestInitChain "maybe'time" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestInitChain'time
           (\ x__ y__ -> x__ {_RequestInitChain'time = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestInitChain "chainId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestInitChain'chainId
           (\ x__ y__ -> x__ {_RequestInitChain'chainId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestInitChain "consensusParams" Proto.Tendermint.Types.Params.ConsensusParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestInitChain'consensusParams
           (\ x__ y__ -> x__ {_RequestInitChain'consensusParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RequestInitChain "maybe'consensusParams" (Prelude.Maybe Proto.Tendermint.Types.Params.ConsensusParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestInitChain'consensusParams
           (\ x__ y__ -> x__ {_RequestInitChain'consensusParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestInitChain "validators" [ValidatorUpdate] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestInitChain'validators
           (\ x__ y__ -> x__ {_RequestInitChain'validators = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RequestInitChain "vec'validators" (Data.Vector.Vector ValidatorUpdate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestInitChain'validators
           (\ x__ y__ -> x__ {_RequestInitChain'validators = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestInitChain "appStateBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestInitChain'appStateBytes
           (\ x__ y__ -> x__ {_RequestInitChain'appStateBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestInitChain "initialHeight" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestInitChain'initialHeight
           (\ x__ y__ -> x__ {_RequestInitChain'initialHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestInitChain where
  messageName _ = Data.Text.pack "tendermint.abci.RequestInitChain"
  packedMessageDescriptor _
    = "\n\
      \\DLERequestInitChain\DC28\n\
      \\EOTtime\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\b\200\222\US\NUL\144\223\US\SOH\DC2\EM\n\
      \\bchain_id\CAN\STX \SOH(\tR\achainId\DC2L\n\
      \\DLEconsensus_params\CAN\ETX \SOH(\v2!.tendermint.types.ConsensusParamsR\SIconsensusParams\DC2F\n\
      \\n\
      \validators\CAN\EOT \ETX(\v2 .tendermint.abci.ValidatorUpdateR\n\
      \validatorsB\EOT\200\222\US\NUL\DC2&\n\
      \\SIapp_state_bytes\CAN\ENQ \SOH(\fR\rappStateBytes\DC2%\n\
      \\SOinitial_height\CAN\ACK \SOH(\ETXR\rinitialHeight"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        time__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'time")) ::
              Data.ProtoLens.FieldDescriptor RequestInitChain
        chainId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chain_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"chainId")) ::
              Data.ProtoLens.FieldDescriptor RequestInitChain
        consensusParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "consensus_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Params.ConsensusParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'consensusParams")) ::
              Data.ProtoLens.FieldDescriptor RequestInitChain
        validators__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validators"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ValidatorUpdate)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"validators")) ::
              Data.ProtoLens.FieldDescriptor RequestInitChain
        appStateBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_state_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"appStateBytes")) ::
              Data.ProtoLens.FieldDescriptor RequestInitChain
        initialHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"initialHeight")) ::
              Data.ProtoLens.FieldDescriptor RequestInitChain
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, time__field_descriptor),
           (Data.ProtoLens.Tag 2, chainId__field_descriptor),
           (Data.ProtoLens.Tag 3, consensusParams__field_descriptor),
           (Data.ProtoLens.Tag 4, validators__field_descriptor),
           (Data.ProtoLens.Tag 5, appStateBytes__field_descriptor),
           (Data.ProtoLens.Tag 6, initialHeight__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestInitChain'_unknownFields
        (\ x__ y__ -> x__ {_RequestInitChain'_unknownFields = y__})
  defMessage
    = RequestInitChain'_constructor
        {_RequestInitChain'time = Prelude.Nothing,
         _RequestInitChain'chainId = Data.ProtoLens.fieldDefault,
         _RequestInitChain'consensusParams = Prelude.Nothing,
         _RequestInitChain'validators = Data.Vector.Generic.empty,
         _RequestInitChain'appStateBytes = Data.ProtoLens.fieldDefault,
         _RequestInitChain'initialHeight = Data.ProtoLens.fieldDefault,
         _RequestInitChain'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestInitChain
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ValidatorUpdate
             -> Data.ProtoLens.Encoding.Bytes.Parser RequestInitChain
        loop x mutable'validators
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'validators)
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
                              (Data.ProtoLens.Field.field @"vec'validators") frozen'validators
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"time") y x)
                                  mutable'validators
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"chainId") y x)
                                  mutable'validators
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "consensus_params"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"consensusParams") y x)
                                  mutable'validators
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "validators"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'validators y)
                                loop x v
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "app_state_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"appStateBytes") y x)
                                  mutable'validators
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "initial_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"initialHeight") y x)
                                  mutable'validators
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'validators
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'validators)
          "RequestInitChain"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'time") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'consensusParams") _x
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
                            (Data.ProtoLens.Field.field @"vec'validators") _x))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"appStateBytes") _x
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
                                     (Data.ProtoLens.Field.field @"initialHeight") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                        _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData RequestInitChain where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestInitChain'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestInitChain'time x__)
                (Control.DeepSeq.deepseq
                   (_RequestInitChain'chainId x__)
                   (Control.DeepSeq.deepseq
                      (_RequestInitChain'consensusParams x__)
                      (Control.DeepSeq.deepseq
                         (_RequestInitChain'validators x__)
                         (Control.DeepSeq.deepseq
                            (_RequestInitChain'appStateBytes x__)
                            (Control.DeepSeq.deepseq
                               (_RequestInitChain'initialHeight x__) ()))))))
{- | Fields :
      -}
data RequestListSnapshots
  = RequestListSnapshots'_constructor {_RequestListSnapshots'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestListSnapshots where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message RequestListSnapshots where
  messageName _
    = Data.Text.pack "tendermint.abci.RequestListSnapshots"
  packedMessageDescriptor _
    = "\n\
      \\DC4RequestListSnapshots"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestListSnapshots'_unknownFields
        (\ x__ y__ -> x__ {_RequestListSnapshots'_unknownFields = y__})
  defMessage
    = RequestListSnapshots'_constructor
        {_RequestListSnapshots'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestListSnapshots
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestListSnapshots
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
          (do loop Data.ProtoLens.defMessage) "RequestListSnapshots"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData RequestListSnapshots where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestListSnapshots'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.height' @:: Lens' RequestLoadSnapshotChunk Data.Word.Word64@
         * 'Proto.Tendermint.Abci.Types_Fields.format' @:: Lens' RequestLoadSnapshotChunk Data.Word.Word32@
         * 'Proto.Tendermint.Abci.Types_Fields.chunk' @:: Lens' RequestLoadSnapshotChunk Data.Word.Word32@ -}
data RequestLoadSnapshotChunk
  = RequestLoadSnapshotChunk'_constructor {_RequestLoadSnapshotChunk'height :: !Data.Word.Word64,
                                           _RequestLoadSnapshotChunk'format :: !Data.Word.Word32,
                                           _RequestLoadSnapshotChunk'chunk :: !Data.Word.Word32,
                                           _RequestLoadSnapshotChunk'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestLoadSnapshotChunk where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestLoadSnapshotChunk "height" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestLoadSnapshotChunk'height
           (\ x__ y__ -> x__ {_RequestLoadSnapshotChunk'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestLoadSnapshotChunk "format" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestLoadSnapshotChunk'format
           (\ x__ y__ -> x__ {_RequestLoadSnapshotChunk'format = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestLoadSnapshotChunk "chunk" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestLoadSnapshotChunk'chunk
           (\ x__ y__ -> x__ {_RequestLoadSnapshotChunk'chunk = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestLoadSnapshotChunk where
  messageName _
    = Data.Text.pack "tendermint.abci.RequestLoadSnapshotChunk"
  packedMessageDescriptor _
    = "\n\
      \\CANRequestLoadSnapshotChunk\DC2\SYN\n\
      \\ACKheight\CAN\SOH \SOH(\EOTR\ACKheight\DC2\SYN\n\
      \\ACKformat\CAN\STX \SOH(\rR\ACKformat\DC2\DC4\n\
      \\ENQchunk\CAN\ETX \SOH(\rR\ENQchunk"
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
              Data.ProtoLens.FieldDescriptor RequestLoadSnapshotChunk
        format__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "format"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"format")) ::
              Data.ProtoLens.FieldDescriptor RequestLoadSnapshotChunk
        chunk__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunk"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"chunk")) ::
              Data.ProtoLens.FieldDescriptor RequestLoadSnapshotChunk
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, height__field_descriptor),
           (Data.ProtoLens.Tag 2, format__field_descriptor),
           (Data.ProtoLens.Tag 3, chunk__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestLoadSnapshotChunk'_unknownFields
        (\ x__ y__ -> x__ {_RequestLoadSnapshotChunk'_unknownFields = y__})
  defMessage
    = RequestLoadSnapshotChunk'_constructor
        {_RequestLoadSnapshotChunk'height = Data.ProtoLens.fieldDefault,
         _RequestLoadSnapshotChunk'format = Data.ProtoLens.fieldDefault,
         _RequestLoadSnapshotChunk'chunk = Data.ProtoLens.fieldDefault,
         _RequestLoadSnapshotChunk'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestLoadSnapshotChunk
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestLoadSnapshotChunk
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
                                       "chunk"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chunk") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestLoadSnapshotChunk"
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"chunk") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData RequestLoadSnapshotChunk where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestLoadSnapshotChunk'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestLoadSnapshotChunk'height x__)
                (Control.DeepSeq.deepseq
                   (_RequestLoadSnapshotChunk'format x__)
                   (Control.DeepSeq.deepseq
                      (_RequestLoadSnapshotChunk'chunk x__) ())))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.snapshot' @:: Lens' RequestOfferSnapshot Snapshot@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'snapshot' @:: Lens' RequestOfferSnapshot (Prelude.Maybe Snapshot)@
         * 'Proto.Tendermint.Abci.Types_Fields.appHash' @:: Lens' RequestOfferSnapshot Data.ByteString.ByteString@ -}
data RequestOfferSnapshot
  = RequestOfferSnapshot'_constructor {_RequestOfferSnapshot'snapshot :: !(Prelude.Maybe Snapshot),
                                       _RequestOfferSnapshot'appHash :: !Data.ByteString.ByteString,
                                       _RequestOfferSnapshot'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestOfferSnapshot where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestOfferSnapshot "snapshot" Snapshot where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestOfferSnapshot'snapshot
           (\ x__ y__ -> x__ {_RequestOfferSnapshot'snapshot = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RequestOfferSnapshot "maybe'snapshot" (Prelude.Maybe Snapshot) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestOfferSnapshot'snapshot
           (\ x__ y__ -> x__ {_RequestOfferSnapshot'snapshot = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestOfferSnapshot "appHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestOfferSnapshot'appHash
           (\ x__ y__ -> x__ {_RequestOfferSnapshot'appHash = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestOfferSnapshot where
  messageName _
    = Data.Text.pack "tendermint.abci.RequestOfferSnapshot"
  packedMessageDescriptor _
    = "\n\
      \\DC4RequestOfferSnapshot\DC25\n\
      \\bsnapshot\CAN\SOH \SOH(\v2\EM.tendermint.abci.SnapshotR\bsnapshot\DC2\EM\n\
      \\bapp_hash\CAN\STX \SOH(\fR\aappHash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        snapshot__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "snapshot"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Snapshot)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'snapshot")) ::
              Data.ProtoLens.FieldDescriptor RequestOfferSnapshot
        appHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"appHash")) ::
              Data.ProtoLens.FieldDescriptor RequestOfferSnapshot
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, snapshot__field_descriptor),
           (Data.ProtoLens.Tag 2, appHash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestOfferSnapshot'_unknownFields
        (\ x__ y__ -> x__ {_RequestOfferSnapshot'_unknownFields = y__})
  defMessage
    = RequestOfferSnapshot'_constructor
        {_RequestOfferSnapshot'snapshot = Prelude.Nothing,
         _RequestOfferSnapshot'appHash = Data.ProtoLens.fieldDefault,
         _RequestOfferSnapshot'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestOfferSnapshot
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestOfferSnapshot
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
                                       "snapshot"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"snapshot") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "app_hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"appHash") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestOfferSnapshot"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'snapshot") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"appHash") _x
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
instance Control.DeepSeq.NFData RequestOfferSnapshot where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestOfferSnapshot'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestOfferSnapshot'snapshot x__)
                (Control.DeepSeq.deepseq (_RequestOfferSnapshot'appHash x__) ()))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.maxTxBytes' @:: Lens' RequestPrepareProposal Data.Int.Int64@
         * 'Proto.Tendermint.Abci.Types_Fields.txs' @:: Lens' RequestPrepareProposal [Data.ByteString.ByteString]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'txs' @:: Lens' RequestPrepareProposal (Data.Vector.Vector Data.ByteString.ByteString)@
         * 'Proto.Tendermint.Abci.Types_Fields.localLastCommit' @:: Lens' RequestPrepareProposal ExtendedCommitInfo@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'localLastCommit' @:: Lens' RequestPrepareProposal (Prelude.Maybe ExtendedCommitInfo)@
         * 'Proto.Tendermint.Abci.Types_Fields.misbehavior' @:: Lens' RequestPrepareProposal [Misbehavior]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'misbehavior' @:: Lens' RequestPrepareProposal (Data.Vector.Vector Misbehavior)@
         * 'Proto.Tendermint.Abci.Types_Fields.height' @:: Lens' RequestPrepareProposal Data.Int.Int64@
         * 'Proto.Tendermint.Abci.Types_Fields.time' @:: Lens' RequestPrepareProposal Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'time' @:: Lens' RequestPrepareProposal (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Tendermint.Abci.Types_Fields.nextValidatorsHash' @:: Lens' RequestPrepareProposal Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.proposerAddress' @:: Lens' RequestPrepareProposal Data.ByteString.ByteString@ -}
data RequestPrepareProposal
  = RequestPrepareProposal'_constructor {_RequestPrepareProposal'maxTxBytes :: !Data.Int.Int64,
                                         _RequestPrepareProposal'txs :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                         _RequestPrepareProposal'localLastCommit :: !(Prelude.Maybe ExtendedCommitInfo),
                                         _RequestPrepareProposal'misbehavior :: !(Data.Vector.Vector Misbehavior),
                                         _RequestPrepareProposal'height :: !Data.Int.Int64,
                                         _RequestPrepareProposal'time :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                         _RequestPrepareProposal'nextValidatorsHash :: !Data.ByteString.ByteString,
                                         _RequestPrepareProposal'proposerAddress :: !Data.ByteString.ByteString,
                                         _RequestPrepareProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestPrepareProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestPrepareProposal "maxTxBytes" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestPrepareProposal'maxTxBytes
           (\ x__ y__ -> x__ {_RequestPrepareProposal'maxTxBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestPrepareProposal "txs" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestPrepareProposal'txs
           (\ x__ y__ -> x__ {_RequestPrepareProposal'txs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RequestPrepareProposal "vec'txs" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestPrepareProposal'txs
           (\ x__ y__ -> x__ {_RequestPrepareProposal'txs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestPrepareProposal "localLastCommit" ExtendedCommitInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestPrepareProposal'localLastCommit
           (\ x__ y__ -> x__ {_RequestPrepareProposal'localLastCommit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RequestPrepareProposal "maybe'localLastCommit" (Prelude.Maybe ExtendedCommitInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestPrepareProposal'localLastCommit
           (\ x__ y__ -> x__ {_RequestPrepareProposal'localLastCommit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestPrepareProposal "misbehavior" [Misbehavior] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestPrepareProposal'misbehavior
           (\ x__ y__ -> x__ {_RequestPrepareProposal'misbehavior = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RequestPrepareProposal "vec'misbehavior" (Data.Vector.Vector Misbehavior) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestPrepareProposal'misbehavior
           (\ x__ y__ -> x__ {_RequestPrepareProposal'misbehavior = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestPrepareProposal "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestPrepareProposal'height
           (\ x__ y__ -> x__ {_RequestPrepareProposal'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestPrepareProposal "time" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestPrepareProposal'time
           (\ x__ y__ -> x__ {_RequestPrepareProposal'time = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RequestPrepareProposal "maybe'time" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestPrepareProposal'time
           (\ x__ y__ -> x__ {_RequestPrepareProposal'time = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestPrepareProposal "nextValidatorsHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestPrepareProposal'nextValidatorsHash
           (\ x__ y__
              -> x__ {_RequestPrepareProposal'nextValidatorsHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestPrepareProposal "proposerAddress" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestPrepareProposal'proposerAddress
           (\ x__ y__ -> x__ {_RequestPrepareProposal'proposerAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestPrepareProposal where
  messageName _
    = Data.Text.pack "tendermint.abci.RequestPrepareProposal"
  packedMessageDescriptor _
    = "\n\
      \\SYNRequestPrepareProposal\DC2 \n\
      \\fmax_tx_bytes\CAN\SOH \SOH(\ETXR\n\
      \maxTxBytes\DC2\DLE\n\
      \\ETXtxs\CAN\STX \ETX(\fR\ETXtxs\DC2U\n\
      \\DC1local_last_commit\CAN\ETX \SOH(\v2#.tendermint.abci.ExtendedCommitInfoR\SIlocalLastCommitB\EOT\200\222\US\NUL\DC2D\n\
      \\vmisbehavior\CAN\EOT \ETX(\v2\FS.tendermint.abci.MisbehaviorR\vmisbehaviorB\EOT\200\222\US\NUL\DC2\SYN\n\
      \\ACKheight\CAN\ENQ \SOH(\ETXR\ACKheight\DC28\n\
      \\EOTtime\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\b\200\222\US\NUL\144\223\US\SOH\DC20\n\
      \\DC4next_validators_hash\CAN\a \SOH(\fR\DC2nextValidatorsHash\DC2)\n\
      \\DLEproposer_address\CAN\b \SOH(\fR\SIproposerAddress"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxTxBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_tx_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxTxBytes")) ::
              Data.ProtoLens.FieldDescriptor RequestPrepareProposal
        txs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "txs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"txs")) ::
              Data.ProtoLens.FieldDescriptor RequestPrepareProposal
        localLastCommit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_last_commit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ExtendedCommitInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'localLastCommit")) ::
              Data.ProtoLens.FieldDescriptor RequestPrepareProposal
        misbehavior__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "misbehavior"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Misbehavior)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"misbehavior")) ::
              Data.ProtoLens.FieldDescriptor RequestPrepareProposal
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor RequestPrepareProposal
        time__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'time")) ::
              Data.ProtoLens.FieldDescriptor RequestPrepareProposal
        nextValidatorsHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_validators_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"nextValidatorsHash")) ::
              Data.ProtoLens.FieldDescriptor RequestPrepareProposal
        proposerAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposer_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposerAddress")) ::
              Data.ProtoLens.FieldDescriptor RequestPrepareProposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxTxBytes__field_descriptor),
           (Data.ProtoLens.Tag 2, txs__field_descriptor),
           (Data.ProtoLens.Tag 3, localLastCommit__field_descriptor),
           (Data.ProtoLens.Tag 4, misbehavior__field_descriptor),
           (Data.ProtoLens.Tag 5, height__field_descriptor),
           (Data.ProtoLens.Tag 6, time__field_descriptor),
           (Data.ProtoLens.Tag 7, nextValidatorsHash__field_descriptor),
           (Data.ProtoLens.Tag 8, proposerAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestPrepareProposal'_unknownFields
        (\ x__ y__ -> x__ {_RequestPrepareProposal'_unknownFields = y__})
  defMessage
    = RequestPrepareProposal'_constructor
        {_RequestPrepareProposal'maxTxBytes = Data.ProtoLens.fieldDefault,
         _RequestPrepareProposal'txs = Data.Vector.Generic.empty,
         _RequestPrepareProposal'localLastCommit = Prelude.Nothing,
         _RequestPrepareProposal'misbehavior = Data.Vector.Generic.empty,
         _RequestPrepareProposal'height = Data.ProtoLens.fieldDefault,
         _RequestPrepareProposal'time = Prelude.Nothing,
         _RequestPrepareProposal'nextValidatorsHash = Data.ProtoLens.fieldDefault,
         _RequestPrepareProposal'proposerAddress = Data.ProtoLens.fieldDefault,
         _RequestPrepareProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestPrepareProposal
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Misbehavior
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
                -> Data.ProtoLens.Encoding.Bytes.Parser RequestPrepareProposal
        loop x mutable'misbehavior mutable'txs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'misbehavior <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'misbehavior)
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
                              (Data.ProtoLens.Field.field @"vec'misbehavior") frozen'misbehavior
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'txs") frozen'txs x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_tx_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxTxBytes") y x)
                                  mutable'misbehavior mutable'txs
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "txs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'txs y)
                                loop x mutable'misbehavior v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "local_last_commit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"localLastCommit") y x)
                                  mutable'misbehavior mutable'txs
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "misbehavior"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'misbehavior y)
                                loop x v mutable'txs
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                                  mutable'misbehavior mutable'txs
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"time") y x)
                                  mutable'misbehavior mutable'txs
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "next_validators_hash"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nextValidatorsHash") y x)
                                  mutable'misbehavior mutable'txs
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "proposer_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"proposerAddress") y x)
                                  mutable'misbehavior mutable'txs
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'misbehavior mutable'txs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'misbehavior <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'txs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'misbehavior mutable'txs)
          "RequestPrepareProposal"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"maxTxBytes") _x
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
                           ((\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'txs") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'localLastCommit") _x
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
                            (Data.ProtoLens.Field.field @"vec'misbehavior") _x))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'time") _x
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
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"nextValidatorsHash") _x
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
                                           (Data.ProtoLens.Field.field @"proposerAddress") _x
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
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData RequestPrepareProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestPrepareProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestPrepareProposal'maxTxBytes x__)
                (Control.DeepSeq.deepseq
                   (_RequestPrepareProposal'txs x__)
                   (Control.DeepSeq.deepseq
                      (_RequestPrepareProposal'localLastCommit x__)
                      (Control.DeepSeq.deepseq
                         (_RequestPrepareProposal'misbehavior x__)
                         (Control.DeepSeq.deepseq
                            (_RequestPrepareProposal'height x__)
                            (Control.DeepSeq.deepseq
                               (_RequestPrepareProposal'time x__)
                               (Control.DeepSeq.deepseq
                                  (_RequestPrepareProposal'nextValidatorsHash x__)
                                  (Control.DeepSeq.deepseq
                                     (_RequestPrepareProposal'proposerAddress x__) ()))))))))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.txs' @:: Lens' RequestProcessProposal [Data.ByteString.ByteString]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'txs' @:: Lens' RequestProcessProposal (Data.Vector.Vector Data.ByteString.ByteString)@
         * 'Proto.Tendermint.Abci.Types_Fields.proposedLastCommit' @:: Lens' RequestProcessProposal CommitInfo@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'proposedLastCommit' @:: Lens' RequestProcessProposal (Prelude.Maybe CommitInfo)@
         * 'Proto.Tendermint.Abci.Types_Fields.misbehavior' @:: Lens' RequestProcessProposal [Misbehavior]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'misbehavior' @:: Lens' RequestProcessProposal (Data.Vector.Vector Misbehavior)@
         * 'Proto.Tendermint.Abci.Types_Fields.hash' @:: Lens' RequestProcessProposal Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.height' @:: Lens' RequestProcessProposal Data.Int.Int64@
         * 'Proto.Tendermint.Abci.Types_Fields.time' @:: Lens' RequestProcessProposal Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'time' @:: Lens' RequestProcessProposal (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Tendermint.Abci.Types_Fields.nextValidatorsHash' @:: Lens' RequestProcessProposal Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.proposerAddress' @:: Lens' RequestProcessProposal Data.ByteString.ByteString@ -}
data RequestProcessProposal
  = RequestProcessProposal'_constructor {_RequestProcessProposal'txs :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                         _RequestProcessProposal'proposedLastCommit :: !(Prelude.Maybe CommitInfo),
                                         _RequestProcessProposal'misbehavior :: !(Data.Vector.Vector Misbehavior),
                                         _RequestProcessProposal'hash :: !Data.ByteString.ByteString,
                                         _RequestProcessProposal'height :: !Data.Int.Int64,
                                         _RequestProcessProposal'time :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                         _RequestProcessProposal'nextValidatorsHash :: !Data.ByteString.ByteString,
                                         _RequestProcessProposal'proposerAddress :: !Data.ByteString.ByteString,
                                         _RequestProcessProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestProcessProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestProcessProposal "txs" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestProcessProposal'txs
           (\ x__ y__ -> x__ {_RequestProcessProposal'txs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RequestProcessProposal "vec'txs" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestProcessProposal'txs
           (\ x__ y__ -> x__ {_RequestProcessProposal'txs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestProcessProposal "proposedLastCommit" CommitInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestProcessProposal'proposedLastCommit
           (\ x__ y__
              -> x__ {_RequestProcessProposal'proposedLastCommit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RequestProcessProposal "maybe'proposedLastCommit" (Prelude.Maybe CommitInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestProcessProposal'proposedLastCommit
           (\ x__ y__
              -> x__ {_RequestProcessProposal'proposedLastCommit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestProcessProposal "misbehavior" [Misbehavior] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestProcessProposal'misbehavior
           (\ x__ y__ -> x__ {_RequestProcessProposal'misbehavior = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RequestProcessProposal "vec'misbehavior" (Data.Vector.Vector Misbehavior) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestProcessProposal'misbehavior
           (\ x__ y__ -> x__ {_RequestProcessProposal'misbehavior = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestProcessProposal "hash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestProcessProposal'hash
           (\ x__ y__ -> x__ {_RequestProcessProposal'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestProcessProposal "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestProcessProposal'height
           (\ x__ y__ -> x__ {_RequestProcessProposal'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestProcessProposal "time" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestProcessProposal'time
           (\ x__ y__ -> x__ {_RequestProcessProposal'time = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RequestProcessProposal "maybe'time" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestProcessProposal'time
           (\ x__ y__ -> x__ {_RequestProcessProposal'time = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestProcessProposal "nextValidatorsHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestProcessProposal'nextValidatorsHash
           (\ x__ y__
              -> x__ {_RequestProcessProposal'nextValidatorsHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestProcessProposal "proposerAddress" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestProcessProposal'proposerAddress
           (\ x__ y__ -> x__ {_RequestProcessProposal'proposerAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestProcessProposal where
  messageName _
    = Data.Text.pack "tendermint.abci.RequestProcessProposal"
  packedMessageDescriptor _
    = "\n\
      \\SYNRequestProcessProposal\DC2\DLE\n\
      \\ETXtxs\CAN\SOH \ETX(\fR\ETXtxs\DC2S\n\
      \\DC4proposed_last_commit\CAN\STX \SOH(\v2\ESC.tendermint.abci.CommitInfoR\DC2proposedLastCommitB\EOT\200\222\US\NUL\DC2D\n\
      \\vmisbehavior\CAN\ETX \ETX(\v2\FS.tendermint.abci.MisbehaviorR\vmisbehaviorB\EOT\200\222\US\NUL\DC2\DC2\n\
      \\EOThash\CAN\EOT \SOH(\fR\EOThash\DC2\SYN\n\
      \\ACKheight\CAN\ENQ \SOH(\ETXR\ACKheight\DC28\n\
      \\EOTtime\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\b\200\222\US\NUL\144\223\US\SOH\DC20\n\
      \\DC4next_validators_hash\CAN\a \SOH(\fR\DC2nextValidatorsHash\DC2)\n\
      \\DLEproposer_address\CAN\b \SOH(\fR\SIproposerAddress"
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
              Data.ProtoLens.FieldDescriptor RequestProcessProposal
        proposedLastCommit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposed_last_commit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommitInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'proposedLastCommit")) ::
              Data.ProtoLens.FieldDescriptor RequestProcessProposal
        misbehavior__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "misbehavior"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Misbehavior)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"misbehavior")) ::
              Data.ProtoLens.FieldDescriptor RequestProcessProposal
        hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hash")) ::
              Data.ProtoLens.FieldDescriptor RequestProcessProposal
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor RequestProcessProposal
        time__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'time")) ::
              Data.ProtoLens.FieldDescriptor RequestProcessProposal
        nextValidatorsHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_validators_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"nextValidatorsHash")) ::
              Data.ProtoLens.FieldDescriptor RequestProcessProposal
        proposerAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposer_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposerAddress")) ::
              Data.ProtoLens.FieldDescriptor RequestProcessProposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, txs__field_descriptor),
           (Data.ProtoLens.Tag 2, proposedLastCommit__field_descriptor),
           (Data.ProtoLens.Tag 3, misbehavior__field_descriptor),
           (Data.ProtoLens.Tag 4, hash__field_descriptor),
           (Data.ProtoLens.Tag 5, height__field_descriptor),
           (Data.ProtoLens.Tag 6, time__field_descriptor),
           (Data.ProtoLens.Tag 7, nextValidatorsHash__field_descriptor),
           (Data.ProtoLens.Tag 8, proposerAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestProcessProposal'_unknownFields
        (\ x__ y__ -> x__ {_RequestProcessProposal'_unknownFields = y__})
  defMessage
    = RequestProcessProposal'_constructor
        {_RequestProcessProposal'txs = Data.Vector.Generic.empty,
         _RequestProcessProposal'proposedLastCommit = Prelude.Nothing,
         _RequestProcessProposal'misbehavior = Data.Vector.Generic.empty,
         _RequestProcessProposal'hash = Data.ProtoLens.fieldDefault,
         _RequestProcessProposal'height = Data.ProtoLens.fieldDefault,
         _RequestProcessProposal'time = Prelude.Nothing,
         _RequestProcessProposal'nextValidatorsHash = Data.ProtoLens.fieldDefault,
         _RequestProcessProposal'proposerAddress = Data.ProtoLens.fieldDefault,
         _RequestProcessProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestProcessProposal
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Misbehavior
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
                -> Data.ProtoLens.Encoding.Bytes.Parser RequestProcessProposal
        loop x mutable'misbehavior mutable'txs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'misbehavior <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'misbehavior)
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
                              (Data.ProtoLens.Field.field @"vec'misbehavior") frozen'misbehavior
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'txs") frozen'txs x)))
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
                                loop x mutable'misbehavior v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "proposed_last_commit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"proposedLastCommit") y x)
                                  mutable'misbehavior mutable'txs
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "misbehavior"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'misbehavior y)
                                loop x v mutable'txs
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "hash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y x)
                                  mutable'misbehavior mutable'txs
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                                  mutable'misbehavior mutable'txs
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"time") y x)
                                  mutable'misbehavior mutable'txs
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "next_validators_hash"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"nextValidatorsHash") y x)
                                  mutable'misbehavior mutable'txs
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "proposer_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"proposerAddress") y x)
                                  mutable'misbehavior mutable'txs
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'misbehavior mutable'txs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'misbehavior <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'txs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'misbehavior mutable'txs)
          "RequestProcessProposal"
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'proposedLastCommit") _x
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
                         (Data.ProtoLens.Field.field @"vec'misbehavior") _x))
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
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'time") _x
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
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"nextValidatorsHash") _x
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
                                           (Data.ProtoLens.Field.field @"proposerAddress") _x
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
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData RequestProcessProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestProcessProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestProcessProposal'txs x__)
                (Control.DeepSeq.deepseq
                   (_RequestProcessProposal'proposedLastCommit x__)
                   (Control.DeepSeq.deepseq
                      (_RequestProcessProposal'misbehavior x__)
                      (Control.DeepSeq.deepseq
                         (_RequestProcessProposal'hash x__)
                         (Control.DeepSeq.deepseq
                            (_RequestProcessProposal'height x__)
                            (Control.DeepSeq.deepseq
                               (_RequestProcessProposal'time x__)
                               (Control.DeepSeq.deepseq
                                  (_RequestProcessProposal'nextValidatorsHash x__)
                                  (Control.DeepSeq.deepseq
                                     (_RequestProcessProposal'proposerAddress x__) ()))))))))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.data'' @:: Lens' RequestQuery Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.path' @:: Lens' RequestQuery Data.Text.Text@
         * 'Proto.Tendermint.Abci.Types_Fields.height' @:: Lens' RequestQuery Data.Int.Int64@
         * 'Proto.Tendermint.Abci.Types_Fields.prove' @:: Lens' RequestQuery Prelude.Bool@ -}
data RequestQuery
  = RequestQuery'_constructor {_RequestQuery'data' :: !Data.ByteString.ByteString,
                               _RequestQuery'path :: !Data.Text.Text,
                               _RequestQuery'height :: !Data.Int.Int64,
                               _RequestQuery'prove :: !Prelude.Bool,
                               _RequestQuery'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestQuery where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestQuery "data'" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestQuery'data' (\ x__ y__ -> x__ {_RequestQuery'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestQuery "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestQuery'path (\ x__ y__ -> x__ {_RequestQuery'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestQuery "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestQuery'height
           (\ x__ y__ -> x__ {_RequestQuery'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestQuery "prove" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestQuery'prove (\ x__ y__ -> x__ {_RequestQuery'prove = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestQuery where
  messageName _ = Data.Text.pack "tendermint.abci.RequestQuery"
  packedMessageDescriptor _
    = "\n\
      \\fRequestQuery\DC2\DC2\n\
      \\EOTdata\CAN\SOH \SOH(\fR\EOTdata\DC2\DC2\n\
      \\EOTpath\CAN\STX \SOH(\tR\EOTpath\DC2\SYN\n\
      \\ACKheight\CAN\ETX \SOH(\ETXR\ACKheight\DC2\DC4\n\
      \\ENQprove\CAN\EOT \SOH(\bR\ENQprove"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor RequestQuery
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"path")) ::
              Data.ProtoLens.FieldDescriptor RequestQuery
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor RequestQuery
        prove__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prove"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"prove")) ::
              Data.ProtoLens.FieldDescriptor RequestQuery
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, data'__field_descriptor),
           (Data.ProtoLens.Tag 2, path__field_descriptor),
           (Data.ProtoLens.Tag 3, height__field_descriptor),
           (Data.ProtoLens.Tag 4, prove__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestQuery'_unknownFields
        (\ x__ y__ -> x__ {_RequestQuery'_unknownFields = y__})
  defMessage
    = RequestQuery'_constructor
        {_RequestQuery'data' = Data.ProtoLens.fieldDefault,
         _RequestQuery'path = Data.ProtoLens.fieldDefault,
         _RequestQuery'height = Data.ProtoLens.fieldDefault,
         _RequestQuery'prove = Data.ProtoLens.fieldDefault,
         _RequestQuery'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestQuery -> Data.ProtoLens.Encoding.Bytes.Parser RequestQuery
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
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
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
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "prove"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prove") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestQuery"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"path") _x
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
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"prove") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0) _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData RequestQuery where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestQuery'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestQuery'data' x__)
                (Control.DeepSeq.deepseq
                   (_RequestQuery'path x__)
                   (Control.DeepSeq.deepseq
                      (_RequestQuery'height x__)
                      (Control.DeepSeq.deepseq (_RequestQuery'prove x__) ()))))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.hash' @:: Lens' RequestVerifyVoteExtension Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.validatorAddress' @:: Lens' RequestVerifyVoteExtension Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.height' @:: Lens' RequestVerifyVoteExtension Data.Int.Int64@
         * 'Proto.Tendermint.Abci.Types_Fields.voteExtension' @:: Lens' RequestVerifyVoteExtension Data.ByteString.ByteString@ -}
data RequestVerifyVoteExtension
  = RequestVerifyVoteExtension'_constructor {_RequestVerifyVoteExtension'hash :: !Data.ByteString.ByteString,
                                             _RequestVerifyVoteExtension'validatorAddress :: !Data.ByteString.ByteString,
                                             _RequestVerifyVoteExtension'height :: !Data.Int.Int64,
                                             _RequestVerifyVoteExtension'voteExtension :: !Data.ByteString.ByteString,
                                             _RequestVerifyVoteExtension'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestVerifyVoteExtension where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RequestVerifyVoteExtension "hash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestVerifyVoteExtension'hash
           (\ x__ y__ -> x__ {_RequestVerifyVoteExtension'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestVerifyVoteExtension "validatorAddress" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestVerifyVoteExtension'validatorAddress
           (\ x__ y__
              -> x__ {_RequestVerifyVoteExtension'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestVerifyVoteExtension "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestVerifyVoteExtension'height
           (\ x__ y__ -> x__ {_RequestVerifyVoteExtension'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RequestVerifyVoteExtension "voteExtension" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RequestVerifyVoteExtension'voteExtension
           (\ x__ y__
              -> x__ {_RequestVerifyVoteExtension'voteExtension = y__}))
        Prelude.id
instance Data.ProtoLens.Message RequestVerifyVoteExtension where
  messageName _
    = Data.Text.pack "tendermint.abci.RequestVerifyVoteExtension"
  packedMessageDescriptor _
    = "\n\
      \\SUBRequestVerifyVoteExtension\DC2\DC2\n\
      \\EOThash\CAN\SOH \SOH(\fR\EOThash\DC2+\n\
      \\DC1validator_address\CAN\STX \SOH(\fR\DLEvalidatorAddress\DC2\SYN\n\
      \\ACKheight\CAN\ETX \SOH(\ETXR\ACKheight\DC2%\n\
      \\SOvote_extension\CAN\EOT \SOH(\fR\rvoteExtension"
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
              Data.ProtoLens.FieldDescriptor RequestVerifyVoteExtension
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor RequestVerifyVoteExtension
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor RequestVerifyVoteExtension
        voteExtension__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vote_extension"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"voteExtension")) ::
              Data.ProtoLens.FieldDescriptor RequestVerifyVoteExtension
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, hash__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, height__field_descriptor),
           (Data.ProtoLens.Tag 4, voteExtension__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RequestVerifyVoteExtension'_unknownFields
        (\ x__ y__
           -> x__ {_RequestVerifyVoteExtension'_unknownFields = y__})
  defMessage
    = RequestVerifyVoteExtension'_constructor
        {_RequestVerifyVoteExtension'hash = Data.ProtoLens.fieldDefault,
         _RequestVerifyVoteExtension'validatorAddress = Data.ProtoLens.fieldDefault,
         _RequestVerifyVoteExtension'height = Data.ProtoLens.fieldDefault,
         _RequestVerifyVoteExtension'voteExtension = Data.ProtoLens.fieldDefault,
         _RequestVerifyVoteExtension'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RequestVerifyVoteExtension
          -> Data.ProtoLens.Encoding.Bytes.Parser RequestVerifyVoteExtension
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "validator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddress") y x)
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "vote_extension"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"voteExtension") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestVerifyVoteExtension"
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
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"voteExtension") _x
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
instance Control.DeepSeq.NFData RequestVerifyVoteExtension where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RequestVerifyVoteExtension'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RequestVerifyVoteExtension'hash x__)
                (Control.DeepSeq.deepseq
                   (_RequestVerifyVoteExtension'validatorAddress x__)
                   (Control.DeepSeq.deepseq
                      (_RequestVerifyVoteExtension'height x__)
                      (Control.DeepSeq.deepseq
                         (_RequestVerifyVoteExtension'voteExtension x__) ()))))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'value' @:: Lens' Response (Prelude.Maybe Response'Value)@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'exception' @:: Lens' Response (Prelude.Maybe ResponseException)@
         * 'Proto.Tendermint.Abci.Types_Fields.exception' @:: Lens' Response ResponseException@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'echo' @:: Lens' Response (Prelude.Maybe ResponseEcho)@
         * 'Proto.Tendermint.Abci.Types_Fields.echo' @:: Lens' Response ResponseEcho@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'flush' @:: Lens' Response (Prelude.Maybe ResponseFlush)@
         * 'Proto.Tendermint.Abci.Types_Fields.flush' @:: Lens' Response ResponseFlush@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'info' @:: Lens' Response (Prelude.Maybe ResponseInfo)@
         * 'Proto.Tendermint.Abci.Types_Fields.info' @:: Lens' Response ResponseInfo@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'initChain' @:: Lens' Response (Prelude.Maybe ResponseInitChain)@
         * 'Proto.Tendermint.Abci.Types_Fields.initChain' @:: Lens' Response ResponseInitChain@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'query' @:: Lens' Response (Prelude.Maybe ResponseQuery)@
         * 'Proto.Tendermint.Abci.Types_Fields.query' @:: Lens' Response ResponseQuery@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'checkTx' @:: Lens' Response (Prelude.Maybe ResponseCheckTx)@
         * 'Proto.Tendermint.Abci.Types_Fields.checkTx' @:: Lens' Response ResponseCheckTx@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'commit' @:: Lens' Response (Prelude.Maybe ResponseCommit)@
         * 'Proto.Tendermint.Abci.Types_Fields.commit' @:: Lens' Response ResponseCommit@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'listSnapshots' @:: Lens' Response (Prelude.Maybe ResponseListSnapshots)@
         * 'Proto.Tendermint.Abci.Types_Fields.listSnapshots' @:: Lens' Response ResponseListSnapshots@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'offerSnapshot' @:: Lens' Response (Prelude.Maybe ResponseOfferSnapshot)@
         * 'Proto.Tendermint.Abci.Types_Fields.offerSnapshot' @:: Lens' Response ResponseOfferSnapshot@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'loadSnapshotChunk' @:: Lens' Response (Prelude.Maybe ResponseLoadSnapshotChunk)@
         * 'Proto.Tendermint.Abci.Types_Fields.loadSnapshotChunk' @:: Lens' Response ResponseLoadSnapshotChunk@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'applySnapshotChunk' @:: Lens' Response (Prelude.Maybe ResponseApplySnapshotChunk)@
         * 'Proto.Tendermint.Abci.Types_Fields.applySnapshotChunk' @:: Lens' Response ResponseApplySnapshotChunk@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'prepareProposal' @:: Lens' Response (Prelude.Maybe ResponsePrepareProposal)@
         * 'Proto.Tendermint.Abci.Types_Fields.prepareProposal' @:: Lens' Response ResponsePrepareProposal@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'processProposal' @:: Lens' Response (Prelude.Maybe ResponseProcessProposal)@
         * 'Proto.Tendermint.Abci.Types_Fields.processProposal' @:: Lens' Response ResponseProcessProposal@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'extendVote' @:: Lens' Response (Prelude.Maybe ResponseExtendVote)@
         * 'Proto.Tendermint.Abci.Types_Fields.extendVote' @:: Lens' Response ResponseExtendVote@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'verifyVoteExtension' @:: Lens' Response (Prelude.Maybe ResponseVerifyVoteExtension)@
         * 'Proto.Tendermint.Abci.Types_Fields.verifyVoteExtension' @:: Lens' Response ResponseVerifyVoteExtension@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'finalizeBlock' @:: Lens' Response (Prelude.Maybe ResponseFinalizeBlock)@
         * 'Proto.Tendermint.Abci.Types_Fields.finalizeBlock' @:: Lens' Response ResponseFinalizeBlock@ -}
data Response
  = Response'_constructor {_Response'value :: !(Prelude.Maybe Response'Value),
                           _Response'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Response where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Response'Value
  = Response'Exception !ResponseException |
    Response'Echo !ResponseEcho |
    Response'Flush !ResponseFlush |
    Response'Info !ResponseInfo |
    Response'InitChain !ResponseInitChain |
    Response'Query !ResponseQuery |
    Response'CheckTx !ResponseCheckTx |
    Response'Commit !ResponseCommit |
    Response'ListSnapshots !ResponseListSnapshots |
    Response'OfferSnapshot !ResponseOfferSnapshot |
    Response'LoadSnapshotChunk !ResponseLoadSnapshotChunk |
    Response'ApplySnapshotChunk !ResponseApplySnapshotChunk |
    Response'PrepareProposal !ResponsePrepareProposal |
    Response'ProcessProposal !ResponseProcessProposal |
    Response'ExtendVote !ResponseExtendVote |
    Response'VerifyVoteExtension !ResponseVerifyVoteExtension |
    Response'FinalizeBlock !ResponseFinalizeBlock
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Response "maybe'value" (Prelude.Maybe Response'Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Response "maybe'exception" (Prelude.Maybe ResponseException) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'Exception x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'Exception y__))
instance Data.ProtoLens.Field.HasField Response "exception" ResponseException where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'Exception x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'Exception y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'echo" (Prelude.Maybe ResponseEcho) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'Echo x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'Echo y__))
instance Data.ProtoLens.Field.HasField Response "echo" ResponseEcho where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'Echo x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'Echo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'flush" (Prelude.Maybe ResponseFlush) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'Flush x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'Flush y__))
instance Data.ProtoLens.Field.HasField Response "flush" ResponseFlush where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'Flush x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'Flush y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'info" (Prelude.Maybe ResponseInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'Info x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'Info y__))
instance Data.ProtoLens.Field.HasField Response "info" ResponseInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'Info x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'Info y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'initChain" (Prelude.Maybe ResponseInitChain) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'InitChain x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'InitChain y__))
instance Data.ProtoLens.Field.HasField Response "initChain" ResponseInitChain where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'InitChain x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'InitChain y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'query" (Prelude.Maybe ResponseQuery) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'Query x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'Query y__))
instance Data.ProtoLens.Field.HasField Response "query" ResponseQuery where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'Query x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'Query y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'checkTx" (Prelude.Maybe ResponseCheckTx) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'CheckTx x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'CheckTx y__))
instance Data.ProtoLens.Field.HasField Response "checkTx" ResponseCheckTx where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'CheckTx x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'CheckTx y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'commit" (Prelude.Maybe ResponseCommit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'Commit x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'Commit y__))
instance Data.ProtoLens.Field.HasField Response "commit" ResponseCommit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'Commit x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'Commit y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'listSnapshots" (Prelude.Maybe ResponseListSnapshots) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'ListSnapshots x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'ListSnapshots y__))
instance Data.ProtoLens.Field.HasField Response "listSnapshots" ResponseListSnapshots where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'ListSnapshots x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'ListSnapshots y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'offerSnapshot" (Prelude.Maybe ResponseOfferSnapshot) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'OfferSnapshot x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'OfferSnapshot y__))
instance Data.ProtoLens.Field.HasField Response "offerSnapshot" ResponseOfferSnapshot where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'OfferSnapshot x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'OfferSnapshot y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'loadSnapshotChunk" (Prelude.Maybe ResponseLoadSnapshotChunk) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'LoadSnapshotChunk x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'LoadSnapshotChunk y__))
instance Data.ProtoLens.Field.HasField Response "loadSnapshotChunk" ResponseLoadSnapshotChunk where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'LoadSnapshotChunk x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'LoadSnapshotChunk y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'applySnapshotChunk" (Prelude.Maybe ResponseApplySnapshotChunk) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'ApplySnapshotChunk x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'ApplySnapshotChunk y__))
instance Data.ProtoLens.Field.HasField Response "applySnapshotChunk" ResponseApplySnapshotChunk where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'ApplySnapshotChunk x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'ApplySnapshotChunk y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'prepareProposal" (Prelude.Maybe ResponsePrepareProposal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'PrepareProposal x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'PrepareProposal y__))
instance Data.ProtoLens.Field.HasField Response "prepareProposal" ResponsePrepareProposal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'PrepareProposal x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'PrepareProposal y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'processProposal" (Prelude.Maybe ResponseProcessProposal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'ProcessProposal x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'ProcessProposal y__))
instance Data.ProtoLens.Field.HasField Response "processProposal" ResponseProcessProposal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'ProcessProposal x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'ProcessProposal y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'extendVote" (Prelude.Maybe ResponseExtendVote) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'ExtendVote x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'ExtendVote y__))
instance Data.ProtoLens.Field.HasField Response "extendVote" ResponseExtendVote where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'ExtendVote x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'ExtendVote y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'verifyVoteExtension" (Prelude.Maybe ResponseVerifyVoteExtension) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'VerifyVoteExtension x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'VerifyVoteExtension y__))
instance Data.ProtoLens.Field.HasField Response "verifyVoteExtension" ResponseVerifyVoteExtension where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'VerifyVoteExtension x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'VerifyVoteExtension y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Response "maybe'finalizeBlock" (Prelude.Maybe ResponseFinalizeBlock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Response'FinalizeBlock x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Response'FinalizeBlock y__))
instance Data.ProtoLens.Field.HasField Response "finalizeBlock" ResponseFinalizeBlock where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Response'value (\ x__ y__ -> x__ {_Response'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Response'FinalizeBlock x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Response'FinalizeBlock y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Response where
  messageName _ = Data.Text.pack "tendermint.abci.Response"
  packedMessageDescriptor _
    = "\n\
      \\bResponse\DC2B\n\
      \\texception\CAN\SOH \SOH(\v2\".tendermint.abci.ResponseExceptionH\NULR\texception\DC23\n\
      \\EOTecho\CAN\STX \SOH(\v2\GS.tendermint.abci.ResponseEchoH\NULR\EOTecho\DC26\n\
      \\ENQflush\CAN\ETX \SOH(\v2\RS.tendermint.abci.ResponseFlushH\NULR\ENQflush\DC23\n\
      \\EOTinfo\CAN\EOT \SOH(\v2\GS.tendermint.abci.ResponseInfoH\NULR\EOTinfo\DC2C\n\
      \\n\
      \init_chain\CAN\ACK \SOH(\v2\".tendermint.abci.ResponseInitChainH\NULR\tinitChain\DC26\n\
      \\ENQquery\CAN\a \SOH(\v2\RS.tendermint.abci.ResponseQueryH\NULR\ENQquery\DC2=\n\
      \\bcheck_tx\CAN\t \SOH(\v2 .tendermint.abci.ResponseCheckTxH\NULR\acheckTx\DC29\n\
      \\ACKcommit\CAN\f \SOH(\v2\US.tendermint.abci.ResponseCommitH\NULR\ACKcommit\DC2O\n\
      \\SOlist_snapshots\CAN\r \SOH(\v2&.tendermint.abci.ResponseListSnapshotsH\NULR\rlistSnapshots\DC2O\n\
      \\SOoffer_snapshot\CAN\SO \SOH(\v2&.tendermint.abci.ResponseOfferSnapshotH\NULR\rofferSnapshot\DC2\\\n\
      \\DC3load_snapshot_chunk\CAN\SI \SOH(\v2*.tendermint.abci.ResponseLoadSnapshotChunkH\NULR\DC1loadSnapshotChunk\DC2_\n\
      \\DC4apply_snapshot_chunk\CAN\DLE \SOH(\v2+.tendermint.abci.ResponseApplySnapshotChunkH\NULR\DC2applySnapshotChunk\DC2U\n\
      \\DLEprepare_proposal\CAN\DC1 \SOH(\v2(.tendermint.abci.ResponsePrepareProposalH\NULR\SIprepareProposal\DC2U\n\
      \\DLEprocess_proposal\CAN\DC2 \SOH(\v2(.tendermint.abci.ResponseProcessProposalH\NULR\SIprocessProposal\DC2F\n\
      \\vextend_vote\CAN\DC3 \SOH(\v2#.tendermint.abci.ResponseExtendVoteH\NULR\n\
      \extendVote\DC2b\n\
      \\NAKverify_vote_extension\CAN\DC4 \SOH(\v2,.tendermint.abci.ResponseVerifyVoteExtensionH\NULR\DC3verifyVoteExtension\DC2O\n\
      \\SOfinalize_block\CAN\NAK \SOH(\v2&.tendermint.abci.ResponseFinalizeBlockH\NULR\rfinalizeBlockB\a\n\
      \\ENQvalueJ\EOT\b\ENQ\DLE\ACKJ\EOT\b\b\DLE\tJ\EOT\b\n\
      \\DLE\vJ\EOT\b\v\DLE\f"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        exception__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exception"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseException)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'exception")) ::
              Data.ProtoLens.FieldDescriptor Response
        echo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "echo"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseEcho)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'echo")) ::
              Data.ProtoLens.FieldDescriptor Response
        flush__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flush"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseFlush)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flush")) ::
              Data.ProtoLens.FieldDescriptor Response
        info__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'info")) ::
              Data.ProtoLens.FieldDescriptor Response
        initChain__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "init_chain"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseInitChain)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'initChain")) ::
              Data.ProtoLens.FieldDescriptor Response
        query__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "query"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseQuery)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'query")) ::
              Data.ProtoLens.FieldDescriptor Response
        checkTx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "check_tx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseCheckTx)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'checkTx")) ::
              Data.ProtoLens.FieldDescriptor Response
        commit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseCommit)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commit")) ::
              Data.ProtoLens.FieldDescriptor Response
        listSnapshots__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "list_snapshots"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseListSnapshots)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listSnapshots")) ::
              Data.ProtoLens.FieldDescriptor Response
        offerSnapshot__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "offer_snapshot"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseOfferSnapshot)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'offerSnapshot")) ::
              Data.ProtoLens.FieldDescriptor Response
        loadSnapshotChunk__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "load_snapshot_chunk"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseLoadSnapshotChunk)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'loadSnapshotChunk")) ::
              Data.ProtoLens.FieldDescriptor Response
        applySnapshotChunk__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "apply_snapshot_chunk"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseApplySnapshotChunk)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'applySnapshotChunk")) ::
              Data.ProtoLens.FieldDescriptor Response
        prepareProposal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prepare_proposal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponsePrepareProposal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prepareProposal")) ::
              Data.ProtoLens.FieldDescriptor Response
        processProposal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "process_proposal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseProcessProposal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'processProposal")) ::
              Data.ProtoLens.FieldDescriptor Response
        extendVote__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extend_vote"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseExtendVote)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'extendVote")) ::
              Data.ProtoLens.FieldDescriptor Response
        verifyVoteExtension__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "verify_vote_extension"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseVerifyVoteExtension)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'verifyVoteExtension")) ::
              Data.ProtoLens.FieldDescriptor Response
        finalizeBlock__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "finalize_block"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseFinalizeBlock)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'finalizeBlock")) ::
              Data.ProtoLens.FieldDescriptor Response
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, exception__field_descriptor),
           (Data.ProtoLens.Tag 2, echo__field_descriptor),
           (Data.ProtoLens.Tag 3, flush__field_descriptor),
           (Data.ProtoLens.Tag 4, info__field_descriptor),
           (Data.ProtoLens.Tag 6, initChain__field_descriptor),
           (Data.ProtoLens.Tag 7, query__field_descriptor),
           (Data.ProtoLens.Tag 9, checkTx__field_descriptor),
           (Data.ProtoLens.Tag 12, commit__field_descriptor),
           (Data.ProtoLens.Tag 13, listSnapshots__field_descriptor),
           (Data.ProtoLens.Tag 14, offerSnapshot__field_descriptor),
           (Data.ProtoLens.Tag 15, loadSnapshotChunk__field_descriptor),
           (Data.ProtoLens.Tag 16, applySnapshotChunk__field_descriptor),
           (Data.ProtoLens.Tag 17, prepareProposal__field_descriptor),
           (Data.ProtoLens.Tag 18, processProposal__field_descriptor),
           (Data.ProtoLens.Tag 19, extendVote__field_descriptor),
           (Data.ProtoLens.Tag 20, verifyVoteExtension__field_descriptor),
           (Data.ProtoLens.Tag 21, finalizeBlock__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Response'_unknownFields
        (\ x__ y__ -> x__ {_Response'_unknownFields = y__})
  defMessage
    = Response'_constructor
        {_Response'value = Prelude.Nothing, _Response'_unknownFields = []}
  parseMessage
    = let
        loop :: Response -> Data.ProtoLens.Encoding.Bytes.Parser Response
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
                                       "exception"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"exception") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "echo"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"echo") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "flush"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flush") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "info"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "init_chain"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"initChain") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "query"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"query") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "check_tx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"checkTx") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "commit"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"commit") y x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "list_snapshots"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"listSnapshots") y x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "offer_snapshot"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"offerSnapshot") y x)
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "load_snapshot_chunk"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"loadSnapshotChunk") y x)
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "apply_snapshot_chunk"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"applySnapshotChunk") y x)
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "prepare_proposal"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"prepareProposal") y x)
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "process_proposal"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"processProposal") y x)
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "extend_vote"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"extendVote") y x)
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "verify_vote_extension"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"verifyVoteExtension") y x)
                        170
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "finalize_block"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"finalizeBlock") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Response"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Response'Exception v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'Echo v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'Flush v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'Info v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'InitChain v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'Query v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'CheckTx v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'Commit v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'ListSnapshots v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'OfferSnapshot v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 114)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'LoadSnapshotChunk v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 122)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'ApplySnapshotChunk v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 130)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'PrepareProposal v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 138)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'ProcessProposal v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 146)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'ExtendVote v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 154)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'VerifyVoteExtension v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 162)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Response'FinalizeBlock v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 170)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Response where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Response'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Response'value x__) ())
instance Control.DeepSeq.NFData Response'Value where
  rnf (Response'Exception x__) = Control.DeepSeq.rnf x__
  rnf (Response'Echo x__) = Control.DeepSeq.rnf x__
  rnf (Response'Flush x__) = Control.DeepSeq.rnf x__
  rnf (Response'Info x__) = Control.DeepSeq.rnf x__
  rnf (Response'InitChain x__) = Control.DeepSeq.rnf x__
  rnf (Response'Query x__) = Control.DeepSeq.rnf x__
  rnf (Response'CheckTx x__) = Control.DeepSeq.rnf x__
  rnf (Response'Commit x__) = Control.DeepSeq.rnf x__
  rnf (Response'ListSnapshots x__) = Control.DeepSeq.rnf x__
  rnf (Response'OfferSnapshot x__) = Control.DeepSeq.rnf x__
  rnf (Response'LoadSnapshotChunk x__) = Control.DeepSeq.rnf x__
  rnf (Response'ApplySnapshotChunk x__) = Control.DeepSeq.rnf x__
  rnf (Response'PrepareProposal x__) = Control.DeepSeq.rnf x__
  rnf (Response'ProcessProposal x__) = Control.DeepSeq.rnf x__
  rnf (Response'ExtendVote x__) = Control.DeepSeq.rnf x__
  rnf (Response'VerifyVoteExtension x__) = Control.DeepSeq.rnf x__
  rnf (Response'FinalizeBlock x__) = Control.DeepSeq.rnf x__
_Response'Exception ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseException
_Response'Exception
  = Data.ProtoLens.Prism.prism'
      Response'Exception
      (\ p__
         -> case p__ of
              (Response'Exception p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'Echo ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseEcho
_Response'Echo
  = Data.ProtoLens.Prism.prism'
      Response'Echo
      (\ p__
         -> case p__ of
              (Response'Echo p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'Flush ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseFlush
_Response'Flush
  = Data.ProtoLens.Prism.prism'
      Response'Flush
      (\ p__
         -> case p__ of
              (Response'Flush p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'Info ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseInfo
_Response'Info
  = Data.ProtoLens.Prism.prism'
      Response'Info
      (\ p__
         -> case p__ of
              (Response'Info p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'InitChain ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseInitChain
_Response'InitChain
  = Data.ProtoLens.Prism.prism'
      Response'InitChain
      (\ p__
         -> case p__ of
              (Response'InitChain p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'Query ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseQuery
_Response'Query
  = Data.ProtoLens.Prism.prism'
      Response'Query
      (\ p__
         -> case p__ of
              (Response'Query p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'CheckTx ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseCheckTx
_Response'CheckTx
  = Data.ProtoLens.Prism.prism'
      Response'CheckTx
      (\ p__
         -> case p__ of
              (Response'CheckTx p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'Commit ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseCommit
_Response'Commit
  = Data.ProtoLens.Prism.prism'
      Response'Commit
      (\ p__
         -> case p__ of
              (Response'Commit p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'ListSnapshots ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseListSnapshots
_Response'ListSnapshots
  = Data.ProtoLens.Prism.prism'
      Response'ListSnapshots
      (\ p__
         -> case p__ of
              (Response'ListSnapshots p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'OfferSnapshot ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseOfferSnapshot
_Response'OfferSnapshot
  = Data.ProtoLens.Prism.prism'
      Response'OfferSnapshot
      (\ p__
         -> case p__ of
              (Response'OfferSnapshot p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'LoadSnapshotChunk ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseLoadSnapshotChunk
_Response'LoadSnapshotChunk
  = Data.ProtoLens.Prism.prism'
      Response'LoadSnapshotChunk
      (\ p__
         -> case p__ of
              (Response'LoadSnapshotChunk p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'ApplySnapshotChunk ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseApplySnapshotChunk
_Response'ApplySnapshotChunk
  = Data.ProtoLens.Prism.prism'
      Response'ApplySnapshotChunk
      (\ p__
         -> case p__ of
              (Response'ApplySnapshotChunk p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'PrepareProposal ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponsePrepareProposal
_Response'PrepareProposal
  = Data.ProtoLens.Prism.prism'
      Response'PrepareProposal
      (\ p__
         -> case p__ of
              (Response'PrepareProposal p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'ProcessProposal ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseProcessProposal
_Response'ProcessProposal
  = Data.ProtoLens.Prism.prism'
      Response'ProcessProposal
      (\ p__
         -> case p__ of
              (Response'ProcessProposal p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'ExtendVote ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseExtendVote
_Response'ExtendVote
  = Data.ProtoLens.Prism.prism'
      Response'ExtendVote
      (\ p__
         -> case p__ of
              (Response'ExtendVote p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'VerifyVoteExtension ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseVerifyVoteExtension
_Response'VerifyVoteExtension
  = Data.ProtoLens.Prism.prism'
      Response'VerifyVoteExtension
      (\ p__
         -> case p__ of
              (Response'VerifyVoteExtension p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Response'FinalizeBlock ::
  Data.ProtoLens.Prism.Prism' Response'Value ResponseFinalizeBlock
_Response'FinalizeBlock
  = Data.ProtoLens.Prism.prism'
      Response'FinalizeBlock
      (\ p__
         -> case p__ of
              (Response'FinalizeBlock p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.result' @:: Lens' ResponseApplySnapshotChunk ResponseApplySnapshotChunk'Result@
         * 'Proto.Tendermint.Abci.Types_Fields.refetchChunks' @:: Lens' ResponseApplySnapshotChunk [Data.Word.Word32]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'refetchChunks' @:: Lens' ResponseApplySnapshotChunk (Data.Vector.Unboxed.Vector Data.Word.Word32)@
         * 'Proto.Tendermint.Abci.Types_Fields.rejectSenders' @:: Lens' ResponseApplySnapshotChunk [Data.Text.Text]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'rejectSenders' @:: Lens' ResponseApplySnapshotChunk (Data.Vector.Vector Data.Text.Text)@ -}
data ResponseApplySnapshotChunk
  = ResponseApplySnapshotChunk'_constructor {_ResponseApplySnapshotChunk'result :: !ResponseApplySnapshotChunk'Result,
                                             _ResponseApplySnapshotChunk'refetchChunks :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                                             _ResponseApplySnapshotChunk'rejectSenders :: !(Data.Vector.Vector Data.Text.Text),
                                             _ResponseApplySnapshotChunk'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseApplySnapshotChunk where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseApplySnapshotChunk "result" ResponseApplySnapshotChunk'Result where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseApplySnapshotChunk'result
           (\ x__ y__ -> x__ {_ResponseApplySnapshotChunk'result = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseApplySnapshotChunk "refetchChunks" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseApplySnapshotChunk'refetchChunks
           (\ x__ y__
              -> x__ {_ResponseApplySnapshotChunk'refetchChunks = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ResponseApplySnapshotChunk "vec'refetchChunks" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseApplySnapshotChunk'refetchChunks
           (\ x__ y__
              -> x__ {_ResponseApplySnapshotChunk'refetchChunks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseApplySnapshotChunk "rejectSenders" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseApplySnapshotChunk'rejectSenders
           (\ x__ y__
              -> x__ {_ResponseApplySnapshotChunk'rejectSenders = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ResponseApplySnapshotChunk "vec'rejectSenders" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseApplySnapshotChunk'rejectSenders
           (\ x__ y__
              -> x__ {_ResponseApplySnapshotChunk'rejectSenders = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseApplySnapshotChunk where
  messageName _
    = Data.Text.pack "tendermint.abci.ResponseApplySnapshotChunk"
  packedMessageDescriptor _
    = "\n\
      \\SUBResponseApplySnapshotChunk\DC2J\n\
      \\ACKresult\CAN\SOH \SOH(\SO22.tendermint.abci.ResponseApplySnapshotChunk.ResultR\ACKresult\DC2%\n\
      \\SOrefetch_chunks\CAN\STX \ETX(\rR\rrefetchChunks\DC2%\n\
      \\SOreject_senders\CAN\ETX \ETX(\tR\rrejectSenders\"`\n\
      \\ACKResult\DC2\v\n\
      \\aUNKNOWN\DLE\NUL\DC2\n\
      \\n\
      \\ACKACCEPT\DLE\SOH\DC2\t\n\
      \\ENQABORT\DLE\STX\DC2\t\n\
      \\ENQRETRY\DLE\ETX\DC2\DC2\n\
      \\SORETRY_SNAPSHOT\DLE\EOT\DC2\DC3\n\
      \\SIREJECT_SNAPSHOT\DLE\ENQ"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseApplySnapshotChunk'Result)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"result")) ::
              Data.ProtoLens.FieldDescriptor ResponseApplySnapshotChunk
        refetchChunks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "refetch_chunks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"refetchChunks")) ::
              Data.ProtoLens.FieldDescriptor ResponseApplySnapshotChunk
        rejectSenders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reject_senders"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"rejectSenders")) ::
              Data.ProtoLens.FieldDescriptor ResponseApplySnapshotChunk
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, result__field_descriptor),
           (Data.ProtoLens.Tag 2, refetchChunks__field_descriptor),
           (Data.ProtoLens.Tag 3, rejectSenders__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseApplySnapshotChunk'_unknownFields
        (\ x__ y__
           -> x__ {_ResponseApplySnapshotChunk'_unknownFields = y__})
  defMessage
    = ResponseApplySnapshotChunk'_constructor
        {_ResponseApplySnapshotChunk'result = Data.ProtoLens.fieldDefault,
         _ResponseApplySnapshotChunk'refetchChunks = Data.Vector.Generic.empty,
         _ResponseApplySnapshotChunk'rejectSenders = Data.Vector.Generic.empty,
         _ResponseApplySnapshotChunk'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseApplySnapshotChunk
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser ResponseApplySnapshotChunk
        loop x mutable'refetchChunks mutable'rejectSenders
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'refetchChunks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'refetchChunks)
                      frozen'rejectSenders <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'rejectSenders)
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
                              (Data.ProtoLens.Field.field @"vec'refetchChunks")
                              frozen'refetchChunks
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'rejectSenders")
                                 frozen'rejectSenders x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "result"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"result") y x)
                                  mutable'refetchChunks mutable'rejectSenders
                        16
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "refetch_chunks"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'refetchChunks y)
                                loop x v mutable'rejectSenders
                        18
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "refetch_chunks"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'refetchChunks)
                                loop x y mutable'rejectSenders
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "reject_senders"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'rejectSenders y)
                                loop x mutable'refetchChunks v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'refetchChunks mutable'rejectSenders
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'refetchChunks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              mutable'rejectSenders <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'refetchChunks
                mutable'rejectSenders)
          "ResponseApplySnapshotChunk"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"result") _x
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
                   p = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'refetchChunks") _x
                 in
                   if Data.Vector.Generic.null p then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            (Data.ProtoLens.Encoding.Bytes.runBuilder
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  p))))
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
                                 Data.Text.Encoding.encodeUtf8 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'rejectSenders") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ResponseApplySnapshotChunk where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseApplySnapshotChunk'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResponseApplySnapshotChunk'result x__)
                (Control.DeepSeq.deepseq
                   (_ResponseApplySnapshotChunk'refetchChunks x__)
                   (Control.DeepSeq.deepseq
                      (_ResponseApplySnapshotChunk'rejectSenders x__) ())))
newtype ResponseApplySnapshotChunk'Result'UnrecognizedValue
  = ResponseApplySnapshotChunk'Result'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ResponseApplySnapshotChunk'Result
  = ResponseApplySnapshotChunk'UNKNOWN |
    ResponseApplySnapshotChunk'ACCEPT |
    ResponseApplySnapshotChunk'ABORT |
    ResponseApplySnapshotChunk'RETRY |
    ResponseApplySnapshotChunk'RETRY_SNAPSHOT |
    ResponseApplySnapshotChunk'REJECT_SNAPSHOT |
    ResponseApplySnapshotChunk'Result'Unrecognized !ResponseApplySnapshotChunk'Result'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ResponseApplySnapshotChunk'Result where
  maybeToEnum 0 = Prelude.Just ResponseApplySnapshotChunk'UNKNOWN
  maybeToEnum 1 = Prelude.Just ResponseApplySnapshotChunk'ACCEPT
  maybeToEnum 2 = Prelude.Just ResponseApplySnapshotChunk'ABORT
  maybeToEnum 3 = Prelude.Just ResponseApplySnapshotChunk'RETRY
  maybeToEnum 4
    = Prelude.Just ResponseApplySnapshotChunk'RETRY_SNAPSHOT
  maybeToEnum 5
    = Prelude.Just ResponseApplySnapshotChunk'REJECT_SNAPSHOT
  maybeToEnum k
    = Prelude.Just
        (ResponseApplySnapshotChunk'Result'Unrecognized
           (ResponseApplySnapshotChunk'Result'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ResponseApplySnapshotChunk'UNKNOWN = "UNKNOWN"
  showEnum ResponseApplySnapshotChunk'ACCEPT = "ACCEPT"
  showEnum ResponseApplySnapshotChunk'ABORT = "ABORT"
  showEnum ResponseApplySnapshotChunk'RETRY = "RETRY"
  showEnum ResponseApplySnapshotChunk'RETRY_SNAPSHOT
    = "RETRY_SNAPSHOT"
  showEnum ResponseApplySnapshotChunk'REJECT_SNAPSHOT
    = "REJECT_SNAPSHOT"
  showEnum
    (ResponseApplySnapshotChunk'Result'Unrecognized (ResponseApplySnapshotChunk'Result'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNKNOWN"
    = Prelude.Just ResponseApplySnapshotChunk'UNKNOWN
    | (Prelude.==) k "ACCEPT"
    = Prelude.Just ResponseApplySnapshotChunk'ACCEPT
    | (Prelude.==) k "ABORT"
    = Prelude.Just ResponseApplySnapshotChunk'ABORT
    | (Prelude.==) k "RETRY"
    = Prelude.Just ResponseApplySnapshotChunk'RETRY
    | (Prelude.==) k "RETRY_SNAPSHOT"
    = Prelude.Just ResponseApplySnapshotChunk'RETRY_SNAPSHOT
    | (Prelude.==) k "REJECT_SNAPSHOT"
    = Prelude.Just ResponseApplySnapshotChunk'REJECT_SNAPSHOT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ResponseApplySnapshotChunk'Result where
  minBound = ResponseApplySnapshotChunk'UNKNOWN
  maxBound = ResponseApplySnapshotChunk'REJECT_SNAPSHOT
instance Prelude.Enum ResponseApplySnapshotChunk'Result where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Result: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ResponseApplySnapshotChunk'UNKNOWN = 0
  fromEnum ResponseApplySnapshotChunk'ACCEPT = 1
  fromEnum ResponseApplySnapshotChunk'ABORT = 2
  fromEnum ResponseApplySnapshotChunk'RETRY = 3
  fromEnum ResponseApplySnapshotChunk'RETRY_SNAPSHOT = 4
  fromEnum ResponseApplySnapshotChunk'REJECT_SNAPSHOT = 5
  fromEnum
    (ResponseApplySnapshotChunk'Result'Unrecognized (ResponseApplySnapshotChunk'Result'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ResponseApplySnapshotChunk'REJECT_SNAPSHOT
    = Prelude.error
        "ResponseApplySnapshotChunk'Result.succ: bad argument ResponseApplySnapshotChunk'REJECT_SNAPSHOT. This value would be out of bounds."
  succ ResponseApplySnapshotChunk'UNKNOWN
    = ResponseApplySnapshotChunk'ACCEPT
  succ ResponseApplySnapshotChunk'ACCEPT
    = ResponseApplySnapshotChunk'ABORT
  succ ResponseApplySnapshotChunk'ABORT
    = ResponseApplySnapshotChunk'RETRY
  succ ResponseApplySnapshotChunk'RETRY
    = ResponseApplySnapshotChunk'RETRY_SNAPSHOT
  succ ResponseApplySnapshotChunk'RETRY_SNAPSHOT
    = ResponseApplySnapshotChunk'REJECT_SNAPSHOT
  succ (ResponseApplySnapshotChunk'Result'Unrecognized _)
    = Prelude.error
        "ResponseApplySnapshotChunk'Result.succ: bad argument: unrecognized value"
  pred ResponseApplySnapshotChunk'UNKNOWN
    = Prelude.error
        "ResponseApplySnapshotChunk'Result.pred: bad argument ResponseApplySnapshotChunk'UNKNOWN. This value would be out of bounds."
  pred ResponseApplySnapshotChunk'ACCEPT
    = ResponseApplySnapshotChunk'UNKNOWN
  pred ResponseApplySnapshotChunk'ABORT
    = ResponseApplySnapshotChunk'ACCEPT
  pred ResponseApplySnapshotChunk'RETRY
    = ResponseApplySnapshotChunk'ABORT
  pred ResponseApplySnapshotChunk'RETRY_SNAPSHOT
    = ResponseApplySnapshotChunk'RETRY
  pred ResponseApplySnapshotChunk'REJECT_SNAPSHOT
    = ResponseApplySnapshotChunk'RETRY_SNAPSHOT
  pred (ResponseApplySnapshotChunk'Result'Unrecognized _)
    = Prelude.error
        "ResponseApplySnapshotChunk'Result.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ResponseApplySnapshotChunk'Result where
  fieldDefault = ResponseApplySnapshotChunk'UNKNOWN
instance Control.DeepSeq.NFData ResponseApplySnapshotChunk'Result where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.code' @:: Lens' ResponseCheckTx Data.Word.Word32@
         * 'Proto.Tendermint.Abci.Types_Fields.data'' @:: Lens' ResponseCheckTx Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.log' @:: Lens' ResponseCheckTx Data.Text.Text@
         * 'Proto.Tendermint.Abci.Types_Fields.info' @:: Lens' ResponseCheckTx Data.Text.Text@
         * 'Proto.Tendermint.Abci.Types_Fields.gasWanted' @:: Lens' ResponseCheckTx Data.Int.Int64@
         * 'Proto.Tendermint.Abci.Types_Fields.gasUsed' @:: Lens' ResponseCheckTx Data.Int.Int64@
         * 'Proto.Tendermint.Abci.Types_Fields.events' @:: Lens' ResponseCheckTx [Event]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'events' @:: Lens' ResponseCheckTx (Data.Vector.Vector Event)@
         * 'Proto.Tendermint.Abci.Types_Fields.codespace' @:: Lens' ResponseCheckTx Data.Text.Text@ -}
data ResponseCheckTx
  = ResponseCheckTx'_constructor {_ResponseCheckTx'code :: !Data.Word.Word32,
                                  _ResponseCheckTx'data' :: !Data.ByteString.ByteString,
                                  _ResponseCheckTx'log :: !Data.Text.Text,
                                  _ResponseCheckTx'info :: !Data.Text.Text,
                                  _ResponseCheckTx'gasWanted :: !Data.Int.Int64,
                                  _ResponseCheckTx'gasUsed :: !Data.Int.Int64,
                                  _ResponseCheckTx'events :: !(Data.Vector.Vector Event),
                                  _ResponseCheckTx'codespace :: !Data.Text.Text,
                                  _ResponseCheckTx'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseCheckTx where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseCheckTx "code" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseCheckTx'code
           (\ x__ y__ -> x__ {_ResponseCheckTx'code = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseCheckTx "data'" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseCheckTx'data'
           (\ x__ y__ -> x__ {_ResponseCheckTx'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseCheckTx "log" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseCheckTx'log
           (\ x__ y__ -> x__ {_ResponseCheckTx'log = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseCheckTx "info" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseCheckTx'info
           (\ x__ y__ -> x__ {_ResponseCheckTx'info = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseCheckTx "gasWanted" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseCheckTx'gasWanted
           (\ x__ y__ -> x__ {_ResponseCheckTx'gasWanted = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseCheckTx "gasUsed" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseCheckTx'gasUsed
           (\ x__ y__ -> x__ {_ResponseCheckTx'gasUsed = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseCheckTx "events" [Event] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseCheckTx'events
           (\ x__ y__ -> x__ {_ResponseCheckTx'events = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ResponseCheckTx "vec'events" (Data.Vector.Vector Event) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseCheckTx'events
           (\ x__ y__ -> x__ {_ResponseCheckTx'events = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseCheckTx "codespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseCheckTx'codespace
           (\ x__ y__ -> x__ {_ResponseCheckTx'codespace = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseCheckTx where
  messageName _ = Data.Text.pack "tendermint.abci.ResponseCheckTx"
  packedMessageDescriptor _
    = "\n\
      \\SIResponseCheckTx\DC2\DC2\n\
      \\EOTcode\CAN\SOH \SOH(\rR\EOTcode\DC2\DC2\n\
      \\EOTdata\CAN\STX \SOH(\fR\EOTdata\DC2\DLE\n\
      \\ETXlog\CAN\ETX \SOH(\tR\ETXlog\DC2\DC2\n\
      \\EOTinfo\CAN\EOT \SOH(\tR\EOTinfo\DC2\RS\n\
      \\n\
      \gas_wanted\CAN\ENQ \SOH(\ETXR\n\
      \gas_wanted\DC2\SUB\n\
      \\bgas_used\CAN\ACK \SOH(\ETXR\bgas_used\DC2H\n\
      \\ACKevents\CAN\a \ETX(\v2\SYN.tendermint.abci.EventR\ACKeventsB\CAN\200\222\US\NUL\234\222\US\DLEevents,omitempty\DC2\FS\n\
      \\tcodespace\CAN\b \SOH(\tR\tcodespaceJ\EOT\b\t\DLE\fR\ACKsenderR\bpriorityR\rmempool_error"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        code__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"code")) ::
              Data.ProtoLens.FieldDescriptor ResponseCheckTx
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor ResponseCheckTx
        log__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"log")) ::
              Data.ProtoLens.FieldDescriptor ResponseCheckTx
        info__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"info")) ::
              Data.ProtoLens.FieldDescriptor ResponseCheckTx
        gasWanted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gas_wanted"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"gasWanted")) ::
              Data.ProtoLens.FieldDescriptor ResponseCheckTx
        gasUsed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gas_used"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"gasUsed")) ::
              Data.ProtoLens.FieldDescriptor ResponseCheckTx
        events__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "events"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Event)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"events")) ::
              Data.ProtoLens.FieldDescriptor ResponseCheckTx
        codespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "codespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"codespace")) ::
              Data.ProtoLens.FieldDescriptor ResponseCheckTx
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, code__field_descriptor),
           (Data.ProtoLens.Tag 2, data'__field_descriptor),
           (Data.ProtoLens.Tag 3, log__field_descriptor),
           (Data.ProtoLens.Tag 4, info__field_descriptor),
           (Data.ProtoLens.Tag 5, gasWanted__field_descriptor),
           (Data.ProtoLens.Tag 6, gasUsed__field_descriptor),
           (Data.ProtoLens.Tag 7, events__field_descriptor),
           (Data.ProtoLens.Tag 8, codespace__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseCheckTx'_unknownFields
        (\ x__ y__ -> x__ {_ResponseCheckTx'_unknownFields = y__})
  defMessage
    = ResponseCheckTx'_constructor
        {_ResponseCheckTx'code = Data.ProtoLens.fieldDefault,
         _ResponseCheckTx'data' = Data.ProtoLens.fieldDefault,
         _ResponseCheckTx'log = Data.ProtoLens.fieldDefault,
         _ResponseCheckTx'info = Data.ProtoLens.fieldDefault,
         _ResponseCheckTx'gasWanted = Data.ProtoLens.fieldDefault,
         _ResponseCheckTx'gasUsed = Data.ProtoLens.fieldDefault,
         _ResponseCheckTx'events = Data.Vector.Generic.empty,
         _ResponseCheckTx'codespace = Data.ProtoLens.fieldDefault,
         _ResponseCheckTx'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseCheckTx
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Event
             -> Data.ProtoLens.Encoding.Bytes.Parser ResponseCheckTx
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "code"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y x)
                                  mutable'events
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "data"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                                  mutable'events
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
                                       "log"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"log") y x)
                                  mutable'events
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y x)
                                  mutable'events
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gas_wanted"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gasWanted") y x)
                                  mutable'events
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gas_used"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gasUsed") y x)
                                  mutable'events
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "events"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'events y)
                                loop x v
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "codespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"codespace") y x)
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
          "ResponseCheckTx"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"code") _x
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
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"log") _x
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
                   ((Data.Monoid.<>)
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"info") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"gasWanted") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"gasUsed") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                        _v))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage _v))
                                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'events") _x))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"codespace") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8 _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData ResponseCheckTx where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseCheckTx'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResponseCheckTx'code x__)
                (Control.DeepSeq.deepseq
                   (_ResponseCheckTx'data' x__)
                   (Control.DeepSeq.deepseq
                      (_ResponseCheckTx'log x__)
                      (Control.DeepSeq.deepseq
                         (_ResponseCheckTx'info x__)
                         (Control.DeepSeq.deepseq
                            (_ResponseCheckTx'gasWanted x__)
                            (Control.DeepSeq.deepseq
                               (_ResponseCheckTx'gasUsed x__)
                               (Control.DeepSeq.deepseq
                                  (_ResponseCheckTx'events x__)
                                  (Control.DeepSeq.deepseq
                                     (_ResponseCheckTx'codespace x__) ()))))))))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.retainHeight' @:: Lens' ResponseCommit Data.Int.Int64@ -}
data ResponseCommit
  = ResponseCommit'_constructor {_ResponseCommit'retainHeight :: !Data.Int.Int64,
                                 _ResponseCommit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseCommit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseCommit "retainHeight" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseCommit'retainHeight
           (\ x__ y__ -> x__ {_ResponseCommit'retainHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseCommit where
  messageName _ = Data.Text.pack "tendermint.abci.ResponseCommit"
  packedMessageDescriptor _
    = "\n\
      \\SOResponseCommit\DC2#\n\
      \\rretain_height\CAN\ETX \SOH(\ETXR\fretainHeightJ\EOT\b\SOH\DLE\STXJ\EOT\b\STX\DLE\ETX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        retainHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "retain_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"retainHeight")) ::
              Data.ProtoLens.FieldDescriptor ResponseCommit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, retainHeight__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseCommit'_unknownFields
        (\ x__ y__ -> x__ {_ResponseCommit'_unknownFields = y__})
  defMessage
    = ResponseCommit'_constructor
        {_ResponseCommit'retainHeight = Data.ProtoLens.fieldDefault,
         _ResponseCommit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseCommit
          -> Data.ProtoLens.Encoding.Bytes.Parser ResponseCommit
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
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "retain_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"retainHeight") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResponseCommit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"retainHeight") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseCommit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseCommit'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ResponseCommit'retainHeight x__) ())
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.message' @:: Lens' ResponseEcho Data.Text.Text@ -}
data ResponseEcho
  = ResponseEcho'_constructor {_ResponseEcho'message :: !Data.Text.Text,
                               _ResponseEcho'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseEcho where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseEcho "message" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseEcho'message
           (\ x__ y__ -> x__ {_ResponseEcho'message = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseEcho where
  messageName _ = Data.Text.pack "tendermint.abci.ResponseEcho"
  packedMessageDescriptor _
    = "\n\
      \\fResponseEcho\DC2\CAN\n\
      \\amessage\CAN\SOH \SOH(\tR\amessage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        message__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"message")) ::
              Data.ProtoLens.FieldDescriptor ResponseEcho
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, message__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseEcho'_unknownFields
        (\ x__ y__ -> x__ {_ResponseEcho'_unknownFields = y__})
  defMessage
    = ResponseEcho'_constructor
        {_ResponseEcho'message = Data.ProtoLens.fieldDefault,
         _ResponseEcho'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseEcho -> Data.ProtoLens.Encoding.Bytes.Parser ResponseEcho
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
                                       "message"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"message") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResponseEcho"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"message") _x
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
instance Control.DeepSeq.NFData ResponseEcho where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseEcho'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ResponseEcho'message x__) ())
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.error' @:: Lens' ResponseException Data.Text.Text@ -}
data ResponseException
  = ResponseException'_constructor {_ResponseException'error :: !Data.Text.Text,
                                    _ResponseException'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseException where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseException "error" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseException'error
           (\ x__ y__ -> x__ {_ResponseException'error = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseException where
  messageName _ = Data.Text.pack "tendermint.abci.ResponseException"
  packedMessageDescriptor _
    = "\n\
      \\DC1ResponseException\DC2\DC4\n\
      \\ENQerror\CAN\SOH \SOH(\tR\ENQerror"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        error__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"error")) ::
              Data.ProtoLens.FieldDescriptor ResponseException
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, error__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseException'_unknownFields
        (\ x__ y__ -> x__ {_ResponseException'_unknownFields = y__})
  defMessage
    = ResponseException'_constructor
        {_ResponseException'error = Data.ProtoLens.fieldDefault,
         _ResponseException'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseException
          -> Data.ProtoLens.Encoding.Bytes.Parser ResponseException
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
                                       "error"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"error") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResponseException"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"error") _x
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
instance Control.DeepSeq.NFData ResponseException where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseException'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ResponseException'error x__) ())
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.voteExtension' @:: Lens' ResponseExtendVote Data.ByteString.ByteString@ -}
data ResponseExtendVote
  = ResponseExtendVote'_constructor {_ResponseExtendVote'voteExtension :: !Data.ByteString.ByteString,
                                     _ResponseExtendVote'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseExtendVote where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseExtendVote "voteExtension" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseExtendVote'voteExtension
           (\ x__ y__ -> x__ {_ResponseExtendVote'voteExtension = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseExtendVote where
  messageName _ = Data.Text.pack "tendermint.abci.ResponseExtendVote"
  packedMessageDescriptor _
    = "\n\
      \\DC2ResponseExtendVote\DC2%\n\
      \\SOvote_extension\CAN\SOH \SOH(\fR\rvoteExtension"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        voteExtension__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vote_extension"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"voteExtension")) ::
              Data.ProtoLens.FieldDescriptor ResponseExtendVote
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, voteExtension__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseExtendVote'_unknownFields
        (\ x__ y__ -> x__ {_ResponseExtendVote'_unknownFields = y__})
  defMessage
    = ResponseExtendVote'_constructor
        {_ResponseExtendVote'voteExtension = Data.ProtoLens.fieldDefault,
         _ResponseExtendVote'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseExtendVote
          -> Data.ProtoLens.Encoding.Bytes.Parser ResponseExtendVote
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
                                       "vote_extension"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"voteExtension") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResponseExtendVote"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"voteExtension") _x
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
instance Control.DeepSeq.NFData ResponseExtendVote where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseExtendVote'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResponseExtendVote'voteExtension x__) ())
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.events' @:: Lens' ResponseFinalizeBlock [Event]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'events' @:: Lens' ResponseFinalizeBlock (Data.Vector.Vector Event)@
         * 'Proto.Tendermint.Abci.Types_Fields.txResults' @:: Lens' ResponseFinalizeBlock [ExecTxResult]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'txResults' @:: Lens' ResponseFinalizeBlock (Data.Vector.Vector ExecTxResult)@
         * 'Proto.Tendermint.Abci.Types_Fields.validatorUpdates' @:: Lens' ResponseFinalizeBlock [ValidatorUpdate]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'validatorUpdates' @:: Lens' ResponseFinalizeBlock (Data.Vector.Vector ValidatorUpdate)@
         * 'Proto.Tendermint.Abci.Types_Fields.consensusParamUpdates' @:: Lens' ResponseFinalizeBlock Proto.Tendermint.Types.Params.ConsensusParams@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'consensusParamUpdates' @:: Lens' ResponseFinalizeBlock (Prelude.Maybe Proto.Tendermint.Types.Params.ConsensusParams)@
         * 'Proto.Tendermint.Abci.Types_Fields.appHash' @:: Lens' ResponseFinalizeBlock Data.ByteString.ByteString@ -}
data ResponseFinalizeBlock
  = ResponseFinalizeBlock'_constructor {_ResponseFinalizeBlock'events :: !(Data.Vector.Vector Event),
                                        _ResponseFinalizeBlock'txResults :: !(Data.Vector.Vector ExecTxResult),
                                        _ResponseFinalizeBlock'validatorUpdates :: !(Data.Vector.Vector ValidatorUpdate),
                                        _ResponseFinalizeBlock'consensusParamUpdates :: !(Prelude.Maybe Proto.Tendermint.Types.Params.ConsensusParams),
                                        _ResponseFinalizeBlock'appHash :: !Data.ByteString.ByteString,
                                        _ResponseFinalizeBlock'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseFinalizeBlock where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseFinalizeBlock "events" [Event] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFinalizeBlock'events
           (\ x__ y__ -> x__ {_ResponseFinalizeBlock'events = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ResponseFinalizeBlock "vec'events" (Data.Vector.Vector Event) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFinalizeBlock'events
           (\ x__ y__ -> x__ {_ResponseFinalizeBlock'events = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFinalizeBlock "txResults" [ExecTxResult] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFinalizeBlock'txResults
           (\ x__ y__ -> x__ {_ResponseFinalizeBlock'txResults = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ResponseFinalizeBlock "vec'txResults" (Data.Vector.Vector ExecTxResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFinalizeBlock'txResults
           (\ x__ y__ -> x__ {_ResponseFinalizeBlock'txResults = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFinalizeBlock "validatorUpdates" [ValidatorUpdate] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFinalizeBlock'validatorUpdates
           (\ x__ y__ -> x__ {_ResponseFinalizeBlock'validatorUpdates = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ResponseFinalizeBlock "vec'validatorUpdates" (Data.Vector.Vector ValidatorUpdate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFinalizeBlock'validatorUpdates
           (\ x__ y__ -> x__ {_ResponseFinalizeBlock'validatorUpdates = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFinalizeBlock "consensusParamUpdates" Proto.Tendermint.Types.Params.ConsensusParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFinalizeBlock'consensusParamUpdates
           (\ x__ y__
              -> x__ {_ResponseFinalizeBlock'consensusParamUpdates = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResponseFinalizeBlock "maybe'consensusParamUpdates" (Prelude.Maybe Proto.Tendermint.Types.Params.ConsensusParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFinalizeBlock'consensusParamUpdates
           (\ x__ y__
              -> x__ {_ResponseFinalizeBlock'consensusParamUpdates = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseFinalizeBlock "appHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseFinalizeBlock'appHash
           (\ x__ y__ -> x__ {_ResponseFinalizeBlock'appHash = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseFinalizeBlock where
  messageName _
    = Data.Text.pack "tendermint.abci.ResponseFinalizeBlock"
  packedMessageDescriptor _
    = "\n\
      \\NAKResponseFinalizeBlock\DC2H\n\
      \\ACKevents\CAN\SOH \ETX(\v2\SYN.tendermint.abci.EventR\ACKeventsB\CAN\200\222\US\NUL\234\222\US\DLEevents,omitempty\DC2<\n\
      \\n\
      \tx_results\CAN\STX \ETX(\v2\GS.tendermint.abci.ExecTxResultR\ttxResults\DC2S\n\
      \\DC1validator_updates\CAN\ETX \ETX(\v2 .tendermint.abci.ValidatorUpdateR\DLEvalidatorUpdatesB\EOT\200\222\US\NUL\DC2Y\n\
      \\ETBconsensus_param_updates\CAN\EOT \SOH(\v2!.tendermint.types.ConsensusParamsR\NAKconsensusParamUpdates\DC2\EM\n\
      \\bapp_hash\CAN\ENQ \SOH(\fR\aappHash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        events__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "events"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Event)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"events")) ::
              Data.ProtoLens.FieldDescriptor ResponseFinalizeBlock
        txResults__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx_results"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ExecTxResult)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"txResults")) ::
              Data.ProtoLens.FieldDescriptor ResponseFinalizeBlock
        validatorUpdates__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_updates"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ValidatorUpdate)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"validatorUpdates")) ::
              Data.ProtoLens.FieldDescriptor ResponseFinalizeBlock
        consensusParamUpdates__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "consensus_param_updates"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Params.ConsensusParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'consensusParamUpdates")) ::
              Data.ProtoLens.FieldDescriptor ResponseFinalizeBlock
        appHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"appHash")) ::
              Data.ProtoLens.FieldDescriptor ResponseFinalizeBlock
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, events__field_descriptor),
           (Data.ProtoLens.Tag 2, txResults__field_descriptor),
           (Data.ProtoLens.Tag 3, validatorUpdates__field_descriptor),
           (Data.ProtoLens.Tag 4, consensusParamUpdates__field_descriptor),
           (Data.ProtoLens.Tag 5, appHash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseFinalizeBlock'_unknownFields
        (\ x__ y__ -> x__ {_ResponseFinalizeBlock'_unknownFields = y__})
  defMessage
    = ResponseFinalizeBlock'_constructor
        {_ResponseFinalizeBlock'events = Data.Vector.Generic.empty,
         _ResponseFinalizeBlock'txResults = Data.Vector.Generic.empty,
         _ResponseFinalizeBlock'validatorUpdates = Data.Vector.Generic.empty,
         _ResponseFinalizeBlock'consensusParamUpdates = Prelude.Nothing,
         _ResponseFinalizeBlock'appHash = Data.ProtoLens.fieldDefault,
         _ResponseFinalizeBlock'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseFinalizeBlock
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Event
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ExecTxResult
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ValidatorUpdate
                   -> Data.ProtoLens.Encoding.Bytes.Parser ResponseFinalizeBlock
        loop x mutable'events mutable'txResults mutable'validatorUpdates
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'events <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'events)
                      frozen'txResults <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'txResults)
                      frozen'validatorUpdates <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'validatorUpdates)
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
                              (Data.ProtoLens.Field.field @"vec'events") frozen'events
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'txResults") frozen'txResults
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'validatorUpdates")
                                    frozen'validatorUpdates x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "events"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'events y)
                                loop x v mutable'txResults mutable'validatorUpdates
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "tx_results"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'txResults y)
                                loop x mutable'events v mutable'validatorUpdates
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "validator_updates"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'validatorUpdates y)
                                loop x mutable'events mutable'txResults v
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "consensus_param_updates"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"consensusParamUpdates") y x)
                                  mutable'events mutable'txResults mutable'validatorUpdates
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "app_hash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"appHash") y x)
                                  mutable'events mutable'txResults mutable'validatorUpdates
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'events mutable'txResults mutable'validatorUpdates
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'events <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'txResults <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'validatorUpdates <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'events mutable'txResults
                mutable'validatorUpdates)
          "ResponseFinalizeBlock"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'events") _x))
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
                      (Data.ProtoLens.Field.field @"vec'txResults") _x))
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
                         (Data.ProtoLens.Field.field @"vec'validatorUpdates") _x))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'consensusParamUpdates") _x
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
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"appHash") _x
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
instance Control.DeepSeq.NFData ResponseFinalizeBlock where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseFinalizeBlock'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResponseFinalizeBlock'events x__)
                (Control.DeepSeq.deepseq
                   (_ResponseFinalizeBlock'txResults x__)
                   (Control.DeepSeq.deepseq
                      (_ResponseFinalizeBlock'validatorUpdates x__)
                      (Control.DeepSeq.deepseq
                         (_ResponseFinalizeBlock'consensusParamUpdates x__)
                         (Control.DeepSeq.deepseq
                            (_ResponseFinalizeBlock'appHash x__) ())))))
{- | Fields :
      -}
data ResponseFlush
  = ResponseFlush'_constructor {_ResponseFlush'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseFlush where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message ResponseFlush where
  messageName _ = Data.Text.pack "tendermint.abci.ResponseFlush"
  packedMessageDescriptor _
    = "\n\
      \\rResponseFlush"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseFlush'_unknownFields
        (\ x__ y__ -> x__ {_ResponseFlush'_unknownFields = y__})
  defMessage
    = ResponseFlush'_constructor {_ResponseFlush'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseFlush -> Data.ProtoLens.Encoding.Bytes.Parser ResponseFlush
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
          (do loop Data.ProtoLens.defMessage) "ResponseFlush"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData ResponseFlush where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_ResponseFlush'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.data'' @:: Lens' ResponseInfo Data.Text.Text@
         * 'Proto.Tendermint.Abci.Types_Fields.version' @:: Lens' ResponseInfo Data.Text.Text@
         * 'Proto.Tendermint.Abci.Types_Fields.appVersion' @:: Lens' ResponseInfo Data.Word.Word64@
         * 'Proto.Tendermint.Abci.Types_Fields.lastBlockHeight' @:: Lens' ResponseInfo Data.Int.Int64@
         * 'Proto.Tendermint.Abci.Types_Fields.lastBlockAppHash' @:: Lens' ResponseInfo Data.ByteString.ByteString@ -}
data ResponseInfo
  = ResponseInfo'_constructor {_ResponseInfo'data' :: !Data.Text.Text,
                               _ResponseInfo'version :: !Data.Text.Text,
                               _ResponseInfo'appVersion :: !Data.Word.Word64,
                               _ResponseInfo'lastBlockHeight :: !Data.Int.Int64,
                               _ResponseInfo'lastBlockAppHash :: !Data.ByteString.ByteString,
                               _ResponseInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseInfo "data'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseInfo'data' (\ x__ y__ -> x__ {_ResponseInfo'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseInfo "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseInfo'version
           (\ x__ y__ -> x__ {_ResponseInfo'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseInfo "appVersion" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseInfo'appVersion
           (\ x__ y__ -> x__ {_ResponseInfo'appVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseInfo "lastBlockHeight" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseInfo'lastBlockHeight
           (\ x__ y__ -> x__ {_ResponseInfo'lastBlockHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseInfo "lastBlockAppHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseInfo'lastBlockAppHash
           (\ x__ y__ -> x__ {_ResponseInfo'lastBlockAppHash = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseInfo where
  messageName _ = Data.Text.pack "tendermint.abci.ResponseInfo"
  packedMessageDescriptor _
    = "\n\
      \\fResponseInfo\DC2\DC2\n\
      \\EOTdata\CAN\SOH \SOH(\tR\EOTdata\DC2\CAN\n\
      \\aversion\CAN\STX \SOH(\tR\aversion\DC2\US\n\
      \\vapp_version\CAN\ETX \SOH(\EOTR\n\
      \appVersion\DC2*\n\
      \\DC1last_block_height\CAN\EOT \SOH(\ETXR\SIlastBlockHeight\DC2-\n\
      \\DC3last_block_app_hash\CAN\ENQ \SOH(\fR\DLElastBlockAppHash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor ResponseInfo
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor ResponseInfo
        appVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"appVersion")) ::
              Data.ProtoLens.FieldDescriptor ResponseInfo
        lastBlockHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_block_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastBlockHeight")) ::
              Data.ProtoLens.FieldDescriptor ResponseInfo
        lastBlockAppHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_block_app_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastBlockAppHash")) ::
              Data.ProtoLens.FieldDescriptor ResponseInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, data'__field_descriptor),
           (Data.ProtoLens.Tag 2, version__field_descriptor),
           (Data.ProtoLens.Tag 3, appVersion__field_descriptor),
           (Data.ProtoLens.Tag 4, lastBlockHeight__field_descriptor),
           (Data.ProtoLens.Tag 5, lastBlockAppHash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseInfo'_unknownFields
        (\ x__ y__ -> x__ {_ResponseInfo'_unknownFields = y__})
  defMessage
    = ResponseInfo'_constructor
        {_ResponseInfo'data' = Data.ProtoLens.fieldDefault,
         _ResponseInfo'version = Data.ProtoLens.fieldDefault,
         _ResponseInfo'appVersion = Data.ProtoLens.fieldDefault,
         _ResponseInfo'lastBlockHeight = Data.ProtoLens.fieldDefault,
         _ResponseInfo'lastBlockAppHash = Data.ProtoLens.fieldDefault,
         _ResponseInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseInfo -> Data.ProtoLens.Encoding.Bytes.Parser ResponseInfo
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
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
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
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "app_version"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"appVersion") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "last_block_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastBlockHeight") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "last_block_app_hash"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastBlockAppHash") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResponseInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"appVersion") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"lastBlockHeight") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"lastBlockAppHash") _x
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
instance Control.DeepSeq.NFData ResponseInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResponseInfo'data' x__)
                (Control.DeepSeq.deepseq
                   (_ResponseInfo'version x__)
                   (Control.DeepSeq.deepseq
                      (_ResponseInfo'appVersion x__)
                      (Control.DeepSeq.deepseq
                         (_ResponseInfo'lastBlockHeight x__)
                         (Control.DeepSeq.deepseq
                            (_ResponseInfo'lastBlockAppHash x__) ())))))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.consensusParams' @:: Lens' ResponseInitChain Proto.Tendermint.Types.Params.ConsensusParams@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'consensusParams' @:: Lens' ResponseInitChain (Prelude.Maybe Proto.Tendermint.Types.Params.ConsensusParams)@
         * 'Proto.Tendermint.Abci.Types_Fields.validators' @:: Lens' ResponseInitChain [ValidatorUpdate]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'validators' @:: Lens' ResponseInitChain (Data.Vector.Vector ValidatorUpdate)@
         * 'Proto.Tendermint.Abci.Types_Fields.appHash' @:: Lens' ResponseInitChain Data.ByteString.ByteString@ -}
data ResponseInitChain
  = ResponseInitChain'_constructor {_ResponseInitChain'consensusParams :: !(Prelude.Maybe Proto.Tendermint.Types.Params.ConsensusParams),
                                    _ResponseInitChain'validators :: !(Data.Vector.Vector ValidatorUpdate),
                                    _ResponseInitChain'appHash :: !Data.ByteString.ByteString,
                                    _ResponseInitChain'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseInitChain where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseInitChain "consensusParams" Proto.Tendermint.Types.Params.ConsensusParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseInitChain'consensusParams
           (\ x__ y__ -> x__ {_ResponseInitChain'consensusParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResponseInitChain "maybe'consensusParams" (Prelude.Maybe Proto.Tendermint.Types.Params.ConsensusParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseInitChain'consensusParams
           (\ x__ y__ -> x__ {_ResponseInitChain'consensusParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseInitChain "validators" [ValidatorUpdate] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseInitChain'validators
           (\ x__ y__ -> x__ {_ResponseInitChain'validators = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ResponseInitChain "vec'validators" (Data.Vector.Vector ValidatorUpdate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseInitChain'validators
           (\ x__ y__ -> x__ {_ResponseInitChain'validators = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseInitChain "appHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseInitChain'appHash
           (\ x__ y__ -> x__ {_ResponseInitChain'appHash = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseInitChain where
  messageName _ = Data.Text.pack "tendermint.abci.ResponseInitChain"
  packedMessageDescriptor _
    = "\n\
      \\DC1ResponseInitChain\DC2L\n\
      \\DLEconsensus_params\CAN\SOH \SOH(\v2!.tendermint.types.ConsensusParamsR\SIconsensusParams\DC2F\n\
      \\n\
      \validators\CAN\STX \ETX(\v2 .tendermint.abci.ValidatorUpdateR\n\
      \validatorsB\EOT\200\222\US\NUL\DC2\EM\n\
      \\bapp_hash\CAN\ETX \SOH(\fR\aappHash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        consensusParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "consensus_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Params.ConsensusParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'consensusParams")) ::
              Data.ProtoLens.FieldDescriptor ResponseInitChain
        validators__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validators"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ValidatorUpdate)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"validators")) ::
              Data.ProtoLens.FieldDescriptor ResponseInitChain
        appHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"appHash")) ::
              Data.ProtoLens.FieldDescriptor ResponseInitChain
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, consensusParams__field_descriptor),
           (Data.ProtoLens.Tag 2, validators__field_descriptor),
           (Data.ProtoLens.Tag 3, appHash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseInitChain'_unknownFields
        (\ x__ y__ -> x__ {_ResponseInitChain'_unknownFields = y__})
  defMessage
    = ResponseInitChain'_constructor
        {_ResponseInitChain'consensusParams = Prelude.Nothing,
         _ResponseInitChain'validators = Data.Vector.Generic.empty,
         _ResponseInitChain'appHash = Data.ProtoLens.fieldDefault,
         _ResponseInitChain'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseInitChain
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ValidatorUpdate
             -> Data.ProtoLens.Encoding.Bytes.Parser ResponseInitChain
        loop x mutable'validators
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'validators)
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
                              (Data.ProtoLens.Field.field @"vec'validators") frozen'validators
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "consensus_params"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"consensusParams") y x)
                                  mutable'validators
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "validators"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'validators y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "app_hash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"appHash") y x)
                                  mutable'validators
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'validators
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'validators)
          "ResponseInitChain"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'consensusParams") _x
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
                      (Data.ProtoLens.Field.field @"vec'validators") _x))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"appHash") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ResponseInitChain where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseInitChain'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResponseInitChain'consensusParams x__)
                (Control.DeepSeq.deepseq
                   (_ResponseInitChain'validators x__)
                   (Control.DeepSeq.deepseq (_ResponseInitChain'appHash x__) ())))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.snapshots' @:: Lens' ResponseListSnapshots [Snapshot]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'snapshots' @:: Lens' ResponseListSnapshots (Data.Vector.Vector Snapshot)@ -}
data ResponseListSnapshots
  = ResponseListSnapshots'_constructor {_ResponseListSnapshots'snapshots :: !(Data.Vector.Vector Snapshot),
                                        _ResponseListSnapshots'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseListSnapshots where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseListSnapshots "snapshots" [Snapshot] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseListSnapshots'snapshots
           (\ x__ y__ -> x__ {_ResponseListSnapshots'snapshots = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ResponseListSnapshots "vec'snapshots" (Data.Vector.Vector Snapshot) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseListSnapshots'snapshots
           (\ x__ y__ -> x__ {_ResponseListSnapshots'snapshots = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseListSnapshots where
  messageName _
    = Data.Text.pack "tendermint.abci.ResponseListSnapshots"
  packedMessageDescriptor _
    = "\n\
      \\NAKResponseListSnapshots\DC27\n\
      \\tsnapshots\CAN\SOH \ETX(\v2\EM.tendermint.abci.SnapshotR\tsnapshots"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        snapshots__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "snapshots"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Snapshot)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"snapshots")) ::
              Data.ProtoLens.FieldDescriptor ResponseListSnapshots
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, snapshots__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseListSnapshots'_unknownFields
        (\ x__ y__ -> x__ {_ResponseListSnapshots'_unknownFields = y__})
  defMessage
    = ResponseListSnapshots'_constructor
        {_ResponseListSnapshots'snapshots = Data.Vector.Generic.empty,
         _ResponseListSnapshots'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseListSnapshots
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Snapshot
             -> Data.ProtoLens.Encoding.Bytes.Parser ResponseListSnapshots
        loop x mutable'snapshots
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'snapshots <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'snapshots)
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
                              (Data.ProtoLens.Field.field @"vec'snapshots") frozen'snapshots x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "snapshots"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'snapshots y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'snapshots
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'snapshots <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'snapshots)
          "ResponseListSnapshots"
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
                   (Data.ProtoLens.Field.field @"vec'snapshots") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseListSnapshots where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseListSnapshots'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ResponseListSnapshots'snapshots x__) ())
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.chunk' @:: Lens' ResponseLoadSnapshotChunk Data.ByteString.ByteString@ -}
data ResponseLoadSnapshotChunk
  = ResponseLoadSnapshotChunk'_constructor {_ResponseLoadSnapshotChunk'chunk :: !Data.ByteString.ByteString,
                                            _ResponseLoadSnapshotChunk'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseLoadSnapshotChunk where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseLoadSnapshotChunk "chunk" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseLoadSnapshotChunk'chunk
           (\ x__ y__ -> x__ {_ResponseLoadSnapshotChunk'chunk = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseLoadSnapshotChunk where
  messageName _
    = Data.Text.pack "tendermint.abci.ResponseLoadSnapshotChunk"
  packedMessageDescriptor _
    = "\n\
      \\EMResponseLoadSnapshotChunk\DC2\DC4\n\
      \\ENQchunk\CAN\SOH \SOH(\fR\ENQchunk"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        chunk__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunk"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"chunk")) ::
              Data.ProtoLens.FieldDescriptor ResponseLoadSnapshotChunk
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, chunk__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseLoadSnapshotChunk'_unknownFields
        (\ x__ y__
           -> x__ {_ResponseLoadSnapshotChunk'_unknownFields = y__})
  defMessage
    = ResponseLoadSnapshotChunk'_constructor
        {_ResponseLoadSnapshotChunk'chunk = Data.ProtoLens.fieldDefault,
         _ResponseLoadSnapshotChunk'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseLoadSnapshotChunk
          -> Data.ProtoLens.Encoding.Bytes.Parser ResponseLoadSnapshotChunk
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
                                       "chunk"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chunk") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResponseLoadSnapshotChunk"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"chunk") _x
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
instance Control.DeepSeq.NFData ResponseLoadSnapshotChunk where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseLoadSnapshotChunk'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ResponseLoadSnapshotChunk'chunk x__) ())
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.result' @:: Lens' ResponseOfferSnapshot ResponseOfferSnapshot'Result@ -}
data ResponseOfferSnapshot
  = ResponseOfferSnapshot'_constructor {_ResponseOfferSnapshot'result :: !ResponseOfferSnapshot'Result,
                                        _ResponseOfferSnapshot'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseOfferSnapshot where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseOfferSnapshot "result" ResponseOfferSnapshot'Result where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseOfferSnapshot'result
           (\ x__ y__ -> x__ {_ResponseOfferSnapshot'result = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseOfferSnapshot where
  messageName _
    = Data.Text.pack "tendermint.abci.ResponseOfferSnapshot"
  packedMessageDescriptor _
    = "\n\
      \\NAKResponseOfferSnapshot\DC2E\n\
      \\ACKresult\CAN\SOH \SOH(\SO2-.tendermint.abci.ResponseOfferSnapshot.ResultR\ACKresult\"^\n\
      \\ACKResult\DC2\v\n\
      \\aUNKNOWN\DLE\NUL\DC2\n\
      \\n\
      \\ACKACCEPT\DLE\SOH\DC2\t\n\
      \\ENQABORT\DLE\STX\DC2\n\
      \\n\
      \\ACKREJECT\DLE\ETX\DC2\DC1\n\
      \\rREJECT_FORMAT\DLE\EOT\DC2\DC1\n\
      \\rREJECT_SENDER\DLE\ENQ"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseOfferSnapshot'Result)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"result")) ::
              Data.ProtoLens.FieldDescriptor ResponseOfferSnapshot
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, result__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseOfferSnapshot'_unknownFields
        (\ x__ y__ -> x__ {_ResponseOfferSnapshot'_unknownFields = y__})
  defMessage
    = ResponseOfferSnapshot'_constructor
        {_ResponseOfferSnapshot'result = Data.ProtoLens.fieldDefault,
         _ResponseOfferSnapshot'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseOfferSnapshot
          -> Data.ProtoLens.Encoding.Bytes.Parser ResponseOfferSnapshot
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
          (do loop Data.ProtoLens.defMessage) "ResponseOfferSnapshot"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"result") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseOfferSnapshot where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseOfferSnapshot'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ResponseOfferSnapshot'result x__) ())
newtype ResponseOfferSnapshot'Result'UnrecognizedValue
  = ResponseOfferSnapshot'Result'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ResponseOfferSnapshot'Result
  = ResponseOfferSnapshot'UNKNOWN |
    ResponseOfferSnapshot'ACCEPT |
    ResponseOfferSnapshot'ABORT |
    ResponseOfferSnapshot'REJECT |
    ResponseOfferSnapshot'REJECT_FORMAT |
    ResponseOfferSnapshot'REJECT_SENDER |
    ResponseOfferSnapshot'Result'Unrecognized !ResponseOfferSnapshot'Result'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ResponseOfferSnapshot'Result where
  maybeToEnum 0 = Prelude.Just ResponseOfferSnapshot'UNKNOWN
  maybeToEnum 1 = Prelude.Just ResponseOfferSnapshot'ACCEPT
  maybeToEnum 2 = Prelude.Just ResponseOfferSnapshot'ABORT
  maybeToEnum 3 = Prelude.Just ResponseOfferSnapshot'REJECT
  maybeToEnum 4 = Prelude.Just ResponseOfferSnapshot'REJECT_FORMAT
  maybeToEnum 5 = Prelude.Just ResponseOfferSnapshot'REJECT_SENDER
  maybeToEnum k
    = Prelude.Just
        (ResponseOfferSnapshot'Result'Unrecognized
           (ResponseOfferSnapshot'Result'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ResponseOfferSnapshot'UNKNOWN = "UNKNOWN"
  showEnum ResponseOfferSnapshot'ACCEPT = "ACCEPT"
  showEnum ResponseOfferSnapshot'ABORT = "ABORT"
  showEnum ResponseOfferSnapshot'REJECT = "REJECT"
  showEnum ResponseOfferSnapshot'REJECT_FORMAT = "REJECT_FORMAT"
  showEnum ResponseOfferSnapshot'REJECT_SENDER = "REJECT_SENDER"
  showEnum
    (ResponseOfferSnapshot'Result'Unrecognized (ResponseOfferSnapshot'Result'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNKNOWN"
    = Prelude.Just ResponseOfferSnapshot'UNKNOWN
    | (Prelude.==) k "ACCEPT"
    = Prelude.Just ResponseOfferSnapshot'ACCEPT
    | (Prelude.==) k "ABORT" = Prelude.Just ResponseOfferSnapshot'ABORT
    | (Prelude.==) k "REJECT"
    = Prelude.Just ResponseOfferSnapshot'REJECT
    | (Prelude.==) k "REJECT_FORMAT"
    = Prelude.Just ResponseOfferSnapshot'REJECT_FORMAT
    | (Prelude.==) k "REJECT_SENDER"
    = Prelude.Just ResponseOfferSnapshot'REJECT_SENDER
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ResponseOfferSnapshot'Result where
  minBound = ResponseOfferSnapshot'UNKNOWN
  maxBound = ResponseOfferSnapshot'REJECT_SENDER
instance Prelude.Enum ResponseOfferSnapshot'Result where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Result: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ResponseOfferSnapshot'UNKNOWN = 0
  fromEnum ResponseOfferSnapshot'ACCEPT = 1
  fromEnum ResponseOfferSnapshot'ABORT = 2
  fromEnum ResponseOfferSnapshot'REJECT = 3
  fromEnum ResponseOfferSnapshot'REJECT_FORMAT = 4
  fromEnum ResponseOfferSnapshot'REJECT_SENDER = 5
  fromEnum
    (ResponseOfferSnapshot'Result'Unrecognized (ResponseOfferSnapshot'Result'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ResponseOfferSnapshot'REJECT_SENDER
    = Prelude.error
        "ResponseOfferSnapshot'Result.succ: bad argument ResponseOfferSnapshot'REJECT_SENDER. This value would be out of bounds."
  succ ResponseOfferSnapshot'UNKNOWN = ResponseOfferSnapshot'ACCEPT
  succ ResponseOfferSnapshot'ACCEPT = ResponseOfferSnapshot'ABORT
  succ ResponseOfferSnapshot'ABORT = ResponseOfferSnapshot'REJECT
  succ ResponseOfferSnapshot'REJECT
    = ResponseOfferSnapshot'REJECT_FORMAT
  succ ResponseOfferSnapshot'REJECT_FORMAT
    = ResponseOfferSnapshot'REJECT_SENDER
  succ (ResponseOfferSnapshot'Result'Unrecognized _)
    = Prelude.error
        "ResponseOfferSnapshot'Result.succ: bad argument: unrecognized value"
  pred ResponseOfferSnapshot'UNKNOWN
    = Prelude.error
        "ResponseOfferSnapshot'Result.pred: bad argument ResponseOfferSnapshot'UNKNOWN. This value would be out of bounds."
  pred ResponseOfferSnapshot'ACCEPT = ResponseOfferSnapshot'UNKNOWN
  pred ResponseOfferSnapshot'ABORT = ResponseOfferSnapshot'ACCEPT
  pred ResponseOfferSnapshot'REJECT = ResponseOfferSnapshot'ABORT
  pred ResponseOfferSnapshot'REJECT_FORMAT
    = ResponseOfferSnapshot'REJECT
  pred ResponseOfferSnapshot'REJECT_SENDER
    = ResponseOfferSnapshot'REJECT_FORMAT
  pred (ResponseOfferSnapshot'Result'Unrecognized _)
    = Prelude.error
        "ResponseOfferSnapshot'Result.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ResponseOfferSnapshot'Result where
  fieldDefault = ResponseOfferSnapshot'UNKNOWN
instance Control.DeepSeq.NFData ResponseOfferSnapshot'Result where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.txs' @:: Lens' ResponsePrepareProposal [Data.ByteString.ByteString]@
         * 'Proto.Tendermint.Abci.Types_Fields.vec'txs' @:: Lens' ResponsePrepareProposal (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data ResponsePrepareProposal
  = ResponsePrepareProposal'_constructor {_ResponsePrepareProposal'txs :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                          _ResponsePrepareProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponsePrepareProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponsePrepareProposal "txs" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponsePrepareProposal'txs
           (\ x__ y__ -> x__ {_ResponsePrepareProposal'txs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ResponsePrepareProposal "vec'txs" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponsePrepareProposal'txs
           (\ x__ y__ -> x__ {_ResponsePrepareProposal'txs = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponsePrepareProposal where
  messageName _
    = Data.Text.pack "tendermint.abci.ResponsePrepareProposal"
  packedMessageDescriptor _
    = "\n\
      \\ETBResponsePrepareProposal\DC2\DLE\n\
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
              Data.ProtoLens.FieldDescriptor ResponsePrepareProposal
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, txs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponsePrepareProposal'_unknownFields
        (\ x__ y__ -> x__ {_ResponsePrepareProposal'_unknownFields = y__})
  defMessage
    = ResponsePrepareProposal'_constructor
        {_ResponsePrepareProposal'txs = Data.Vector.Generic.empty,
         _ResponsePrepareProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponsePrepareProposal
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser ResponsePrepareProposal
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
          "ResponsePrepareProposal"
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
instance Control.DeepSeq.NFData ResponsePrepareProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponsePrepareProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ResponsePrepareProposal'txs x__) ())
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.status' @:: Lens' ResponseProcessProposal ResponseProcessProposal'ProposalStatus@ -}
data ResponseProcessProposal
  = ResponseProcessProposal'_constructor {_ResponseProcessProposal'status :: !ResponseProcessProposal'ProposalStatus,
                                          _ResponseProcessProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseProcessProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseProcessProposal "status" ResponseProcessProposal'ProposalStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseProcessProposal'status
           (\ x__ y__ -> x__ {_ResponseProcessProposal'status = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseProcessProposal where
  messageName _
    = Data.Text.pack "tendermint.abci.ResponseProcessProposal"
  packedMessageDescriptor _
    = "\n\
      \\ETBResponseProcessProposal\DC2O\n\
      \\ACKstatus\CAN\SOH \SOH(\SO27.tendermint.abci.ResponseProcessProposal.ProposalStatusR\ACKstatus\"5\n\
      \\SOProposalStatus\DC2\v\n\
      \\aUNKNOWN\DLE\NUL\DC2\n\
      \\n\
      \\ACKACCEPT\DLE\SOH\DC2\n\
      \\n\
      \\ACKREJECT\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseProcessProposal'ProposalStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor ResponseProcessProposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, status__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseProcessProposal'_unknownFields
        (\ x__ y__ -> x__ {_ResponseProcessProposal'_unknownFields = y__})
  defMessage
    = ResponseProcessProposal'_constructor
        {_ResponseProcessProposal'status = Data.ProtoLens.fieldDefault,
         _ResponseProcessProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseProcessProposal
          -> Data.ProtoLens.Encoding.Bytes.Parser ResponseProcessProposal
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
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResponseProcessProposal"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseProcessProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseProcessProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ResponseProcessProposal'status x__) ())
newtype ResponseProcessProposal'ProposalStatus'UnrecognizedValue
  = ResponseProcessProposal'ProposalStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ResponseProcessProposal'ProposalStatus
  = ResponseProcessProposal'UNKNOWN |
    ResponseProcessProposal'ACCEPT |
    ResponseProcessProposal'REJECT |
    ResponseProcessProposal'ProposalStatus'Unrecognized !ResponseProcessProposal'ProposalStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ResponseProcessProposal'ProposalStatus where
  maybeToEnum 0 = Prelude.Just ResponseProcessProposal'UNKNOWN
  maybeToEnum 1 = Prelude.Just ResponseProcessProposal'ACCEPT
  maybeToEnum 2 = Prelude.Just ResponseProcessProposal'REJECT
  maybeToEnum k
    = Prelude.Just
        (ResponseProcessProposal'ProposalStatus'Unrecognized
           (ResponseProcessProposal'ProposalStatus'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ResponseProcessProposal'UNKNOWN = "UNKNOWN"
  showEnum ResponseProcessProposal'ACCEPT = "ACCEPT"
  showEnum ResponseProcessProposal'REJECT = "REJECT"
  showEnum
    (ResponseProcessProposal'ProposalStatus'Unrecognized (ResponseProcessProposal'ProposalStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNKNOWN"
    = Prelude.Just ResponseProcessProposal'UNKNOWN
    | (Prelude.==) k "ACCEPT"
    = Prelude.Just ResponseProcessProposal'ACCEPT
    | (Prelude.==) k "REJECT"
    = Prelude.Just ResponseProcessProposal'REJECT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ResponseProcessProposal'ProposalStatus where
  minBound = ResponseProcessProposal'UNKNOWN
  maxBound = ResponseProcessProposal'REJECT
instance Prelude.Enum ResponseProcessProposal'ProposalStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ProposalStatus: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ResponseProcessProposal'UNKNOWN = 0
  fromEnum ResponseProcessProposal'ACCEPT = 1
  fromEnum ResponseProcessProposal'REJECT = 2
  fromEnum
    (ResponseProcessProposal'ProposalStatus'Unrecognized (ResponseProcessProposal'ProposalStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ResponseProcessProposal'REJECT
    = Prelude.error
        "ResponseProcessProposal'ProposalStatus.succ: bad argument ResponseProcessProposal'REJECT. This value would be out of bounds."
  succ ResponseProcessProposal'UNKNOWN
    = ResponseProcessProposal'ACCEPT
  succ ResponseProcessProposal'ACCEPT
    = ResponseProcessProposal'REJECT
  succ (ResponseProcessProposal'ProposalStatus'Unrecognized _)
    = Prelude.error
        "ResponseProcessProposal'ProposalStatus.succ: bad argument: unrecognized value"
  pred ResponseProcessProposal'UNKNOWN
    = Prelude.error
        "ResponseProcessProposal'ProposalStatus.pred: bad argument ResponseProcessProposal'UNKNOWN. This value would be out of bounds."
  pred ResponseProcessProposal'ACCEPT
    = ResponseProcessProposal'UNKNOWN
  pred ResponseProcessProposal'REJECT
    = ResponseProcessProposal'ACCEPT
  pred (ResponseProcessProposal'ProposalStatus'Unrecognized _)
    = Prelude.error
        "ResponseProcessProposal'ProposalStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ResponseProcessProposal'ProposalStatus where
  fieldDefault = ResponseProcessProposal'UNKNOWN
instance Control.DeepSeq.NFData ResponseProcessProposal'ProposalStatus where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.code' @:: Lens' ResponseQuery Data.Word.Word32@
         * 'Proto.Tendermint.Abci.Types_Fields.log' @:: Lens' ResponseQuery Data.Text.Text@
         * 'Proto.Tendermint.Abci.Types_Fields.info' @:: Lens' ResponseQuery Data.Text.Text@
         * 'Proto.Tendermint.Abci.Types_Fields.index' @:: Lens' ResponseQuery Data.Int.Int64@
         * 'Proto.Tendermint.Abci.Types_Fields.key' @:: Lens' ResponseQuery Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.value' @:: Lens' ResponseQuery Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.proofOps' @:: Lens' ResponseQuery Proto.Tendermint.Crypto.Proof.ProofOps@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'proofOps' @:: Lens' ResponseQuery (Prelude.Maybe Proto.Tendermint.Crypto.Proof.ProofOps)@
         * 'Proto.Tendermint.Abci.Types_Fields.height' @:: Lens' ResponseQuery Data.Int.Int64@
         * 'Proto.Tendermint.Abci.Types_Fields.codespace' @:: Lens' ResponseQuery Data.Text.Text@ -}
data ResponseQuery
  = ResponseQuery'_constructor {_ResponseQuery'code :: !Data.Word.Word32,
                                _ResponseQuery'log :: !Data.Text.Text,
                                _ResponseQuery'info :: !Data.Text.Text,
                                _ResponseQuery'index :: !Data.Int.Int64,
                                _ResponseQuery'key :: !Data.ByteString.ByteString,
                                _ResponseQuery'value :: !Data.ByteString.ByteString,
                                _ResponseQuery'proofOps :: !(Prelude.Maybe Proto.Tendermint.Crypto.Proof.ProofOps),
                                _ResponseQuery'height :: !Data.Int.Int64,
                                _ResponseQuery'codespace :: !Data.Text.Text,
                                _ResponseQuery'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseQuery where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseQuery "code" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseQuery'code (\ x__ y__ -> x__ {_ResponseQuery'code = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "log" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseQuery'log (\ x__ y__ -> x__ {_ResponseQuery'log = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "info" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseQuery'info (\ x__ y__ -> x__ {_ResponseQuery'info = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "index" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseQuery'index
           (\ x__ y__ -> x__ {_ResponseQuery'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "key" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseQuery'key (\ x__ y__ -> x__ {_ResponseQuery'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "value" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseQuery'value
           (\ x__ y__ -> x__ {_ResponseQuery'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "proofOps" Proto.Tendermint.Crypto.Proof.ProofOps where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseQuery'proofOps
           (\ x__ y__ -> x__ {_ResponseQuery'proofOps = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ResponseQuery "maybe'proofOps" (Prelude.Maybe Proto.Tendermint.Crypto.Proof.ProofOps) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseQuery'proofOps
           (\ x__ y__ -> x__ {_ResponseQuery'proofOps = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseQuery'height
           (\ x__ y__ -> x__ {_ResponseQuery'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ResponseQuery "codespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseQuery'codespace
           (\ x__ y__ -> x__ {_ResponseQuery'codespace = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseQuery where
  messageName _ = Data.Text.pack "tendermint.abci.ResponseQuery"
  packedMessageDescriptor _
    = "\n\
      \\rResponseQuery\DC2\DC2\n\
      \\EOTcode\CAN\SOH \SOH(\rR\EOTcode\DC2\DLE\n\
      \\ETXlog\CAN\ETX \SOH(\tR\ETXlog\DC2\DC2\n\
      \\EOTinfo\CAN\EOT \SOH(\tR\EOTinfo\DC2\DC4\n\
      \\ENQindex\CAN\ENQ \SOH(\ETXR\ENQindex\DC2\DLE\n\
      \\ETXkey\CAN\ACK \SOH(\fR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\a \SOH(\fR\ENQvalue\DC28\n\
      \\tproof_ops\CAN\b \SOH(\v2\ESC.tendermint.crypto.ProofOpsR\bproofOps\DC2\SYN\n\
      \\ACKheight\CAN\t \SOH(\ETXR\ACKheight\DC2\FS\n\
      \\tcodespace\CAN\n\
      \ \SOH(\tR\tcodespace"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        code__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"code")) ::
              Data.ProtoLens.FieldDescriptor ResponseQuery
        log__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"log")) ::
              Data.ProtoLens.FieldDescriptor ResponseQuery
        info__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"info")) ::
              Data.ProtoLens.FieldDescriptor ResponseQuery
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor ResponseQuery
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor ResponseQuery
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor ResponseQuery
        proofOps__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proof_ops"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Crypto.Proof.ProofOps)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'proofOps")) ::
              Data.ProtoLens.FieldDescriptor ResponseQuery
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor ResponseQuery
        codespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "codespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"codespace")) ::
              Data.ProtoLens.FieldDescriptor ResponseQuery
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, code__field_descriptor),
           (Data.ProtoLens.Tag 3, log__field_descriptor),
           (Data.ProtoLens.Tag 4, info__field_descriptor),
           (Data.ProtoLens.Tag 5, index__field_descriptor),
           (Data.ProtoLens.Tag 6, key__field_descriptor),
           (Data.ProtoLens.Tag 7, value__field_descriptor),
           (Data.ProtoLens.Tag 8, proofOps__field_descriptor),
           (Data.ProtoLens.Tag 9, height__field_descriptor),
           (Data.ProtoLens.Tag 10, codespace__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseQuery'_unknownFields
        (\ x__ y__ -> x__ {_ResponseQuery'_unknownFields = y__})
  defMessage
    = ResponseQuery'_constructor
        {_ResponseQuery'code = Data.ProtoLens.fieldDefault,
         _ResponseQuery'log = Data.ProtoLens.fieldDefault,
         _ResponseQuery'info = Data.ProtoLens.fieldDefault,
         _ResponseQuery'index = Data.ProtoLens.fieldDefault,
         _ResponseQuery'key = Data.ProtoLens.fieldDefault,
         _ResponseQuery'value = Data.ProtoLens.fieldDefault,
         _ResponseQuery'proofOps = Prelude.Nothing,
         _ResponseQuery'height = Data.ProtoLens.fieldDefault,
         _ResponseQuery'codespace = Data.ProtoLens.fieldDefault,
         _ResponseQuery'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseQuery -> Data.ProtoLens.Encoding.Bytes.Parser ResponseQuery
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
                                       "code"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y x)
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
                                       "log"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"log") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "info"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "proof_ops"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proofOps") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "codespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"codespace") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResponseQuery"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"code") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"log") _x
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
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"info") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                     ((\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'proofOps") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
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
                                       = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"codespace") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                              ((Prelude..)
                                                 (\ bs
                                                    -> (Data.Monoid.<>)
                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                            (Prelude.fromIntegral
                                                               (Data.ByteString.length bs)))
                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                            bs))
                                                 Data.Text.Encoding.encodeUtf8 _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData ResponseQuery where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseQuery'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResponseQuery'code x__)
                (Control.DeepSeq.deepseq
                   (_ResponseQuery'log x__)
                   (Control.DeepSeq.deepseq
                      (_ResponseQuery'info x__)
                      (Control.DeepSeq.deepseq
                         (_ResponseQuery'index x__)
                         (Control.DeepSeq.deepseq
                            (_ResponseQuery'key x__)
                            (Control.DeepSeq.deepseq
                               (_ResponseQuery'value x__)
                               (Control.DeepSeq.deepseq
                                  (_ResponseQuery'proofOps x__)
                                  (Control.DeepSeq.deepseq
                                     (_ResponseQuery'height x__)
                                     (Control.DeepSeq.deepseq
                                        (_ResponseQuery'codespace x__) ())))))))))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.status' @:: Lens' ResponseVerifyVoteExtension ResponseVerifyVoteExtension'VerifyStatus@ -}
data ResponseVerifyVoteExtension
  = ResponseVerifyVoteExtension'_constructor {_ResponseVerifyVoteExtension'status :: !ResponseVerifyVoteExtension'VerifyStatus,
                                              _ResponseVerifyVoteExtension'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseVerifyVoteExtension where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ResponseVerifyVoteExtension "status" ResponseVerifyVoteExtension'VerifyStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ResponseVerifyVoteExtension'status
           (\ x__ y__ -> x__ {_ResponseVerifyVoteExtension'status = y__}))
        Prelude.id
instance Data.ProtoLens.Message ResponseVerifyVoteExtension where
  messageName _
    = Data.Text.pack "tendermint.abci.ResponseVerifyVoteExtension"
  packedMessageDescriptor _
    = "\n\
      \\ESCResponseVerifyVoteExtension\DC2Q\n\
      \\ACKstatus\CAN\SOH \SOH(\SO29.tendermint.abci.ResponseVerifyVoteExtension.VerifyStatusR\ACKstatus\"3\n\
      \\fVerifyStatus\DC2\v\n\
      \\aUNKNOWN\DLE\NUL\DC2\n\
      \\n\
      \\ACKACCEPT\DLE\SOH\DC2\n\
      \\n\
      \\ACKREJECT\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ResponseVerifyVoteExtension'VerifyStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor ResponseVerifyVoteExtension
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, status__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ResponseVerifyVoteExtension'_unknownFields
        (\ x__ y__
           -> x__ {_ResponseVerifyVoteExtension'_unknownFields = y__})
  defMessage
    = ResponseVerifyVoteExtension'_constructor
        {_ResponseVerifyVoteExtension'status = Data.ProtoLens.fieldDefault,
         _ResponseVerifyVoteExtension'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ResponseVerifyVoteExtension
          -> Data.ProtoLens.Encoding.Bytes.Parser ResponseVerifyVoteExtension
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
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResponseVerifyVoteExtension"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ResponseVerifyVoteExtension where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ResponseVerifyVoteExtension'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ResponseVerifyVoteExtension'status x__) ())
newtype ResponseVerifyVoteExtension'VerifyStatus'UnrecognizedValue
  = ResponseVerifyVoteExtension'VerifyStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ResponseVerifyVoteExtension'VerifyStatus
  = ResponseVerifyVoteExtension'UNKNOWN |
    ResponseVerifyVoteExtension'ACCEPT |
    ResponseVerifyVoteExtension'REJECT |
    ResponseVerifyVoteExtension'VerifyStatus'Unrecognized !ResponseVerifyVoteExtension'VerifyStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ResponseVerifyVoteExtension'VerifyStatus where
  maybeToEnum 0 = Prelude.Just ResponseVerifyVoteExtension'UNKNOWN
  maybeToEnum 1 = Prelude.Just ResponseVerifyVoteExtension'ACCEPT
  maybeToEnum 2 = Prelude.Just ResponseVerifyVoteExtension'REJECT
  maybeToEnum k
    = Prelude.Just
        (ResponseVerifyVoteExtension'VerifyStatus'Unrecognized
           (ResponseVerifyVoteExtension'VerifyStatus'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ResponseVerifyVoteExtension'UNKNOWN = "UNKNOWN"
  showEnum ResponseVerifyVoteExtension'ACCEPT = "ACCEPT"
  showEnum ResponseVerifyVoteExtension'REJECT = "REJECT"
  showEnum
    (ResponseVerifyVoteExtension'VerifyStatus'Unrecognized (ResponseVerifyVoteExtension'VerifyStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UNKNOWN"
    = Prelude.Just ResponseVerifyVoteExtension'UNKNOWN
    | (Prelude.==) k "ACCEPT"
    = Prelude.Just ResponseVerifyVoteExtension'ACCEPT
    | (Prelude.==) k "REJECT"
    = Prelude.Just ResponseVerifyVoteExtension'REJECT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ResponseVerifyVoteExtension'VerifyStatus where
  minBound = ResponseVerifyVoteExtension'UNKNOWN
  maxBound = ResponseVerifyVoteExtension'REJECT
instance Prelude.Enum ResponseVerifyVoteExtension'VerifyStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum VerifyStatus: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ResponseVerifyVoteExtension'UNKNOWN = 0
  fromEnum ResponseVerifyVoteExtension'ACCEPT = 1
  fromEnum ResponseVerifyVoteExtension'REJECT = 2
  fromEnum
    (ResponseVerifyVoteExtension'VerifyStatus'Unrecognized (ResponseVerifyVoteExtension'VerifyStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ResponseVerifyVoteExtension'REJECT
    = Prelude.error
        "ResponseVerifyVoteExtension'VerifyStatus.succ: bad argument ResponseVerifyVoteExtension'REJECT. This value would be out of bounds."
  succ ResponseVerifyVoteExtension'UNKNOWN
    = ResponseVerifyVoteExtension'ACCEPT
  succ ResponseVerifyVoteExtension'ACCEPT
    = ResponseVerifyVoteExtension'REJECT
  succ (ResponseVerifyVoteExtension'VerifyStatus'Unrecognized _)
    = Prelude.error
        "ResponseVerifyVoteExtension'VerifyStatus.succ: bad argument: unrecognized value"
  pred ResponseVerifyVoteExtension'UNKNOWN
    = Prelude.error
        "ResponseVerifyVoteExtension'VerifyStatus.pred: bad argument ResponseVerifyVoteExtension'UNKNOWN. This value would be out of bounds."
  pred ResponseVerifyVoteExtension'ACCEPT
    = ResponseVerifyVoteExtension'UNKNOWN
  pred ResponseVerifyVoteExtension'REJECT
    = ResponseVerifyVoteExtension'ACCEPT
  pred (ResponseVerifyVoteExtension'VerifyStatus'Unrecognized _)
    = Prelude.error
        "ResponseVerifyVoteExtension'VerifyStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ResponseVerifyVoteExtension'VerifyStatus where
  fieldDefault = ResponseVerifyVoteExtension'UNKNOWN
instance Control.DeepSeq.NFData ResponseVerifyVoteExtension'VerifyStatus where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.height' @:: Lens' Snapshot Data.Word.Word64@
         * 'Proto.Tendermint.Abci.Types_Fields.format' @:: Lens' Snapshot Data.Word.Word32@
         * 'Proto.Tendermint.Abci.Types_Fields.chunks' @:: Lens' Snapshot Data.Word.Word32@
         * 'Proto.Tendermint.Abci.Types_Fields.hash' @:: Lens' Snapshot Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.metadata' @:: Lens' Snapshot Data.ByteString.ByteString@ -}
data Snapshot
  = Snapshot'_constructor {_Snapshot'height :: !Data.Word.Word64,
                           _Snapshot'format :: !Data.Word.Word32,
                           _Snapshot'chunks :: !Data.Word.Word32,
                           _Snapshot'hash :: !Data.ByteString.ByteString,
                           _Snapshot'metadata :: !Data.ByteString.ByteString,
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
instance Data.ProtoLens.Field.HasField Snapshot "metadata" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Snapshot'metadata (\ x__ y__ -> x__ {_Snapshot'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message Snapshot where
  messageName _ = Data.Text.pack "tendermint.abci.Snapshot"
  packedMessageDescriptor _
    = "\n\
      \\bSnapshot\DC2\SYN\n\
      \\ACKheight\CAN\SOH \SOH(\EOTR\ACKheight\DC2\SYN\n\
      \\ACKformat\CAN\STX \SOH(\rR\ACKformat\DC2\SYN\n\
      \\ACKchunks\CAN\ETX \SOH(\rR\ACKchunks\DC2\DC2\n\
      \\EOThash\CAN\EOT \SOH(\fR\EOThash\DC2\SUB\n\
      \\bmetadata\CAN\ENQ \SOH(\fR\bmetadata"
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
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
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
         _Snapshot'metadata = Data.ProtoLens.fieldDefault,
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
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
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x
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
     
         * 'Proto.Tendermint.Abci.Types_Fields.height' @:: Lens' TxResult Data.Int.Int64@
         * 'Proto.Tendermint.Abci.Types_Fields.index' @:: Lens' TxResult Data.Word.Word32@
         * 'Proto.Tendermint.Abci.Types_Fields.tx' @:: Lens' TxResult Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.result' @:: Lens' TxResult ExecTxResult@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'result' @:: Lens' TxResult (Prelude.Maybe ExecTxResult)@ -}
data TxResult
  = TxResult'_constructor {_TxResult'height :: !Data.Int.Int64,
                           _TxResult'index :: !Data.Word.Word32,
                           _TxResult'tx :: !Data.ByteString.ByteString,
                           _TxResult'result :: !(Prelude.Maybe ExecTxResult),
                           _TxResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxResult "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResult'height (\ x__ y__ -> x__ {_TxResult'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxResult "index" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResult'index (\ x__ y__ -> x__ {_TxResult'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxResult "tx" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResult'tx (\ x__ y__ -> x__ {_TxResult'tx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxResult "result" ExecTxResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResult'result (\ x__ y__ -> x__ {_TxResult'result = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TxResult "maybe'result" (Prelude.Maybe ExecTxResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxResult'result (\ x__ y__ -> x__ {_TxResult'result = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxResult where
  messageName _ = Data.Text.pack "tendermint.abci.TxResult"
  packedMessageDescriptor _
    = "\n\
      \\bTxResult\DC2\SYN\n\
      \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\DC2\DC4\n\
      \\ENQindex\CAN\STX \SOH(\rR\ENQindex\DC2\SO\n\
      \\STXtx\CAN\ETX \SOH(\fR\STXtx\DC2;\n\
      \\ACKresult\CAN\EOT \SOH(\v2\GS.tendermint.abci.ExecTxResultR\ACKresultB\EOT\200\222\US\NUL"
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
              Data.ProtoLens.FieldDescriptor TxResult
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor TxResult
        tx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"tx")) ::
              Data.ProtoLens.FieldDescriptor TxResult
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ExecTxResult)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor TxResult
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, height__field_descriptor),
           (Data.ProtoLens.Tag 2, index__field_descriptor),
           (Data.ProtoLens.Tag 3, tx__field_descriptor),
           (Data.ProtoLens.Tag 4, result__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxResult'_unknownFields
        (\ x__ y__ -> x__ {_TxResult'_unknownFields = y__})
  defMessage
    = TxResult'_constructor
        {_TxResult'height = Data.ProtoLens.fieldDefault,
         _TxResult'index = Data.ProtoLens.fieldDefault,
         _TxResult'tx = Data.ProtoLens.fieldDefault,
         _TxResult'result = Prelude.Nothing, _TxResult'_unknownFields = []}
  parseMessage
    = let
        loop :: TxResult -> Data.ProtoLens.Encoding.Bytes.Parser TxResult
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "tx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tx") y x)
                        34
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
          (do loop Data.ProtoLens.defMessage) "TxResult"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"tx") _x
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
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'result") _x
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
instance Control.DeepSeq.NFData TxResult where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxResult'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TxResult'height x__)
                (Control.DeepSeq.deepseq
                   (_TxResult'index x__)
                   (Control.DeepSeq.deepseq
                      (_TxResult'tx x__)
                      (Control.DeepSeq.deepseq (_TxResult'result x__) ()))))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.address' @:: Lens' Validator Data.ByteString.ByteString@
         * 'Proto.Tendermint.Abci.Types_Fields.power' @:: Lens' Validator Data.Int.Int64@ -}
data Validator
  = Validator'_constructor {_Validator'address :: !Data.ByteString.ByteString,
                            _Validator'power :: !Data.Int.Int64,
                            _Validator'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Validator where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Validator "address" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'address (\ x__ y__ -> x__ {_Validator'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "power" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'power (\ x__ y__ -> x__ {_Validator'power = y__}))
        Prelude.id
instance Data.ProtoLens.Message Validator where
  messageName _ = Data.Text.pack "tendermint.abci.Validator"
  packedMessageDescriptor _
    = "\n\
      \\tValidator\DC2\CAN\n\
      \\aaddress\CAN\SOH \SOH(\fR\aaddress\DC2\DC4\n\
      \\ENQpower\CAN\ETX \SOH(\ETXR\ENQpower"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor Validator
        power__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "power"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"power")) ::
              Data.ProtoLens.FieldDescriptor Validator
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 3, power__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Validator'_unknownFields
        (\ x__ y__ -> x__ {_Validator'_unknownFields = y__})
  defMessage
    = Validator'_constructor
        {_Validator'address = Data.ProtoLens.fieldDefault,
         _Validator'power = Data.ProtoLens.fieldDefault,
         _Validator'_unknownFields = []}
  parseMessage
    = let
        loop :: Validator -> Data.ProtoLens.Encoding.Bytes.Parser Validator
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "power"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"power") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Validator"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"power") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Validator where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Validator'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Validator'address x__)
                (Control.DeepSeq.deepseq (_Validator'power x__) ()))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.pubKey' @:: Lens' ValidatorUpdate Proto.Tendermint.Crypto.Keys.PublicKey@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'pubKey' @:: Lens' ValidatorUpdate (Prelude.Maybe Proto.Tendermint.Crypto.Keys.PublicKey)@
         * 'Proto.Tendermint.Abci.Types_Fields.power' @:: Lens' ValidatorUpdate Data.Int.Int64@ -}
data ValidatorUpdate
  = ValidatorUpdate'_constructor {_ValidatorUpdate'pubKey :: !(Prelude.Maybe Proto.Tendermint.Crypto.Keys.PublicKey),
                                  _ValidatorUpdate'power :: !Data.Int.Int64,
                                  _ValidatorUpdate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorUpdate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorUpdate "pubKey" Proto.Tendermint.Crypto.Keys.PublicKey where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorUpdate'pubKey
           (\ x__ y__ -> x__ {_ValidatorUpdate'pubKey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ValidatorUpdate "maybe'pubKey" (Prelude.Maybe Proto.Tendermint.Crypto.Keys.PublicKey) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorUpdate'pubKey
           (\ x__ y__ -> x__ {_ValidatorUpdate'pubKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorUpdate "power" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorUpdate'power
           (\ x__ y__ -> x__ {_ValidatorUpdate'power = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorUpdate where
  messageName _ = Data.Text.pack "tendermint.abci.ValidatorUpdate"
  packedMessageDescriptor _
    = "\n\
      \\SIValidatorUpdate\DC2;\n\
      \\apub_key\CAN\SOH \SOH(\v2\FS.tendermint.crypto.PublicKeyR\ACKpubKeyB\EOT\200\222\US\NUL\DC2\DC4\n\
      \\ENQpower\CAN\STX \SOH(\ETXR\ENQpower"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pubKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pub_key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Crypto.Keys.PublicKey)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pubKey")) ::
              Data.ProtoLens.FieldDescriptor ValidatorUpdate
        power__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "power"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"power")) ::
              Data.ProtoLens.FieldDescriptor ValidatorUpdate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pubKey__field_descriptor),
           (Data.ProtoLens.Tag 2, power__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorUpdate'_unknownFields
        (\ x__ y__ -> x__ {_ValidatorUpdate'_unknownFields = y__})
  defMessage
    = ValidatorUpdate'_constructor
        {_ValidatorUpdate'pubKey = Prelude.Nothing,
         _ValidatorUpdate'power = Data.ProtoLens.fieldDefault,
         _ValidatorUpdate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorUpdate
          -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorUpdate
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
                                       "pub_key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pubKey") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "power"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"power") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ValidatorUpdate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pubKey") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"power") _x
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
instance Control.DeepSeq.NFData ValidatorUpdate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorUpdate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValidatorUpdate'pubKey x__)
                (Control.DeepSeq.deepseq (_ValidatorUpdate'power x__) ()))
{- | Fields :
     
         * 'Proto.Tendermint.Abci.Types_Fields.validator' @:: Lens' VoteInfo Validator@
         * 'Proto.Tendermint.Abci.Types_Fields.maybe'validator' @:: Lens' VoteInfo (Prelude.Maybe Validator)@
         * 'Proto.Tendermint.Abci.Types_Fields.blockIdFlag' @:: Lens' VoteInfo Proto.Tendermint.Types.Validator.BlockIDFlag@ -}
data VoteInfo
  = VoteInfo'_constructor {_VoteInfo'validator :: !(Prelude.Maybe Validator),
                           _VoteInfo'blockIdFlag :: !Proto.Tendermint.Types.Validator.BlockIDFlag,
                           _VoteInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VoteInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VoteInfo "validator" Validator where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VoteInfo'validator (\ x__ y__ -> x__ {_VoteInfo'validator = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField VoteInfo "maybe'validator" (Prelude.Maybe Validator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VoteInfo'validator (\ x__ y__ -> x__ {_VoteInfo'validator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VoteInfo "blockIdFlag" Proto.Tendermint.Types.Validator.BlockIDFlag where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VoteInfo'blockIdFlag
           (\ x__ y__ -> x__ {_VoteInfo'blockIdFlag = y__}))
        Prelude.id
instance Data.ProtoLens.Message VoteInfo where
  messageName _ = Data.Text.pack "tendermint.abci.VoteInfo"
  packedMessageDescriptor _
    = "\n\
      \\bVoteInfo\DC2>\n\
      \\tvalidator\CAN\SOH \SOH(\v2\SUB.tendermint.abci.ValidatorR\tvalidatorB\EOT\200\222\US\NUL\DC2A\n\
      \\rblock_id_flag\CAN\ETX \SOH(\SO2\GS.tendermint.types.BlockIDFlagR\vblockIdFlagJ\EOT\b\STX\DLE\ETX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Validator)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validator")) ::
              Data.ProtoLens.FieldDescriptor VoteInfo
        blockIdFlag__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_id_flag"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Validator.BlockIDFlag)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blockIdFlag")) ::
              Data.ProtoLens.FieldDescriptor VoteInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validator__field_descriptor),
           (Data.ProtoLens.Tag 3, blockIdFlag__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VoteInfo'_unknownFields
        (\ x__ y__ -> x__ {_VoteInfo'_unknownFields = y__})
  defMessage
    = VoteInfo'_constructor
        {_VoteInfo'validator = Prelude.Nothing,
         _VoteInfo'blockIdFlag = Data.ProtoLens.fieldDefault,
         _VoteInfo'_unknownFields = []}
  parseMessage
    = let
        loop :: VoteInfo -> Data.ProtoLens.Encoding.Bytes.Parser VoteInfo
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
                                       "validator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"validator") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "block_id_flag"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"blockIdFlag") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "VoteInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'validator") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"blockIdFlag") _x
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
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData VoteInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VoteInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_VoteInfo'validator x__)
                (Control.DeepSeq.deepseq (_VoteInfo'blockIdFlag x__) ()))
data ABCI = ABCI {}
instance Data.ProtoLens.Service.Types.Service ABCI where
  type ServiceName ABCI = "ABCI"
  type ServicePackage ABCI = "tendermint.abci"
  type ServiceMethods ABCI = '["applySnapshotChunk",
                               "checkTx",
                               "commit",
                               "echo",
                               "extendVote",
                               "finalizeBlock",
                               "flush",
                               "info",
                               "initChain",
                               "listSnapshots",
                               "loadSnapshotChunk",
                               "offerSnapshot",
                               "prepareProposal",
                               "processProposal",
                               "query",
                               "verifyVoteExtension"]
  packedServiceDescriptor _
    = "\n\
      \\EOTABCI\DC2C\n\
      \\EOTEcho\DC2\FS.tendermint.abci.RequestEcho\SUB\GS.tendermint.abci.ResponseEcho\DC2F\n\
      \\ENQFlush\DC2\GS.tendermint.abci.RequestFlush\SUB\RS.tendermint.abci.ResponseFlush\DC2C\n\
      \\EOTInfo\DC2\FS.tendermint.abci.RequestInfo\SUB\GS.tendermint.abci.ResponseInfo\DC2L\n\
      \\aCheckTx\DC2\US.tendermint.abci.RequestCheckTx\SUB .tendermint.abci.ResponseCheckTx\DC2F\n\
      \\ENQQuery\DC2\GS.tendermint.abci.RequestQuery\SUB\RS.tendermint.abci.ResponseQuery\DC2I\n\
      \\ACKCommit\DC2\RS.tendermint.abci.RequestCommit\SUB\US.tendermint.abci.ResponseCommit\DC2R\n\
      \\tInitChain\DC2!.tendermint.abci.RequestInitChain\SUB\".tendermint.abci.ResponseInitChain\DC2^\n\
      \\rListSnapshots\DC2%.tendermint.abci.RequestListSnapshots\SUB&.tendermint.abci.ResponseListSnapshots\DC2^\n\
      \\rOfferSnapshot\DC2%.tendermint.abci.RequestOfferSnapshot\SUB&.tendermint.abci.ResponseOfferSnapshot\DC2j\n\
      \\DC1LoadSnapshotChunk\DC2).tendermint.abci.RequestLoadSnapshotChunk\SUB*.tendermint.abci.ResponseLoadSnapshotChunk\DC2m\n\
      \\DC2ApplySnapshotChunk\DC2*.tendermint.abci.RequestApplySnapshotChunk\SUB+.tendermint.abci.ResponseApplySnapshotChunk\DC2d\n\
      \\SIPrepareProposal\DC2'.tendermint.abci.RequestPrepareProposal\SUB(.tendermint.abci.ResponsePrepareProposal\DC2d\n\
      \\SIProcessProposal\DC2'.tendermint.abci.RequestProcessProposal\SUB(.tendermint.abci.ResponseProcessProposal\DC2U\n\
      \\n\
      \ExtendVote\DC2\".tendermint.abci.RequestExtendVote\SUB#.tendermint.abci.ResponseExtendVote\DC2p\n\
      \\DC3VerifyVoteExtension\DC2+.tendermint.abci.RequestVerifyVoteExtension\SUB,.tendermint.abci.ResponseVerifyVoteExtension\DC2^\n\
      \\rFinalizeBlock\DC2%.tendermint.abci.RequestFinalizeBlock\SUB&.tendermint.abci.ResponseFinalizeBlock"
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "echo" where
  type MethodName ABCI "echo" = "Echo"
  type MethodInput ABCI "echo" = RequestEcho
  type MethodOutput ABCI "echo" = ResponseEcho
  type MethodStreamingType ABCI "echo" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "flush" where
  type MethodName ABCI "flush" = "Flush"
  type MethodInput ABCI "flush" = RequestFlush
  type MethodOutput ABCI "flush" = ResponseFlush
  type MethodStreamingType ABCI "flush" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "info" where
  type MethodName ABCI "info" = "Info"
  type MethodInput ABCI "info" = RequestInfo
  type MethodOutput ABCI "info" = ResponseInfo
  type MethodStreamingType ABCI "info" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "checkTx" where
  type MethodName ABCI "checkTx" = "CheckTx"
  type MethodInput ABCI "checkTx" = RequestCheckTx
  type MethodOutput ABCI "checkTx" = ResponseCheckTx
  type MethodStreamingType ABCI "checkTx" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "query" where
  type MethodName ABCI "query" = "Query"
  type MethodInput ABCI "query" = RequestQuery
  type MethodOutput ABCI "query" = ResponseQuery
  type MethodStreamingType ABCI "query" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "commit" where
  type MethodName ABCI "commit" = "Commit"
  type MethodInput ABCI "commit" = RequestCommit
  type MethodOutput ABCI "commit" = ResponseCommit
  type MethodStreamingType ABCI "commit" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "initChain" where
  type MethodName ABCI "initChain" = "InitChain"
  type MethodInput ABCI "initChain" = RequestInitChain
  type MethodOutput ABCI "initChain" = ResponseInitChain
  type MethodStreamingType ABCI "initChain" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "listSnapshots" where
  type MethodName ABCI "listSnapshots" = "ListSnapshots"
  type MethodInput ABCI "listSnapshots" = RequestListSnapshots
  type MethodOutput ABCI "listSnapshots" = ResponseListSnapshots
  type MethodStreamingType ABCI "listSnapshots" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "offerSnapshot" where
  type MethodName ABCI "offerSnapshot" = "OfferSnapshot"
  type MethodInput ABCI "offerSnapshot" = RequestOfferSnapshot
  type MethodOutput ABCI "offerSnapshot" = ResponseOfferSnapshot
  type MethodStreamingType ABCI "offerSnapshot" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "loadSnapshotChunk" where
  type MethodName ABCI "loadSnapshotChunk" = "LoadSnapshotChunk"
  type MethodInput ABCI "loadSnapshotChunk" = RequestLoadSnapshotChunk
  type MethodOutput ABCI "loadSnapshotChunk" = ResponseLoadSnapshotChunk
  type MethodStreamingType ABCI "loadSnapshotChunk" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "applySnapshotChunk" where
  type MethodName ABCI "applySnapshotChunk" = "ApplySnapshotChunk"
  type MethodInput ABCI "applySnapshotChunk" = RequestApplySnapshotChunk
  type MethodOutput ABCI "applySnapshotChunk" = ResponseApplySnapshotChunk
  type MethodStreamingType ABCI "applySnapshotChunk" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "prepareProposal" where
  type MethodName ABCI "prepareProposal" = "PrepareProposal"
  type MethodInput ABCI "prepareProposal" = RequestPrepareProposal
  type MethodOutput ABCI "prepareProposal" = ResponsePrepareProposal
  type MethodStreamingType ABCI "prepareProposal" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "processProposal" where
  type MethodName ABCI "processProposal" = "ProcessProposal"
  type MethodInput ABCI "processProposal" = RequestProcessProposal
  type MethodOutput ABCI "processProposal" = ResponseProcessProposal
  type MethodStreamingType ABCI "processProposal" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "extendVote" where
  type MethodName ABCI "extendVote" = "ExtendVote"
  type MethodInput ABCI "extendVote" = RequestExtendVote
  type MethodOutput ABCI "extendVote" = ResponseExtendVote
  type MethodStreamingType ABCI "extendVote" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "verifyVoteExtension" where
  type MethodName ABCI "verifyVoteExtension" = "VerifyVoteExtension"
  type MethodInput ABCI "verifyVoteExtension" = RequestVerifyVoteExtension
  type MethodOutput ABCI "verifyVoteExtension" = ResponseVerifyVoteExtension
  type MethodStreamingType ABCI "verifyVoteExtension" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ABCI "finalizeBlock" where
  type MethodName ABCI "finalizeBlock" = "FinalizeBlock"
  type MethodInput ABCI "finalizeBlock" = RequestFinalizeBlock
  type MethodOutput ABCI "finalizeBlock" = ResponseFinalizeBlock
  type MethodStreamingType ABCI "finalizeBlock" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\ESCtendermint/abci/types.proto\DC2\SItendermint.abci\SUB\GStendermint/crypto/proof.proto\SUB\FStendermint/crypto/keys.proto\SUB\GStendermint/types/params.proto\SUB tendermint/types/validator.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\DC4gogoproto/gogo.proto\"\191\t\n\
    \\aRequest\DC22\n\
    \\EOTecho\CAN\SOH \SOH(\v2\FS.tendermint.abci.RequestEchoH\NULR\EOTecho\DC25\n\
    \\ENQflush\CAN\STX \SOH(\v2\GS.tendermint.abci.RequestFlushH\NULR\ENQflush\DC22\n\
    \\EOTinfo\CAN\ETX \SOH(\v2\FS.tendermint.abci.RequestInfoH\NULR\EOTinfo\DC2B\n\
    \\n\
    \init_chain\CAN\ENQ \SOH(\v2!.tendermint.abci.RequestInitChainH\NULR\tinitChain\DC25\n\
    \\ENQquery\CAN\ACK \SOH(\v2\GS.tendermint.abci.RequestQueryH\NULR\ENQquery\DC2<\n\
    \\bcheck_tx\CAN\b \SOH(\v2\US.tendermint.abci.RequestCheckTxH\NULR\acheckTx\DC28\n\
    \\ACKcommit\CAN\v \SOH(\v2\RS.tendermint.abci.RequestCommitH\NULR\ACKcommit\DC2N\n\
    \\SOlist_snapshots\CAN\f \SOH(\v2%.tendermint.abci.RequestListSnapshotsH\NULR\rlistSnapshots\DC2N\n\
    \\SOoffer_snapshot\CAN\r \SOH(\v2%.tendermint.abci.RequestOfferSnapshotH\NULR\rofferSnapshot\DC2[\n\
    \\DC3load_snapshot_chunk\CAN\SO \SOH(\v2).tendermint.abci.RequestLoadSnapshotChunkH\NULR\DC1loadSnapshotChunk\DC2^\n\
    \\DC4apply_snapshot_chunk\CAN\SI \SOH(\v2*.tendermint.abci.RequestApplySnapshotChunkH\NULR\DC2applySnapshotChunk\DC2T\n\
    \\DLEprepare_proposal\CAN\DLE \SOH(\v2'.tendermint.abci.RequestPrepareProposalH\NULR\SIprepareProposal\DC2T\n\
    \\DLEprocess_proposal\CAN\DC1 \SOH(\v2'.tendermint.abci.RequestProcessProposalH\NULR\SIprocessProposal\DC2E\n\
    \\vextend_vote\CAN\DC2 \SOH(\v2\".tendermint.abci.RequestExtendVoteH\NULR\n\
    \extendVote\DC2a\n\
    \\NAKverify_vote_extension\CAN\DC3 \SOH(\v2+.tendermint.abci.RequestVerifyVoteExtensionH\NULR\DC3verifyVoteExtension\DC2N\n\
    \\SOfinalize_block\CAN\DC4 \SOH(\v2%.tendermint.abci.RequestFinalizeBlockH\NULR\rfinalizeBlockB\a\n\
    \\ENQvalueJ\EOT\b\EOT\DLE\ENQJ\EOT\b\a\DLE\bJ\EOT\b\t\DLE\n\
    \J\EOT\b\n\
    \\DLE\v\"'\n\
    \\vRequestEcho\DC2\CAN\n\
    \\amessage\CAN\SOH \SOH(\tR\amessage\"\SO\n\
    \\fRequestFlush\"\144\SOH\n\
    \\vRequestInfo\DC2\CAN\n\
    \\aversion\CAN\SOH \SOH(\tR\aversion\DC2#\n\
    \\rblock_version\CAN\STX \SOH(\EOTR\fblockVersion\DC2\US\n\
    \\vp2p_version\CAN\ETX \SOH(\EOTR\n\
    \p2pVersion\DC2!\n\
    \\fabci_version\CAN\EOT \SOH(\tR\vabciVersion\"\204\STX\n\
    \\DLERequestInitChain\DC28\n\
    \\EOTtime\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\b\200\222\US\NUL\144\223\US\SOH\DC2\EM\n\
    \\bchain_id\CAN\STX \SOH(\tR\achainId\DC2L\n\
    \\DLEconsensus_params\CAN\ETX \SOH(\v2!.tendermint.types.ConsensusParamsR\SIconsensusParams\DC2F\n\
    \\n\
    \validators\CAN\EOT \ETX(\v2 .tendermint.abci.ValidatorUpdateR\n\
    \validatorsB\EOT\200\222\US\NUL\DC2&\n\
    \\SIapp_state_bytes\CAN\ENQ \SOH(\fR\rappStateBytes\DC2%\n\
    \\SOinitial_height\CAN\ACK \SOH(\ETXR\rinitialHeight\"d\n\
    \\fRequestQuery\DC2\DC2\n\
    \\EOTdata\CAN\SOH \SOH(\fR\EOTdata\DC2\DC2\n\
    \\EOTpath\CAN\STX \SOH(\tR\EOTpath\DC2\SYN\n\
    \\ACKheight\CAN\ETX \SOH(\ETXR\ACKheight\DC2\DC4\n\
    \\ENQprove\CAN\EOT \SOH(\bR\ENQprove\"R\n\
    \\SORequestCheckTx\DC2\SO\n\
    \\STXtx\CAN\SOH \SOH(\fR\STXtx\DC20\n\
    \\EOTtype\CAN\STX \SOH(\SO2\FS.tendermint.abci.CheckTxTypeR\EOTtype\"\SI\n\
    \\rRequestCommit\"\SYN\n\
    \\DC4RequestListSnapshots\"h\n\
    \\DC4RequestOfferSnapshot\DC25\n\
    \\bsnapshot\CAN\SOH \SOH(\v2\EM.tendermint.abci.SnapshotR\bsnapshot\DC2\EM\n\
    \\bapp_hash\CAN\STX \SOH(\fR\aappHash\"`\n\
    \\CANRequestLoadSnapshotChunk\DC2\SYN\n\
    \\ACKheight\CAN\SOH \SOH(\EOTR\ACKheight\DC2\SYN\n\
    \\ACKformat\CAN\STX \SOH(\rR\ACKformat\DC2\DC4\n\
    \\ENQchunk\CAN\ETX \SOH(\rR\ENQchunk\"_\n\
    \\EMRequestApplySnapshotChunk\DC2\DC4\n\
    \\ENQindex\CAN\SOH \SOH(\rR\ENQindex\DC2\DC4\n\
    \\ENQchunk\CAN\STX \SOH(\fR\ENQchunk\DC2\SYN\n\
    \\ACKsender\CAN\ETX \SOH(\tR\ACKsender\"\152\ETX\n\
    \\SYNRequestPrepareProposal\DC2 \n\
    \\fmax_tx_bytes\CAN\SOH \SOH(\ETXR\n\
    \maxTxBytes\DC2\DLE\n\
    \\ETXtxs\CAN\STX \ETX(\fR\ETXtxs\DC2U\n\
    \\DC1local_last_commit\CAN\ETX \SOH(\v2#.tendermint.abci.ExtendedCommitInfoR\SIlocalLastCommitB\EOT\200\222\US\NUL\DC2D\n\
    \\vmisbehavior\CAN\EOT \ETX(\v2\FS.tendermint.abci.MisbehaviorR\vmisbehaviorB\EOT\200\222\US\NUL\DC2\SYN\n\
    \\ACKheight\CAN\ENQ \SOH(\ETXR\ACKheight\DC28\n\
    \\EOTtime\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\b\200\222\US\NUL\144\223\US\SOH\DC20\n\
    \\DC4next_validators_hash\CAN\a \SOH(\fR\DC2nextValidatorsHash\DC2)\n\
    \\DLEproposer_address\CAN\b \SOH(\fR\SIproposerAddress\"\136\ETX\n\
    \\SYNRequestProcessProposal\DC2\DLE\n\
    \\ETXtxs\CAN\SOH \ETX(\fR\ETXtxs\DC2S\n\
    \\DC4proposed_last_commit\CAN\STX \SOH(\v2\ESC.tendermint.abci.CommitInfoR\DC2proposedLastCommitB\EOT\200\222\US\NUL\DC2D\n\
    \\vmisbehavior\CAN\ETX \ETX(\v2\FS.tendermint.abci.MisbehaviorR\vmisbehaviorB\EOT\200\222\US\NUL\DC2\DC2\n\
    \\EOThash\CAN\EOT \SOH(\fR\EOThash\DC2\SYN\n\
    \\ACKheight\CAN\ENQ \SOH(\ETXR\ACKheight\DC28\n\
    \\EOTtime\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\b\200\222\US\NUL\144\223\US\SOH\DC20\n\
    \\DC4next_validators_hash\CAN\a \SOH(\fR\DC2nextValidatorsHash\DC2)\n\
    \\DLEproposer_address\CAN\b \SOH(\fR\SIproposerAddress\"?\n\
    \\DC1RequestExtendVote\DC2\DC2\n\
    \\EOThash\CAN\SOH \SOH(\fR\EOThash\DC2\SYN\n\
    \\ACKheight\CAN\STX \SOH(\ETXR\ACKheight\"\156\SOH\n\
    \\SUBRequestVerifyVoteExtension\DC2\DC2\n\
    \\EOThash\CAN\SOH \SOH(\fR\EOThash\DC2+\n\
    \\DC1validator_address\CAN\STX \SOH(\fR\DLEvalidatorAddress\DC2\SYN\n\
    \\ACKheight\CAN\ETX \SOH(\ETXR\ACKheight\DC2%\n\
    \\SOvote_extension\CAN\EOT \SOH(\fR\rvoteExtension\"\132\ETX\n\
    \\DC4RequestFinalizeBlock\DC2\DLE\n\
    \\ETXtxs\CAN\SOH \ETX(\fR\ETXtxs\DC2Q\n\
    \\DC3decided_last_commit\CAN\STX \SOH(\v2\ESC.tendermint.abci.CommitInfoR\DC1decidedLastCommitB\EOT\200\222\US\NUL\DC2D\n\
    \\vmisbehavior\CAN\ETX \ETX(\v2\FS.tendermint.abci.MisbehaviorR\vmisbehaviorB\EOT\200\222\US\NUL\DC2\DC2\n\
    \\EOThash\CAN\EOT \SOH(\fR\EOThash\DC2\SYN\n\
    \\ACKheight\CAN\ENQ \SOH(\ETXR\ACKheight\DC28\n\
    \\EOTtime\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\b\200\222\US\NUL\144\223\US\SOH\DC20\n\
    \\DC4next_validators_hash\CAN\a \SOH(\fR\DC2nextValidatorsHash\DC2)\n\
    \\DLEproposer_address\CAN\b \SOH(\fR\SIproposerAddress\"\148\n\
    \\n\
    \\bResponse\DC2B\n\
    \\texception\CAN\SOH \SOH(\v2\".tendermint.abci.ResponseExceptionH\NULR\texception\DC23\n\
    \\EOTecho\CAN\STX \SOH(\v2\GS.tendermint.abci.ResponseEchoH\NULR\EOTecho\DC26\n\
    \\ENQflush\CAN\ETX \SOH(\v2\RS.tendermint.abci.ResponseFlushH\NULR\ENQflush\DC23\n\
    \\EOTinfo\CAN\EOT \SOH(\v2\GS.tendermint.abci.ResponseInfoH\NULR\EOTinfo\DC2C\n\
    \\n\
    \init_chain\CAN\ACK \SOH(\v2\".tendermint.abci.ResponseInitChainH\NULR\tinitChain\DC26\n\
    \\ENQquery\CAN\a \SOH(\v2\RS.tendermint.abci.ResponseQueryH\NULR\ENQquery\DC2=\n\
    \\bcheck_tx\CAN\t \SOH(\v2 .tendermint.abci.ResponseCheckTxH\NULR\acheckTx\DC29\n\
    \\ACKcommit\CAN\f \SOH(\v2\US.tendermint.abci.ResponseCommitH\NULR\ACKcommit\DC2O\n\
    \\SOlist_snapshots\CAN\r \SOH(\v2&.tendermint.abci.ResponseListSnapshotsH\NULR\rlistSnapshots\DC2O\n\
    \\SOoffer_snapshot\CAN\SO \SOH(\v2&.tendermint.abci.ResponseOfferSnapshotH\NULR\rofferSnapshot\DC2\\\n\
    \\DC3load_snapshot_chunk\CAN\SI \SOH(\v2*.tendermint.abci.ResponseLoadSnapshotChunkH\NULR\DC1loadSnapshotChunk\DC2_\n\
    \\DC4apply_snapshot_chunk\CAN\DLE \SOH(\v2+.tendermint.abci.ResponseApplySnapshotChunkH\NULR\DC2applySnapshotChunk\DC2U\n\
    \\DLEprepare_proposal\CAN\DC1 \SOH(\v2(.tendermint.abci.ResponsePrepareProposalH\NULR\SIprepareProposal\DC2U\n\
    \\DLEprocess_proposal\CAN\DC2 \SOH(\v2(.tendermint.abci.ResponseProcessProposalH\NULR\SIprocessProposal\DC2F\n\
    \\vextend_vote\CAN\DC3 \SOH(\v2#.tendermint.abci.ResponseExtendVoteH\NULR\n\
    \extendVote\DC2b\n\
    \\NAKverify_vote_extension\CAN\DC4 \SOH(\v2,.tendermint.abci.ResponseVerifyVoteExtensionH\NULR\DC3verifyVoteExtension\DC2O\n\
    \\SOfinalize_block\CAN\NAK \SOH(\v2&.tendermint.abci.ResponseFinalizeBlockH\NULR\rfinalizeBlockB\a\n\
    \\ENQvalueJ\EOT\b\ENQ\DLE\ACKJ\EOT\b\b\DLE\tJ\EOT\b\n\
    \\DLE\vJ\EOT\b\v\DLE\f\")\n\
    \\DC1ResponseException\DC2\DC4\n\
    \\ENQerror\CAN\SOH \SOH(\tR\ENQerror\"(\n\
    \\fResponseEcho\DC2\CAN\n\
    \\amessage\CAN\SOH \SOH(\tR\amessage\"\SI\n\
    \\rResponseFlush\"\184\SOH\n\
    \\fResponseInfo\DC2\DC2\n\
    \\EOTdata\CAN\SOH \SOH(\tR\EOTdata\DC2\CAN\n\
    \\aversion\CAN\STX \SOH(\tR\aversion\DC2\US\n\
    \\vapp_version\CAN\ETX \SOH(\EOTR\n\
    \appVersion\DC2*\n\
    \\DC1last_block_height\CAN\EOT \SOH(\ETXR\SIlastBlockHeight\DC2-\n\
    \\DC3last_block_app_hash\CAN\ENQ \SOH(\fR\DLElastBlockAppHash\"\196\SOH\n\
    \\DC1ResponseInitChain\DC2L\n\
    \\DLEconsensus_params\CAN\SOH \SOH(\v2!.tendermint.types.ConsensusParamsR\SIconsensusParams\DC2F\n\
    \\n\
    \validators\CAN\STX \ETX(\v2 .tendermint.abci.ValidatorUpdateR\n\
    \validatorsB\EOT\200\222\US\NUL\DC2\EM\n\
    \\bapp_hash\CAN\ETX \SOH(\fR\aappHash\"\247\SOH\n\
    \\rResponseQuery\DC2\DC2\n\
    \\EOTcode\CAN\SOH \SOH(\rR\EOTcode\DC2\DLE\n\
    \\ETXlog\CAN\ETX \SOH(\tR\ETXlog\DC2\DC2\n\
    \\EOTinfo\CAN\EOT \SOH(\tR\EOTinfo\DC2\DC4\n\
    \\ENQindex\CAN\ENQ \SOH(\ETXR\ENQindex\DC2\DLE\n\
    \\ETXkey\CAN\ACK \SOH(\fR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\a \SOH(\fR\ENQvalue\DC28\n\
    \\tproof_ops\CAN\b \SOH(\v2\ESC.tendermint.crypto.ProofOpsR\bproofOps\DC2\SYN\n\
    \\ACKheight\CAN\t \SOH(\ETXR\ACKheight\DC2\FS\n\
    \\tcodespace\CAN\n\
    \ \SOH(\tR\tcodespace\"\170\STX\n\
    \\SIResponseCheckTx\DC2\DC2\n\
    \\EOTcode\CAN\SOH \SOH(\rR\EOTcode\DC2\DC2\n\
    \\EOTdata\CAN\STX \SOH(\fR\EOTdata\DC2\DLE\n\
    \\ETXlog\CAN\ETX \SOH(\tR\ETXlog\DC2\DC2\n\
    \\EOTinfo\CAN\EOT \SOH(\tR\EOTinfo\DC2\RS\n\
    \\n\
    \gas_wanted\CAN\ENQ \SOH(\ETXR\n\
    \gas_wanted\DC2\SUB\n\
    \\bgas_used\CAN\ACK \SOH(\ETXR\bgas_used\DC2H\n\
    \\ACKevents\CAN\a \ETX(\v2\SYN.tendermint.abci.EventR\ACKeventsB\CAN\200\222\US\NUL\234\222\US\DLEevents,omitempty\DC2\FS\n\
    \\tcodespace\CAN\b \SOH(\tR\tcodespaceJ\EOT\b\t\DLE\fR\ACKsenderR\bpriorityR\rmempool_error\"A\n\
    \\SOResponseCommit\DC2#\n\
    \\rretain_height\CAN\ETX \SOH(\ETXR\fretainHeightJ\EOT\b\SOH\DLE\STXJ\EOT\b\STX\DLE\ETX\"P\n\
    \\NAKResponseListSnapshots\DC27\n\
    \\tsnapshots\CAN\SOH \ETX(\v2\EM.tendermint.abci.SnapshotR\tsnapshots\"\190\SOH\n\
    \\NAKResponseOfferSnapshot\DC2E\n\
    \\ACKresult\CAN\SOH \SOH(\SO2-.tendermint.abci.ResponseOfferSnapshot.ResultR\ACKresult\"^\n\
    \\ACKResult\DC2\v\n\
    \\aUNKNOWN\DLE\NUL\DC2\n\
    \\n\
    \\ACKACCEPT\DLE\SOH\DC2\t\n\
    \\ENQABORT\DLE\STX\DC2\n\
    \\n\
    \\ACKREJECT\DLE\ETX\DC2\DC1\n\
    \\rREJECT_FORMAT\DLE\EOT\DC2\DC1\n\
    \\rREJECT_SENDER\DLE\ENQ\"1\n\
    \\EMResponseLoadSnapshotChunk\DC2\DC4\n\
    \\ENQchunk\CAN\SOH \SOH(\fR\ENQchunk\"\152\STX\n\
    \\SUBResponseApplySnapshotChunk\DC2J\n\
    \\ACKresult\CAN\SOH \SOH(\SO22.tendermint.abci.ResponseApplySnapshotChunk.ResultR\ACKresult\DC2%\n\
    \\SOrefetch_chunks\CAN\STX \ETX(\rR\rrefetchChunks\DC2%\n\
    \\SOreject_senders\CAN\ETX \ETX(\tR\rrejectSenders\"`\n\
    \\ACKResult\DC2\v\n\
    \\aUNKNOWN\DLE\NUL\DC2\n\
    \\n\
    \\ACKACCEPT\DLE\SOH\DC2\t\n\
    \\ENQABORT\DLE\STX\DC2\t\n\
    \\ENQRETRY\DLE\ETX\DC2\DC2\n\
    \\SORETRY_SNAPSHOT\DLE\EOT\DC2\DC3\n\
    \\SIREJECT_SNAPSHOT\DLE\ENQ\"+\n\
    \\ETBResponsePrepareProposal\DC2\DLE\n\
    \\ETXtxs\CAN\SOH \ETX(\fR\ETXtxs\"\161\SOH\n\
    \\ETBResponseProcessProposal\DC2O\n\
    \\ACKstatus\CAN\SOH \SOH(\SO27.tendermint.abci.ResponseProcessProposal.ProposalStatusR\ACKstatus\"5\n\
    \\SOProposalStatus\DC2\v\n\
    \\aUNKNOWN\DLE\NUL\DC2\n\
    \\n\
    \\ACKACCEPT\DLE\SOH\DC2\n\
    \\n\
    \\ACKREJECT\DLE\STX\";\n\
    \\DC2ResponseExtendVote\DC2%\n\
    \\SOvote_extension\CAN\SOH \SOH(\fR\rvoteExtension\"\165\SOH\n\
    \\ESCResponseVerifyVoteExtension\DC2Q\n\
    \\ACKstatus\CAN\SOH \SOH(\SO29.tendermint.abci.ResponseVerifyVoteExtension.VerifyStatusR\ACKstatus\"3\n\
    \\fVerifyStatus\DC2\v\n\
    \\aUNKNOWN\DLE\NUL\DC2\n\
    \\n\
    \\ACKACCEPT\DLE\SOH\DC2\n\
    \\n\
    \\ACKREJECT\DLE\STX\"\234\STX\n\
    \\NAKResponseFinalizeBlock\DC2H\n\
    \\ACKevents\CAN\SOH \ETX(\v2\SYN.tendermint.abci.EventR\ACKeventsB\CAN\200\222\US\NUL\234\222\US\DLEevents,omitempty\DC2<\n\
    \\n\
    \tx_results\CAN\STX \ETX(\v2\GS.tendermint.abci.ExecTxResultR\ttxResults\DC2S\n\
    \\DC1validator_updates\CAN\ETX \ETX(\v2 .tendermint.abci.ValidatorUpdateR\DLEvalidatorUpdatesB\EOT\200\222\US\NUL\DC2Y\n\
    \\ETBconsensus_param_updates\CAN\EOT \SOH(\v2!.tendermint.types.ConsensusParamsR\NAKconsensusParamUpdates\DC2\EM\n\
    \\bapp_hash\CAN\ENQ \SOH(\fR\aappHash\"Y\n\
    \\n\
    \CommitInfo\DC2\DC4\n\
    \\ENQround\CAN\SOH \SOH(\ENQR\ENQround\DC25\n\
    \\ENQvotes\CAN\STX \ETX(\v2\EM.tendermint.abci.VoteInfoR\ENQvotesB\EOT\200\222\US\NUL\"i\n\
    \\DC2ExtendedCommitInfo\DC2\DC4\n\
    \\ENQround\CAN\SOH \SOH(\ENQR\ENQround\DC2=\n\
    \\ENQvotes\CAN\STX \ETX(\v2!.tendermint.abci.ExtendedVoteInfoR\ENQvotesB\EOT\200\222\US\NUL\"z\n\
    \\ENQEvent\DC2\DC2\n\
    \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2]\n\
    \\n\
    \attributes\CAN\STX \ETX(\v2\US.tendermint.abci.EventAttributeR\n\
    \attributesB\FS\200\222\US\NUL\234\222\US\DC4attributes,omitempty\"N\n\
    \\SOEventAttribute\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue\DC2\DC4\n\
    \\ENQindex\CAN\ETX \SOH(\bR\ENQindex\"\254\SOH\n\
    \\fExecTxResult\DC2\DC2\n\
    \\EOTcode\CAN\SOH \SOH(\rR\EOTcode\DC2\DC2\n\
    \\EOTdata\CAN\STX \SOH(\fR\EOTdata\DC2\DLE\n\
    \\ETXlog\CAN\ETX \SOH(\tR\ETXlog\DC2\DC2\n\
    \\EOTinfo\CAN\EOT \SOH(\tR\EOTinfo\DC2\GS\n\
    \\n\
    \gas_wanted\CAN\ENQ \SOH(\ETXR\tgasWanted\DC2\EM\n\
    \\bgas_used\CAN\ACK \SOH(\ETXR\agasUsed\DC2H\n\
    \\ACKevents\CAN\a \ETX(\v2\SYN.tendermint.abci.EventR\ACKeventsB\CAN\200\222\US\NUL\234\222\US\DLEevents,omitempty\DC2\FS\n\
    \\tcodespace\CAN\b \SOH(\tR\tcodespace\"\133\SOH\n\
    \\bTxResult\DC2\SYN\n\
    \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\DC2\DC4\n\
    \\ENQindex\CAN\STX \SOH(\rR\ENQindex\DC2\SO\n\
    \\STXtx\CAN\ETX \SOH(\fR\STXtx\DC2;\n\
    \\ACKresult\CAN\EOT \SOH(\v2\GS.tendermint.abci.ExecTxResultR\ACKresultB\EOT\200\222\US\NUL\";\n\
    \\tValidator\DC2\CAN\n\
    \\aaddress\CAN\SOH \SOH(\fR\aaddress\DC2\DC4\n\
    \\ENQpower\CAN\ETX \SOH(\ETXR\ENQpower\"d\n\
    \\SIValidatorUpdate\DC2;\n\
    \\apub_key\CAN\SOH \SOH(\v2\FS.tendermint.crypto.PublicKeyR\ACKpubKeyB\EOT\200\222\US\NUL\DC2\DC4\n\
    \\ENQpower\CAN\STX \SOH(\ETXR\ENQpower\"\147\SOH\n\
    \\bVoteInfo\DC2>\n\
    \\tvalidator\CAN\SOH \SOH(\v2\SUB.tendermint.abci.ValidatorR\tvalidatorB\EOT\200\222\US\NUL\DC2A\n\
    \\rblock_id_flag\CAN\ETX \SOH(\SO2\GS.tendermint.types.BlockIDFlagR\vblockIdFlagJ\EOT\b\STX\DLE\ETX\"\243\SOH\n\
    \\DLEExtendedVoteInfo\DC2>\n\
    \\tvalidator\CAN\SOH \SOH(\v2\SUB.tendermint.abci.ValidatorR\tvalidatorB\EOT\200\222\US\NUL\DC2%\n\
    \\SOvote_extension\CAN\ETX \SOH(\fR\rvoteExtension\DC2/\n\
    \\DC3extension_signature\CAN\EOT \SOH(\fR\DC2extensionSignature\DC2A\n\
    \\rblock_id_flag\CAN\ENQ \SOH(\SO2\GS.tendermint.types.BlockIDFlagR\vblockIdFlagJ\EOT\b\STX\DLE\ETX\"\131\STX\n\
    \\vMisbehavior\DC24\n\
    \\EOTtype\CAN\SOH \SOH(\SO2 .tendermint.abci.MisbehaviorTypeR\EOTtype\DC2>\n\
    \\tvalidator\CAN\STX \SOH(\v2\SUB.tendermint.abci.ValidatorR\tvalidatorB\EOT\200\222\US\NUL\DC2\SYN\n\
    \\ACKheight\CAN\ETX \SOH(\ETXR\ACKheight\DC28\n\
    \\EOTtime\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtimeB\b\200\222\US\NUL\144\223\US\SOH\DC2,\n\
    \\DC2total_voting_power\CAN\ENQ \SOH(\ETXR\DLEtotalVotingPower\"\130\SOH\n\
    \\bSnapshot\DC2\SYN\n\
    \\ACKheight\CAN\SOH \SOH(\EOTR\ACKheight\DC2\SYN\n\
    \\ACKformat\CAN\STX \SOH(\rR\ACKformat\DC2\SYN\n\
    \\ACKchunks\CAN\ETX \SOH(\rR\ACKchunks\DC2\DC2\n\
    \\EOThash\CAN\EOT \SOH(\fR\EOThash\DC2\SUB\n\
    \\bmetadata\CAN\ENQ \SOH(\fR\bmetadata*9\n\
    \\vCheckTxType\DC2\DLE\n\
    \\ETXNEW\DLE\NUL\SUB\a\138\157 \ETXNew\DC2\CAN\n\
    \\aRECHECK\DLE\SOH\SUB\v\138\157 \aRecheck*K\n\
    \\SIMisbehaviorType\DC2\v\n\
    \\aUNKNOWN\DLE\NUL\DC2\DC2\n\
    \\SODUPLICATE_VOTE\DLE\SOH\DC2\ETB\n\
    \\DC3LIGHT_CLIENT_ATTACK\DLE\STX2\157\v\n\
    \\EOTABCI\DC2C\n\
    \\EOTEcho\DC2\FS.tendermint.abci.RequestEcho\SUB\GS.tendermint.abci.ResponseEcho\DC2F\n\
    \\ENQFlush\DC2\GS.tendermint.abci.RequestFlush\SUB\RS.tendermint.abci.ResponseFlush\DC2C\n\
    \\EOTInfo\DC2\FS.tendermint.abci.RequestInfo\SUB\GS.tendermint.abci.ResponseInfo\DC2L\n\
    \\aCheckTx\DC2\US.tendermint.abci.RequestCheckTx\SUB .tendermint.abci.ResponseCheckTx\DC2F\n\
    \\ENQQuery\DC2\GS.tendermint.abci.RequestQuery\SUB\RS.tendermint.abci.ResponseQuery\DC2I\n\
    \\ACKCommit\DC2\RS.tendermint.abci.RequestCommit\SUB\US.tendermint.abci.ResponseCommit\DC2R\n\
    \\tInitChain\DC2!.tendermint.abci.RequestInitChain\SUB\".tendermint.abci.ResponseInitChain\DC2^\n\
    \\rListSnapshots\DC2%.tendermint.abci.RequestListSnapshots\SUB&.tendermint.abci.ResponseListSnapshots\DC2^\n\
    \\rOfferSnapshot\DC2%.tendermint.abci.RequestOfferSnapshot\SUB&.tendermint.abci.ResponseOfferSnapshot\DC2j\n\
    \\DC1LoadSnapshotChunk\DC2).tendermint.abci.RequestLoadSnapshotChunk\SUB*.tendermint.abci.ResponseLoadSnapshotChunk\DC2m\n\
    \\DC2ApplySnapshotChunk\DC2*.tendermint.abci.RequestApplySnapshotChunk\SUB+.tendermint.abci.ResponseApplySnapshotChunk\DC2d\n\
    \\SIPrepareProposal\DC2'.tendermint.abci.RequestPrepareProposal\SUB(.tendermint.abci.ResponsePrepareProposal\DC2d\n\
    \\SIProcessProposal\DC2'.tendermint.abci.RequestProcessProposal\SUB(.tendermint.abci.ResponseProcessProposal\DC2U\n\
    \\n\
    \ExtendVote\DC2\".tendermint.abci.RequestExtendVote\SUB#.tendermint.abci.ResponseExtendVote\DC2p\n\
    \\DC3VerifyVoteExtension\DC2+.tendermint.abci.RequestVerifyVoteExtension\SUB,.tendermint.abci.ResponseVerifyVoteExtension\DC2^\n\
    \\rFinalizeBlock\DC2%.tendermint.abci.RequestFinalizeBlock\SUB&.tendermint.abci.ResponseFinalizeBlockB)Z'github.com/cometbft/cometbft/abci/typesJ\204\163\SOH\n\
    \\a\DC2\ENQ\NUL\NUL\229\ETX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\CAN\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NUL>\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NUL>\n\
    \t\n\
    \\STX\ETX\NUL\DC2\ETX\a\NUL'\SUBi For more information on gogo.proto, see:\n\
    \ https://github.com/cosmos/gogoproto/blob/master/extensions.md\n\
    \\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\b\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\n\
    \\NUL*\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\v\NUL)\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\f\NUL\RS\n\
    \\149\SOH\n\
    \\STX\ACK\NUL\DC2\EOT\DC1\NUL$\SOH2\136\SOH NOTE: When using custom types, mind the warnings.\n\
    \ https://github.com/cosmos/gogoproto/blob/master/custom_types.md#warnings-and-issues\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\DC1\b\f\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DC2\STX/\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC2\ACK\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC2\v\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC2!-\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\DC3\STX2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DC3\ACK\v\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DC3\f\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DC3#0\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX\DC4\STX/\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\DC4\ACK\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\DC4\v\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\DC4!-\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\ETX\NAK\STX8\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\NAK\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\NAK\SO\FS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\NAK'6\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\ETX\SYN\STX2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX\SYN\ACK\v\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX\SYN\f\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX\SYN#0\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\ETX\ETB\STX5\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX\ETB\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX\ETB\r\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX\ETB%3\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\ETX\CAN\STX>\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX\CAN\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX\CAN\DLE \n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX\CAN+<\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\a\DC2\ETX\EM\STXJ\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\SOH\DC2\ETX\EM\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\STX\DC2\ETX\EM\DC4(\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\ETX\DC2\ETX\EM3H\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\b\DC2\ETX\SUB\STXJ\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\SOH\DC2\ETX\SUB\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\STX\DC2\ETX\SUB\DC4(\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\ETX\DC2\ETX\SUB3H\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\t\DC2\EOT\ESC\STX\FS*\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\SOH\DC2\ETX\ESC\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\STX\DC2\ETX\ESC\CAN0\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\ETX\DC2\ETX\FS\SI(\n\
    \\f\n\
    \\EOT\ACK\NUL\STX\n\
    \\DC2\EOT\GS\STX\RS+\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\SOH\DC2\ETX\GS\ACK\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\STX\DC2\ETX\GS\EM2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\ETX\DC2\ETX\RS\SI)\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\v\DC2\ETX\US\STXP\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\SOH\DC2\ETX\US\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\STX\DC2\ETX\US\SYN,\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\ETX\DC2\ETX\US7N\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\f\DC2\ETX \STXP\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\SOH\DC2\ETX \ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\STX\DC2\ETX \SYN,\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\ETX\DC2\ETX 7N\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\r\DC2\ETX!\STXA\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\SOH\DC2\ETX!\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\STX\DC2\ETX!\DC1\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\ETX\DC2\ETX!-?\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\SO\DC2\ETX\"\STX\\\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SO\SOH\DC2\ETX\"\ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SO\STX\DC2\ETX\"\SUB4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SO\ETX\DC2\ETX\"?Z\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\SI\DC2\ETX#\STXJ\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SI\SOH\DC2\ETX#\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SI\STX\DC2\ETX#\DC4(\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SI\ETX\DC2\ETX#3H\n\
    \D\n\
    \\STX\EOT\NUL\DC2\EOT)\NUL=\SOH28----------------------------------------\n\
    \ Request types\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX)\b\SI\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT*\STX;\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX*\b\r\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX+\EOT9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX+\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX+\US#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX+78\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX,\EOT9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX,\EOT\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX,\US$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX,78\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX-\EOT9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX-\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX-\US#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX-78\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX.\EOT9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX.\EOT\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX.\US)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX.78\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX/\EOT9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX/\EOT\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX/\US$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX/78\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX0\EOT9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX0\EOT\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX0\US'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX078\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX1\EOT:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX1\EOT\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX1\US%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX179\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX2\EOT:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETX2\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX2\US-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX279\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX3\EOT:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\ETX3\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX3\US-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX379\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETX4\EOT:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\ETX4\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETX4\US2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETX479\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETX5\EOT:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\ETX5\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETX5\US3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETX579\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETX6\EOT:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ACK\DC2\ETX6\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETX6\US/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETX679\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\f\DC2\ETX7\EOT:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ACK\DC2\ETX7\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\ETX7\US/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\ETX779\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\r\DC2\ETX8\EOT:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ACK\DC2\ETX8\EOT\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\ETX8\US*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\ETX879\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SO\DC2\ETX9\EOT:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ACK\DC2\ETX9\EOT\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\SOH\DC2\ETX9\US4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ETX\DC2\ETX979\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SI\DC2\ETX:\EOT:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\ACK\DC2\ETX:\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\SOH\DC2\ETX:\US-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\ETX\DC2\ETX:79\n\
    \8\n\
    \\ETX\EOT\NUL\t\DC2\ETX<\STX\ETB\", SetOption, BeginBlock, DeliverTx, EndBlock\n\
    \\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX<\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX<\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX<\v\f\n\
    \\v\n\
    \\EOT\EOT\NUL\t\SOH\DC2\ETX<\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\SOH\SOH\DC2\ETX<\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\SOH\STX\DC2\ETX<\SO\SI\n\
    \\v\n\
    \\EOT\EOT\NUL\t\STX\DC2\ETX<\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\STX\SOH\DC2\ETX<\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\STX\STX\DC2\ETX<\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\NUL\t\ETX\DC2\ETX<\DC4\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\ETX\SOH\DC2\ETX<\DC4\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\ETX\STX\DC2\ETX<\DC4\SYN\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT?\NULA\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX?\b\DC3\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX@\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX@\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX@\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX@\DC3\DC4\n\
    \\t\n\
    \\STX\EOT\STX\DC2\ETXC\NUL\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXC\b\DC4\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOTE\NULJ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXE\b\DC3\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXF\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXF\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXF\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXF\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXG\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETXG\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXG\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXG\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXH\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETXH\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXH\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXH\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETXI\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETXI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETXI\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETXI\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOTL\NULT\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXL\b\CAN\n\
    \\f\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOTM\STXNA\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETXM\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXM\FS \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXM#$\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXN\ACK@\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\233\251\ETX\DC2\ETXN\a#\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\242\251\ETX\DC2\ETXN%?\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXO\STX8\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXO#+\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXO67\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXP\STX8\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\ETXP\STX\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXP#3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXP67\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETXQ\STXW\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\ETXQ\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETXQ#-\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETXQ67\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\b\DC2\ETXQ8V\n\
    \\SI\n\
    \\b\EOT\EOT\STX\ETX\b\233\251\ETX\DC2\ETXQ9U\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETXR\STX8\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETXR\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETXR#2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETXR67\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\ETXS\STX8\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ENQ\DC2\ETXS\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\ETXS#1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\ETXS67\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOTV\NUL[\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXV\b\DC4\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXW\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXW\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXW\t\r\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXW\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETXX\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETXX\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXX\t\r\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXX\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETXY\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETXY\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETXY\t\SI\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETXY\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETXZ\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETXZ\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETXZ\t\SO\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETXZ\DC2\DC3\n\
    \\n\
    \\n\
    \\STX\ENQ\NUL\DC2\EOT]\NUL`\SOH\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX]\ENQ\DLE\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX^\STX9\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX^\STX\ENQ\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX^\f\r\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\ETX\DC2\ETX^\SO8\n\
    \\SI\n\
    \\b\ENQ\NUL\STX\NUL\ETX\209\131\EOT\DC2\ETX^\SI7\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX_\STX=\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX_\STX\t\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX_\f\r\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\ETX\DC2\ETX_\SO<\n\
    \\SI\n\
    \\b\ENQ\NUL\STX\SOH\ETX\209\131\EOT\DC2\ETX_\SI;\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOTb\NULe\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXb\b\SYN\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXc\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXc\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXc\SO\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXc\NAK\SYN\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXd\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\ETXd\STX\r\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXd\SO\DC2\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXd\NAK\SYN\n\
    \\t\n\
    \\STX\EOT\a\DC2\ETXg\NUL\CAN\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXg\b\NAK\n\
    \&\n\
    \\STX\EOT\b\DC2\ETXj\NUL\US\SUB\ESC lists available snapshots\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXj\b\FS\n\
    \2\n\
    \\STX\EOT\t\DC2\EOTm\NULp\SOH\SUB& offers a snapshot to the application\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXm\b\FS\n\
    \(\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXn\STX\CAN\"\ESC snapshot offered by peers\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\ETXn\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXn\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXn\SYN\ETB\n\
    \A\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETXo\STX\CAN\"4 light client-verified app hash for snapshot height\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\ETXo\STX\a\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETXo\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETXo\SYN\ETB\n\
    \$\n\
    \\STX\EOT\n\
    \\DC2\EOTs\NULw\SOH\SUB\CAN loads a snapshot chunk\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETXs\b \n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETXt\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\ETXt\STX\b\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETXt\t\SI\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETXt\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ETXu\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\ETXu\STX\b\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\ETXu\t\SI\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\ETXu\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\ETXv\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ENQ\DC2\ETXv\STX\b\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\ETXv\t\SO\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\ETXv\DC2\DC3\n\
    \&\n\
    \\STX\EOT\v\DC2\EOTz\NUL~\SOH\SUB\SUB Applies a snapshot chunk\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETXz\b!\n\
    \\v\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETX{\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\ETX{\STX\b\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETX{\t\SO\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETX{\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\v\STX\SOH\DC2\ETX|\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\ETX|\STX\a\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\ETX|\t\SO\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\ETX|\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\v\STX\STX\DC2\ETX}\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ENQ\DC2\ETX}\STX\b\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\ETX}\t\SI\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\ETX}\DC2\DC3\n\
    \\f\n\
    \\STX\EOT\f\DC2\ACK\128\SOH\NUL\141\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\128\SOH\b\RS\n\
    \B\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\130\SOH\STX\EM\SUB4 the modified transactions cannot exceed this size.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\130\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\130\SOH\b\DC4\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\130\SOH\ETB\CAN\n\
    \~\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\133\SOH\STX5\SUBp txs is an array of transactions that will be included in a block,\n\
    \ sent to the app for possible modifications.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\EOT\DC2\EOT\133\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\EOT\133\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\133\SOH\FS\US\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\133\SOH34\n\
    \\f\n\
    \\EOT\EOT\f\STX\STX\DC2\EOT\134\SOH\STXT\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ACK\DC2\EOT\134\SOH\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\EOT\134\SOH\FS-\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\EOT\134\SOH34\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\b\DC2\EOT\134\SOH5S\n\
    \\DLE\n\
    \\b\EOT\f\STX\STX\b\233\251\ETX\DC2\EOT\134\SOH6R\n\
    \\f\n\
    \\EOT\EOT\f\STX\ETX\DC2\EOT\135\SOH\STXT\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\EOT\DC2\EOT\135\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ACK\DC2\EOT\135\SOH\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\EOT\135\SOH\FS'\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\EOT\135\SOH34\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\b\DC2\EOT\135\SOH5S\n\
    \\DLE\n\
    \\b\EOT\f\STX\ETX\b\233\251\ETX\DC2\EOT\135\SOH6R\n\
    \\f\n\
    \\EOT\EOT\f\STX\EOT\DC2\EOT\136\SOH\STX5\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ENQ\DC2\EOT\136\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\SOH\DC2\EOT\136\SOH\FS\"\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ETX\DC2\EOT\136\SOH34\n\
    \\f\n\
    \\EOT\EOT\f\STX\ENQ\DC2\EOT\137\SOH\STXp\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ACK\DC2\EOT\137\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\SOH\DC2\EOT\137\SOH\FS \n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ETX\DC2\EOT\137\SOH34\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\b\DC2\EOT\137\SOH5o\n\
    \\DLE\n\
    \\b\EOT\f\STX\ENQ\b\233\251\ETX\DC2\EOT\137\SOH6R\n\
    \\DLE\n\
    \\b\EOT\f\STX\ENQ\b\242\251\ETX\DC2\EOT\137\SOHTn\n\
    \\f\n\
    \\EOT\EOT\f\STX\ACK\DC2\EOT\138\SOH\STX5\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\ENQ\DC2\EOT\138\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\SOH\DC2\EOT\138\SOH\FS0\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ACK\ETX\DC2\EOT\138\SOH34\n\
    \O\n\
    \\EOT\EOT\f\STX\a\DC2\EOT\140\SOH\STX\GS\SUBA address of the public key of the validator proposing the block.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\ENQ\DC2\EOT\140\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\SOH\DC2\EOT\140\SOH\b\CAN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\a\ETX\DC2\EOT\140\SOH\ESC\FS\n\
    \\f\n\
    \\STX\EOT\r\DC2\ACK\143\SOH\NUL\154\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\143\SOH\b\RS\n\
    \\f\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\144\SOH\STX0\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\EOT\144\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\144\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\144\SOH\ETB\SUB\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\144\SOH./\n\
    \\f\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\145\SOH\STXO\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ACK\DC2\EOT\145\SOH\STX\f\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\145\SOH\ETB+\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\145\SOH./\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\b\DC2\EOT\145\SOH0N\n\
    \\DLE\n\
    \\b\EOT\r\STX\SOH\b\233\251\ETX\DC2\EOT\145\SOH1M\n\
    \\f\n\
    \\EOT\EOT\r\STX\STX\DC2\EOT\146\SOH\STXO\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\EOT\DC2\EOT\146\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ACK\DC2\EOT\146\SOH\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\EOT\146\SOH\ETB\"\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\EOT\146\SOH./\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\b\DC2\EOT\146\SOH0N\n\
    \\DLE\n\
    \\b\EOT\r\STX\STX\b\233\251\ETX\DC2\EOT\146\SOH1M\n\
    \Q\n\
    \\EOT\EOT\r\STX\ETX\DC2\EOT\148\SOH\STX5\SUBC hash is the merkle root hash of the fields of the proposed block.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ENQ\DC2\EOT\148\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\SOH\DC2\EOT\148\SOH\FS \n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ETX\DC2\EOT\148\SOH34\n\
    \\f\n\
    \\EOT\EOT\r\STX\EOT\DC2\EOT\149\SOH\STX5\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\ENQ\DC2\EOT\149\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\SOH\DC2\EOT\149\SOH\FS\"\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\ETX\DC2\EOT\149\SOH34\n\
    \\f\n\
    \\EOT\EOT\r\STX\ENQ\DC2\EOT\150\SOH\STXp\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\ACK\DC2\EOT\150\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\SOH\DC2\EOT\150\SOH\FS \n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\ETX\DC2\EOT\150\SOH34\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\b\DC2\EOT\150\SOH5o\n\
    \\DLE\n\
    \\b\EOT\r\STX\ENQ\b\233\251\ETX\DC2\EOT\150\SOH6R\n\
    \\DLE\n\
    \\b\EOT\r\STX\ENQ\b\242\251\ETX\DC2\EOT\150\SOHTn\n\
    \\f\n\
    \\EOT\EOT\r\STX\ACK\DC2\EOT\151\SOH\STX5\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ACK\ENQ\DC2\EOT\151\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ACK\SOH\DC2\EOT\151\SOH\FS0\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ACK\ETX\DC2\EOT\151\SOH34\n\
    \P\n\
    \\EOT\EOT\r\STX\a\DC2\EOT\153\SOH\STX\GS\SUBB address of the public key of the original proposer of the block.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\a\ENQ\DC2\EOT\153\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\r\STX\a\SOH\DC2\EOT\153\SOH\b\CAN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\a\ETX\DC2\EOT\153\SOH\ESC\FS\n\
    \=\n\
    \\STX\EOT\SO\DC2\ACK\157\SOH\NUL\162\SOH\SOH\SUB/ Extends a vote with application-injected data\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\157\SOH\b\EM\n\
    \I\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\159\SOH\STX\DC3\SUB; the hash of the block  that this vote may be referring to\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\159\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\159\SOH\b\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\159\SOH\DC1\DC2\n\
    \/\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\161\SOH\STX\DC3\SUB! the height of the extended vote\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\EOT\161\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\161\SOH\b\SO\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\161\SOH\DC1\DC2\n\
    \)\n\
    \\STX\EOT\SI\DC2\ACK\165\SOH\NUL\172\SOH\SOH\SUB\ESC Verify the vote extension\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\165\SOH\b\"\n\
    \L\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\167\SOH\STX\RS\SUB> the hash of the block that this received vote corresponds to\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\EOT\167\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\167\SOH\b\f\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\167\SOH\FS\GS\n\
    \<\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\169\SOH\STX\RS\SUB. the validator that signed the vote extension\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ENQ\DC2\EOT\169\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\169\SOH\b\EM\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\169\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\SI\STX\STX\DC2\EOT\170\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ENQ\DC2\EOT\170\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\EOT\170\SOH\b\SO\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\EOT\170\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\SI\STX\ETX\DC2\EOT\171\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ENQ\DC2\EOT\171\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\EOT\171\SOH\b\SYN\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\EOT\171\SOH\FS\GS\n\
    \\f\n\
    \\STX\EOT\DLE\DC2\ACK\174\SOH\NUL\185\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\174\SOH\b\FS\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\175\SOH\STX/\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\EOT\DC2\EOT\175\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\175\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\175\SOH\ETB\SUB\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\175\SOH-.\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\176\SOH\STXN\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ACK\DC2\EOT\176\SOH\STX\f\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\176\SOH\ETB*\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\176\SOH-.\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\b\DC2\EOT\176\SOH/M\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\SOH\b\233\251\ETX\DC2\EOT\176\SOH0L\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\STX\DC2\EOT\177\SOH\STXN\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\EOT\DC2\EOT\177\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ACK\DC2\EOT\177\SOH\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\EOT\177\SOH\ETB\"\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\EOT\177\SOH-.\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\b\DC2\EOT\177\SOH/M\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\STX\b\233\251\ETX\DC2\EOT\177\SOH0L\n\
    \P\n\
    \\EOT\EOT\DLE\STX\ETX\DC2\EOT\179\SOH\STX5\SUBB hash is the merkle root hash of the fields of the decided block.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ENQ\DC2\EOT\179\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\SOH\DC2\EOT\179\SOH\FS \n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ETX\DC2\EOT\179\SOH34\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\EOT\DC2\EOT\180\SOH\STX5\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\ENQ\DC2\EOT\180\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\SOH\DC2\EOT\180\SOH\FS\"\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\ETX\DC2\EOT\180\SOH34\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\ENQ\DC2\EOT\181\SOH\STXp\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ENQ\ACK\DC2\EOT\181\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ENQ\SOH\DC2\EOT\181\SOH\FS \n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ENQ\ETX\DC2\EOT\181\SOH34\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ENQ\b\DC2\EOT\181\SOH5o\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\ENQ\b\233\251\ETX\DC2\EOT\181\SOH6R\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\ENQ\b\242\251\ETX\DC2\EOT\181\SOHTn\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\ACK\DC2\EOT\182\SOH\STX5\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ACK\ENQ\DC2\EOT\182\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ACK\SOH\DC2\EOT\182\SOH\FS0\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ACK\ETX\DC2\EOT\182\SOH34\n\
    \h\n\
    \\EOT\EOT\DLE\STX\a\DC2\EOT\184\SOH\STX\GS\SUBZ proposer_address is the address of the public key of the original proposer of the block.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\a\ENQ\DC2\EOT\184\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\a\SOH\DC2\EOT\184\SOH\b\CAN\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\a\ETX\DC2\EOT\184\SOH\ESC\FS\n\
    \G\n\
    \\STX\EOT\DC1\DC2\ACK\190\SOH\NUL\211\SOH\SOH29----------------------------------------\n\
    \ Response types\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\190\SOH\b\DLE\n\
    \\SO\n\
    \\EOT\EOT\DC1\b\NUL\DC2\ACK\191\SOH\STX\209\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\DC1\b\NUL\SOH\DC2\EOT\191\SOH\b\r\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\192\SOH\EOT:\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ACK\DC2\EOT\192\SOH\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\192\SOH )\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\192\SOH89\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\193\SOH\EOT:\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ACK\DC2\EOT\193\SOH\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\193\SOH $\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\193\SOH89\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\STX\DC2\EOT\194\SOH\EOT:\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ACK\DC2\EOT\194\SOH\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\SOH\DC2\EOT\194\SOH %\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ETX\DC2\EOT\194\SOH89\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\ETX\DC2\EOT\195\SOH\EOT:\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\ACK\DC2\EOT\195\SOH\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\SOH\DC2\EOT\195\SOH $\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ETX\ETX\DC2\EOT\195\SOH89\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\EOT\DC2\EOT\196\SOH\EOT:\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\ACK\DC2\EOT\196\SOH\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\SOH\DC2\EOT\196\SOH *\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\EOT\ETX\DC2\EOT\196\SOH89\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\ENQ\DC2\EOT\197\SOH\EOT:\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ENQ\ACK\DC2\EOT\197\SOH\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ENQ\SOH\DC2\EOT\197\SOH %\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ENQ\ETX\DC2\EOT\197\SOH89\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\ACK\DC2\EOT\198\SOH\EOT:\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ACK\ACK\DC2\EOT\198\SOH\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ACK\SOH\DC2\EOT\198\SOH (\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\ACK\ETX\DC2\EOT\198\SOH89\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\a\DC2\EOT\199\SOH\EOT;\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\a\ACK\DC2\EOT\199\SOH\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\a\SOH\DC2\EOT\199\SOH &\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\a\ETX\DC2\EOT\199\SOH8:\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\b\DC2\EOT\200\SOH\EOT;\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\b\ACK\DC2\EOT\200\SOH\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\b\SOH\DC2\EOT\200\SOH .\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\b\ETX\DC2\EOT\200\SOH8:\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\t\DC2\EOT\201\SOH\EOT;\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\t\ACK\DC2\EOT\201\SOH\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\t\SOH\DC2\EOT\201\SOH .\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\t\ETX\DC2\EOT\201\SOH8:\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\n\
    \\DC2\EOT\202\SOH\EOT;\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\n\
    \\ACK\DC2\EOT\202\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\n\
    \\SOH\DC2\EOT\202\SOH 3\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\n\
    \\ETX\DC2\EOT\202\SOH8:\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\v\DC2\EOT\203\SOH\EOT;\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\v\ACK\DC2\EOT\203\SOH\EOT\RS\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\v\SOH\DC2\EOT\203\SOH 4\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\v\ETX\DC2\EOT\203\SOH8:\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\f\DC2\EOT\204\SOH\EOT;\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\f\ACK\DC2\EOT\204\SOH\EOT\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\f\SOH\DC2\EOT\204\SOH 0\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\f\ETX\DC2\EOT\204\SOH8:\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\r\DC2\EOT\205\SOH\EOT;\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\r\ACK\DC2\EOT\205\SOH\EOT\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\r\SOH\DC2\EOT\205\SOH 0\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\r\ETX\DC2\EOT\205\SOH8:\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\SO\DC2\EOT\206\SOH\EOT;\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SO\ACK\DC2\EOT\206\SOH\EOT\SYN\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SO\SOH\DC2\EOT\206\SOH +\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SO\ETX\DC2\EOT\206\SOH8:\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\SI\DC2\EOT\207\SOH\EOT;\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SI\ACK\DC2\EOT\207\SOH\EOT\US\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SI\SOH\DC2\EOT\207\SOH 5\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SI\ETX\DC2\EOT\207\SOH8:\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\DLE\DC2\EOT\208\SOH\EOT;\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\DLE\ACK\DC2\EOT\208\SOH\EOT\EM\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\DLE\SOH\DC2\EOT\208\SOH .\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\DLE\ETX\DC2\EOT\208\SOH8:\n\
    \9\n\
    \\ETX\EOT\DC1\t\DC2\EOT\210\SOH\STX\CAN\", SetOption, BeginBlock, DeliverTx, EndBlock\n\
    \\n\
    \\f\n\
    \\EOT\EOT\DC1\t\NUL\DC2\EOT\210\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\DC1\t\NUL\SOH\DC2\EOT\210\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\DC1\t\NUL\STX\DC2\EOT\210\SOH\v\f\n\
    \\f\n\
    \\EOT\EOT\DC1\t\SOH\DC2\EOT\210\SOH\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\DC1\t\SOH\SOH\DC2\EOT\210\SOH\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\DC1\t\SOH\STX\DC2\EOT\210\SOH\SO\SI\n\
    \\f\n\
    \\EOT\EOT\DC1\t\STX\DC2\EOT\210\SOH\DC1\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC1\t\STX\SOH\DC2\EOT\210\SOH\DC1\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC1\t\STX\STX\DC2\EOT\210\SOH\DC1\DC3\n\
    \\f\n\
    \\EOT\EOT\DC1\t\ETX\DC2\EOT\210\SOH\NAK\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC1\t\ETX\SOH\DC2\EOT\210\SOH\NAK\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC1\t\ETX\STX\DC2\EOT\210\SOH\NAK\ETB\n\
    \ \n\
    \\STX\EOT\DC2\DC2\ACK\214\SOH\NUL\216\SOH\SOH\SUB\DC2 nondeterministic\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\214\SOH\b\EM\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\215\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\215\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\215\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\215\SOH\DC1\DC2\n\
    \\f\n\
    \\STX\EOT\DC3\DC2\ACK\218\SOH\NUL\220\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\218\SOH\b\DC4\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\219\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\219\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\219\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\219\SOH\DC3\DC4\n\
    \\n\
    \\n\
    \\STX\EOT\DC4\DC2\EOT\222\SOH\NUL\CAN\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\222\SOH\b\NAK\n\
    \\f\n\
    \\STX\EOT\NAK\DC2\ACK\224\SOH\NUL\232\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\224\SOH\b\DC4\n\
    \\f\n\
    \\EOT\EOT\NAK\STX\NUL\DC2\EOT\225\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ENQ\DC2\EOT\225\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\SOH\DC2\EOT\225\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ETX\DC2\EOT\225\SOH\DLE\DC1\n\
    \\f\n\
    \\EOT\EOT\NAK\STX\SOH\DC2\EOT\227\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ENQ\DC2\EOT\227\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\SOH\DC2\EOT\227\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ETX\DC2\EOT\227\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\NAK\STX\STX\DC2\EOT\228\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\ENQ\DC2\EOT\228\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\SOH\DC2\EOT\228\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\STX\ETX\DC2\EOT\228\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\NAK\STX\ETX\DC2\EOT\230\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\ENQ\DC2\EOT\230\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\SOH\DC2\EOT\230\SOH\b\EM\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\ETX\ETX\DC2\EOT\230\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\NAK\STX\EOT\DC2\EOT\231\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\EOT\ENQ\DC2\EOT\231\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\EOT\SOH\DC2\EOT\231\SOH\b\ESC\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\EOT\ETX\DC2\EOT\231\SOH\RS\US\n\
    \\f\n\
    \\STX\EOT\SYN\DC2\ACK\234\SOH\NUL\238\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\234\SOH\b\EM\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\235\SOH\STX8\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ACK\DC2\EOT\235\SOH\STX\"\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\235\SOH#3\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\235\SOH67\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\SOH\DC2\EOT\236\SOH\STXW\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\EOT\DC2\EOT\236\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ACK\DC2\EOT\236\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\SOH\DC2\EOT\236\SOH#-\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ETX\DC2\EOT\236\SOH67\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\b\DC2\EOT\236\SOH8V\n\
    \\DLE\n\
    \\b\EOT\SYN\STX\SOH\b\233\251\ETX\DC2\EOT\236\SOH9U\n\
    \\f\n\
    \\EOT\EOT\SYN\STX\STX\DC2\EOT\237\SOH\STX8\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ENQ\DC2\EOT\237\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\SOH\DC2\EOT\237\SOH#+\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ETX\DC2\EOT\237\SOH67\n\
    \\f\n\
    \\STX\EOT\ETB\DC2\ACK\240\SOH\NUL\251\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ETB\SOH\DC2\EOT\240\SOH\b\NAK\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\NUL\DC2\EOT\241\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ENQ\DC2\EOT\241\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\SOH\DC2\EOT\241\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ETX\DC2\EOT\241\SOH\DLE\DC1\n\
    \K\n\
    \\EOT\EOT\ETB\STX\SOH\DC2\EOT\243\SOH\STX+\SUB) bytes data = 2; // use \"value\" instead.\n\
    \\"\DC2 nondeterministic\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\ENQ\DC2\EOT\243\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\SOH\DC2\EOT\243\SOH\GS \n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\ETX\DC2\EOT\243\SOH)*\n\
    \ \n\
    \\EOT\EOT\ETB\STX\STX\DC2\EOT\244\SOH\STX+\"\DC2 nondeterministic\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\STX\ENQ\DC2\EOT\244\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\STX\SOH\DC2\EOT\244\SOH\GS!\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\STX\ETX\DC2\EOT\244\SOH)*\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\ETX\DC2\EOT\245\SOH\STX+\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\ETX\ENQ\DC2\EOT\245\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\ETX\SOH\DC2\EOT\245\SOH\GS\"\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\ETX\ETX\DC2\EOT\245\SOH)*\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\EOT\DC2\EOT\246\SOH\STX+\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\EOT\ENQ\DC2\EOT\246\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\EOT\SOH\DC2\EOT\246\SOH\GS \n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\EOT\ETX\DC2\EOT\246\SOH)*\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\ENQ\DC2\EOT\247\SOH\STX+\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\ENQ\ENQ\DC2\EOT\247\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\ENQ\SOH\DC2\EOT\247\SOH\GS\"\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\ENQ\ETX\DC2\EOT\247\SOH)*\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\ACK\DC2\EOT\248\SOH\STX+\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\ACK\ACK\DC2\EOT\248\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\ACK\SOH\DC2\EOT\248\SOH\GS&\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\ACK\ETX\DC2\EOT\248\SOH)*\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\a\DC2\EOT\249\SOH\STX+\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\a\ENQ\DC2\EOT\249\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\a\SOH\DC2\EOT\249\SOH\GS#\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\a\ETX\DC2\EOT\249\SOH)*\n\
    \\f\n\
    \\EOT\EOT\ETB\STX\b\DC2\EOT\250\SOH\STX,\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\b\ENQ\DC2\EOT\250\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\b\SOH\DC2\EOT\250\SOH\GS&\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\b\ETX\DC2\EOT\250\SOH)+\n\
    \\f\n\
    \\STX\EOT\CAN\DC2\ACK\253\SOH\NUL\140\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\CAN\SOH\DC2\EOT\253\SOH\b\ETB\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\NUL\DC2\EOT\254\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ENQ\DC2\EOT\254\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\SOH\DC2\EOT\254\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ETX\DC2\EOT\254\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\SOH\DC2\EOT\255\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ENQ\DC2\EOT\255\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\SOH\DC2\EOT\255\SOH\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ETX\DC2\EOT\255\SOH\RS\US\n\
    \ \n\
    \\EOT\EOT\CAN\STX\STX\DC2\EOT\128\STX\STX \"\DC2 nondeterministic\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\ENQ\DC2\EOT\128\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\SOH\DC2\EOT\128\STX\DC1\DC4\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\STX\ETX\DC2\EOT\128\STX\RS\US\n\
    \ \n\
    \\EOT\EOT\CAN\STX\ETX\DC2\EOT\129\STX\STX \"\DC2 nondeterministic\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ETX\ENQ\DC2\EOT\129\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ETX\SOH\DC2\EOT\129\STX\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ETX\ETX\DC2\EOT\129\STX\RS\US\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\EOT\DC2\EOT\130\STX\STX;\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\EOT\ENQ\DC2\EOT\130\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\EOT\SOH\DC2\EOT\130\STX\DC1\ESC\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\EOT\ETX\DC2\EOT\130\STX\RS\US\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\EOT\b\DC2\EOT\130\STX :\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\EOT\n\
    \\DC2\EOT\130\STX!9\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\ENQ\DC2\EOT\131\STX\STX9\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ENQ\ENQ\DC2\EOT\131\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ENQ\SOH\DC2\EOT\131\STX\DC1\EM\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ENQ\ETX\DC2\EOT\131\STX\RS\US\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ENQ\b\DC2\EOT\131\STX 8\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ENQ\n\
    \\DC2\EOT\131\STX!7\n\
    \\SO\n\
    \\EOT\EOT\CAN\STX\ACK\DC2\ACK\132\STX\STX\133\STXO\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ACK\EOT\DC2\EOT\132\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ACK\ACK\DC2\EOT\132\STX\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ACK\SOH\DC2\EOT\132\STX\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ACK\ETX\DC2\EOT\132\STX\RS\US\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\ACK\b\DC2\EOT\133\STX\ACKN\n\
    \\DLE\n\
    \\b\EOT\CAN\STX\ACK\b\233\251\ETX\DC2\EOT\133\STX\a#\n\
    \\DLE\n\
    \\b\EOT\CAN\STX\ACK\b\237\251\ETX\DC2\EOT\133\STX%M\n\
    \\f\n\
    \\EOT\EOT\CAN\STX\a\DC2\EOT\134\STX\STX\ETB\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\a\ENQ\DC2\EOT\134\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\a\SOH\DC2\EOT\134\STX\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\a\ETX\DC2\EOT\134\STX\NAK\SYN\n\
    \b\n\
    \\ETX\EOT\CAN\t\DC2\EOT\138\STX\STX\DC3\SUBU These reserved fields were used until v0.37 by the priority mempool (now\n\
    \ removed).\n\
    \\n\
    \\f\n\
    \\EOT\EOT\CAN\t\NUL\DC2\EOT\138\STX\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\CAN\t\NUL\SOH\DC2\EOT\138\STX\v\f\n\
    \\r\n\
    \\ENQ\EOT\CAN\t\NUL\STX\DC2\EOT\138\STX\DLE\DC2\n\
    \\v\n\
    \\ETX\EOT\CAN\n\
    \\DC2\EOT\139\STX\STX1\n\
    \\f\n\
    \\EOT\EOT\CAN\n\
    \\NUL\DC2\EOT\139\STX\v\DC3\n\
    \\f\n\
    \\EOT\EOT\CAN\n\
    \\SOH\DC2\EOT\139\STX\NAK\US\n\
    \\f\n\
    \\EOT\EOT\CAN\n\
    \\STX\DC2\EOT\139\STX!0\n\
    \\f\n\
    \\STX\EOT\EM\DC2\ACK\142\STX\NUL\145\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\EM\SOH\DC2\EOT\142\STX\b\SYN\n\
    \0\n\
    \\ETX\EOT\EM\t\DC2\EOT\143\STX\STX\DLE\"# data was previously returned here\n\
    \\n\
    \\f\n\
    \\EOT\EOT\EM\t\NUL\DC2\EOT\143\STX\v\f\n\
    \\r\n\
    \\ENQ\EOT\EM\t\NUL\SOH\DC2\EOT\143\STX\v\f\n\
    \\r\n\
    \\ENQ\EOT\EM\t\NUL\STX\DC2\EOT\143\STX\v\f\n\
    \\f\n\
    \\EOT\EOT\EM\t\SOH\DC2\EOT\143\STX\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\EM\t\SOH\SOH\DC2\EOT\143\STX\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\EM\t\SOH\STX\DC2\EOT\143\STX\SO\SI\n\
    \\f\n\
    \\EOT\EOT\EM\STX\NUL\DC2\EOT\144\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ENQ\DC2\EOT\144\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\SOH\DC2\EOT\144\STX\b\NAK\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ETX\DC2\EOT\144\STX\CAN\EM\n\
    \\f\n\
    \\STX\EOT\SUB\DC2\ACK\147\STX\NUL\149\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\SUB\SOH\DC2\EOT\147\STX\b\GS\n\
    \\f\n\
    \\EOT\EOT\SUB\STX\NUL\DC2\EOT\148\STX\STX\"\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\EOT\DC2\EOT\148\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ACK\DC2\EOT\148\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\SOH\DC2\EOT\148\STX\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ETX\DC2\EOT\148\STX !\n\
    \\f\n\
    \\STX\EOT\ESC\DC2\ACK\151\STX\NUL\162\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\ESC\SOH\DC2\EOT\151\STX\b\GS\n\
    \\f\n\
    \\EOT\EOT\ESC\STX\NUL\DC2\EOT\152\STX\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ACK\DC2\EOT\152\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\SOH\DC2\EOT\152\STX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ETX\DC2\EOT\152\STX\DC2\DC3\n\
    \\SO\n\
    \\EOT\EOT\ESC\EOT\NUL\DC2\ACK\154\STX\STX\161\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\ESC\EOT\NUL\SOH\DC2\EOT\154\STX\a\r\n\
    \@\n\
    \\ACK\EOT\ESC\EOT\NUL\STX\NUL\DC2\EOT\155\STX\EOT\SYN\"0 Unknown result, abort all snapshot restoration\n\
    \\n\
    \\SI\n\
    \\a\EOT\ESC\EOT\NUL\STX\NUL\SOH\DC2\EOT\155\STX\EOT\v\n\
    \\SI\n\
    \\a\EOT\ESC\EOT\NUL\STX\NUL\STX\DC2\EOT\155\STX\DC4\NAK\n\
    \1\n\
    \\ACK\EOT\ESC\EOT\NUL\STX\SOH\DC2\EOT\156\STX\EOT\SYN\"! Snapshot accepted, apply chunks\n\
    \\n\
    \\SI\n\
    \\a\EOT\ESC\EOT\NUL\STX\SOH\SOH\DC2\EOT\156\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\ESC\EOT\NUL\STX\SOH\STX\DC2\EOT\156\STX\DC4\NAK\n\
    \0\n\
    \\ACK\EOT\ESC\EOT\NUL\STX\STX\DC2\EOT\157\STX\EOT\SYN\"  Abort all snapshot restoration\n\
    \\n\
    \\SI\n\
    \\a\EOT\ESC\EOT\NUL\STX\STX\SOH\DC2\EOT\157\STX\EOT\t\n\
    \\SI\n\
    \\a\EOT\ESC\EOT\NUL\STX\STX\STX\DC2\EOT\157\STX\DC4\NAK\n\
    \;\n\
    \\ACK\EOT\ESC\EOT\NUL\STX\ETX\DC2\EOT\158\STX\EOT\SYN\"+ Reject this specific snapshot, try others\n\
    \\n\
    \\SI\n\
    \\a\EOT\ESC\EOT\NUL\STX\ETX\SOH\DC2\EOT\158\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\ESC\EOT\NUL\STX\ETX\STX\DC2\EOT\158\STX\DC4\NAK\n\
    \A\n\
    \\ACK\EOT\ESC\EOT\NUL\STX\EOT\DC2\EOT\159\STX\EOT\SYN\"1 Reject all snapshots of this format, try others\n\
    \\n\
    \\SI\n\
    \\a\EOT\ESC\EOT\NUL\STX\EOT\SOH\DC2\EOT\159\STX\EOT\DC1\n\
    \\SI\n\
    \\a\EOT\ESC\EOT\NUL\STX\EOT\STX\DC2\EOT\159\STX\DC4\NAK\n\
    \E\n\
    \\ACK\EOT\ESC\EOT\NUL\STX\ENQ\DC2\EOT\160\STX\EOT\SYN\"5 Reject all snapshots from the sender(s), try others\n\
    \\n\
    \\SI\n\
    \\a\EOT\ESC\EOT\NUL\STX\ENQ\SOH\DC2\EOT\160\STX\EOT\DC1\n\
    \\SI\n\
    \\a\EOT\ESC\EOT\NUL\STX\ENQ\STX\DC2\EOT\160\STX\DC4\NAK\n\
    \\f\n\
    \\STX\EOT\FS\DC2\ACK\164\STX\NUL\166\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\FS\SOH\DC2\EOT\164\STX\b!\n\
    \\f\n\
    \\EOT\EOT\FS\STX\NUL\DC2\EOT\165\STX\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ENQ\DC2\EOT\165\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\SOH\DC2\EOT\165\STX\b\r\n\
    \\r\n\
    \\ENQ\EOT\FS\STX\NUL\ETX\DC2\EOT\165\STX\DLE\DC1\n\
    \\f\n\
    \\STX\EOT\GS\DC2\ACK\168\STX\NUL\181\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\GS\SOH\DC2\EOT\168\STX\b\"\n\
    \\f\n\
    \\EOT\EOT\GS\STX\NUL\DC2\EOT\169\STX\STX%\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ACK\DC2\EOT\169\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\SOH\DC2\EOT\169\STX\DC2\CAN\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\NUL\ETX\DC2\EOT\169\STX#$\n\
    \-\n\
    \\EOT\EOT\GS\STX\SOH\DC2\EOT\170\STX\STX%\"\US Chunks to refetch and reapply\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\EOT\DC2\EOT\170\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\ENQ\DC2\EOT\170\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\SOH\DC2\EOT\170\STX\DC2 \n\
    \\r\n\
    \\ENQ\EOT\GS\STX\SOH\ETX\DC2\EOT\170\STX#$\n\
    \/\n\
    \\EOT\EOT\GS\STX\STX\DC2\EOT\171\STX\STX%\"! Chunk senders to reject and ban\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\EOT\DC2\EOT\171\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\ENQ\DC2\EOT\171\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\SOH\DC2\EOT\171\STX\DC2 \n\
    \\r\n\
    \\ENQ\EOT\GS\STX\STX\ETX\DC2\EOT\171\STX#$\n\
    \\SO\n\
    \\EOT\EOT\GS\EOT\NUL\DC2\ACK\173\STX\STX\180\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\GS\EOT\NUL\SOH\DC2\EOT\173\STX\a\r\n\
    \@\n\
    \\ACK\EOT\GS\EOT\NUL\STX\NUL\DC2\EOT\174\STX\EOT\CAN\"0 Unknown result, abort all snapshot restoration\n\
    \\n\
    \\SI\n\
    \\a\EOT\GS\EOT\NUL\STX\NUL\SOH\DC2\EOT\174\STX\EOT\v\n\
    \\SI\n\
    \\a\EOT\GS\EOT\NUL\STX\NUL\STX\DC2\EOT\174\STX\SYN\ETB\n\
    \-\n\
    \\ACK\EOT\GS\EOT\NUL\STX\SOH\DC2\EOT\175\STX\EOT\CAN\"\GS Chunk successfully accepted\n\
    \\n\
    \\SI\n\
    \\a\EOT\GS\EOT\NUL\STX\SOH\SOH\DC2\EOT\175\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\GS\EOT\NUL\STX\SOH\STX\DC2\EOT\175\STX\SYN\ETB\n\
    \0\n\
    \\ACK\EOT\GS\EOT\NUL\STX\STX\DC2\EOT\176\STX\EOT\CAN\"  Abort all snapshot restoration\n\
    \\n\
    \\SI\n\
    \\a\EOT\GS\EOT\NUL\STX\STX\SOH\DC2\EOT\176\STX\EOT\t\n\
    \\SI\n\
    \\a\EOT\GS\EOT\NUL\STX\STX\STX\DC2\EOT\176\STX\SYN\ETB\n\
    \?\n\
    \\ACK\EOT\GS\EOT\NUL\STX\ETX\DC2\EOT\177\STX\EOT\CAN\"/ Retry chunk (combine with refetch and reject)\n\
    \\n\
    \\SI\n\
    \\a\EOT\GS\EOT\NUL\STX\ETX\SOH\DC2\EOT\177\STX\EOT\t\n\
    \\SI\n\
    \\a\EOT\GS\EOT\NUL\STX\ETX\STX\DC2\EOT\177\STX\SYN\ETB\n\
    \B\n\
    \\ACK\EOT\GS\EOT\NUL\STX\EOT\DC2\EOT\178\STX\EOT\CAN\"2 Retry snapshot (combine with refetch and reject)\n\
    \\n\
    \\SI\n\
    \\a\EOT\GS\EOT\NUL\STX\EOT\SOH\DC2\EOT\178\STX\EOT\DC2\n\
    \\SI\n\
    \\a\EOT\GS\EOT\NUL\STX\EOT\STX\DC2\EOT\178\STX\SYN\ETB\n\
    \2\n\
    \\ACK\EOT\GS\EOT\NUL\STX\ENQ\DC2\EOT\179\STX\EOT\CAN\"\" Reject this snapshot, try others\n\
    \\n\
    \\SI\n\
    \\a\EOT\GS\EOT\NUL\STX\ENQ\SOH\DC2\EOT\179\STX\EOT\DC3\n\
    \\SI\n\
    \\a\EOT\GS\EOT\NUL\STX\ENQ\STX\DC2\EOT\179\STX\SYN\ETB\n\
    \\f\n\
    \\STX\EOT\RS\DC2\ACK\183\STX\NUL\185\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\RS\SOH\DC2\EOT\183\STX\b\US\n\
    \\f\n\
    \\EOT\EOT\RS\STX\NUL\DC2\EOT\184\STX\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\EOT\DC2\EOT\184\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ENQ\DC2\EOT\184\STX\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\SOH\DC2\EOT\184\STX\DC1\DC4\n\
    \\r\n\
    \\ENQ\EOT\RS\STX\NUL\ETX\DC2\EOT\184\STX\ETB\CAN\n\
    \\f\n\
    \\STX\EOT\US\DC2\ACK\187\STX\NUL\195\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\US\SOH\DC2\EOT\187\STX\b\US\n\
    \\f\n\
    \\EOT\EOT\US\STX\NUL\DC2\EOT\188\STX\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\ACK\DC2\EOT\188\STX\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\SOH\DC2\EOT\188\STX\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\US\STX\NUL\ETX\DC2\EOT\188\STX\SUB\ESC\n\
    \\SO\n\
    \\EOT\EOT\US\EOT\NUL\DC2\ACK\190\STX\STX\194\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\US\EOT\NUL\SOH\DC2\EOT\190\STX\a\NAK\n\
    \\SO\n\
    \\ACK\EOT\US\EOT\NUL\STX\NUL\DC2\EOT\191\STX\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\US\EOT\NUL\STX\NUL\SOH\DC2\EOT\191\STX\EOT\v\n\
    \\SI\n\
    \\a\EOT\US\EOT\NUL\STX\NUL\STX\DC2\EOT\191\STX\SO\SI\n\
    \\SO\n\
    \\ACK\EOT\US\EOT\NUL\STX\SOH\DC2\EOT\192\STX\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\US\EOT\NUL\STX\SOH\SOH\DC2\EOT\192\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\US\EOT\NUL\STX\SOH\STX\DC2\EOT\192\STX\SO\SI\n\
    \\SO\n\
    \\ACK\EOT\US\EOT\NUL\STX\STX\DC2\EOT\193\STX\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\US\EOT\NUL\STX\STX\SOH\DC2\EOT\193\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\US\EOT\NUL\STX\STX\STX\DC2\EOT\193\STX\SO\SI\n\
    \\f\n\
    \\STX\EOT \DC2\ACK\197\STX\NUL\199\STX\SOH\n\
    \\v\n\
    \\ETX\EOT \SOH\DC2\EOT\197\STX\b\SUB\n\
    \\f\n\
    \\EOT\EOT \STX\NUL\DC2\EOT\198\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\ENQ\DC2\EOT\198\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\SOH\DC2\EOT\198\STX\b\SYN\n\
    \\r\n\
    \\ENQ\EOT \STX\NUL\ETX\DC2\EOT\198\STX\EM\SUB\n\
    \\f\n\
    \\STX\EOT!\DC2\ACK\201\STX\NUL\213\STX\SOH\n\
    \\v\n\
    \\ETX\EOT!\SOH\DC2\EOT\201\STX\b#\n\
    \\f\n\
    \\EOT\EOT!\STX\NUL\DC2\EOT\202\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\ACK\DC2\EOT\202\STX\STX\SO\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\SOH\DC2\EOT\202\STX\SI\NAK\n\
    \\r\n\
    \\ENQ\EOT!\STX\NUL\ETX\DC2\EOT\202\STX\CAN\EM\n\
    \\SO\n\
    \\EOT\EOT!\EOT\NUL\DC2\ACK\204\STX\STX\212\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT!\EOT\NUL\SOH\DC2\EOT\204\STX\a\DC3\n\
    \\SO\n\
    \\ACK\EOT!\EOT\NUL\STX\NUL\DC2\EOT\205\STX\EOT\DLE\n\
    \\SI\n\
    \\a\EOT!\EOT\NUL\STX\NUL\SOH\DC2\EOT\205\STX\EOT\v\n\
    \\SI\n\
    \\a\EOT!\EOT\NUL\STX\NUL\STX\DC2\EOT\205\STX\SO\SI\n\
    \\SO\n\
    \\ACK\EOT!\EOT\NUL\STX\SOH\DC2\EOT\206\STX\EOT\DLE\n\
    \\SI\n\
    \\a\EOT!\EOT\NUL\STX\SOH\SOH\DC2\EOT\206\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT!\EOT\NUL\STX\SOH\STX\DC2\EOT\206\STX\SO\SI\n\
    \\157\STX\n\
    \\ACK\EOT!\EOT\NUL\STX\STX\DC2\EOT\211\STX\EOT\DLE\SUB\140\STX Rejecting the vote extension will reject the entire precommit by the sender.\n\
    \ Incorrectly implementing this thus has liveness implications as it may affect\n\
    \ CometBFT's ability to receive 2/3+ valid votes to finalize the block.\n\
    \ Honest nodes should never be rejected.\n\
    \\n\
    \\SI\n\
    \\a\EOT!\EOT\NUL\STX\STX\SOH\DC2\EOT\211\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT!\EOT\NUL\STX\STX\STX\DC2\EOT\211\STX\SO\SI\n\
    \\f\n\
    \\STX\EOT\"\DC2\ACK\215\STX\NUL\229\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\"\SOH\DC2\EOT\215\STX\b\GS\n\
    \M\n\
    \\EOT\EOT\"\STX\NUL\DC2\ACK\217\STX\STX\218\STXO\SUB= set of block events emmitted as part of executing the block\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\EOT\DC2\EOT\217\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\ACK\DC2\EOT\217\STX\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\SOH\DC2\EOT\217\STX\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\ETX\DC2\EOT\217\STX\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\"\STX\NUL\b\DC2\EOT\218\STX\ACKN\n\
    \\DLE\n\
    \\b\EOT\"\STX\NUL\b\233\251\ETX\DC2\EOT\218\STX\a#\n\
    \\DLE\n\
    \\b\EOT\"\STX\NUL\b\237\251\ETX\DC2\EOT\218\STX%M\n\
    \\193\SOH\n\
    \\EOT\EOT\"\STX\SOH\DC2\EOT\222\STX\STX'\SUB\178\SOH the result of executing each transaction including the events\n\
    \ the particular transction emitted. This should match the order\n\
    \ of the transactions delivered in the block itself\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\EOT\DC2\EOT\222\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\ACK\DC2\EOT\222\STX\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\SOH\DC2\EOT\222\STX\CAN\"\n\
    \\r\n\
    \\ENQ\EOT\"\STX\SOH\ETX\DC2\EOT\222\STX%&\n\
    \s\n\
    \\EOT\EOT\"\STX\STX\DC2\EOT\224\STX\STXP\SUBe a list of updates to the validator set. These will reflect the validator set at current height + 2.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\EOT\DC2\EOT\224\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\ACK\DC2\EOT\224\STX\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\SOH\DC2\EOT\224\STX\ESC,\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\ETX\DC2\EOT\224\STX/0\n\
    \\r\n\
    \\ENQ\EOT\"\STX\STX\b\DC2\EOT\224\STX1O\n\
    \\DLE\n\
    \\b\EOT\"\STX\STX\b\233\251\ETX\DC2\EOT\224\STX2N\n\
    \8\n\
    \\EOT\EOT\"\STX\ETX\DC2\EOT\226\STX\STX?\SUB* updates to the consensus params, if any.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ETX\ACK\DC2\EOT\226\STX\STX\"\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ETX\SOH\DC2\EOT\226\STX#:\n\
    \\r\n\
    \\ENQ\EOT\"\STX\ETX\ETX\DC2\EOT\226\STX=>\n\
    \\205\SOH\n\
    \\EOT\EOT\"\STX\EOT\DC2\EOT\228\STX\STX\NAK\SUB\190\SOH app_hash is the hash of the applications' state which is used to confirm that execution of the transactions was deterministic. It is up to the application to decide which algorithm to use.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\"\STX\EOT\ENQ\DC2\EOT\228\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\"\STX\EOT\SOH\DC2\EOT\228\STX\b\DLE\n\
    \\r\n\
    \\ENQ\EOT\"\STX\EOT\ETX\DC2\EOT\228\STX\DC3\DC4\n\
    \>\n\
    \\STX\EOT#\DC2\ACK\234\STX\NUL\237\STX\SOH20----------------------------------------\n\
    \ Misc.\n\
    \\n\
    \\v\n\
    \\ETX\EOT#\SOH\DC2\EOT\234\STX\b\DC2\n\
    \\f\n\
    \\EOT\EOT#\STX\NUL\DC2\EOT\235\STX\STX\RS\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\ENQ\DC2\EOT\235\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\SOH\DC2\EOT\235\STX\DC4\EM\n\
    \\r\n\
    \\ENQ\EOT#\STX\NUL\ETX\DC2\EOT\235\STX\FS\GS\n\
    \\f\n\
    \\EOT\EOT#\STX\SOH\DC2\EOT\236\STX\STX=\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\EOT\DC2\EOT\236\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\ACK\DC2\EOT\236\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\SOH\DC2\EOT\236\STX\DC4\EM\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\ETX\DC2\EOT\236\STX\FS\GS\n\
    \\r\n\
    \\ENQ\EOT#\STX\SOH\b\DC2\EOT\236\STX\RS<\n\
    \\DLE\n\
    \\b\EOT#\STX\SOH\b\233\251\ETX\DC2\EOT\236\STX\US;\n\
    \\188\SOH\n\
    \\STX\EOT$\DC2\ACK\242\STX\NUL\248\STX\SOH\SUB\173\SOH ExtendedCommitInfo is similar to CommitInfo except that it is only used in\n\
    \ the PrepareProposal request such that CometBFT can provide vote extensions\n\
    \ to the application.\n\
    \\n\
    \\v\n\
    \\ETX\EOT$\SOH\DC2\EOT\242\STX\b\SUB\n\
    \U\n\
    \\EOT\EOT$\STX\NUL\DC2\EOT\244\STX\STX\DC2\SUBG The round at which the block proposer decided in the previous height.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\ENQ\DC2\EOT\244\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\SOH\DC2\EOT\244\STX\b\r\n\
    \\r\n\
    \\ENQ\EOT$\STX\NUL\ETX\DC2\EOT\244\STX\DLE\DC1\n\
    \\130\SOH\n\
    \\EOT\EOT$\STX\SOH\DC2\EOT\247\STX\STXE\SUBt List of validators' addresses in the last validator set with their voting\n\
    \ information, including vote extensions.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\EOT\DC2\EOT\247\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\ACK\DC2\EOT\247\STX\v\ESC\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\SOH\DC2\EOT\247\STX\FS!\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\ETX\DC2\EOT\247\STX$%\n\
    \\r\n\
    \\ENQ\EOT$\STX\SOH\b\DC2\EOT\247\STX&D\n\
    \\DLE\n\
    \\b\EOT$\STX\SOH\b\233\251\ETX\DC2\EOT\247\STX'C\n\
    \\188\SOH\n\
    \\STX\EOT%\DC2\ACK\253\STX\NUL\131\ETX\SOH\SUB\173\SOH Event allows application developers to attach additional information to\n\
    \ ResponseFinalizeBlock and ResponseCheckTx.\n\
    \ Later, transactions may be queried using these events.\n\
    \\n\
    \\v\n\
    \\ETX\EOT%\SOH\DC2\EOT\253\STX\b\r\n\
    \\f\n\
    \\EOT\EOT%\STX\NUL\DC2\EOT\254\STX\STX)\n\
    \\r\n\
    \\ENQ\EOT%\STX\NUL\ENQ\DC2\EOT\254\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT%\STX\NUL\SOH\DC2\EOT\254\STX\SUB\RS\n\
    \\r\n\
    \\ENQ\EOT%\STX\NUL\ETX\DC2\EOT\254\STX'(\n\
    \\SO\n\
    \\EOT\EOT%\STX\SOH\DC2\ACK\255\STX\STX\130\ETX\EOT\n\
    \\r\n\
    \\ENQ\EOT%\STX\SOH\EOT\DC2\EOT\255\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT%\STX\SOH\ACK\DC2\EOT\255\STX\v\EM\n\
    \\r\n\
    \\ENQ\EOT%\STX\SOH\SOH\DC2\EOT\255\STX\SUB$\n\
    \\r\n\
    \\ENQ\EOT%\STX\SOH\ETX\DC2\EOT\255\STX'(\n\
    \\SI\n\
    \\ENQ\EOT%\STX\SOH\b\DC2\ACK\255\STX)\130\ETX\ETX\n\
    \\DLE\n\
    \\b\EOT%\STX\SOH\b\233\251\ETX\DC2\EOT\128\ETX\EOT \n\
    \\DLE\n\
    \\b\EOT%\STX\SOH\b\237\251\ETX\DC2\EOT\129\ETX\EOT1\n\
    \T\n\
    \\STX\EOT&\DC2\ACK\134\ETX\NUL\138\ETX\SOH\SUBF EventAttribute is a single key-value pair, associated with an event.\n\
    \\n\
    \\v\n\
    \\ETX\EOT&\SOH\DC2\EOT\134\ETX\b\SYN\n\
    \\f\n\
    \\EOT\EOT&\STX\NUL\DC2\EOT\135\ETX\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\ENQ\DC2\EOT\135\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\SOH\DC2\EOT\135\ETX\t\f\n\
    \\r\n\
    \\ENQ\EOT&\STX\NUL\ETX\DC2\EOT\135\ETX\DC1\DC2\n\
    \\f\n\
    \\EOT\EOT&\STX\SOH\DC2\EOT\136\ETX\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\ENQ\DC2\EOT\136\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\SOH\DC2\EOT\136\ETX\t\SO\n\
    \\r\n\
    \\ENQ\EOT&\STX\SOH\ETX\DC2\EOT\136\ETX\DC1\DC2\n\
    \ \n\
    \\EOT\EOT&\STX\STX\DC2\EOT\137\ETX\STX\DC3\"\DC2 nondeterministic\n\
    \\n\
    \\r\n\
    \\ENQ\EOT&\STX\STX\ENQ\DC2\EOT\137\ETX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT&\STX\STX\SOH\DC2\EOT\137\ETX\t\SO\n\
    \\r\n\
    \\ENQ\EOT&\STX\STX\ETX\DC2\EOT\137\ETX\DC1\DC2\n\
    \\174\SOH\n\
    \\STX\EOT'\DC2\ACK\143\ETX\NUL\153\ETX\SOH\SUB\159\SOH ExecTxResult contains results of executing one individual transaction.\n\
    \\n\
    \ * Its structure is equivalent to #ResponseDeliverTx which will be deprecated/deleted\n\
    \\n\
    \\v\n\
    \\ETX\EOT'\SOH\DC2\EOT\143\ETX\b\DC4\n\
    \\f\n\
    \\EOT\EOT'\STX\NUL\DC2\EOT\144\ETX\STX \n\
    \\r\n\
    \\ENQ\EOT'\STX\NUL\ENQ\DC2\EOT\144\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT'\STX\NUL\SOH\DC2\EOT\144\ETX\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT'\STX\NUL\ETX\DC2\EOT\144\ETX\RS\US\n\
    \\f\n\
    \\EOT\EOT'\STX\SOH\DC2\EOT\145\ETX\STX \n\
    \\r\n\
    \\ENQ\EOT'\STX\SOH\ENQ\DC2\EOT\145\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT'\STX\SOH\SOH\DC2\EOT\145\ETX\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT'\STX\SOH\ETX\DC2\EOT\145\ETX\RS\US\n\
    \ \n\
    \\EOT\EOT'\STX\STX\DC2\EOT\146\ETX\STX \"\DC2 nondeterministic\n\
    \\n\
    \\r\n\
    \\ENQ\EOT'\STX\STX\ENQ\DC2\EOT\146\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT'\STX\STX\SOH\DC2\EOT\146\ETX\DC1\DC4\n\
    \\r\n\
    \\ENQ\EOT'\STX\STX\ETX\DC2\EOT\146\ETX\RS\US\n\
    \ \n\
    \\EOT\EOT'\STX\ETX\DC2\EOT\147\ETX\STX \"\DC2 nondeterministic\n\
    \\n\
    \\r\n\
    \\ENQ\EOT'\STX\ETX\ENQ\DC2\EOT\147\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT'\STX\ETX\SOH\DC2\EOT\147\ETX\DC1\NAK\n\
    \\r\n\
    \\ENQ\EOT'\STX\ETX\ETX\DC2\EOT\147\ETX\RS\US\n\
    \\f\n\
    \\EOT\EOT'\STX\EOT\DC2\EOT\148\ETX\STX \n\
    \\r\n\
    \\ENQ\EOT'\STX\EOT\ENQ\DC2\EOT\148\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT'\STX\EOT\SOH\DC2\EOT\148\ETX\DC1\ESC\n\
    \\r\n\
    \\ENQ\EOT'\STX\EOT\ETX\DC2\EOT\148\ETX\RS\US\n\
    \\f\n\
    \\EOT\EOT'\STX\ENQ\DC2\EOT\149\ETX\STX \n\
    \\r\n\
    \\ENQ\EOT'\STX\ENQ\ENQ\DC2\EOT\149\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT'\STX\ENQ\SOH\DC2\EOT\149\ETX\DC1\EM\n\
    \\r\n\
    \\ENQ\EOT'\STX\ENQ\ETX\DC2\EOT\149\ETX\RS\US\n\
    \\"\n\
    \\EOT\EOT'\STX\ACK\DC2\ACK\150\ETX\STX\151\ETXO\"\DC2 nondeterministic\n\
    \\n\
    \\r\n\
    \\ENQ\EOT'\STX\ACK\EOT\DC2\EOT\150\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT'\STX\ACK\ACK\DC2\EOT\150\ETX\v\DLE\n\
    \\r\n\
    \\ENQ\EOT'\STX\ACK\SOH\DC2\EOT\150\ETX\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT'\STX\ACK\ETX\DC2\EOT\150\ETX\RS\US\n\
    \\r\n\
    \\ENQ\EOT'\STX\ACK\b\DC2\EOT\151\ETX\ACKN\n\
    \\DLE\n\
    \\b\EOT'\STX\ACK\b\233\251\ETX\DC2\EOT\151\ETX\a#\n\
    \\DLE\n\
    \\b\EOT'\STX\ACK\b\237\251\ETX\DC2\EOT\151\ETX%M\n\
    \\f\n\
    \\EOT\EOT'\STX\a\DC2\EOT\152\ETX\STX\ETB\n\
    \\r\n\
    \\ENQ\EOT'\STX\a\ENQ\DC2\EOT\152\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT'\STX\a\SOH\DC2\EOT\152\ETX\t\DC2\n\
    \\r\n\
    \\ENQ\EOT'\STX\a\ETX\DC2\EOT\152\ETX\NAK\SYN\n\
    \t\n\
    \\STX\EOT(\DC2\ACK\158\ETX\NUL\163\ETX\SOH\SUBf TxResult contains results of executing the transaction.\n\
    \\n\
    \ One usage is indexing transaction results.\n\
    \\n\
    \\v\n\
    \\ETX\EOT(\SOH\DC2\EOT\158\ETX\b\DLE\n\
    \\f\n\
    \\EOT\EOT(\STX\NUL\DC2\EOT\159\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\ENQ\DC2\EOT\159\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\SOH\DC2\EOT\159\ETX\SI\NAK\n\
    \\r\n\
    \\ENQ\EOT(\STX\NUL\ETX\DC2\EOT\159\ETX\CAN\EM\n\
    \\f\n\
    \\EOT\EOT(\STX\SOH\DC2\EOT\160\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\ENQ\DC2\EOT\160\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\SOH\DC2\EOT\160\ETX\SI\DC4\n\
    \\r\n\
    \\ENQ\EOT(\STX\SOH\ETX\DC2\EOT\160\ETX\CAN\EM\n\
    \\f\n\
    \\EOT\EOT(\STX\STX\DC2\EOT\161\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT(\STX\STX\ENQ\DC2\EOT\161\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT(\STX\STX\SOH\DC2\EOT\161\ETX\SI\DC1\n\
    \\r\n\
    \\ENQ\EOT(\STX\STX\ETX\DC2\EOT\161\ETX\CAN\EM\n\
    \\f\n\
    \\EOT\EOT(\STX\ETX\DC2\EOT\162\ETX\STX9\n\
    \\r\n\
    \\ENQ\EOT(\STX\ETX\ACK\DC2\EOT\162\ETX\STX\SO\n\
    \\r\n\
    \\ENQ\EOT(\STX\ETX\SOH\DC2\EOT\162\ETX\SI\NAK\n\
    \\r\n\
    \\ENQ\EOT(\STX\ETX\ETX\DC2\EOT\162\ETX\CAN\EM\n\
    \\r\n\
    \\ENQ\EOT(\STX\ETX\b\DC2\EOT\162\ETX\SUB8\n\
    \\DLE\n\
    \\b\EOT(\STX\ETX\b\233\251\ETX\DC2\EOT\162\ETX\ESC7\n\
    \I\n\
    \\STX\EOT)\DC2\ACK\168\ETX\NUL\172\ETX\SOH2;----------------------------------------\n\
    \ Blockchain Types\n\
    \\n\
    \\v\n\
    \\ETX\EOT)\SOH\DC2\EOT\168\ETX\b\DC1\n\
    \8\n\
    \\EOT\EOT)\STX\NUL\DC2\EOT\169\ETX\STX\DC4\"* The first 20 bytes of SHA256(public key)\n\
    \\n\
    \\r\n\
    \\ENQ\EOT)\STX\NUL\ENQ\DC2\EOT\169\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT)\STX\NUL\SOH\DC2\EOT\169\ETX\b\SI\n\
    \\r\n\
    \\ENQ\EOT)\STX\NUL\ETX\DC2\EOT\169\ETX\DC2\DC3\n\
    \T\n\
    \\EOT\EOT)\STX\SOH\DC2\EOT\171\ETX\STX\DC2\SUB2 PubKey pub_key = 2 [(gogoproto.nullable)=false];\n\
    \\"\DC2 The voting power\n\
    \\n\
    \\r\n\
    \\ENQ\EOT)\STX\SOH\ENQ\DC2\EOT\171\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT)\STX\SOH\SOH\DC2\EOT\171\ETX\b\r\n\
    \\r\n\
    \\ENQ\EOT)\STX\SOH\ETX\DC2\EOT\171\ETX\DLE\DC1\n\
    \\f\n\
    \\STX\EOT*\DC2\ACK\174\ETX\NUL\177\ETX\SOH\n\
    \\v\n\
    \\ETX\EOT*\SOH\DC2\EOT\174\ETX\b\ETB\n\
    \\f\n\
    \\EOT\EOT*\STX\NUL\DC2\EOT\175\ETX\STXI\n\
    \\r\n\
    \\ENQ\EOT*\STX\NUL\ACK\DC2\EOT\175\ETX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT*\STX\NUL\SOH\DC2\EOT\175\ETX\RS%\n\
    \\r\n\
    \\ENQ\EOT*\STX\NUL\ETX\DC2\EOT\175\ETX()\n\
    \\r\n\
    \\ENQ\EOT*\STX\NUL\b\DC2\EOT\175\ETX*H\n\
    \\DLE\n\
    \\b\EOT*\STX\NUL\b\233\251\ETX\DC2\EOT\175\ETX+G\n\
    \\f\n\
    \\EOT\EOT*\STX\SOH\DC2\EOT\176\ETX\STX*\n\
    \\r\n\
    \\ENQ\EOT*\STX\SOH\ENQ\DC2\EOT\176\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT*\STX\SOH\SOH\DC2\EOT\176\ETX\RS#\n\
    \\r\n\
    \\ENQ\EOT*\STX\SOH\ETX\DC2\EOT\176\ETX()\n\
    \\f\n\
    \\STX\EOT+\DC2\ACK\179\ETX\NUL\184\ETX\SOH\n\
    \\v\n\
    \\ETX\EOT+\SOH\DC2\EOT\179\ETX\b\DLE\n\
    \\f\n\
    \\EOT\EOT+\STX\NUL\DC2\EOT\180\ETX\STXA\n\
    \\r\n\
    \\ENQ\EOT+\STX\NUL\ACK\DC2\EOT\180\ETX\STX\v\n\
    \\r\n\
    \\ENQ\EOT+\STX\NUL\SOH\DC2\EOT\180\ETX\f\NAK\n\
    \\r\n\
    \\ENQ\EOT+\STX\NUL\ETX\DC2\EOT\180\ETX !\n\
    \\r\n\
    \\ENQ\EOT+\STX\NUL\b\DC2\EOT\180\ETX\"@\n\
    \\DLE\n\
    \\b\EOT+\STX\NUL\b\233\251\ETX\DC2\EOT\180\ETX#?\n\
    \\f\n\
    \\EOT\EOT+\STX\SOH\DC2\EOT\181\ETX\STX1\n\
    \\r\n\
    \\ENQ\EOT+\STX\SOH\ACK\DC2\EOT\181\ETX\STX\RS\n\
    \\r\n\
    \\ENQ\EOT+\STX\SOH\SOH\DC2\EOT\181\ETX\US,\n\
    \\r\n\
    \\ENQ\EOT+\STX\SOH\ETX\DC2\EOT\181\ETX/0\n\
    \ \n\
    \\ETX\EOT+\t\DC2\EOT\183\ETX\STX\r\"\DC3 signed_last_block\n\
    \\n\
    \\f\n\
    \\EOT\EOT+\t\NUL\DC2\EOT\183\ETX\v\f\n\
    \\r\n\
    \\ENQ\EOT+\t\NUL\SOH\DC2\EOT\183\ETX\v\f\n\
    \\r\n\
    \\ENQ\EOT+\t\NUL\STX\DC2\EOT\183\ETX\v\f\n\
    \\f\n\
    \\STX\EOT,\DC2\ACK\186\ETX\NUL\197\ETX\SOH\n\
    \\v\n\
    \\ETX\EOT,\SOH\DC2\EOT\186\ETX\b\CAN\n\
    \1\n\
    \\EOT\EOT,\STX\NUL\DC2\EOT\188\ETX\STX9\SUB# The validator that sent the vote.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT,\STX\NUL\ACK\DC2\EOT\188\ETX\STX\v\n\
    \\r\n\
    \\ENQ\EOT,\STX\NUL\SOH\DC2\EOT\188\ETX\f\NAK\n\
    \\r\n\
    \\ENQ\EOT,\STX\NUL\ETX\DC2\EOT\188\ETX\CAN\EM\n\
    \\r\n\
    \\ENQ\EOT,\STX\NUL\b\DC2\EOT\188\ETX\SUB8\n\
    \\DLE\n\
    \\b\EOT,\STX\NUL\b\233\251\ETX\DC2\EOT\188\ETX\ESC7\n\
    \\\\n\
    \\EOT\EOT,\STX\SOH\DC2\EOT\190\ETX\STX\ESC\SUBN Non-deterministic extension provided by the sending validator's application.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT,\STX\SOH\ENQ\DC2\EOT\190\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT,\STX\SOH\SOH\DC2\EOT\190\ETX\b\SYN\n\
    \\r\n\
    \\ENQ\EOT,\STX\SOH\ETX\DC2\EOT\190\ETX\EM\SUB\n\
    \<\n\
    \\EOT\EOT,\STX\STX\DC2\EOT\192\ETX\STX \SUB. Vote extension signature created by CometBFT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT,\STX\STX\ENQ\DC2\EOT\192\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT,\STX\STX\SOH\DC2\EOT\192\ETX\b\ESC\n\
    \\r\n\
    \\ENQ\EOT,\STX\STX\ETX\DC2\EOT\192\ETX\RS\US\n\
    \l\n\
    \\EOT\EOT,\STX\ETX\DC2\EOT\194\ETX\STX1\SUB^ block_id_flag indicates whether the validator voted for a block, nil, or did not vote at all\n\
    \\n\
    \\r\n\
    \\ENQ\EOT,\STX\ETX\ACK\DC2\EOT\194\ETX\STX\RS\n\
    \\r\n\
    \\ENQ\EOT,\STX\ETX\SOH\DC2\EOT\194\ETX\US,\n\
    \\r\n\
    \\ENQ\EOT,\STX\ETX\ETX\DC2\EOT\194\ETX/0\n\
    \ \n\
    \\ETX\EOT,\t\DC2\EOT\196\ETX\STX\r\"\DC3 signed_last_block\n\
    \\n\
    \\f\n\
    \\EOT\EOT,\t\NUL\DC2\EOT\196\ETX\v\f\n\
    \\r\n\
    \\ENQ\EOT,\t\NUL\SOH\DC2\EOT\196\ETX\v\f\n\
    \\r\n\
    \\ENQ\EOT,\t\NUL\STX\DC2\EOT\196\ETX\v\f\n\
    \\f\n\
    \\STX\ENQ\SOH\DC2\ACK\199\ETX\NUL\203\ETX\SOH\n\
    \\v\n\
    \\ETX\ENQ\SOH\SOH\DC2\EOT\199\ETX\ENQ\DC4\n\
    \\f\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\EOT\200\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\EOT\200\ETX\STX\t\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\EOT\200\ETX\CAN\EM\n\
    \\f\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\EOT\201\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\EOT\201\ETX\STX\DLE\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\EOT\201\ETX\CAN\EM\n\
    \\f\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\EOT\202\ETX\STX\SUB\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\EOT\202\ETX\STX\NAK\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\EOT\202\ETX\CAN\EM\n\
    \\f\n\
    \\STX\EOT-\DC2\ACK\205\ETX\NUL\218\ETX\SOH\n\
    \\v\n\
    \\ETX\EOT-\SOH\DC2\EOT\205\ETX\b\DC3\n\
    \\f\n\
    \\EOT\EOT-\STX\NUL\DC2\EOT\206\ETX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT-\STX\NUL\ACK\DC2\EOT\206\ETX\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT-\STX\NUL\SOH\DC2\EOT\206\ETX\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT-\STX\NUL\ETX\DC2\EOT\206\ETX\EM\SUB\n\
    \'\n\
    \\EOT\EOT-\STX\SOH\DC2\EOT\208\ETX\STX9\SUB\EM The offending validator\n\
    \\n\
    \\r\n\
    \\ENQ\EOT-\STX\SOH\ACK\DC2\EOT\208\ETX\STX\v\n\
    \\r\n\
    \\ENQ\EOT-\STX\SOH\SOH\DC2\EOT\208\ETX\f\NAK\n\
    \\r\n\
    \\ENQ\EOT-\STX\SOH\ETX\DC2\EOT\208\ETX\CAN\EM\n\
    \\r\n\
    \\ENQ\EOT-\STX\SOH\b\DC2\EOT\208\ETX\SUB8\n\
    \\DLE\n\
    \\b\EOT-\STX\SOH\b\233\251\ETX\DC2\EOT\208\ETX\ESC7\n\
    \4\n\
    \\EOT\EOT-\STX\STX\DC2\EOT\210\ETX\STX\DC3\SUB& The height when the offense occurred\n\
    \\n\
    \\r\n\
    \\ENQ\EOT-\STX\STX\ENQ\DC2\EOT\210\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT-\STX\STX\SOH\DC2\EOT\210\ETX\b\SO\n\
    \\r\n\
    \\ENQ\EOT-\STX\STX\ETX\DC2\EOT\210\ETX\DC1\DC2\n\
    \C\n\
    \\EOT\EOT-\STX\ETX\DC2\ACK\212\ETX\STX\213\ETXA\SUB3 The corresponding time where the offense occurred\n\
    \\n\
    \\r\n\
    \\ENQ\EOT-\STX\ETX\ACK\DC2\EOT\212\ETX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT-\STX\ETX\SOH\DC2\EOT\212\ETX\FS \n\
    \\r\n\
    \\ENQ\EOT-\STX\ETX\ETX\DC2\EOT\212\ETX#$\n\
    \\r\n\
    \\ENQ\EOT-\STX\ETX\b\DC2\EOT\213\ETX\ACK@\n\
    \\DLE\n\
    \\b\EOT-\STX\ETX\b\233\251\ETX\DC2\EOT\213\ETX\a#\n\
    \\DLE\n\
    \\b\EOT-\STX\ETX\b\242\251\ETX\DC2\EOT\213\ETX%?\n\
    \\178\SOH\n\
    \\EOT\EOT-\STX\EOT\DC2\EOT\217\ETX\STX\US\SUB\163\SOH Total voting power of the validator set in case the ABCI application does\n\
    \ not store historical validators.\n\
    \ https://github.com/tendermint/tendermint/issues/4581\n\
    \\n\
    \\r\n\
    \\ENQ\EOT-\STX\EOT\ENQ\DC2\EOT\217\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT-\STX\EOT\SOH\DC2\EOT\217\ETX\b\SUB\n\
    \\r\n\
    \\ENQ\EOT-\STX\EOT\ETX\DC2\EOT\217\ETX\GS\RS\n\
    \I\n\
    \\STX\EOT.\DC2\ACK\223\ETX\NUL\229\ETX\SOH2;----------------------------------------\n\
    \ State Sync Types\n\
    \\n\
    \\v\n\
    \\ETX\EOT.\SOH\DC2\EOT\223\ETX\b\DLE\n\
    \:\n\
    \\EOT\EOT.\STX\NUL\DC2\EOT\224\ETX\STX\SYN\", The height at which the snapshot was taken\n\
    \\n\
    \\r\n\
    \\ENQ\EOT.\STX\NUL\ENQ\DC2\EOT\224\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT.\STX\NUL\SOH\DC2\EOT\224\ETX\t\SI\n\
    \\r\n\
    \\ENQ\EOT.\STX\NUL\ETX\DC2\EOT\224\ETX\DC4\NAK\n\
    \8\n\
    \\EOT\EOT.\STX\SOH\DC2\EOT\225\ETX\STX\SYN\"* The application-specific snapshot format\n\
    \\n\
    \\r\n\
    \\ENQ\EOT.\STX\SOH\ENQ\DC2\EOT\225\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT.\STX\SOH\SOH\DC2\EOT\225\ETX\t\SI\n\
    \\r\n\
    \\ENQ\EOT.\STX\SOH\ETX\DC2\EOT\225\ETX\DC4\NAK\n\
    \0\n\
    \\EOT\EOT.\STX\STX\DC2\EOT\226\ETX\STX\SYN\"\" Number of chunks in the snapshot\n\
    \\n\
    \\r\n\
    \\ENQ\EOT.\STX\STX\ENQ\DC2\EOT\226\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT.\STX\STX\SOH\DC2\EOT\226\ETX\t\SI\n\
    \\r\n\
    \\ENQ\EOT.\STX\STX\ETX\DC2\EOT\226\ETX\DC4\NAK\n\
    \@\n\
    \\EOT\EOT.\STX\ETX\DC2\EOT\227\ETX\STX\SYN\"2 Arbitrary snapshot hash, equal only if identical\n\
    \\n\
    \\r\n\
    \\ENQ\EOT.\STX\ETX\ENQ\DC2\EOT\227\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT.\STX\ETX\SOH\DC2\EOT\227\ETX\t\r\n\
    \\r\n\
    \\ENQ\EOT.\STX\ETX\ETX\DC2\EOT\227\ETX\DC4\NAK\n\
    \.\n\
    \\EOT\EOT.\STX\EOT\DC2\EOT\228\ETX\STX\SYN\"  Arbitrary application metadata\n\
    \\n\
    \\r\n\
    \\ENQ\EOT.\STX\EOT\ENQ\DC2\EOT\228\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT.\STX\EOT\SOH\DC2\EOT\228\ETX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT.\STX\EOT\ETX\DC2\EOT\228\ETX\DC4\NAKb\ACKproto3"