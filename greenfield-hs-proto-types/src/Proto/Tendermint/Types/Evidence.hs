{- This file was auto-generated from tendermint/types/evidence.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Tendermint.Types.Evidence (
        DuplicateVoteEvidence(), Evidence(), Evidence'Sum(..),
        _Evidence'DuplicateVoteEvidence,
        _Evidence'LightClientAttackEvidence, EvidenceList(),
        LightClientAttackEvidence()
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
import qualified Proto.Tendermint.Types.Types
import qualified Proto.Tendermint.Types.Validator
{- | Fields :
     
         * 'Proto.Tendermint.Types.Evidence_Fields.voteA' @:: Lens' DuplicateVoteEvidence Proto.Tendermint.Types.Types.Vote@
         * 'Proto.Tendermint.Types.Evidence_Fields.maybe'voteA' @:: Lens' DuplicateVoteEvidence (Prelude.Maybe Proto.Tendermint.Types.Types.Vote)@
         * 'Proto.Tendermint.Types.Evidence_Fields.voteB' @:: Lens' DuplicateVoteEvidence Proto.Tendermint.Types.Types.Vote@
         * 'Proto.Tendermint.Types.Evidence_Fields.maybe'voteB' @:: Lens' DuplicateVoteEvidence (Prelude.Maybe Proto.Tendermint.Types.Types.Vote)@
         * 'Proto.Tendermint.Types.Evidence_Fields.totalVotingPower' @:: Lens' DuplicateVoteEvidence Data.Int.Int64@
         * 'Proto.Tendermint.Types.Evidence_Fields.validatorPower' @:: Lens' DuplicateVoteEvidence Data.Int.Int64@
         * 'Proto.Tendermint.Types.Evidence_Fields.timestamp' @:: Lens' DuplicateVoteEvidence Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Tendermint.Types.Evidence_Fields.maybe'timestamp' @:: Lens' DuplicateVoteEvidence (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data DuplicateVoteEvidence
  = DuplicateVoteEvidence'_constructor {_DuplicateVoteEvidence'voteA :: !(Prelude.Maybe Proto.Tendermint.Types.Types.Vote),
                                        _DuplicateVoteEvidence'voteB :: !(Prelude.Maybe Proto.Tendermint.Types.Types.Vote),
                                        _DuplicateVoteEvidence'totalVotingPower :: !Data.Int.Int64,
                                        _DuplicateVoteEvidence'validatorPower :: !Data.Int.Int64,
                                        _DuplicateVoteEvidence'timestamp :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _DuplicateVoteEvidence'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DuplicateVoteEvidence where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DuplicateVoteEvidence "voteA" Proto.Tendermint.Types.Types.Vote where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DuplicateVoteEvidence'voteA
           (\ x__ y__ -> x__ {_DuplicateVoteEvidence'voteA = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DuplicateVoteEvidence "maybe'voteA" (Prelude.Maybe Proto.Tendermint.Types.Types.Vote) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DuplicateVoteEvidence'voteA
           (\ x__ y__ -> x__ {_DuplicateVoteEvidence'voteA = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DuplicateVoteEvidence "voteB" Proto.Tendermint.Types.Types.Vote where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DuplicateVoteEvidence'voteB
           (\ x__ y__ -> x__ {_DuplicateVoteEvidence'voteB = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DuplicateVoteEvidence "maybe'voteB" (Prelude.Maybe Proto.Tendermint.Types.Types.Vote) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DuplicateVoteEvidence'voteB
           (\ x__ y__ -> x__ {_DuplicateVoteEvidence'voteB = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DuplicateVoteEvidence "totalVotingPower" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DuplicateVoteEvidence'totalVotingPower
           (\ x__ y__ -> x__ {_DuplicateVoteEvidence'totalVotingPower = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DuplicateVoteEvidence "validatorPower" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DuplicateVoteEvidence'validatorPower
           (\ x__ y__ -> x__ {_DuplicateVoteEvidence'validatorPower = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DuplicateVoteEvidence "timestamp" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DuplicateVoteEvidence'timestamp
           (\ x__ y__ -> x__ {_DuplicateVoteEvidence'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DuplicateVoteEvidence "maybe'timestamp" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DuplicateVoteEvidence'timestamp
           (\ x__ y__ -> x__ {_DuplicateVoteEvidence'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message DuplicateVoteEvidence where
  messageName _
    = Data.Text.pack "tendermint.types.DuplicateVoteEvidence"
  packedMessageDescriptor _
    = "\n\
      \\NAKDuplicateVoteEvidence\DC2-\n\
      \\ACKvote_a\CAN\SOH \SOH(\v2\SYN.tendermint.types.VoteR\ENQvoteA\DC2-\n\
      \\ACKvote_b\CAN\STX \SOH(\v2\SYN.tendermint.types.VoteR\ENQvoteB\DC2,\n\
      \\DC2total_voting_power\CAN\ETX \SOH(\ETXR\DLEtotalVotingPower\DC2'\n\
      \\SIvalidator_power\CAN\EOT \SOH(\ETXR\SOvalidatorPower\DC2B\n\
      \\ttimestamp\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\b\200\222\US\NUL\144\223\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        voteA__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vote_a"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Types.Vote)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'voteA")) ::
              Data.ProtoLens.FieldDescriptor DuplicateVoteEvidence
        voteB__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vote_b"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Types.Vote)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'voteB")) ::
              Data.ProtoLens.FieldDescriptor DuplicateVoteEvidence
        totalVotingPower__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_voting_power"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalVotingPower")) ::
              Data.ProtoLens.FieldDescriptor DuplicateVoteEvidence
        validatorPower__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_power"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorPower")) ::
              Data.ProtoLens.FieldDescriptor DuplicateVoteEvidence
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor DuplicateVoteEvidence
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, voteA__field_descriptor),
           (Data.ProtoLens.Tag 2, voteB__field_descriptor),
           (Data.ProtoLens.Tag 3, totalVotingPower__field_descriptor),
           (Data.ProtoLens.Tag 4, validatorPower__field_descriptor),
           (Data.ProtoLens.Tag 5, timestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DuplicateVoteEvidence'_unknownFields
        (\ x__ y__ -> x__ {_DuplicateVoteEvidence'_unknownFields = y__})
  defMessage
    = DuplicateVoteEvidence'_constructor
        {_DuplicateVoteEvidence'voteA = Prelude.Nothing,
         _DuplicateVoteEvidence'voteB = Prelude.Nothing,
         _DuplicateVoteEvidence'totalVotingPower = Data.ProtoLens.fieldDefault,
         _DuplicateVoteEvidence'validatorPower = Data.ProtoLens.fieldDefault,
         _DuplicateVoteEvidence'timestamp = Prelude.Nothing,
         _DuplicateVoteEvidence'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DuplicateVoteEvidence
          -> Data.ProtoLens.Encoding.Bytes.Parser DuplicateVoteEvidence
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
                                       "vote_a"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"voteA") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "vote_b"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"voteB") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "total_voting_power"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalVotingPower") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "validator_power"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorPower") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DuplicateVoteEvidence"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'voteA") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'voteB") _x
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
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"totalVotingPower") _x
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
                               (Data.ProtoLens.Field.field @"validatorPower") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData DuplicateVoteEvidence where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DuplicateVoteEvidence'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DuplicateVoteEvidence'voteA x__)
                (Control.DeepSeq.deepseq
                   (_DuplicateVoteEvidence'voteB x__)
                   (Control.DeepSeq.deepseq
                      (_DuplicateVoteEvidence'totalVotingPower x__)
                      (Control.DeepSeq.deepseq
                         (_DuplicateVoteEvidence'validatorPower x__)
                         (Control.DeepSeq.deepseq
                            (_DuplicateVoteEvidence'timestamp x__) ())))))
{- | Fields :
     
         * 'Proto.Tendermint.Types.Evidence_Fields.maybe'sum' @:: Lens' Evidence (Prelude.Maybe Evidence'Sum)@
         * 'Proto.Tendermint.Types.Evidence_Fields.maybe'duplicateVoteEvidence' @:: Lens' Evidence (Prelude.Maybe DuplicateVoteEvidence)@
         * 'Proto.Tendermint.Types.Evidence_Fields.duplicateVoteEvidence' @:: Lens' Evidence DuplicateVoteEvidence@
         * 'Proto.Tendermint.Types.Evidence_Fields.maybe'lightClientAttackEvidence' @:: Lens' Evidence (Prelude.Maybe LightClientAttackEvidence)@
         * 'Proto.Tendermint.Types.Evidence_Fields.lightClientAttackEvidence' @:: Lens' Evidence LightClientAttackEvidence@ -}
data Evidence
  = Evidence'_constructor {_Evidence'sum :: !(Prelude.Maybe Evidence'Sum),
                           _Evidence'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Evidence where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Evidence'Sum
  = Evidence'DuplicateVoteEvidence !DuplicateVoteEvidence |
    Evidence'LightClientAttackEvidence !LightClientAttackEvidence
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Evidence "maybe'sum" (Prelude.Maybe Evidence'Sum) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Evidence'sum (\ x__ y__ -> x__ {_Evidence'sum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Evidence "maybe'duplicateVoteEvidence" (Prelude.Maybe DuplicateVoteEvidence) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Evidence'sum (\ x__ y__ -> x__ {_Evidence'sum = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Evidence'DuplicateVoteEvidence x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Evidence'DuplicateVoteEvidence y__))
instance Data.ProtoLens.Field.HasField Evidence "duplicateVoteEvidence" DuplicateVoteEvidence where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Evidence'sum (\ x__ y__ -> x__ {_Evidence'sum = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Evidence'DuplicateVoteEvidence x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Evidence'DuplicateVoteEvidence y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Evidence "maybe'lightClientAttackEvidence" (Prelude.Maybe LightClientAttackEvidence) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Evidence'sum (\ x__ y__ -> x__ {_Evidence'sum = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Evidence'LightClientAttackEvidence x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Evidence'LightClientAttackEvidence y__))
instance Data.ProtoLens.Field.HasField Evidence "lightClientAttackEvidence" LightClientAttackEvidence where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Evidence'sum (\ x__ y__ -> x__ {_Evidence'sum = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Evidence'LightClientAttackEvidence x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Evidence'LightClientAttackEvidence y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Evidence where
  messageName _ = Data.Text.pack "tendermint.types.Evidence"
  packedMessageDescriptor _
    = "\n\
      \\bEvidence\DC2a\n\
      \\ETBduplicate_vote_evidence\CAN\SOH \SOH(\v2'.tendermint.types.DuplicateVoteEvidenceH\NULR\NAKduplicateVoteEvidence\DC2n\n\
      \\FSlight_client_attack_evidence\CAN\STX \SOH(\v2+.tendermint.types.LightClientAttackEvidenceH\NULR\EMlightClientAttackEvidenceB\ENQ\n\
      \\ETXsum"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        duplicateVoteEvidence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "duplicate_vote_evidence"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DuplicateVoteEvidence)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'duplicateVoteEvidence")) ::
              Data.ProtoLens.FieldDescriptor Evidence
        lightClientAttackEvidence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "light_client_attack_evidence"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor LightClientAttackEvidence)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lightClientAttackEvidence")) ::
              Data.ProtoLens.FieldDescriptor Evidence
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, duplicateVoteEvidence__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            lightClientAttackEvidence__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Evidence'_unknownFields
        (\ x__ y__ -> x__ {_Evidence'_unknownFields = y__})
  defMessage
    = Evidence'_constructor
        {_Evidence'sum = Prelude.Nothing, _Evidence'_unknownFields = []}
  parseMessage
    = let
        loop :: Evidence -> Data.ProtoLens.Encoding.Bytes.Parser Evidence
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
                                       "duplicate_vote_evidence"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"duplicateVoteEvidence") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "light_client_attack_evidence"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lightClientAttackEvidence") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Evidence"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sum") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Evidence'DuplicateVoteEvidence v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (Evidence'LightClientAttackEvidence v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Evidence where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Evidence'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Evidence'sum x__) ())
instance Control.DeepSeq.NFData Evidence'Sum where
  rnf (Evidence'DuplicateVoteEvidence x__) = Control.DeepSeq.rnf x__
  rnf (Evidence'LightClientAttackEvidence x__)
    = Control.DeepSeq.rnf x__
_Evidence'DuplicateVoteEvidence ::
  Data.ProtoLens.Prism.Prism' Evidence'Sum DuplicateVoteEvidence
_Evidence'DuplicateVoteEvidence
  = Data.ProtoLens.Prism.prism'
      Evidence'DuplicateVoteEvidence
      (\ p__
         -> case p__ of
              (Evidence'DuplicateVoteEvidence p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Evidence'LightClientAttackEvidence ::
  Data.ProtoLens.Prism.Prism' Evidence'Sum LightClientAttackEvidence
_Evidence'LightClientAttackEvidence
  = Data.ProtoLens.Prism.prism'
      Evidence'LightClientAttackEvidence
      (\ p__
         -> case p__ of
              (Evidence'LightClientAttackEvidence p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Tendermint.Types.Evidence_Fields.evidence' @:: Lens' EvidenceList [Evidence]@
         * 'Proto.Tendermint.Types.Evidence_Fields.vec'evidence' @:: Lens' EvidenceList (Data.Vector.Vector Evidence)@ -}
data EvidenceList
  = EvidenceList'_constructor {_EvidenceList'evidence :: !(Data.Vector.Vector Evidence),
                               _EvidenceList'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EvidenceList where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EvidenceList "evidence" [Evidence] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EvidenceList'evidence
           (\ x__ y__ -> x__ {_EvidenceList'evidence = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EvidenceList "vec'evidence" (Data.Vector.Vector Evidence) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EvidenceList'evidence
           (\ x__ y__ -> x__ {_EvidenceList'evidence = y__}))
        Prelude.id
instance Data.ProtoLens.Message EvidenceList where
  messageName _ = Data.Text.pack "tendermint.types.EvidenceList"
  packedMessageDescriptor _
    = "\n\
      \\fEvidenceList\DC2<\n\
      \\bevidence\CAN\SOH \ETX(\v2\SUB.tendermint.types.EvidenceR\bevidenceB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        evidence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "evidence"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Evidence)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"evidence")) ::
              Data.ProtoLens.FieldDescriptor EvidenceList
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, evidence__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EvidenceList'_unknownFields
        (\ x__ y__ -> x__ {_EvidenceList'_unknownFields = y__})
  defMessage
    = EvidenceList'_constructor
        {_EvidenceList'evidence = Data.Vector.Generic.empty,
         _EvidenceList'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EvidenceList
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Evidence
             -> Data.ProtoLens.Encoding.Bytes.Parser EvidenceList
        loop x mutable'evidence
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'evidence <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'evidence)
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
                              (Data.ProtoLens.Field.field @"vec'evidence") frozen'evidence x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "evidence"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'evidence y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'evidence
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'evidence <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'evidence)
          "EvidenceList"
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
                   (Data.ProtoLens.Field.field @"vec'evidence") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EvidenceList where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EvidenceList'_unknownFields x__)
             (Control.DeepSeq.deepseq (_EvidenceList'evidence x__) ())
{- | Fields :
     
         * 'Proto.Tendermint.Types.Evidence_Fields.conflictingBlock' @:: Lens' LightClientAttackEvidence Proto.Tendermint.Types.Types.LightBlock@
         * 'Proto.Tendermint.Types.Evidence_Fields.maybe'conflictingBlock' @:: Lens' LightClientAttackEvidence (Prelude.Maybe Proto.Tendermint.Types.Types.LightBlock)@
         * 'Proto.Tendermint.Types.Evidence_Fields.commonHeight' @:: Lens' LightClientAttackEvidence Data.Int.Int64@
         * 'Proto.Tendermint.Types.Evidence_Fields.byzantineValidators' @:: Lens' LightClientAttackEvidence [Proto.Tendermint.Types.Validator.Validator]@
         * 'Proto.Tendermint.Types.Evidence_Fields.vec'byzantineValidators' @:: Lens' LightClientAttackEvidence (Data.Vector.Vector Proto.Tendermint.Types.Validator.Validator)@
         * 'Proto.Tendermint.Types.Evidence_Fields.totalVotingPower' @:: Lens' LightClientAttackEvidence Data.Int.Int64@
         * 'Proto.Tendermint.Types.Evidence_Fields.timestamp' @:: Lens' LightClientAttackEvidence Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Tendermint.Types.Evidence_Fields.maybe'timestamp' @:: Lens' LightClientAttackEvidence (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data LightClientAttackEvidence
  = LightClientAttackEvidence'_constructor {_LightClientAttackEvidence'conflictingBlock :: !(Prelude.Maybe Proto.Tendermint.Types.Types.LightBlock),
                                            _LightClientAttackEvidence'commonHeight :: !Data.Int.Int64,
                                            _LightClientAttackEvidence'byzantineValidators :: !(Data.Vector.Vector Proto.Tendermint.Types.Validator.Validator),
                                            _LightClientAttackEvidence'totalVotingPower :: !Data.Int.Int64,
                                            _LightClientAttackEvidence'timestamp :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                            _LightClientAttackEvidence'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LightClientAttackEvidence where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LightClientAttackEvidence "conflictingBlock" Proto.Tendermint.Types.Types.LightBlock where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightClientAttackEvidence'conflictingBlock
           (\ x__ y__
              -> x__ {_LightClientAttackEvidence'conflictingBlock = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LightClientAttackEvidence "maybe'conflictingBlock" (Prelude.Maybe Proto.Tendermint.Types.Types.LightBlock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightClientAttackEvidence'conflictingBlock
           (\ x__ y__
              -> x__ {_LightClientAttackEvidence'conflictingBlock = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LightClientAttackEvidence "commonHeight" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightClientAttackEvidence'commonHeight
           (\ x__ y__ -> x__ {_LightClientAttackEvidence'commonHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LightClientAttackEvidence "byzantineValidators" [Proto.Tendermint.Types.Validator.Validator] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightClientAttackEvidence'byzantineValidators
           (\ x__ y__
              -> x__ {_LightClientAttackEvidence'byzantineValidators = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField LightClientAttackEvidence "vec'byzantineValidators" (Data.Vector.Vector Proto.Tendermint.Types.Validator.Validator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightClientAttackEvidence'byzantineValidators
           (\ x__ y__
              -> x__ {_LightClientAttackEvidence'byzantineValidators = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LightClientAttackEvidence "totalVotingPower" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightClientAttackEvidence'totalVotingPower
           (\ x__ y__
              -> x__ {_LightClientAttackEvidence'totalVotingPower = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LightClientAttackEvidence "timestamp" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightClientAttackEvidence'timestamp
           (\ x__ y__ -> x__ {_LightClientAttackEvidence'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LightClientAttackEvidence "maybe'timestamp" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LightClientAttackEvidence'timestamp
           (\ x__ y__ -> x__ {_LightClientAttackEvidence'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message LightClientAttackEvidence where
  messageName _
    = Data.Text.pack "tendermint.types.LightClientAttackEvidence"
  packedMessageDescriptor _
    = "\n\
      \\EMLightClientAttackEvidence\DC2I\n\
      \\DC1conflicting_block\CAN\SOH \SOH(\v2\FS.tendermint.types.LightBlockR\DLEconflictingBlock\DC2#\n\
      \\rcommon_height\CAN\STX \SOH(\ETXR\fcommonHeight\DC2N\n\
      \\DC4byzantine_validators\CAN\ETX \ETX(\v2\ESC.tendermint.types.ValidatorR\DC3byzantineValidators\DC2,\n\
      \\DC2total_voting_power\CAN\EOT \SOH(\ETXR\DLEtotalVotingPower\DC2B\n\
      \\ttimestamp\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\b\200\222\US\NUL\144\223\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        conflictingBlock__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "conflicting_block"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Types.LightBlock)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'conflictingBlock")) ::
              Data.ProtoLens.FieldDescriptor LightClientAttackEvidence
        commonHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"commonHeight")) ::
              Data.ProtoLens.FieldDescriptor LightClientAttackEvidence
        byzantineValidators__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "byzantine_validators"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Validator.Validator)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"byzantineValidators")) ::
              Data.ProtoLens.FieldDescriptor LightClientAttackEvidence
        totalVotingPower__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_voting_power"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalVotingPower")) ::
              Data.ProtoLens.FieldDescriptor LightClientAttackEvidence
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor LightClientAttackEvidence
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, conflictingBlock__field_descriptor),
           (Data.ProtoLens.Tag 2, commonHeight__field_descriptor),
           (Data.ProtoLens.Tag 3, byzantineValidators__field_descriptor),
           (Data.ProtoLens.Tag 4, totalVotingPower__field_descriptor),
           (Data.ProtoLens.Tag 5, timestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LightClientAttackEvidence'_unknownFields
        (\ x__ y__
           -> x__ {_LightClientAttackEvidence'_unknownFields = y__})
  defMessage
    = LightClientAttackEvidence'_constructor
        {_LightClientAttackEvidence'conflictingBlock = Prelude.Nothing,
         _LightClientAttackEvidence'commonHeight = Data.ProtoLens.fieldDefault,
         _LightClientAttackEvidence'byzantineValidators = Data.Vector.Generic.empty,
         _LightClientAttackEvidence'totalVotingPower = Data.ProtoLens.fieldDefault,
         _LightClientAttackEvidence'timestamp = Prelude.Nothing,
         _LightClientAttackEvidence'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LightClientAttackEvidence
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Tendermint.Types.Validator.Validator
             -> Data.ProtoLens.Encoding.Bytes.Parser LightClientAttackEvidence
        loop x mutable'byzantineValidators
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'byzantineValidators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'byzantineValidators)
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
                              (Data.ProtoLens.Field.field @"vec'byzantineValidators")
                              frozen'byzantineValidators x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "conflicting_block"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"conflictingBlock") y x)
                                  mutable'byzantineValidators
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "common_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commonHeight") y x)
                                  mutable'byzantineValidators
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "byzantine_validators"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'byzantineValidators y)
                                loop x v
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "total_voting_power"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalVotingPower") y x)
                                  mutable'byzantineValidators
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                                  mutable'byzantineValidators
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'byzantineValidators
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'byzantineValidators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'byzantineValidators)
          "LightClientAttackEvidence"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'conflictingBlock") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"commonHeight") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                         (Data.ProtoLens.Field.field @"vec'byzantineValidators") _x))
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
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData LightClientAttackEvidence where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LightClientAttackEvidence'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LightClientAttackEvidence'conflictingBlock x__)
                (Control.DeepSeq.deepseq
                   (_LightClientAttackEvidence'commonHeight x__)
                   (Control.DeepSeq.deepseq
                      (_LightClientAttackEvidence'byzantineValidators x__)
                      (Control.DeepSeq.deepseq
                         (_LightClientAttackEvidence'totalVotingPower x__)
                         (Control.DeepSeq.deepseq
                            (_LightClientAttackEvidence'timestamp x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\UStendermint/types/evidence.proto\DC2\DLEtendermint.types\SUB\DC4gogoproto/gogo.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\FStendermint/types/types.proto\SUB tendermint/types/validator.proto\"\228\SOH\n\
    \\bEvidence\DC2a\n\
    \\ETBduplicate_vote_evidence\CAN\SOH \SOH(\v2'.tendermint.types.DuplicateVoteEvidenceH\NULR\NAKduplicateVoteEvidence\DC2n\n\
    \\FSlight_client_attack_evidence\CAN\STX \SOH(\v2+.tendermint.types.LightClientAttackEvidenceH\NULR\EMlightClientAttackEvidenceB\ENQ\n\
    \\ETXsum\"\144\STX\n\
    \\NAKDuplicateVoteEvidence\DC2-\n\
    \\ACKvote_a\CAN\SOH \SOH(\v2\SYN.tendermint.types.VoteR\ENQvoteA\DC2-\n\
    \\ACKvote_b\CAN\STX \SOH(\v2\SYN.tendermint.types.VoteR\ENQvoteB\DC2,\n\
    \\DC2total_voting_power\CAN\ETX \SOH(\ETXR\DLEtotalVotingPower\DC2'\n\
    \\SIvalidator_power\CAN\EOT \SOH(\ETXR\SOvalidatorPower\DC2B\n\
    \\ttimestamp\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\b\200\222\US\NUL\144\223\US\SOH\"\205\STX\n\
    \\EMLightClientAttackEvidence\DC2I\n\
    \\DC1conflicting_block\CAN\SOH \SOH(\v2\FS.tendermint.types.LightBlockR\DLEconflictingBlock\DC2#\n\
    \\rcommon_height\CAN\STX \SOH(\ETXR\fcommonHeight\DC2N\n\
    \\DC4byzantine_validators\CAN\ETX \ETX(\v2\ESC.tendermint.types.ValidatorR\DC3byzantineValidators\DC2,\n\
    \\DC2total_voting_power\CAN\EOT \SOH(\ETXR\DLEtotalVotingPower\DC2B\n\
    \\ttimestamp\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\ttimestampB\b\200\222\US\NUL\144\223\US\SOH\"L\n\
    \\fEvidenceList\DC2<\n\
    \\bevidence\CAN\SOH \ETX(\v2\SUB.tendermint.types.EvidenceR\bevidenceB\EOT\200\222\US\NULB5Z3github.com/cometbft/cometbft/proto/tendermint/typesJ\131\n\
    \\n\
    \\ACK\DC2\EOT\NUL\NUL%\SOH\n\
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
    \\STX\ETX\STX\DC2\ETX\a\NUL&\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL*\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL\SI\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\DLE\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\v\STX\SO\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\v\b\v\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\f\EOT?\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\f\EOT\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\f\RS5\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\f=>\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\r\EOT?\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\r\EOT\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\r\RS:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\r=>\n\
    \b\n\
    \\STX\EOT\SOH\DC2\EOT\DC2\NUL\CAN\SOH\SUBV DuplicateVoteEvidence contains evidence of a validator signed two conflicting votes.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC2\b\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DC3\STX3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\DC3\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DC3\FS\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DC312\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DC4\STX3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\DC4\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DC4\FS\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DC412\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\NAK\STX3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\NAK\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\NAK\FS.\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\NAK12\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\SYN\STX3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\SYN\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\SYN\FS+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\SYN12\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\ETB\STXn\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETX\ETB\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\ETB\FS%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\ETB12\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\b\DC2\ETX\ETB3m\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\233\251\ETX\DC2\ETX\ETB4P\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\242\251\ETX\DC2\ETX\ETBRl\n\
    \v\n\
    \\STX\EOT\STX\DC2\EOT\ESC\NUL!\SOH\SUBj LightClientAttackEvidence contains evidence of a set of validators attempting to mislead a light client.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\ESC\b!\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\FS\STX?\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX\FS\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\FS\RS/\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\FS=>\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\GS\STX?\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\GS\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\GS\RS+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\GS=>\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\RS\STX?\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX\RS\v%\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\RS&:\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\RS=>\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\US\STX?\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX\US\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\US&8\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\US=>\n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX \STXz\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\ETX \STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX &/\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX =>\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\b\DC2\ETX ?y\n\
    \\SI\n\
    \\b\EOT\STX\STX\EOT\b\233\251\ETX\DC2\ETX @\\\n\
    \\SI\n\
    \\b\EOT\STX\STX\EOT\b\242\251\ETX\DC2\ETX ^x\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT#\NUL%\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX#\b\DC4\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX$\STX@\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX$\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX$\DC4\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX$\US \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETX$!?\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\233\251\ETX\DC2\ETX$\">b\ACKproto3"