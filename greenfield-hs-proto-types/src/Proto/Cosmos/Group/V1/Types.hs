{- This file was auto-generated from cosmos/group/v1/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Group.V1.Types (
        DecisionPolicyWindows(), GroupInfo(), GroupMember(),
        GroupPolicyInfo(), Member(), MemberRequest(),
        PercentageDecisionPolicy(), Proposal(), ProposalExecutorResult(..),
        ProposalExecutorResult(), ProposalExecutorResult'UnrecognizedValue,
        ProposalStatus(..), ProposalStatus(),
        ProposalStatus'UnrecognizedValue, TallyResult(),
        ThresholdDecisionPolicy(), Vote(), VoteOption(..), VoteOption(),
        VoteOption'UnrecognizedValue
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Types_Fields.votingPeriod' @:: Lens' DecisionPolicyWindows Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Cosmos.Group.V1.Types_Fields.maybe'votingPeriod' @:: Lens' DecisionPolicyWindows (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Cosmos.Group.V1.Types_Fields.minExecutionPeriod' @:: Lens' DecisionPolicyWindows Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Cosmos.Group.V1.Types_Fields.maybe'minExecutionPeriod' @:: Lens' DecisionPolicyWindows (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data DecisionPolicyWindows
  = DecisionPolicyWindows'_constructor {_DecisionPolicyWindows'votingPeriod :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _DecisionPolicyWindows'minExecutionPeriod :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                        _DecisionPolicyWindows'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DecisionPolicyWindows where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DecisionPolicyWindows "votingPeriod" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DecisionPolicyWindows'votingPeriod
           (\ x__ y__ -> x__ {_DecisionPolicyWindows'votingPeriod = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DecisionPolicyWindows "maybe'votingPeriod" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DecisionPolicyWindows'votingPeriod
           (\ x__ y__ -> x__ {_DecisionPolicyWindows'votingPeriod = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DecisionPolicyWindows "minExecutionPeriod" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DecisionPolicyWindows'minExecutionPeriod
           (\ x__ y__
              -> x__ {_DecisionPolicyWindows'minExecutionPeriod = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DecisionPolicyWindows "maybe'minExecutionPeriod" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DecisionPolicyWindows'minExecutionPeriod
           (\ x__ y__
              -> x__ {_DecisionPolicyWindows'minExecutionPeriod = y__}))
        Prelude.id
instance Data.ProtoLens.Message DecisionPolicyWindows where
  messageName _
    = Data.Text.pack "cosmos.group.v1.DecisionPolicyWindows"
  packedMessageDescriptor _
    = "\n\
      \\NAKDecisionPolicyWindows\DC2M\n\
      \\rvoting_period\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\fvotingPeriodB\r\200\222\US\NUL\152\223\US\SOH\168\231\176*\SOH\DC2Z\n\
      \\DC4min_execution_period\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\DC2minExecutionPeriodB\r\200\222\US\NUL\152\223\US\SOH\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        votingPeriod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voting_period"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'votingPeriod")) ::
              Data.ProtoLens.FieldDescriptor DecisionPolicyWindows
        minExecutionPeriod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_execution_period"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minExecutionPeriod")) ::
              Data.ProtoLens.FieldDescriptor DecisionPolicyWindows
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, votingPeriod__field_descriptor),
           (Data.ProtoLens.Tag 2, minExecutionPeriod__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DecisionPolicyWindows'_unknownFields
        (\ x__ y__ -> x__ {_DecisionPolicyWindows'_unknownFields = y__})
  defMessage
    = DecisionPolicyWindows'_constructor
        {_DecisionPolicyWindows'votingPeriod = Prelude.Nothing,
         _DecisionPolicyWindows'minExecutionPeriod = Prelude.Nothing,
         _DecisionPolicyWindows'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DecisionPolicyWindows
          -> Data.ProtoLens.Encoding.Bytes.Parser DecisionPolicyWindows
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
                                       "voting_period"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"votingPeriod") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "min_execution_period"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minExecutionPeriod") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DecisionPolicyWindows"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'votingPeriod") _x
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
                       (Data.ProtoLens.Field.field @"maybe'minExecutionPeriod") _x
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
instance Control.DeepSeq.NFData DecisionPolicyWindows where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DecisionPolicyWindows'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DecisionPolicyWindows'votingPeriod x__)
                (Control.DeepSeq.deepseq
                   (_DecisionPolicyWindows'minExecutionPeriod x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Types_Fields.id' @:: Lens' GroupInfo Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Types_Fields.admin' @:: Lens' GroupInfo Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.metadata' @:: Lens' GroupInfo Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.version' @:: Lens' GroupInfo Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Types_Fields.totalWeight' @:: Lens' GroupInfo Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.createdAt' @:: Lens' GroupInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Group.V1.Types_Fields.maybe'createdAt' @:: Lens' GroupInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data GroupInfo
  = GroupInfo'_constructor {_GroupInfo'id :: !Data.Word.Word64,
                            _GroupInfo'admin :: !Data.Text.Text,
                            _GroupInfo'metadata :: !Data.Text.Text,
                            _GroupInfo'version :: !Data.Word.Word64,
                            _GroupInfo'totalWeight :: !Data.Text.Text,
                            _GroupInfo'createdAt :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                            _GroupInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GroupInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GroupInfo "id" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupInfo'id (\ x__ y__ -> x__ {_GroupInfo'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupInfo "admin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupInfo'admin (\ x__ y__ -> x__ {_GroupInfo'admin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupInfo "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupInfo'metadata (\ x__ y__ -> x__ {_GroupInfo'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupInfo "version" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupInfo'version (\ x__ y__ -> x__ {_GroupInfo'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupInfo "totalWeight" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupInfo'totalWeight
           (\ x__ y__ -> x__ {_GroupInfo'totalWeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupInfo "createdAt" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupInfo'createdAt
           (\ x__ y__ -> x__ {_GroupInfo'createdAt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GroupInfo "maybe'createdAt" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupInfo'createdAt
           (\ x__ y__ -> x__ {_GroupInfo'createdAt = y__}))
        Prelude.id
instance Data.ProtoLens.Message GroupInfo where
  messageName _ = Data.Text.pack "cosmos.group.v1.GroupInfo"
  packedMessageDescriptor _
    = "\n\
      \\tGroupInfo\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\EOTR\STXid\DC2.\n\
      \\ENQadmin\CAN\STX \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
      \\bmetadata\CAN\ETX \SOH(\tR\bmetadata\DC2\CAN\n\
      \\aversion\CAN\EOT \SOH(\EOTR\aversion\DC2!\n\
      \\ftotal_weight\CAN\ENQ \SOH(\tR\vtotalWeight\DC2H\n\
      \\n\
      \created_at\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\tcreatedAtB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor GroupInfo
        admin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "admin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"admin")) ::
              Data.ProtoLens.FieldDescriptor GroupInfo
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor GroupInfo
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor GroupInfo
        totalWeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_weight"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalWeight")) ::
              Data.ProtoLens.FieldDescriptor GroupInfo
        createdAt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "created_at"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'createdAt")) ::
              Data.ProtoLens.FieldDescriptor GroupInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, admin__field_descriptor),
           (Data.ProtoLens.Tag 3, metadata__field_descriptor),
           (Data.ProtoLens.Tag 4, version__field_descriptor),
           (Data.ProtoLens.Tag 5, totalWeight__field_descriptor),
           (Data.ProtoLens.Tag 6, createdAt__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GroupInfo'_unknownFields
        (\ x__ y__ -> x__ {_GroupInfo'_unknownFields = y__})
  defMessage
    = GroupInfo'_constructor
        {_GroupInfo'id = Data.ProtoLens.fieldDefault,
         _GroupInfo'admin = Data.ProtoLens.fieldDefault,
         _GroupInfo'metadata = Data.ProtoLens.fieldDefault,
         _GroupInfo'version = Data.ProtoLens.fieldDefault,
         _GroupInfo'totalWeight = Data.ProtoLens.fieldDefault,
         _GroupInfo'createdAt = Prelude.Nothing,
         _GroupInfo'_unknownFields = []}
  parseMessage
    = let
        loop :: GroupInfo -> Data.ProtoLens.Encoding.Bytes.Parser GroupInfo
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "id"
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
                                       "admin"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"admin") y x)
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
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "total_weight"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"totalWeight") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "created_at"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"createdAt") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GroupInfo"
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
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"admin") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x
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
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"totalWeight") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                                   (Data.ProtoLens.Field.field @"maybe'createdAt") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData GroupInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GroupInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GroupInfo'id x__)
                (Control.DeepSeq.deepseq
                   (_GroupInfo'admin x__)
                   (Control.DeepSeq.deepseq
                      (_GroupInfo'metadata x__)
                      (Control.DeepSeq.deepseq
                         (_GroupInfo'version x__)
                         (Control.DeepSeq.deepseq
                            (_GroupInfo'totalWeight x__)
                            (Control.DeepSeq.deepseq (_GroupInfo'createdAt x__) ()))))))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Types_Fields.groupId' @:: Lens' GroupMember Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Types_Fields.member' @:: Lens' GroupMember Member@
         * 'Proto.Cosmos.Group.V1.Types_Fields.maybe'member' @:: Lens' GroupMember (Prelude.Maybe Member)@ -}
data GroupMember
  = GroupMember'_constructor {_GroupMember'groupId :: !Data.Word.Word64,
                              _GroupMember'member :: !(Prelude.Maybe Member),
                              _GroupMember'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GroupMember where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GroupMember "groupId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupMember'groupId
           (\ x__ y__ -> x__ {_GroupMember'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupMember "member" Member where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupMember'member (\ x__ y__ -> x__ {_GroupMember'member = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GroupMember "maybe'member" (Prelude.Maybe Member) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupMember'member (\ x__ y__ -> x__ {_GroupMember'member = y__}))
        Prelude.id
instance Data.ProtoLens.Message GroupMember where
  messageName _ = Data.Text.pack "cosmos.group.v1.GroupMember"
  packedMessageDescriptor _
    = "\n\
      \\vGroupMember\DC2\EM\n\
      \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId\DC2/\n\
      \\ACKmember\CAN\STX \SOH(\v2\ETB.cosmos.group.v1.MemberR\ACKmember"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor GroupMember
        member__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "member"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Member)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'member")) ::
              Data.ProtoLens.FieldDescriptor GroupMember
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupId__field_descriptor),
           (Data.ProtoLens.Tag 2, member__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GroupMember'_unknownFields
        (\ x__ y__ -> x__ {_GroupMember'_unknownFields = y__})
  defMessage
    = GroupMember'_constructor
        {_GroupMember'groupId = Data.ProtoLens.fieldDefault,
         _GroupMember'member = Prelude.Nothing,
         _GroupMember'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GroupMember -> Data.ProtoLens.Encoding.Bytes.Parser GroupMember
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "group_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"groupId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "member"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"member") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GroupMember"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'member") _x
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
instance Control.DeepSeq.NFData GroupMember where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GroupMember'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GroupMember'groupId x__)
                (Control.DeepSeq.deepseq (_GroupMember'member x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Types_Fields.address' @:: Lens' GroupPolicyInfo Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.groupId' @:: Lens' GroupPolicyInfo Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Types_Fields.admin' @:: Lens' GroupPolicyInfo Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.metadata' @:: Lens' GroupPolicyInfo Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.version' @:: Lens' GroupPolicyInfo Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Types_Fields.decisionPolicy' @:: Lens' GroupPolicyInfo Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Group.V1.Types_Fields.maybe'decisionPolicy' @:: Lens' GroupPolicyInfo (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Group.V1.Types_Fields.createdAt' @:: Lens' GroupPolicyInfo Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Group.V1.Types_Fields.maybe'createdAt' @:: Lens' GroupPolicyInfo (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data GroupPolicyInfo
  = GroupPolicyInfo'_constructor {_GroupPolicyInfo'address :: !Data.Text.Text,
                                  _GroupPolicyInfo'groupId :: !Data.Word.Word64,
                                  _GroupPolicyInfo'admin :: !Data.Text.Text,
                                  _GroupPolicyInfo'metadata :: !Data.Text.Text,
                                  _GroupPolicyInfo'version :: !Data.Word.Word64,
                                  _GroupPolicyInfo'decisionPolicy :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                  _GroupPolicyInfo'createdAt :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                  _GroupPolicyInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GroupPolicyInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GroupPolicyInfo "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupPolicyInfo'address
           (\ x__ y__ -> x__ {_GroupPolicyInfo'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupPolicyInfo "groupId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupPolicyInfo'groupId
           (\ x__ y__ -> x__ {_GroupPolicyInfo'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupPolicyInfo "admin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupPolicyInfo'admin
           (\ x__ y__ -> x__ {_GroupPolicyInfo'admin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupPolicyInfo "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupPolicyInfo'metadata
           (\ x__ y__ -> x__ {_GroupPolicyInfo'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupPolicyInfo "version" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupPolicyInfo'version
           (\ x__ y__ -> x__ {_GroupPolicyInfo'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupPolicyInfo "decisionPolicy" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupPolicyInfo'decisionPolicy
           (\ x__ y__ -> x__ {_GroupPolicyInfo'decisionPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GroupPolicyInfo "maybe'decisionPolicy" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupPolicyInfo'decisionPolicy
           (\ x__ y__ -> x__ {_GroupPolicyInfo'decisionPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupPolicyInfo "createdAt" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupPolicyInfo'createdAt
           (\ x__ y__ -> x__ {_GroupPolicyInfo'createdAt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GroupPolicyInfo "maybe'createdAt" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupPolicyInfo'createdAt
           (\ x__ y__ -> x__ {_GroupPolicyInfo'createdAt = y__}))
        Prelude.id
instance Data.ProtoLens.Message GroupPolicyInfo where
  messageName _ = Data.Text.pack "cosmos.group.v1.GroupPolicyInfo"
  packedMessageDescriptor _
    = "\n\
      \\SIGroupPolicyInfo\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\EM\n\
      \\bgroup_id\CAN\STX \SOH(\EOTR\agroupId\DC2.\n\
      \\ENQadmin\CAN\ETX \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
      \\bmetadata\CAN\EOT \SOH(\tR\bmetadata\DC2\CAN\n\
      \\aversion\CAN\ENQ \SOH(\EOTR\aversion\DC2a\n\
      \\SIdecision_policy\CAN\ACK \SOH(\v2\DC4.google.protobuf.AnyR\SOdecisionPolicyB\"\202\180-\RScosmos.group.v1.DecisionPolicy\DC2H\n\
      \\n\
      \created_at\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampR\tcreatedAtB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor GroupPolicyInfo
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor GroupPolicyInfo
        admin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "admin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"admin")) ::
              Data.ProtoLens.FieldDescriptor GroupPolicyInfo
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor GroupPolicyInfo
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor GroupPolicyInfo
        decisionPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "decision_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'decisionPolicy")) ::
              Data.ProtoLens.FieldDescriptor GroupPolicyInfo
        createdAt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "created_at"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'createdAt")) ::
              Data.ProtoLens.FieldDescriptor GroupPolicyInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, groupId__field_descriptor),
           (Data.ProtoLens.Tag 3, admin__field_descriptor),
           (Data.ProtoLens.Tag 4, metadata__field_descriptor),
           (Data.ProtoLens.Tag 5, version__field_descriptor),
           (Data.ProtoLens.Tag 6, decisionPolicy__field_descriptor),
           (Data.ProtoLens.Tag 7, createdAt__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GroupPolicyInfo'_unknownFields
        (\ x__ y__ -> x__ {_GroupPolicyInfo'_unknownFields = y__})
  defMessage
    = GroupPolicyInfo'_constructor
        {_GroupPolicyInfo'address = Data.ProtoLens.fieldDefault,
         _GroupPolicyInfo'groupId = Data.ProtoLens.fieldDefault,
         _GroupPolicyInfo'admin = Data.ProtoLens.fieldDefault,
         _GroupPolicyInfo'metadata = Data.ProtoLens.fieldDefault,
         _GroupPolicyInfo'version = Data.ProtoLens.fieldDefault,
         _GroupPolicyInfo'decisionPolicy = Prelude.Nothing,
         _GroupPolicyInfo'createdAt = Prelude.Nothing,
         _GroupPolicyInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GroupPolicyInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser GroupPolicyInfo
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "group_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"groupId") y x)
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
                                       "admin"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"admin") y x)
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
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "decision_policy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"decisionPolicy") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "created_at"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"createdAt") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GroupPolicyInfo"
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
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"admin") _x
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
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x
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
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'decisionPolicy") _x
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
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'createdAt") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
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
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData GroupPolicyInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GroupPolicyInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GroupPolicyInfo'address x__)
                (Control.DeepSeq.deepseq
                   (_GroupPolicyInfo'groupId x__)
                   (Control.DeepSeq.deepseq
                      (_GroupPolicyInfo'admin x__)
                      (Control.DeepSeq.deepseq
                         (_GroupPolicyInfo'metadata x__)
                         (Control.DeepSeq.deepseq
                            (_GroupPolicyInfo'version x__)
                            (Control.DeepSeq.deepseq
                               (_GroupPolicyInfo'decisionPolicy x__)
                               (Control.DeepSeq.deepseq (_GroupPolicyInfo'createdAt x__) ())))))))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Types_Fields.address' @:: Lens' Member Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.weight' @:: Lens' Member Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.metadata' @:: Lens' Member Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.addedAt' @:: Lens' Member Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Group.V1.Types_Fields.maybe'addedAt' @:: Lens' Member (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data Member
  = Member'_constructor {_Member'address :: !Data.Text.Text,
                         _Member'weight :: !Data.Text.Text,
                         _Member'metadata :: !Data.Text.Text,
                         _Member'addedAt :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                         _Member'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Member where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Member "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Member'address (\ x__ y__ -> x__ {_Member'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Member "weight" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Member'weight (\ x__ y__ -> x__ {_Member'weight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Member "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Member'metadata (\ x__ y__ -> x__ {_Member'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Member "addedAt" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Member'addedAt (\ x__ y__ -> x__ {_Member'addedAt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Member "maybe'addedAt" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Member'addedAt (\ x__ y__ -> x__ {_Member'addedAt = y__}))
        Prelude.id
instance Data.ProtoLens.Message Member where
  messageName _ = Data.Text.pack "cosmos.group.v1.Member"
  packedMessageDescriptor _
    = "\n\
      \\ACKMember\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SYN\n\
      \\ACKweight\CAN\STX \SOH(\tR\ACKweight\DC2\SUB\n\
      \\bmetadata\CAN\ETX \SOH(\tR\bmetadata\DC2D\n\
      \\badded_at\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\aaddedAtB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor Member
        weight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "weight"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"weight")) ::
              Data.ProtoLens.FieldDescriptor Member
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor Member
        addedAt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "added_at"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'addedAt")) ::
              Data.ProtoLens.FieldDescriptor Member
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, weight__field_descriptor),
           (Data.ProtoLens.Tag 3, metadata__field_descriptor),
           (Data.ProtoLens.Tag 4, addedAt__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Member'_unknownFields
        (\ x__ y__ -> x__ {_Member'_unknownFields = y__})
  defMessage
    = Member'_constructor
        {_Member'address = Data.ProtoLens.fieldDefault,
         _Member'weight = Data.ProtoLens.fieldDefault,
         _Member'metadata = Data.ProtoLens.fieldDefault,
         _Member'addedAt = Prelude.Nothing, _Member'_unknownFields = []}
  parseMessage
    = let
        loop :: Member -> Data.ProtoLens.Encoding.Bytes.Parser Member
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
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
                                       "weight"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"weight") y x)
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
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "added_at"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"addedAt") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Member"
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
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"weight") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x
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
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'addedAt") _x
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
instance Control.DeepSeq.NFData Member where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Member'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Member'address x__)
                (Control.DeepSeq.deepseq
                   (_Member'weight x__)
                   (Control.DeepSeq.deepseq
                      (_Member'metadata x__)
                      (Control.DeepSeq.deepseq (_Member'addedAt x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Types_Fields.address' @:: Lens' MemberRequest Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.weight' @:: Lens' MemberRequest Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.metadata' @:: Lens' MemberRequest Data.Text.Text@ -}
data MemberRequest
  = MemberRequest'_constructor {_MemberRequest'address :: !Data.Text.Text,
                                _MemberRequest'weight :: !Data.Text.Text,
                                _MemberRequest'metadata :: !Data.Text.Text,
                                _MemberRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MemberRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MemberRequest "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MemberRequest'address
           (\ x__ y__ -> x__ {_MemberRequest'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MemberRequest "weight" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MemberRequest'weight
           (\ x__ y__ -> x__ {_MemberRequest'weight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MemberRequest "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MemberRequest'metadata
           (\ x__ y__ -> x__ {_MemberRequest'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message MemberRequest where
  messageName _ = Data.Text.pack "cosmos.group.v1.MemberRequest"
  packedMessageDescriptor _
    = "\n\
      \\rMemberRequest\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SYN\n\
      \\ACKweight\CAN\STX \SOH(\tR\ACKweight\DC2\SUB\n\
      \\bmetadata\CAN\ETX \SOH(\tR\bmetadata"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor MemberRequest
        weight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "weight"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"weight")) ::
              Data.ProtoLens.FieldDescriptor MemberRequest
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor MemberRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, weight__field_descriptor),
           (Data.ProtoLens.Tag 3, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MemberRequest'_unknownFields
        (\ x__ y__ -> x__ {_MemberRequest'_unknownFields = y__})
  defMessage
    = MemberRequest'_constructor
        {_MemberRequest'address = Data.ProtoLens.fieldDefault,
         _MemberRequest'weight = Data.ProtoLens.fieldDefault,
         _MemberRequest'metadata = Data.ProtoLens.fieldDefault,
         _MemberRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MemberRequest -> Data.ProtoLens.Encoding.Bytes.Parser MemberRequest
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
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
                                       "weight"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"weight") y x)
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
          (do loop Data.ProtoLens.defMessage) "MemberRequest"
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
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"weight") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x
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
instance Control.DeepSeq.NFData MemberRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MemberRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MemberRequest'address x__)
                (Control.DeepSeq.deepseq
                   (_MemberRequest'weight x__)
                   (Control.DeepSeq.deepseq (_MemberRequest'metadata x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Types_Fields.percentage' @:: Lens' PercentageDecisionPolicy Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.windows' @:: Lens' PercentageDecisionPolicy DecisionPolicyWindows@
         * 'Proto.Cosmos.Group.V1.Types_Fields.maybe'windows' @:: Lens' PercentageDecisionPolicy (Prelude.Maybe DecisionPolicyWindows)@ -}
data PercentageDecisionPolicy
  = PercentageDecisionPolicy'_constructor {_PercentageDecisionPolicy'percentage :: !Data.Text.Text,
                                           _PercentageDecisionPolicy'windows :: !(Prelude.Maybe DecisionPolicyWindows),
                                           _PercentageDecisionPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PercentageDecisionPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PercentageDecisionPolicy "percentage" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PercentageDecisionPolicy'percentage
           (\ x__ y__ -> x__ {_PercentageDecisionPolicy'percentage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PercentageDecisionPolicy "windows" DecisionPolicyWindows where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PercentageDecisionPolicy'windows
           (\ x__ y__ -> x__ {_PercentageDecisionPolicy'windows = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PercentageDecisionPolicy "maybe'windows" (Prelude.Maybe DecisionPolicyWindows) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PercentageDecisionPolicy'windows
           (\ x__ y__ -> x__ {_PercentageDecisionPolicy'windows = y__}))
        Prelude.id
instance Data.ProtoLens.Message PercentageDecisionPolicy where
  messageName _
    = Data.Text.pack "cosmos.group.v1.PercentageDecisionPolicy"
  packedMessageDescriptor _
    = "\n\
      \\CANPercentageDecisionPolicy\DC2\RS\n\
      \\n\
      \percentage\CAN\SOH \SOH(\tR\n\
      \percentage\DC2@\n\
      \\awindows\CAN\STX \SOH(\v2&.cosmos.group.v1.DecisionPolicyWindowsR\awindows:J\202\180-\RScosmos.group.v1.DecisionPolicy\138\231\176*#cosmos-sdk/PercentageDecisionPolicy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        percentage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "percentage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"percentage")) ::
              Data.ProtoLens.FieldDescriptor PercentageDecisionPolicy
        windows__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "windows"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DecisionPolicyWindows)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'windows")) ::
              Data.ProtoLens.FieldDescriptor PercentageDecisionPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, percentage__field_descriptor),
           (Data.ProtoLens.Tag 2, windows__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PercentageDecisionPolicy'_unknownFields
        (\ x__ y__ -> x__ {_PercentageDecisionPolicy'_unknownFields = y__})
  defMessage
    = PercentageDecisionPolicy'_constructor
        {_PercentageDecisionPolicy'percentage = Data.ProtoLens.fieldDefault,
         _PercentageDecisionPolicy'windows = Prelude.Nothing,
         _PercentageDecisionPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PercentageDecisionPolicy
          -> Data.ProtoLens.Encoding.Bytes.Parser PercentageDecisionPolicy
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
                                       "percentage"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"percentage") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "windows"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"windows") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PercentageDecisionPolicy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"percentage") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'windows") _x
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
instance Control.DeepSeq.NFData PercentageDecisionPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PercentageDecisionPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PercentageDecisionPolicy'percentage x__)
                (Control.DeepSeq.deepseq
                   (_PercentageDecisionPolicy'windows x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Types_Fields.id' @:: Lens' Proposal Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Types_Fields.groupPolicyAddress' @:: Lens' Proposal Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.metadata' @:: Lens' Proposal Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.proposers' @:: Lens' Proposal [Data.Text.Text]@
         * 'Proto.Cosmos.Group.V1.Types_Fields.vec'proposers' @:: Lens' Proposal (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Cosmos.Group.V1.Types_Fields.submitTime' @:: Lens' Proposal Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Group.V1.Types_Fields.maybe'submitTime' @:: Lens' Proposal (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Group.V1.Types_Fields.groupVersion' @:: Lens' Proposal Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Types_Fields.groupPolicyVersion' @:: Lens' Proposal Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Types_Fields.status' @:: Lens' Proposal ProposalStatus@
         * 'Proto.Cosmos.Group.V1.Types_Fields.finalTallyResult' @:: Lens' Proposal TallyResult@
         * 'Proto.Cosmos.Group.V1.Types_Fields.maybe'finalTallyResult' @:: Lens' Proposal (Prelude.Maybe TallyResult)@
         * 'Proto.Cosmos.Group.V1.Types_Fields.votingPeriodEnd' @:: Lens' Proposal Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Group.V1.Types_Fields.maybe'votingPeriodEnd' @:: Lens' Proposal (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Group.V1.Types_Fields.executorResult' @:: Lens' Proposal ProposalExecutorResult@
         * 'Proto.Cosmos.Group.V1.Types_Fields.messages' @:: Lens' Proposal [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Group.V1.Types_Fields.vec'messages' @:: Lens' Proposal (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Group.V1.Types_Fields.title' @:: Lens' Proposal Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.summary' @:: Lens' Proposal Data.Text.Text@ -}
data Proposal
  = Proposal'_constructor {_Proposal'id :: !Data.Word.Word64,
                           _Proposal'groupPolicyAddress :: !Data.Text.Text,
                           _Proposal'metadata :: !Data.Text.Text,
                           _Proposal'proposers :: !(Data.Vector.Vector Data.Text.Text),
                           _Proposal'submitTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Proposal'groupVersion :: !Data.Word.Word64,
                           _Proposal'groupPolicyVersion :: !Data.Word.Word64,
                           _Proposal'status :: !ProposalStatus,
                           _Proposal'finalTallyResult :: !(Prelude.Maybe TallyResult),
                           _Proposal'votingPeriodEnd :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Proposal'executorResult :: !ProposalExecutorResult,
                           _Proposal'messages :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                           _Proposal'title :: !Data.Text.Text,
                           _Proposal'summary :: !Data.Text.Text,
                           _Proposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Proposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Proposal "id" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'id (\ x__ y__ -> x__ {_Proposal'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "groupPolicyAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'groupPolicyAddress
           (\ x__ y__ -> x__ {_Proposal'groupPolicyAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'metadata (\ x__ y__ -> x__ {_Proposal'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "proposers" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'proposers (\ x__ y__ -> x__ {_Proposal'proposers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Proposal "vec'proposers" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'proposers (\ x__ y__ -> x__ {_Proposal'proposers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "submitTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'submitTime
           (\ x__ y__ -> x__ {_Proposal'submitTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Proposal "maybe'submitTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'submitTime
           (\ x__ y__ -> x__ {_Proposal'submitTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "groupVersion" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'groupVersion
           (\ x__ y__ -> x__ {_Proposal'groupVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "groupPolicyVersion" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'groupPolicyVersion
           (\ x__ y__ -> x__ {_Proposal'groupPolicyVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "status" ProposalStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'status (\ x__ y__ -> x__ {_Proposal'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "finalTallyResult" TallyResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'finalTallyResult
           (\ x__ y__ -> x__ {_Proposal'finalTallyResult = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Proposal "maybe'finalTallyResult" (Prelude.Maybe TallyResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'finalTallyResult
           (\ x__ y__ -> x__ {_Proposal'finalTallyResult = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "votingPeriodEnd" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'votingPeriodEnd
           (\ x__ y__ -> x__ {_Proposal'votingPeriodEnd = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Proposal "maybe'votingPeriodEnd" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'votingPeriodEnd
           (\ x__ y__ -> x__ {_Proposal'votingPeriodEnd = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "executorResult" ProposalExecutorResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'executorResult
           (\ x__ y__ -> x__ {_Proposal'executorResult = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "messages" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'messages (\ x__ y__ -> x__ {_Proposal'messages = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Proposal "vec'messages" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'messages (\ x__ y__ -> x__ {_Proposal'messages = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "title" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'title (\ x__ y__ -> x__ {_Proposal'title = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "summary" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'summary (\ x__ y__ -> x__ {_Proposal'summary = y__}))
        Prelude.id
instance Data.ProtoLens.Message Proposal where
  messageName _ = Data.Text.pack "cosmos.group.v1.Proposal"
  packedMessageDescriptor _
    = "\n\
      \\bProposal\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\EOTR\STXid\DC2J\n\
      \\DC4group_policy_address\CAN\STX \SOH(\tR\DC2groupPolicyAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
      \\bmetadata\CAN\ETX \SOH(\tR\bmetadata\DC26\n\
      \\tproposers\CAN\EOT \ETX(\tR\tproposersB\CAN\210\180-\DC4cosmos.AddressString\DC2J\n\
      \\vsubmit_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \submitTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2#\n\
      \\rgroup_version\CAN\ACK \SOH(\EOTR\fgroupVersion\DC20\n\
      \\DC4group_policy_version\CAN\a \SOH(\EOTR\DC2groupPolicyVersion\DC27\n\
      \\ACKstatus\CAN\b \SOH(\SO2\US.cosmos.group.v1.ProposalStatusR\ACKstatus\DC2U\n\
      \\DC2final_tally_result\CAN\t \SOH(\v2\FS.cosmos.group.v1.TallyResultR\DLEfinalTallyResultB\t\200\222\US\NUL\168\231\176*\SOH\DC2U\n\
      \\DC1voting_period_end\CAN\n\
      \ \SOH(\v2\SUB.google.protobuf.TimestampR\SIvotingPeriodEndB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2P\n\
      \\SIexecutor_result\CAN\v \SOH(\SO2'.cosmos.group.v1.ProposalExecutorResultR\SOexecutorResult\DC20\n\
      \\bmessages\CAN\f \ETX(\v2\DC4.google.protobuf.AnyR\bmessages\DC2\DC4\n\
      \\ENQtitle\CAN\r \SOH(\tR\ENQtitle\DC2\CAN\n\
      \\asummary\CAN\SO \SOH(\tR\asummary:\EOT\136\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        groupPolicyAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_policy_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupPolicyAddress")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        proposers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"proposers")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        submitTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "submit_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'submitTime")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        groupVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupVersion")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        groupPolicyVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_policy_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupPolicyVersion")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ProposalStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        finalTallyResult__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "final_tally_result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TallyResult)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'finalTallyResult")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        votingPeriodEnd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voting_period_end"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'votingPeriodEnd")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        executorResult__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "executor_result"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ProposalExecutorResult)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"executorResult")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        messages__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "messages"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"messages")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        title__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "title"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"title")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        summary__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "summary"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"summary")) ::
              Data.ProtoLens.FieldDescriptor Proposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, groupPolicyAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, metadata__field_descriptor),
           (Data.ProtoLens.Tag 4, proposers__field_descriptor),
           (Data.ProtoLens.Tag 5, submitTime__field_descriptor),
           (Data.ProtoLens.Tag 6, groupVersion__field_descriptor),
           (Data.ProtoLens.Tag 7, groupPolicyVersion__field_descriptor),
           (Data.ProtoLens.Tag 8, status__field_descriptor),
           (Data.ProtoLens.Tag 9, finalTallyResult__field_descriptor),
           (Data.ProtoLens.Tag 10, votingPeriodEnd__field_descriptor),
           (Data.ProtoLens.Tag 11, executorResult__field_descriptor),
           (Data.ProtoLens.Tag 12, messages__field_descriptor),
           (Data.ProtoLens.Tag 13, title__field_descriptor),
           (Data.ProtoLens.Tag 14, summary__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Proposal'_unknownFields
        (\ x__ y__ -> x__ {_Proposal'_unknownFields = y__})
  defMessage
    = Proposal'_constructor
        {_Proposal'id = Data.ProtoLens.fieldDefault,
         _Proposal'groupPolicyAddress = Data.ProtoLens.fieldDefault,
         _Proposal'metadata = Data.ProtoLens.fieldDefault,
         _Proposal'proposers = Data.Vector.Generic.empty,
         _Proposal'submitTime = Prelude.Nothing,
         _Proposal'groupVersion = Data.ProtoLens.fieldDefault,
         _Proposal'groupPolicyVersion = Data.ProtoLens.fieldDefault,
         _Proposal'status = Data.ProtoLens.fieldDefault,
         _Proposal'finalTallyResult = Prelude.Nothing,
         _Proposal'votingPeriodEnd = Prelude.Nothing,
         _Proposal'executorResult = Data.ProtoLens.fieldDefault,
         _Proposal'messages = Data.Vector.Generic.empty,
         _Proposal'title = Data.ProtoLens.fieldDefault,
         _Proposal'summary = Data.ProtoLens.fieldDefault,
         _Proposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Proposal
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser Proposal
        loop x mutable'messages mutable'proposers
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'messages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'messages)
                      frozen'proposers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'proposers)
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
                              (Data.ProtoLens.Field.field @"vec'messages") frozen'messages
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'proposers") frozen'proposers x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                                  mutable'messages mutable'proposers
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
                                       "group_policy_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"groupPolicyAddress") y x)
                                  mutable'messages mutable'proposers
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
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                                  mutable'messages mutable'proposers
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "proposers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'proposers y)
                                loop x mutable'messages v
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "submit_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"submitTime") y x)
                                  mutable'messages mutable'proposers
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "group_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"groupVersion") y x)
                                  mutable'messages mutable'proposers
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "group_policy_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"groupPolicyVersion") y x)
                                  mutable'messages mutable'proposers
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                                  mutable'messages mutable'proposers
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "final_tally_result"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"finalTallyResult") y x)
                                  mutable'messages mutable'proposers
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "voting_period_end"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"votingPeriodEnd") y x)
                                  mutable'messages mutable'proposers
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "executor_result"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"executorResult") y x)
                                  mutable'messages mutable'proposers
                        98
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "messages"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'messages y)
                                loop x v mutable'proposers
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "title"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"title") y x)
                                  mutable'messages mutable'proposers
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
                                       "summary"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"summary") y x)
                                  mutable'messages mutable'proposers
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'messages mutable'proposers
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'messages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'proposers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'messages mutable'proposers)
          "Proposal"
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
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"groupPolicyAddress") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x
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
                                    Data.Text.Encoding.encodeUtf8 _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'proposers") _x))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'submitTime") _x
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
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"groupVersion") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"groupPolicyVersion") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                           ((Prelude..)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral)
                                              Prelude.fromEnum _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'finalTallyResult")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'votingPeriodEnd")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"executorResult")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                    ((Prelude..)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          Prelude.fromIntegral)
                                                       Prelude.fromEnum _v))
                                           ((Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                 (\ _v
                                                    -> (Data.Monoid.<>)
                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                            98)
                                                         ((Prelude..)
                                                            (\ bs
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       (Prelude.fromIntegral
                                                                          (Data.ByteString.length
                                                                             bs)))
                                                                    (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                       bs))
                                                            Data.ProtoLens.encodeMessage _v))
                                                 (Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"vec'messages")
                                                    _x))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    _v
                                                      = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field @"title") _x
                                                  in
                                                    if (Prelude.==)
                                                         _v Data.ProtoLens.fieldDefault then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             106)
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
                                                 ((Data.Monoid.<>)
                                                    (let
                                                       _v
                                                         = Lens.Family2.view
                                                             (Data.ProtoLens.Field.field @"summary")
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
instance Control.DeepSeq.NFData Proposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Proposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Proposal'id x__)
                (Control.DeepSeq.deepseq
                   (_Proposal'groupPolicyAddress x__)
                   (Control.DeepSeq.deepseq
                      (_Proposal'metadata x__)
                      (Control.DeepSeq.deepseq
                         (_Proposal'proposers x__)
                         (Control.DeepSeq.deepseq
                            (_Proposal'submitTime x__)
                            (Control.DeepSeq.deepseq
                               (_Proposal'groupVersion x__)
                               (Control.DeepSeq.deepseq
                                  (_Proposal'groupPolicyVersion x__)
                                  (Control.DeepSeq.deepseq
                                     (_Proposal'status x__)
                                     (Control.DeepSeq.deepseq
                                        (_Proposal'finalTallyResult x__)
                                        (Control.DeepSeq.deepseq
                                           (_Proposal'votingPeriodEnd x__)
                                           (Control.DeepSeq.deepseq
                                              (_Proposal'executorResult x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Proposal'messages x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Proposal'title x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_Proposal'summary x__) ()))))))))))))))
newtype ProposalExecutorResult'UnrecognizedValue
  = ProposalExecutorResult'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ProposalExecutorResult
  = PROPOSAL_EXECUTOR_RESULT_UNSPECIFIED |
    PROPOSAL_EXECUTOR_RESULT_NOT_RUN |
    PROPOSAL_EXECUTOR_RESULT_SUCCESS |
    PROPOSAL_EXECUTOR_RESULT_FAILURE |
    ProposalExecutorResult'Unrecognized !ProposalExecutorResult'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ProposalExecutorResult where
  maybeToEnum 0 = Prelude.Just PROPOSAL_EXECUTOR_RESULT_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just PROPOSAL_EXECUTOR_RESULT_NOT_RUN
  maybeToEnum 2 = Prelude.Just PROPOSAL_EXECUTOR_RESULT_SUCCESS
  maybeToEnum 3 = Prelude.Just PROPOSAL_EXECUTOR_RESULT_FAILURE
  maybeToEnum k
    = Prelude.Just
        (ProposalExecutorResult'Unrecognized
           (ProposalExecutorResult'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum PROPOSAL_EXECUTOR_RESULT_UNSPECIFIED
    = "PROPOSAL_EXECUTOR_RESULT_UNSPECIFIED"
  showEnum PROPOSAL_EXECUTOR_RESULT_NOT_RUN
    = "PROPOSAL_EXECUTOR_RESULT_NOT_RUN"
  showEnum PROPOSAL_EXECUTOR_RESULT_SUCCESS
    = "PROPOSAL_EXECUTOR_RESULT_SUCCESS"
  showEnum PROPOSAL_EXECUTOR_RESULT_FAILURE
    = "PROPOSAL_EXECUTOR_RESULT_FAILURE"
  showEnum
    (ProposalExecutorResult'Unrecognized (ProposalExecutorResult'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "PROPOSAL_EXECUTOR_RESULT_UNSPECIFIED"
    = Prelude.Just PROPOSAL_EXECUTOR_RESULT_UNSPECIFIED
    | (Prelude.==) k "PROPOSAL_EXECUTOR_RESULT_NOT_RUN"
    = Prelude.Just PROPOSAL_EXECUTOR_RESULT_NOT_RUN
    | (Prelude.==) k "PROPOSAL_EXECUTOR_RESULT_SUCCESS"
    = Prelude.Just PROPOSAL_EXECUTOR_RESULT_SUCCESS
    | (Prelude.==) k "PROPOSAL_EXECUTOR_RESULT_FAILURE"
    = Prelude.Just PROPOSAL_EXECUTOR_RESULT_FAILURE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ProposalExecutorResult where
  minBound = PROPOSAL_EXECUTOR_RESULT_UNSPECIFIED
  maxBound = PROPOSAL_EXECUTOR_RESULT_FAILURE
instance Prelude.Enum ProposalExecutorResult where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ProposalExecutorResult: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum PROPOSAL_EXECUTOR_RESULT_UNSPECIFIED = 0
  fromEnum PROPOSAL_EXECUTOR_RESULT_NOT_RUN = 1
  fromEnum PROPOSAL_EXECUTOR_RESULT_SUCCESS = 2
  fromEnum PROPOSAL_EXECUTOR_RESULT_FAILURE = 3
  fromEnum
    (ProposalExecutorResult'Unrecognized (ProposalExecutorResult'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ PROPOSAL_EXECUTOR_RESULT_FAILURE
    = Prelude.error
        "ProposalExecutorResult.succ: bad argument PROPOSAL_EXECUTOR_RESULT_FAILURE. This value would be out of bounds."
  succ PROPOSAL_EXECUTOR_RESULT_UNSPECIFIED
    = PROPOSAL_EXECUTOR_RESULT_NOT_RUN
  succ PROPOSAL_EXECUTOR_RESULT_NOT_RUN
    = PROPOSAL_EXECUTOR_RESULT_SUCCESS
  succ PROPOSAL_EXECUTOR_RESULT_SUCCESS
    = PROPOSAL_EXECUTOR_RESULT_FAILURE
  succ (ProposalExecutorResult'Unrecognized _)
    = Prelude.error
        "ProposalExecutorResult.succ: bad argument: unrecognized value"
  pred PROPOSAL_EXECUTOR_RESULT_UNSPECIFIED
    = Prelude.error
        "ProposalExecutorResult.pred: bad argument PROPOSAL_EXECUTOR_RESULT_UNSPECIFIED. This value would be out of bounds."
  pred PROPOSAL_EXECUTOR_RESULT_NOT_RUN
    = PROPOSAL_EXECUTOR_RESULT_UNSPECIFIED
  pred PROPOSAL_EXECUTOR_RESULT_SUCCESS
    = PROPOSAL_EXECUTOR_RESULT_NOT_RUN
  pred PROPOSAL_EXECUTOR_RESULT_FAILURE
    = PROPOSAL_EXECUTOR_RESULT_SUCCESS
  pred (ProposalExecutorResult'Unrecognized _)
    = Prelude.error
        "ProposalExecutorResult.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ProposalExecutorResult where
  fieldDefault = PROPOSAL_EXECUTOR_RESULT_UNSPECIFIED
instance Control.DeepSeq.NFData ProposalExecutorResult where
  rnf x__ = Prelude.seq x__ ()
newtype ProposalStatus'UnrecognizedValue
  = ProposalStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ProposalStatus
  = PROPOSAL_STATUS_UNSPECIFIED |
    PROPOSAL_STATUS_SUBMITTED |
    PROPOSAL_STATUS_ACCEPTED |
    PROPOSAL_STATUS_REJECTED |
    PROPOSAL_STATUS_ABORTED |
    PROPOSAL_STATUS_WITHDRAWN |
    ProposalStatus'Unrecognized !ProposalStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ProposalStatus where
  maybeToEnum 0 = Prelude.Just PROPOSAL_STATUS_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just PROPOSAL_STATUS_SUBMITTED
  maybeToEnum 2 = Prelude.Just PROPOSAL_STATUS_ACCEPTED
  maybeToEnum 3 = Prelude.Just PROPOSAL_STATUS_REJECTED
  maybeToEnum 4 = Prelude.Just PROPOSAL_STATUS_ABORTED
  maybeToEnum 5 = Prelude.Just PROPOSAL_STATUS_WITHDRAWN
  maybeToEnum k
    = Prelude.Just
        (ProposalStatus'Unrecognized
           (ProposalStatus'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum PROPOSAL_STATUS_UNSPECIFIED
    = "PROPOSAL_STATUS_UNSPECIFIED"
  showEnum PROPOSAL_STATUS_SUBMITTED = "PROPOSAL_STATUS_SUBMITTED"
  showEnum PROPOSAL_STATUS_ACCEPTED = "PROPOSAL_STATUS_ACCEPTED"
  showEnum PROPOSAL_STATUS_REJECTED = "PROPOSAL_STATUS_REJECTED"
  showEnum PROPOSAL_STATUS_ABORTED = "PROPOSAL_STATUS_ABORTED"
  showEnum PROPOSAL_STATUS_WITHDRAWN = "PROPOSAL_STATUS_WITHDRAWN"
  showEnum
    (ProposalStatus'Unrecognized (ProposalStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "PROPOSAL_STATUS_UNSPECIFIED"
    = Prelude.Just PROPOSAL_STATUS_UNSPECIFIED
    | (Prelude.==) k "PROPOSAL_STATUS_SUBMITTED"
    = Prelude.Just PROPOSAL_STATUS_SUBMITTED
    | (Prelude.==) k "PROPOSAL_STATUS_ACCEPTED"
    = Prelude.Just PROPOSAL_STATUS_ACCEPTED
    | (Prelude.==) k "PROPOSAL_STATUS_REJECTED"
    = Prelude.Just PROPOSAL_STATUS_REJECTED
    | (Prelude.==) k "PROPOSAL_STATUS_ABORTED"
    = Prelude.Just PROPOSAL_STATUS_ABORTED
    | (Prelude.==) k "PROPOSAL_STATUS_WITHDRAWN"
    = Prelude.Just PROPOSAL_STATUS_WITHDRAWN
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ProposalStatus where
  minBound = PROPOSAL_STATUS_UNSPECIFIED
  maxBound = PROPOSAL_STATUS_WITHDRAWN
instance Prelude.Enum ProposalStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ProposalStatus: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum PROPOSAL_STATUS_UNSPECIFIED = 0
  fromEnum PROPOSAL_STATUS_SUBMITTED = 1
  fromEnum PROPOSAL_STATUS_ACCEPTED = 2
  fromEnum PROPOSAL_STATUS_REJECTED = 3
  fromEnum PROPOSAL_STATUS_ABORTED = 4
  fromEnum PROPOSAL_STATUS_WITHDRAWN = 5
  fromEnum
    (ProposalStatus'Unrecognized (ProposalStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ PROPOSAL_STATUS_WITHDRAWN
    = Prelude.error
        "ProposalStatus.succ: bad argument PROPOSAL_STATUS_WITHDRAWN. This value would be out of bounds."
  succ PROPOSAL_STATUS_UNSPECIFIED = PROPOSAL_STATUS_SUBMITTED
  succ PROPOSAL_STATUS_SUBMITTED = PROPOSAL_STATUS_ACCEPTED
  succ PROPOSAL_STATUS_ACCEPTED = PROPOSAL_STATUS_REJECTED
  succ PROPOSAL_STATUS_REJECTED = PROPOSAL_STATUS_ABORTED
  succ PROPOSAL_STATUS_ABORTED = PROPOSAL_STATUS_WITHDRAWN
  succ (ProposalStatus'Unrecognized _)
    = Prelude.error
        "ProposalStatus.succ: bad argument: unrecognized value"
  pred PROPOSAL_STATUS_UNSPECIFIED
    = Prelude.error
        "ProposalStatus.pred: bad argument PROPOSAL_STATUS_UNSPECIFIED. This value would be out of bounds."
  pred PROPOSAL_STATUS_SUBMITTED = PROPOSAL_STATUS_UNSPECIFIED
  pred PROPOSAL_STATUS_ACCEPTED = PROPOSAL_STATUS_SUBMITTED
  pred PROPOSAL_STATUS_REJECTED = PROPOSAL_STATUS_ACCEPTED
  pred PROPOSAL_STATUS_ABORTED = PROPOSAL_STATUS_REJECTED
  pred PROPOSAL_STATUS_WITHDRAWN = PROPOSAL_STATUS_ABORTED
  pred (ProposalStatus'Unrecognized _)
    = Prelude.error
        "ProposalStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ProposalStatus where
  fieldDefault = PROPOSAL_STATUS_UNSPECIFIED
instance Control.DeepSeq.NFData ProposalStatus where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Types_Fields.yesCount' @:: Lens' TallyResult Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.abstainCount' @:: Lens' TallyResult Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.noCount' @:: Lens' TallyResult Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.noWithVetoCount' @:: Lens' TallyResult Data.Text.Text@ -}
data TallyResult
  = TallyResult'_constructor {_TallyResult'yesCount :: !Data.Text.Text,
                              _TallyResult'abstainCount :: !Data.Text.Text,
                              _TallyResult'noCount :: !Data.Text.Text,
                              _TallyResult'noWithVetoCount :: !Data.Text.Text,
                              _TallyResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TallyResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TallyResult "yesCount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyResult'yesCount
           (\ x__ y__ -> x__ {_TallyResult'yesCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TallyResult "abstainCount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyResult'abstainCount
           (\ x__ y__ -> x__ {_TallyResult'abstainCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TallyResult "noCount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyResult'noCount
           (\ x__ y__ -> x__ {_TallyResult'noCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TallyResult "noWithVetoCount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyResult'noWithVetoCount
           (\ x__ y__ -> x__ {_TallyResult'noWithVetoCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message TallyResult where
  messageName _ = Data.Text.pack "cosmos.group.v1.TallyResult"
  packedMessageDescriptor _
    = "\n\
      \\vTallyResult\DC2\ESC\n\
      \\tyes_count\CAN\SOH \SOH(\tR\byesCount\DC2#\n\
      \\rabstain_count\CAN\STX \SOH(\tR\fabstainCount\DC2\EM\n\
      \\bno_count\CAN\ETX \SOH(\tR\anoCount\DC2+\n\
      \\DC2no_with_veto_count\CAN\EOT \SOH(\tR\SInoWithVetoCount:\EOT\136\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        yesCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "yes_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"yesCount")) ::
              Data.ProtoLens.FieldDescriptor TallyResult
        abstainCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "abstain_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"abstainCount")) ::
              Data.ProtoLens.FieldDescriptor TallyResult
        noCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"noCount")) ::
              Data.ProtoLens.FieldDescriptor TallyResult
        noWithVetoCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_with_veto_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"noWithVetoCount")) ::
              Data.ProtoLens.FieldDescriptor TallyResult
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, yesCount__field_descriptor),
           (Data.ProtoLens.Tag 2, abstainCount__field_descriptor),
           (Data.ProtoLens.Tag 3, noCount__field_descriptor),
           (Data.ProtoLens.Tag 4, noWithVetoCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TallyResult'_unknownFields
        (\ x__ y__ -> x__ {_TallyResult'_unknownFields = y__})
  defMessage
    = TallyResult'_constructor
        {_TallyResult'yesCount = Data.ProtoLens.fieldDefault,
         _TallyResult'abstainCount = Data.ProtoLens.fieldDefault,
         _TallyResult'noCount = Data.ProtoLens.fieldDefault,
         _TallyResult'noWithVetoCount = Data.ProtoLens.fieldDefault,
         _TallyResult'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TallyResult -> Data.ProtoLens.Encoding.Bytes.Parser TallyResult
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
                                       "yes_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"yesCount") y x)
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
                                       "abstain_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"abstainCount") y x)
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
                                       "no_count"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"noCount") y x)
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
                                       "no_with_veto_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"noWithVetoCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TallyResult"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"yesCount") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"abstainCount") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"noCount") _x
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
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"noWithVetoCount") _x
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
instance Control.DeepSeq.NFData TallyResult where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TallyResult'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TallyResult'yesCount x__)
                (Control.DeepSeq.deepseq
                   (_TallyResult'abstainCount x__)
                   (Control.DeepSeq.deepseq
                      (_TallyResult'noCount x__)
                      (Control.DeepSeq.deepseq (_TallyResult'noWithVetoCount x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Types_Fields.threshold' @:: Lens' ThresholdDecisionPolicy Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.windows' @:: Lens' ThresholdDecisionPolicy DecisionPolicyWindows@
         * 'Proto.Cosmos.Group.V1.Types_Fields.maybe'windows' @:: Lens' ThresholdDecisionPolicy (Prelude.Maybe DecisionPolicyWindows)@ -}
data ThresholdDecisionPolicy
  = ThresholdDecisionPolicy'_constructor {_ThresholdDecisionPolicy'threshold :: !Data.Text.Text,
                                          _ThresholdDecisionPolicy'windows :: !(Prelude.Maybe DecisionPolicyWindows),
                                          _ThresholdDecisionPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ThresholdDecisionPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ThresholdDecisionPolicy "threshold" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThresholdDecisionPolicy'threshold
           (\ x__ y__ -> x__ {_ThresholdDecisionPolicy'threshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThresholdDecisionPolicy "windows" DecisionPolicyWindows where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThresholdDecisionPolicy'windows
           (\ x__ y__ -> x__ {_ThresholdDecisionPolicy'windows = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ThresholdDecisionPolicy "maybe'windows" (Prelude.Maybe DecisionPolicyWindows) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThresholdDecisionPolicy'windows
           (\ x__ y__ -> x__ {_ThresholdDecisionPolicy'windows = y__}))
        Prelude.id
instance Data.ProtoLens.Message ThresholdDecisionPolicy where
  messageName _
    = Data.Text.pack "cosmos.group.v1.ThresholdDecisionPolicy"
  packedMessageDescriptor _
    = "\n\
      \\ETBThresholdDecisionPolicy\DC2\FS\n\
      \\tthreshold\CAN\SOH \SOH(\tR\tthreshold\DC2@\n\
      \\awindows\CAN\STX \SOH(\v2&.cosmos.group.v1.DecisionPolicyWindowsR\awindows:I\202\180-\RScosmos.group.v1.DecisionPolicy\138\231\176*\"cosmos-sdk/ThresholdDecisionPolicy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        threshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"threshold")) ::
              Data.ProtoLens.FieldDescriptor ThresholdDecisionPolicy
        windows__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "windows"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DecisionPolicyWindows)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'windows")) ::
              Data.ProtoLens.FieldDescriptor ThresholdDecisionPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, threshold__field_descriptor),
           (Data.ProtoLens.Tag 2, windows__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ThresholdDecisionPolicy'_unknownFields
        (\ x__ y__ -> x__ {_ThresholdDecisionPolicy'_unknownFields = y__})
  defMessage
    = ThresholdDecisionPolicy'_constructor
        {_ThresholdDecisionPolicy'threshold = Data.ProtoLens.fieldDefault,
         _ThresholdDecisionPolicy'windows = Prelude.Nothing,
         _ThresholdDecisionPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ThresholdDecisionPolicy
          -> Data.ProtoLens.Encoding.Bytes.Parser ThresholdDecisionPolicy
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
                                       "threshold"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"threshold") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "windows"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"windows") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ThresholdDecisionPolicy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"threshold") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'windows") _x
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
instance Control.DeepSeq.NFData ThresholdDecisionPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ThresholdDecisionPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ThresholdDecisionPolicy'threshold x__)
                (Control.DeepSeq.deepseq
                   (_ThresholdDecisionPolicy'windows x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Types_Fields.proposalId' @:: Lens' Vote Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Types_Fields.voter' @:: Lens' Vote Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.option' @:: Lens' Vote VoteOption@
         * 'Proto.Cosmos.Group.V1.Types_Fields.metadata' @:: Lens' Vote Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Types_Fields.submitTime' @:: Lens' Vote Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Group.V1.Types_Fields.maybe'submitTime' @:: Lens' Vote (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data Vote
  = Vote'_constructor {_Vote'proposalId :: !Data.Word.Word64,
                       _Vote'voter :: !Data.Text.Text,
                       _Vote'option :: !VoteOption,
                       _Vote'metadata :: !Data.Text.Text,
                       _Vote'submitTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                       _Vote'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Vote where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Vote "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'proposalId (\ x__ y__ -> x__ {_Vote'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "voter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'voter (\ x__ y__ -> x__ {_Vote'voter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "option" VoteOption where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'option (\ x__ y__ -> x__ {_Vote'option = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'metadata (\ x__ y__ -> x__ {_Vote'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "submitTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'submitTime (\ x__ y__ -> x__ {_Vote'submitTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Vote "maybe'submitTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'submitTime (\ x__ y__ -> x__ {_Vote'submitTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message Vote where
  messageName _ = Data.Text.pack "cosmos.group.v1.Vote"
  packedMessageDescriptor _
    = "\n\
      \\EOTVote\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC2.\n\
      \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC23\n\
      \\ACKoption\CAN\ETX \SOH(\SO2\ESC.cosmos.group.v1.VoteOptionR\ACKoption\DC2\SUB\n\
      \\bmetadata\CAN\EOT \SOH(\tR\bmetadata\DC2J\n\
      \\vsubmit_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \submitTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposalId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposalId")) ::
              Data.ProtoLens.FieldDescriptor Vote
        voter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"voter")) ::
              Data.ProtoLens.FieldDescriptor Vote
        option__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "option"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor VoteOption)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"option")) ::
              Data.ProtoLens.FieldDescriptor Vote
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor Vote
        submitTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "submit_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'submitTime")) ::
              Data.ProtoLens.FieldDescriptor Vote
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, voter__field_descriptor),
           (Data.ProtoLens.Tag 3, option__field_descriptor),
           (Data.ProtoLens.Tag 4, metadata__field_descriptor),
           (Data.ProtoLens.Tag 5, submitTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Vote'_unknownFields
        (\ x__ y__ -> x__ {_Vote'_unknownFields = y__})
  defMessage
    = Vote'_constructor
        {_Vote'proposalId = Data.ProtoLens.fieldDefault,
         _Vote'voter = Data.ProtoLens.fieldDefault,
         _Vote'option = Data.ProtoLens.fieldDefault,
         _Vote'metadata = Data.ProtoLens.fieldDefault,
         _Vote'submitTime = Prelude.Nothing, _Vote'_unknownFields = []}
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proposal_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposalId") y x)
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
                                       "voter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"voter") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "option"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"option") y x)
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
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "submit_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"submitTime") y x)
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
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"proposalId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"voter") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"option") _x
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
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x
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
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'submitTime") _x
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
instance Control.DeepSeq.NFData Vote where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Vote'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Vote'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_Vote'voter x__)
                   (Control.DeepSeq.deepseq
                      (_Vote'option x__)
                      (Control.DeepSeq.deepseq
                         (_Vote'metadata x__)
                         (Control.DeepSeq.deepseq (_Vote'submitTime x__) ())))))
newtype VoteOption'UnrecognizedValue
  = VoteOption'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data VoteOption
  = VOTE_OPTION_UNSPECIFIED |
    VOTE_OPTION_YES |
    VOTE_OPTION_ABSTAIN |
    VOTE_OPTION_NO |
    VOTE_OPTION_NO_WITH_VETO |
    VoteOption'Unrecognized !VoteOption'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum VoteOption where
  maybeToEnum 0 = Prelude.Just VOTE_OPTION_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just VOTE_OPTION_YES
  maybeToEnum 2 = Prelude.Just VOTE_OPTION_ABSTAIN
  maybeToEnum 3 = Prelude.Just VOTE_OPTION_NO
  maybeToEnum 4 = Prelude.Just VOTE_OPTION_NO_WITH_VETO
  maybeToEnum k
    = Prelude.Just
        (VoteOption'Unrecognized
           (VoteOption'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum VOTE_OPTION_UNSPECIFIED = "VOTE_OPTION_UNSPECIFIED"
  showEnum VOTE_OPTION_YES = "VOTE_OPTION_YES"
  showEnum VOTE_OPTION_ABSTAIN = "VOTE_OPTION_ABSTAIN"
  showEnum VOTE_OPTION_NO = "VOTE_OPTION_NO"
  showEnum VOTE_OPTION_NO_WITH_VETO = "VOTE_OPTION_NO_WITH_VETO"
  showEnum (VoteOption'Unrecognized (VoteOption'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "VOTE_OPTION_UNSPECIFIED"
    = Prelude.Just VOTE_OPTION_UNSPECIFIED
    | (Prelude.==) k "VOTE_OPTION_YES" = Prelude.Just VOTE_OPTION_YES
    | (Prelude.==) k "VOTE_OPTION_ABSTAIN"
    = Prelude.Just VOTE_OPTION_ABSTAIN
    | (Prelude.==) k "VOTE_OPTION_NO" = Prelude.Just VOTE_OPTION_NO
    | (Prelude.==) k "VOTE_OPTION_NO_WITH_VETO"
    = Prelude.Just VOTE_OPTION_NO_WITH_VETO
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded VoteOption where
  minBound = VOTE_OPTION_UNSPECIFIED
  maxBound = VOTE_OPTION_NO_WITH_VETO
instance Prelude.Enum VoteOption where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum VoteOption: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum VOTE_OPTION_UNSPECIFIED = 0
  fromEnum VOTE_OPTION_YES = 1
  fromEnum VOTE_OPTION_ABSTAIN = 2
  fromEnum VOTE_OPTION_NO = 3
  fromEnum VOTE_OPTION_NO_WITH_VETO = 4
  fromEnum (VoteOption'Unrecognized (VoteOption'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ VOTE_OPTION_NO_WITH_VETO
    = Prelude.error
        "VoteOption.succ: bad argument VOTE_OPTION_NO_WITH_VETO. This value would be out of bounds."
  succ VOTE_OPTION_UNSPECIFIED = VOTE_OPTION_YES
  succ VOTE_OPTION_YES = VOTE_OPTION_ABSTAIN
  succ VOTE_OPTION_ABSTAIN = VOTE_OPTION_NO
  succ VOTE_OPTION_NO = VOTE_OPTION_NO_WITH_VETO
  succ (VoteOption'Unrecognized _)
    = Prelude.error "VoteOption.succ: bad argument: unrecognized value"
  pred VOTE_OPTION_UNSPECIFIED
    = Prelude.error
        "VoteOption.pred: bad argument VOTE_OPTION_UNSPECIFIED. This value would be out of bounds."
  pred VOTE_OPTION_YES = VOTE_OPTION_UNSPECIFIED
  pred VOTE_OPTION_ABSTAIN = VOTE_OPTION_YES
  pred VOTE_OPTION_NO = VOTE_OPTION_ABSTAIN
  pred VOTE_OPTION_NO_WITH_VETO = VOTE_OPTION_NO
  pred (VoteOption'Unrecognized _)
    = Prelude.error "VoteOption.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault VoteOption where
  fieldDefault = VOTE_OPTION_UNSPECIFIED
instance Control.DeepSeq.NFData VoteOption where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\ESCcosmos/group/v1/types.proto\DC2\SIcosmos.group.v1\SUB\DC4gogoproto/gogo.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\EMgoogle/protobuf/any.proto\SUB\DC1amino/amino.proto\"\182\SOH\n\
    \\ACKMember\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SYN\n\
    \\ACKweight\CAN\STX \SOH(\tR\ACKweight\DC2\SUB\n\
    \\bmetadata\CAN\ETX \SOH(\tR\bmetadata\DC2D\n\
    \\badded_at\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\aaddedAtB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\"w\n\
    \\rMemberRequest\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SYN\n\
    \\ACKweight\CAN\STX \SOH(\tR\ACKweight\DC2\SUB\n\
    \\bmetadata\CAN\ETX \SOH(\tR\bmetadata\"\196\SOH\n\
    \\ETBThresholdDecisionPolicy\DC2\FS\n\
    \\tthreshold\CAN\SOH \SOH(\tR\tthreshold\DC2@\n\
    \\awindows\CAN\STX \SOH(\v2&.cosmos.group.v1.DecisionPolicyWindowsR\awindows:I\202\180-\RScosmos.group.v1.DecisionPolicy\138\231\176*\"cosmos-sdk/ThresholdDecisionPolicy\"\200\SOH\n\
    \\CANPercentageDecisionPolicy\DC2\RS\n\
    \\n\
    \percentage\CAN\SOH \SOH(\tR\n\
    \percentage\DC2@\n\
    \\awindows\CAN\STX \SOH(\v2&.cosmos.group.v1.DecisionPolicyWindowsR\awindows:J\202\180-\RScosmos.group.v1.DecisionPolicy\138\231\176*#cosmos-sdk/PercentageDecisionPolicy\"\194\SOH\n\
    \\NAKDecisionPolicyWindows\DC2M\n\
    \\rvoting_period\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\fvotingPeriodB\r\200\222\US\NUL\152\223\US\SOH\168\231\176*\SOH\DC2Z\n\
    \\DC4min_execution_period\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\DC2minExecutionPeriodB\r\200\222\US\NUL\152\223\US\SOH\168\231\176*\SOH\"\238\SOH\n\
    \\tGroupInfo\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\EOTR\STXid\DC2.\n\
    \\ENQadmin\CAN\STX \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
    \\bmetadata\CAN\ETX \SOH(\tR\bmetadata\DC2\CAN\n\
    \\aversion\CAN\EOT \SOH(\EOTR\aversion\DC2!\n\
    \\ftotal_weight\CAN\ENQ \SOH(\tR\vtotalWeight\DC2H\n\
    \\n\
    \created_at\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\tcreatedAtB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\"Y\n\
    \\vGroupMember\DC2\EM\n\
    \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId\DC2/\n\
    \\ACKmember\CAN\STX \SOH(\v2\ETB.cosmos.group.v1.MemberR\ACKmember\"\253\STX\n\
    \\SIGroupPolicyInfo\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\EM\n\
    \\bgroup_id\CAN\STX \SOH(\EOTR\agroupId\DC2.\n\
    \\ENQadmin\CAN\ETX \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
    \\bmetadata\CAN\EOT \SOH(\tR\bmetadata\DC2\CAN\n\
    \\aversion\CAN\ENQ \SOH(\EOTR\aversion\DC2a\n\
    \\SIdecision_policy\CAN\ACK \SOH(\v2\DC4.google.protobuf.AnyR\SOdecisionPolicyB\"\202\180-\RScosmos.group.v1.DecisionPolicy\DC2H\n\
    \\n\
    \created_at\CAN\a \SOH(\v2\SUB.google.protobuf.TimestampR\tcreatedAtB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\SOH\"\254\ENQ\n\
    \\bProposal\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\EOTR\STXid\DC2J\n\
    \\DC4group_policy_address\CAN\STX \SOH(\tR\DC2groupPolicyAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
    \\bmetadata\CAN\ETX \SOH(\tR\bmetadata\DC26\n\
    \\tproposers\CAN\EOT \ETX(\tR\tproposersB\CAN\210\180-\DC4cosmos.AddressString\DC2J\n\
    \\vsubmit_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \submitTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2#\n\
    \\rgroup_version\CAN\ACK \SOH(\EOTR\fgroupVersion\DC20\n\
    \\DC4group_policy_version\CAN\a \SOH(\EOTR\DC2groupPolicyVersion\DC27\n\
    \\ACKstatus\CAN\b \SOH(\SO2\US.cosmos.group.v1.ProposalStatusR\ACKstatus\DC2U\n\
    \\DC2final_tally_result\CAN\t \SOH(\v2\FS.cosmos.group.v1.TallyResultR\DLEfinalTallyResultB\t\200\222\US\NUL\168\231\176*\SOH\DC2U\n\
    \\DC1voting_period_end\CAN\n\
    \ \SOH(\v2\SUB.google.protobuf.TimestampR\SIvotingPeriodEndB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2P\n\
    \\SIexecutor_result\CAN\v \SOH(\SO2'.cosmos.group.v1.ProposalExecutorResultR\SOexecutorResult\DC20\n\
    \\bmessages\CAN\f \ETX(\v2\DC4.google.protobuf.AnyR\bmessages\DC2\DC4\n\
    \\ENQtitle\CAN\r \SOH(\tR\ENQtitle\DC2\CAN\n\
    \\asummary\CAN\SO \SOH(\tR\asummary:\EOT\136\160\US\NUL\"\157\SOH\n\
    \\vTallyResult\DC2\ESC\n\
    \\tyes_count\CAN\SOH \SOH(\tR\byesCount\DC2#\n\
    \\rabstain_count\CAN\STX \SOH(\tR\fabstainCount\DC2\EM\n\
    \\bno_count\CAN\ETX \SOH(\tR\anoCount\DC2+\n\
    \\DC2no_with_veto_count\CAN\EOT \SOH(\tR\SInoWithVetoCount:\EOT\136\160\US\NUL\"\244\SOH\n\
    \\EOTVote\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC2.\n\
    \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC23\n\
    \\ACKoption\CAN\ETX \SOH(\SO2\ESC.cosmos.group.v1.VoteOptionR\ACKoption\DC2\SUB\n\
    \\bmetadata\CAN\EOT \SOH(\tR\bmetadata\DC2J\n\
    \\vsubmit_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \submitTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH*\143\SOH\n\
    \\n\
    \VoteOption\DC2\ESC\n\
    \\ETBVOTE_OPTION_UNSPECIFIED\DLE\NUL\DC2\DC3\n\
    \\SIVOTE_OPTION_YES\DLE\SOH\DC2\ETB\n\
    \\DC3VOTE_OPTION_ABSTAIN\DLE\STX\DC2\DC2\n\
    \\SOVOTE_OPTION_NO\DLE\ETX\DC2\FS\n\
    \\CANVOTE_OPTION_NO_WITH_VETO\DLE\EOT\SUB\EOT\136\163\RS\NUL*\206\SOH\n\
    \\SOProposalStatus\DC2\US\n\
    \\ESCPROPOSAL_STATUS_UNSPECIFIED\DLE\NUL\DC2\GS\n\
    \\EMPROPOSAL_STATUS_SUBMITTED\DLE\SOH\DC2\FS\n\
    \\CANPROPOSAL_STATUS_ACCEPTED\DLE\STX\DC2\FS\n\
    \\CANPROPOSAL_STATUS_REJECTED\DLE\ETX\DC2\ESC\n\
    \\ETBPROPOSAL_STATUS_ABORTED\DLE\EOT\DC2\GS\n\
    \\EMPROPOSAL_STATUS_WITHDRAWN\DLE\ENQ\SUB\EOT\136\163\RS\NUL*\186\SOH\n\
    \\SYNProposalExecutorResult\DC2(\n\
    \$PROPOSAL_EXECUTOR_RESULT_UNSPECIFIED\DLE\NUL\DC2$\n\
    \ PROPOSAL_EXECUTOR_RESULT_NOT_RUN\DLE\SOH\DC2$\n\
    \ PROPOSAL_EXECUTOR_RESULT_SUCCESS\DLE\STX\DC2$\n\
    \ PROPOSAL_EXECUTOR_RESULT_FAILURE\DLE\ETX\SUB\EOT\136\163\RS\NULB&Z$github.com/cosmos/cosmos-sdk/x/groupJ\201j\n\
    \\a\DC2\ENQ\SOH\NUL\210\STX\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.46\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ETX\NUL\CAN\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL;\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ENQ\NUL;\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\a\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\t\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\n\
    \\NUL#\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\v\NUL#\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\f\NUL\ESC\n\
    \z\n\
    \\STX\EOT\NUL\DC2\EOT\DLE\NUL\GS\SOH\SUBn Member represents a group member with an account address,\n\
    \ non-zero weight, metadata and added_at timestamp.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DLE\b\SO\n\
    \7\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC2\STXF\SUB* address is the member's account address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC2\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC2\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\DC2\NAKE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\DC2\SYND\n\
    \R\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\NAK\STX\DC4\SUBE weight is the member's voting weight that should be greater than 0.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\NAK\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\NAK\DC2\DC3\n\
    \I\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\CAN\STX\SYN\SUB< metadata is any arbitrary metadata attached to the member.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\CAN\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\CAN\DC4\NAK\n\
    \K\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\ESC\STX\FS`\SUB= added_at is a timestamp specifying when a member was added.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\ESC\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\ESC\FS$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\ESC'(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX\FS\ACK_\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\233\251\ETX\DC2\ETX\FS\a#\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\ETX\b\245\140\166\ENQ\DC2\ETX\FS%B\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\242\251\ETX\DC2\ETX\FSD^\n\
    \\202\SOH\n\
    \\STX\EOT\SOH\DC2\EOT\"\NUL+\SOH\SUB\189\SOH MemberRequest represents a group member to be used in Msg server requests.\n\
    \ Contrary to `Member`, it doesn't have any `added_at` field\n\
    \ since this field cannot be set as part of requests.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\"\b\NAK\n\
    \7\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX$\STXF\SUB* address is the member's account address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX$\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX$\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX$\NAKE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\202\214\ENQ\DC2\ETX$\SYND\n\
    \R\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX'\STX\DC4\SUBE weight is the member's voting weight that should be greater than 0.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX'\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX'\t\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX'\DC2\DC3\n\
    \I\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX*\STX\SYN\SUB< metadata is any arbitrary metadata attached to the member.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX*\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX*\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX*\DC4\NAK\n\
    \\199\STX\n\
    \\STX\EOT\STX\DC2\EOT3\NUL=\SOH\SUB\186\STX ThresholdDecisionPolicy is a decision policy where a proposal passes when it\n\
    \ satisfies the two following conditions:\n\
    \ 1. The sum of all `YES` voter's weights is greater or equal than the defined\n\
    \    `threshold`.\n\
    \ 2. The voting and execution periods of the proposal respect the parameters\n\
    \    given by `windows`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX3\b\US\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX4\STXP\n\
    \\SO\n\
    \\a\EOT\STX\a\201\214\ENQ\NUL\DC2\ETX4\STXP\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX5\STXT\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETX5\STXT\n\
    \|\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX9\STX\ETB\SUBo threshold is the minimum weighted sum of `YES` votes that must be met or\n\
    \ exceeded for a proposal to succeed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX9\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX9\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX9\NAK\SYN\n\
    \N\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX<\STX$\SUBA windows defines the different windows for voting and execution.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX<\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX<\CAN\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX<\"#\n\
    \\236\STX\n\
    \\STX\EOT\ETX\DC2\EOTE\NULO\SOH\SUB\223\STX PercentageDecisionPolicy is a decision policy where a proposal passes when\n\
    \ it satisfies the two following conditions:\n\
    \ 1. The percentage of all `YES` voters' weights out of the total group weight\n\
    \    is greater or equal than the given `percentage`.\n\
    \ 2. The voting and execution periods of the proposal respect the parameters\n\
    \    given by `windows`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXE\b \n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\a\DC2\ETXF\STXP\n\
    \\SO\n\
    \\a\EOT\ETX\a\201\214\ENQ\NUL\DC2\ETXF\STXP\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\a\DC2\ETXG\STXU\n\
    \\SO\n\
    \\a\EOT\ETX\a\241\140\166\ENQ\DC2\ETXG\STXU\n\
    \|\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXK\STX\CAN\SUBo percentage is the minimum percentage of the weighted sum of `YES` votes must\n\
    \ meet for a proposal to succeed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXK\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXK\SYN\ETB\n\
    \N\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXN\STX$\SUBA windows defines the different windows for voting and execution.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXN\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXN\CAN\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXN\"#\n\
    \[\n\
    \\STX\EOT\EOT\DC2\EOTR\NULe\SOH\SUBO DecisionPolicyWindows defines the different windows for voting and execution.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXR\b\GS\n\
    \\160\SOH\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOTU\STXVd\SUB\145\SOH voting_period is the duration from submission of a proposal to the end of voting period\n\
    \ Within this times votes can be submitted with MsgVote.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETXU\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXU\ESC(\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXU+,\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXV\ACKc\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\243\251\ETX\DC2\ETXV\a%\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\233\251\ETX\DC2\ETXV'C\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\NUL\b\245\140\166\ENQ\DC2\ETXVEb\n\
    \\160\ENQ\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOTc\STXdd\SUB\145\ENQ min_execution_period is the minimum duration after the proposal submission\n\
    \ where members can start sending MsgExec. This means that the window for\n\
    \ sending a MsgExec transaction is:\n\
    \ `[ submission + min_execution_period ; submission + voting_period + max_execution_period]`\n\
    \ where max_execution_period is a app-specific config, defined in the keeper.\n\
    \ If not set, min_execution_period will default to 0.\n\
    \\n\
    \ Please make sure to set a `min_execution_period` that is smaller than\n\
    \ `voting_period + max_execution_period`, or else the above execution window\n\
    \ is empty, meaning that all proposals created with this decision policy\n\
    \ won't be able to be executed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETXc\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXc\ESC/\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXc23\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ETXd\ACKc\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\243\251\ETX\DC2\ETXd\a%\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\233\251\ETX\DC2\ETXd'C\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\SOH\b\245\140\166\ENQ\DC2\ETXdEb\n\
    \P\n\
    \\STX\ENQ\NUL\DC2\EOTh\NULv\SOH\SUBD VoteOption enumerates the valid vote options for a given proposal.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETXh\ENQ\SI\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\ETX\DC2\ETXi\STX1\n\
    \\r\n\
    \\ACK\ENQ\NUL\ETX\177\228\ETX\DC2\ETXi\STX1\n\
    \f\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETXm\STX\RS\SUBY VOTE_OPTION_UNSPECIFIED defines an unspecified vote option which will\n\
    \ return an error.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETXm\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETXm\FS\GS\n\
    \9\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETXo\STX\SYN\SUB, VOTE_OPTION_YES defines a yes vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETXo\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETXo\DC4\NAK\n\
    \B\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETXq\STX\SUB\SUB5 VOTE_OPTION_ABSTAIN defines an abstain vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETXq\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETXq\CAN\EM\n\
    \7\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETXs\STX\NAK\SUB* VOTE_OPTION_NO defines a no vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETXs\STX\DLE\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETXs\DC3\DC4\n\
    \K\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETXu\STX\US\SUB> VOTE_OPTION_NO_WITH_VETO defines a no with veto vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETXu\STX\SUB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETXu\GS\RS\n\
    \_\n\
    \\STX\EOT\ENQ\DC2\ENQ}\NUL\148\SOH\SOH\SUBG GroupInfo represents the high-level on-chain information for a group.\n\
    \2\t\n\
    \ State\n\
    \\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX}\b\DC1\n\
    \0\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX\DEL\STX\DLE\SUB# id is the unique ID of the group.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX\DEL\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX\DEL\t\v\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX\DEL\SO\SI\n\
    \B\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\130\SOH\STXD\SUB4 admin is the account address of the group's admin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\EOT\130\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\130\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\130\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\b\DC2\EOT\130\SOH\DC3C\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\SOH\b\202\214\ENQ\DC2\EOT\130\SOH\DC4B\n\
    \\194\SOH\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\134\SOH\STX\SYN\SUB\179\SOH metadata is any arbitrary metadata to attached to the group.\n\
    \ the recommended format of the metadata is to be found here: https://docs.cosmos.network/v0.47/modules/group#group-1\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\EOT\134\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\134\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\134\SOH\DC4\NAK\n\
    \\168\STX\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\EOT\140\SOH\STX\NAK\SUB\153\STX version is used to track changes to a group's membership structure that\n\
    \ would break existing proposals. Whenever any members weight is changed,\n\
    \ or any member is added or removed this version is incremented and will\n\
    \ cause proposals based on older versions of this group to fail\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\EOT\140\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\EOT\140\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\EOT\140\SOH\DC3\DC4\n\
    \F\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\EOT\143\SOH\STX\SUB\SUB8 total_weight is the sum of the group members' weights.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\EOT\143\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\EOT\143\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\EOT\143\SOH\CAN\EM\n\
    \P\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\ACK\146\SOH\STX\147\SOH`\SUB@ created_at is a timestamp specifying when a group was created.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ACK\DC2\EOT\146\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\EOT\146\SOH\FS&\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\EOT\146\SOH)*\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\b\DC2\EOT\147\SOH\ACK_\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\ENQ\b\233\251\ETX\DC2\EOT\147\SOH\a#\n\
    \\DC1\n\
    \\t\EOT\ENQ\STX\ENQ\b\245\140\166\ENQ\DC2\EOT\147\SOH%B\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\ENQ\b\242\251\ETX\DC2\EOT\147\SOHD^\n\
    \U\n\
    \\STX\EOT\ACK\DC2\ACK\151\SOH\NUL\157\SOH\SOH\SUBG GroupMember represents the relationship between a group and a member.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\151\SOH\b\DC3\n\
    \7\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\153\SOH\STX\SYN\SUB) group_id is the unique ID of the group.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\153\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\153\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\153\SOH\DC4\NAK\n\
    \*\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\156\SOH\STX\DC4\SUB\FS member is the member data.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\EOT\156\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\156\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\156\SOH\DC2\DC3\n\
    \b\n\
    \\STX\EOT\a\DC2\ACK\160\SOH\NUL\188\SOH\SOH\SUBT GroupPolicyInfo represents the high-level on-chain information for a group policy.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\160\SOH\b\ETB\n\
    \\v\n\
    \\ETX\EOT\a\a\DC2\EOT\161\SOH\STX,\n\
    \\SO\n\
    \\ACK\EOT\a\a\141\244\ETX\DC2\EOT\161\SOH\STX,\n\
    \\v\n\
    \\ETX\EOT\a\a\DC2\EOT\162\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\a\a\129\244\ETX\DC2\EOT\162\SOH\STX-\n\
    \?\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\165\SOH\STXF\SUB1 address is the account address of group policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\165\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\165\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\165\SOH\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\EOT\165\SOH\NAKE\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\202\214\ENQ\DC2\EOT\165\SOH\SYND\n\
    \7\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\168\SOH\STX\SYN\SUB) group_id is the unique ID of the group.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\EOT\168\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\168\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\168\SOH\DC4\NAK\n\
    \@\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\171\SOH\STXD\SUB2 admin is the account address of the group admin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\EOT\171\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\171\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\171\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\b\DC2\EOT\171\SOH\DC3C\n\
    \\DLE\n\
    \\b\EOT\a\STX\STX\b\202\214\ENQ\DC2\EOT\171\SOH\DC4B\n\
    \\209\SOH\n\
    \\EOT\EOT\a\STX\ETX\DC2\EOT\176\SOH\STX\SYN\SUB\194\SOH metadata is any arbitrary metadata attached to the group policy.\n\
    \ the recommended format of the metadata is to be found here:\n\
    \ https://docs.cosmos.network/v0.47/modules/group#decision-policy-1\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\EOT\176\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\EOT\176\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\EOT\176\SOH\DC4\NAK\n\
    \\149\SOH\n\
    \\EOT\EOT\a\STX\EOT\DC2\EOT\180\SOH\STX\NAK\SUB\134\SOH version is used to track changes to a group's GroupPolicyInfo structure that\n\
    \ would create a different result on a running proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ENQ\DC2\EOT\180\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\EOT\180\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\EOT\180\SOH\DC3\DC4\n\
    \M\n\
    \\EOT\EOT\a\STX\ENQ\DC2\EOT\183\SOH\STXp\SUB? decision_policy specifies the group policy's decision policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\ACK\DC2\EOT\183\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\SOH\DC2\EOT\183\SOH\SYN%\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\ETX\DC2\EOT\183\SOH()\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\b\DC2\EOT\183\SOH*o\n\
    \\DLE\n\
    \\b\EOT\a\STX\ENQ\b\201\214\ENQ\DC2\EOT\183\SOH+n\n\
    \W\n\
    \\EOT\EOT\a\STX\ACK\DC2\ACK\186\SOH\STX\187\SOH`\SUBG created_at is a timestamp specifying when a group policy was created.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\ACK\DC2\EOT\186\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\SOH\DC2\EOT\186\SOH\FS&\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\ETX\DC2\EOT\186\SOH)*\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\b\DC2\EOT\187\SOH\ACK_\n\
    \\DLE\n\
    \\b\EOT\a\STX\ACK\b\233\251\ETX\DC2\EOT\187\SOH\a#\n\
    \\DC1\n\
    \\t\EOT\a\STX\ACK\b\245\140\166\ENQ\DC2\EOT\187\SOH%B\n\
    \\DLE\n\
    \\b\EOT\a\STX\ACK\b\242\251\ETX\DC2\EOT\187\SOHD^\n\
    \\157\STX\n\
    \\STX\EOT\b\DC2\ACK\194\SOH\NUL\129\STX\SOH\SUB\142\STX Proposal defines a group proposal. Any member of a group can submit a proposal\n\
    \ for a group policy to decide upon.\n\
    \ A proposal consists of a set of `sdk.Msg`s that will be executed if the proposal\n\
    \ passes as well as some optional metadata associated with the proposal.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\194\SOH\b\DLE\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\195\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\b\a\129\244\ETX\DC2\EOT\195\SOH\STX-\n\
    \4\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\198\SOH\STX\DLE\SUB& id is the unique id of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\198\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\198\SOH\t\v\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\198\SOH\SO\SI\n\
    \L\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\201\SOH\STXS\SUB> group_policy_address is the account address of group policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\201\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\201\SOH\t\GS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\201\SOH !\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\b\DC2\EOT\201\SOH\"R\n\
    \\DLE\n\
    \\b\EOT\b\STX\SOH\b\202\214\ENQ\DC2\EOT\201\SOH#Q\n\
    \\198\SOH\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\206\SOH\STX\SYN\SUB\183\SOH metadata is any arbitrary metadata attached to the proposal.\n\
    \ the recommended format of the metadata is to be found here:\n\
    \ https://docs.cosmos.network/v0.47/modules/group#proposal-4\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\EOT\206\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\206\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\206\SOH\DC4\NAK\n\
    \E\n\
    \\EOT\EOT\b\STX\ETX\DC2\EOT\209\SOH\STXQ\SUB7 proposers are the account addresses of the proposers.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\EOT\DC2\EOT\209\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\EOT\209\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\209\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\209\SOH\RS\US\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\b\DC2\EOT\209\SOH P\n\
    \\DLE\n\
    \\b\EOT\b\STX\ETX\b\202\214\ENQ\DC2\EOT\209\SOH!O\n\
    \V\n\
    \\EOT\EOT\b\STX\EOT\DC2\ACK\212\SOH\STX\213\SOH`\SUBF submit_time is a timestamp specifying when a proposal was submitted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ACK\DC2\EOT\212\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\EOT\212\SOH\FS'\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\EOT\212\SOH*+\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\b\DC2\EOT\213\SOH\ACK_\n\
    \\DLE\n\
    \\b\EOT\b\STX\EOT\b\233\251\ETX\DC2\EOT\213\SOH\a#\n\
    \\DC1\n\
    \\t\EOT\b\STX\EOT\b\245\140\166\ENQ\DC2\EOT\213\SOH%B\n\
    \\DLE\n\
    \\b\EOT\b\STX\EOT\b\242\251\ETX\DC2\EOT\213\SOHD^\n\
    \\138\SOH\n\
    \\EOT\EOT\b\STX\ENQ\DC2\EOT\217\SOH\STX\ESC\SUB| group_version tracks the version of the group at proposal submission.\n\
    \ This field is here for informational purposes only.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\ENQ\DC2\EOT\217\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\SOH\DC2\EOT\217\SOH\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\ETX\DC2\EOT\217\SOH\EM\SUB\n\
    \\158\STX\n\
    \\EOT\EOT\b\STX\ACK\DC2\EOT\223\SOH\STX\"\SUB\143\STX group_policy_version tracks the version of the group policy at proposal submission.\n\
    \ When a decision policy is changed, existing proposals from previous policy\n\
    \ versions will become invalid with the `ABORTED` status.\n\
    \ This field is here for informational purposes only.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\ENQ\DC2\EOT\223\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\SOH\DC2\EOT\223\SOH\t\GS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\ETX\DC2\EOT\223\SOH !\n\
    \x\n\
    \\EOT\EOT\b\STX\a\DC2\EOT\226\SOH\STX\FS\SUBj status represents the high level position in the life cycle of the proposal. Initial value is Submitted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\a\ACK\DC2\EOT\226\SOH\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\b\STX\a\SOH\DC2\EOT\226\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\a\ETX\DC2\EOT\226\SOH\SUB\ESC\n\
    \\252\SOH\n\
    \\EOT\EOT\b\STX\b\DC2\EOT\232\SOH\STXc\SUB\237\SOH final_tally_result contains the sums of all weighted votes for this\n\
    \ proposal for each vote option. It is empty at submission, and only\n\
    \ populated after tallying, at voting period end or at proposal execution,\n\
    \ whichever happens first.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\b\ACK\DC2\EOT\232\SOH\STX\r\n\
    \\r\n\
    \\ENQ\EOT\b\STX\b\SOH\DC2\EOT\232\SOH\SO \n\
    \\r\n\
    \\ENQ\EOT\b\STX\b\ETX\DC2\EOT\232\SOH#$\n\
    \\r\n\
    \\ENQ\EOT\b\STX\b\b\DC2\EOT\232\SOH%b\n\
    \\DLE\n\
    \\b\EOT\b\STX\b\b\233\251\ETX\DC2\EOT\232\SOH&B\n\
    \\DC1\n\
    \\t\EOT\b\STX\b\b\245\140\166\ENQ\DC2\EOT\232\SOHDa\n\
    \\203\STX\n\
    \\EOT\EOT\b\STX\t\DC2\ACK\239\SOH\STX\240\SOH`\SUB\186\STX voting_period_end is the timestamp before which voting must be done.\n\
    \ Unless a successful MsgExec is called before (to execute a proposal whose\n\
    \ tally is successful before the voting period ends), tallying will be done\n\
    \ at this point, and the `final_tally_result`and `status` fields will be\n\
    \ accordingly updated.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\t\ACK\DC2\EOT\239\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\t\SOH\DC2\EOT\239\SOH\FS-\n\
    \\r\n\
    \\ENQ\EOT\b\STX\t\ETX\DC2\EOT\239\SOH02\n\
    \\r\n\
    \\ENQ\EOT\b\STX\t\b\DC2\EOT\240\SOH\ACK_\n\
    \\DLE\n\
    \\b\EOT\b\STX\t\b\233\251\ETX\DC2\EOT\240\SOH\a#\n\
    \\DC1\n\
    \\t\EOT\b\STX\t\b\245\140\166\ENQ\DC2\EOT\240\SOH%B\n\
    \\DLE\n\
    \\b\EOT\b\STX\t\b\242\251\ETX\DC2\EOT\240\SOHD^\n\
    \g\n\
    \\EOT\EOT\b\STX\n\
    \\DC2\EOT\243\SOH\STX.\SUBY executor_result is the final result of the proposal execution. Initial value is NotRun.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\n\
    \\ACK\DC2\EOT\243\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\n\
    \\SOH\DC2\EOT\243\SOH\EM(\n\
    \\r\n\
    \\ENQ\EOT\b\STX\n\
    \\ETX\DC2\EOT\243\SOH+-\n\
    \^\n\
    \\EOT\EOT\b\STX\v\DC2\EOT\246\SOH\STX-\SUBP messages is a list of `sdk.Msg`s that will be executed if the proposal passes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\v\EOT\DC2\EOT\246\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\v\ACK\DC2\EOT\246\SOH\v\RS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\v\SOH\DC2\EOT\246\SOH\US'\n\
    \\r\n\
    \\ENQ\EOT\b\STX\v\ETX\DC2\EOT\246\SOH*,\n\
    \K\n\
    \\EOT\EOT\b\STX\f\DC2\EOT\251\SOH\STX\DC4\SUB= title is the title of the proposal\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\f\ENQ\DC2\EOT\251\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\f\SOH\DC2\EOT\251\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\b\STX\f\ETX\DC2\EOT\251\SOH\DC1\DC3\n\
    \S\n\
    \\EOT\EOT\b\STX\r\DC2\EOT\128\STX\STX\SYN\SUBE summary is a short summary of the proposal\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\r\ENQ\DC2\EOT\128\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\r\SOH\DC2\EOT\128\STX\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\b\STX\r\ETX\DC2\EOT\128\STX\DC3\NAK\n\
    \9\n\
    \\STX\ENQ\SOH\DC2\ACK\132\STX\NUL\156\STX\SOH\SUB+ ProposalStatus defines proposal statuses.\n\
    \\n\
    \\v\n\
    \\ETX\ENQ\SOH\SOH\DC2\EOT\132\STX\ENQ\DC3\n\
    \\v\n\
    \\ETX\ENQ\SOH\ETX\DC2\EOT\133\STX\STX1\n\
    \\SO\n\
    \\ACK\ENQ\SOH\ETX\177\228\ETX\DC2\EOT\133\STX\STX1\n\
    \:\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\EOT\136\STX\STX\"\SUB, An empty value is invalid and not allowed.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\EOT\136\STX\STX\GS\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\EOT\136\STX !\n\
    \<\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\EOT\139\STX\STX \SUB. Initial status of a proposal when submitted.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\EOT\139\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\EOT\139\STX\RS\US\n\
    \\131\SOH\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\EOT\143\STX\STX\US\SUBu Final status of a proposal when the final tally is done and the outcome\n\
    \ passes the group policy's decision policy.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\EOT\143\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\EOT\143\STX\GS\RS\n\
    \\139\SOH\n\
    \\EOT\ENQ\SOH\STX\ETX\DC2\EOT\147\STX\STX\US\SUB} Final status of a proposal when the final tally is done and the outcome\n\
    \ is rejected by the group policy's decision policy.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\ETX\SOH\DC2\EOT\147\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\ETX\STX\DC2\EOT\147\STX\GS\RS\n\
    \e\n\
    \\EOT\ENQ\SOH\STX\EOT\DC2\EOT\151\STX\STX\RS\SUBW Final status of a proposal when the group policy is modified before the\n\
    \ final tally.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\EOT\SOH\DC2\EOT\151\STX\STX\EM\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\EOT\STX\DC2\EOT\151\STX\FS\GS\n\
    \\136\SOH\n\
    \\EOT\ENQ\SOH\STX\ENQ\DC2\EOT\155\STX\STX \SUBz A proposal can be withdrawn before the voting start time by the owner.\n\
    \ When this happens the final status is Withdrawn.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\ENQ\SOH\DC2\EOT\155\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\ENQ\STX\DC2\EOT\155\STX\RS\US\n\
    \R\n\
    \\STX\ENQ\STX\DC2\ACK\159\STX\NUL\173\STX\SOH\SUBD ProposalExecutorResult defines types of proposal executor results.\n\
    \\n\
    \\v\n\
    \\ETX\ENQ\STX\SOH\DC2\EOT\159\STX\ENQ\ESC\n\
    \\v\n\
    \\ETX\ENQ\STX\ETX\DC2\EOT\160\STX\STX1\n\
    \\SO\n\
    \\ACK\ENQ\STX\ETX\177\228\ETX\DC2\EOT\160\STX\STX1\n\
    \.\n\
    \\EOT\ENQ\STX\STX\NUL\DC2\EOT\163\STX\STX+\SUB  An empty value is not allowed.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\STX\STX\NUL\SOH\DC2\EOT\163\STX\STX&\n\
    \\r\n\
    \\ENQ\ENQ\STX\STX\NUL\STX\DC2\EOT\163\STX)*\n\
    \1\n\
    \\EOT\ENQ\STX\STX\SOH\DC2\EOT\166\STX\STX'\SUB# We have not yet run the executor.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\STX\STX\SOH\SOH\DC2\EOT\166\STX\STX\"\n\
    \\r\n\
    \\ENQ\ENQ\STX\STX\SOH\STX\DC2\EOT\166\STX%&\n\
    \N\n\
    \\EOT\ENQ\STX\STX\STX\DC2\EOT\169\STX\STX'\SUB@ The executor was successful and proposed action updated state.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\STX\STX\STX\SOH\DC2\EOT\169\STX\STX\"\n\
    \\r\n\
    \\ENQ\ENQ\STX\STX\STX\STX\DC2\EOT\169\STX%&\n\
    \W\n\
    \\EOT\ENQ\STX\STX\ETX\DC2\EOT\172\STX\STX'\SUBI The executor returned an error and proposed action didn't update state.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\STX\STX\ETX\SOH\DC2\EOT\172\STX\STX\"\n\
    \\r\n\
    \\ENQ\ENQ\STX\STX\ETX\STX\DC2\EOT\172\STX%&\n\
    \V\n\
    \\STX\EOT\t\DC2\ACK\176\STX\NUL\190\STX\SOH\SUBH TallyResult represents the sum of weighted votes for each vote option.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\176\STX\b\DC3\n\
    \\v\n\
    \\ETX\EOT\t\a\DC2\EOT\177\STX\STX-\n\
    \\SO\n\
    \\ACK\EOT\t\a\129\244\ETX\DC2\EOT\177\STX\STX-\n\
    \;\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\180\STX\STX\ETB\SUB- yes_count is the weighted sum of yes votes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\EOT\180\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\180\STX\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\180\STX\NAK\SYN\n\
    \@\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\183\STX\STX\ESC\SUB2 abstain_count is the weighted sum of abstainers.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\EOT\183\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\183\STX\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\183\STX\EM\SUB\n\
    \9\n\
    \\EOT\EOT\t\STX\STX\DC2\EOT\186\STX\STX\SYN\SUB+ no_count is the weighted sum of no votes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ENQ\DC2\EOT\186\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\EOT\186\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\EOT\186\STX\DC4\NAK\n\
    \?\n\
    \\EOT\EOT\t\STX\ETX\DC2\EOT\189\STX\STX \SUB1 no_with_veto_count is the weighted sum of veto.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\ENQ\DC2\EOT\189\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\SOH\DC2\EOT\189\STX\t\ESC\n\
    \\r\n\
    \\ENQ\EOT\t\STX\ETX\ETX\DC2\EOT\189\STX\RS\US\n\
    \E\n\
    \\STX\EOT\n\
    \\DC2\ACK\193\STX\NUL\210\STX\SOH\SUB7 Vote represents a vote for a proposal.string metadata\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\193\STX\b\f\n\
    \:\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\195\STX\STX\EM\SUB, proposal is the unique ID of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\195\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\195\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\195\STX\ETB\CAN\n\
    \:\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\198\STX\STXD\SUB, voter is the account address of the voter.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\198\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\198\STX\t\SO\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\198\STX\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\b\DC2\EOT\198\STX\DC3C\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\SOH\b\202\214\ENQ\DC2\EOT\198\STX\DC4B\n\
    \=\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\EOT\201\STX\STX\CAN\SUB/ option is the voter's choice on the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ACK\DC2\EOT\201\STX\STX\f\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\201\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\201\STX\SYN\ETB\n\
    \\189\SOH\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\EOT\205\STX\STX\SYN\SUB\174\SOH metadata is any arbitrary metadata attached to the vote.\n\
    \ the recommended format of the metadata is to be found here: https://docs.cosmos.network/v0.47/modules/group#vote-2\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ENQ\DC2\EOT\205\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\EOT\205\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\EOT\205\STX\DC4\NAK\n\
    \K\n\
    \\EOT\EOT\n\
    \\STX\EOT\DC2\ACK\208\STX\STX\209\STX`\SUB; submit_time is the timestamp when the vote was submitted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ACK\DC2\EOT\208\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\SOH\DC2\EOT\208\STX\FS'\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\ETX\DC2\EOT\208\STX*+\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\EOT\b\DC2\EOT\209\STX\ACK_\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\EOT\b\233\251\ETX\DC2\EOT\209\STX\a#\n\
    \\DC1\n\
    \\t\EOT\n\
    \\STX\EOT\b\245\140\166\ENQ\DC2\EOT\209\STX%B\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\EOT\b\242\251\ETX\DC2\EOT\209\STXD^b\ACKproto3"