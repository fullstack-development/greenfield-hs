{- This file was auto-generated from cosmos/group/v1/events.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Group.V1.Events (
        EventCreateGroup(), EventCreateGroupPolicy(), EventExec(),
        EventLeaveGroup(), EventProposalPruned(), EventSubmitProposal(),
        EventUpdateGroup(), EventUpdateGroupPolicy(), EventVote(),
        EventWithdrawProposal()
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
import qualified Proto.Cosmos.Group.V1.Types
import qualified Proto.CosmosProto.Cosmos
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Events_Fields.groupId' @:: Lens' EventCreateGroup Data.Word.Word64@ -}
data EventCreateGroup
  = EventCreateGroup'_constructor {_EventCreateGroup'groupId :: !Data.Word.Word64,
                                   _EventCreateGroup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventCreateGroup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventCreateGroup "groupId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateGroup'groupId
           (\ x__ y__ -> x__ {_EventCreateGroup'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventCreateGroup where
  messageName _ = Data.Text.pack "cosmos.group.v1.EventCreateGroup"
  packedMessageDescriptor _
    = "\n\
      \\DLEEventCreateGroup\DC2\EM\n\
      \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId"
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
              Data.ProtoLens.FieldDescriptor EventCreateGroup
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventCreateGroup'_unknownFields
        (\ x__ y__ -> x__ {_EventCreateGroup'_unknownFields = y__})
  defMessage
    = EventCreateGroup'_constructor
        {_EventCreateGroup'groupId = Data.ProtoLens.fieldDefault,
         _EventCreateGroup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventCreateGroup
          -> Data.ProtoLens.Encoding.Bytes.Parser EventCreateGroup
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventCreateGroup"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EventCreateGroup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventCreateGroup'_unknownFields x__)
             (Control.DeepSeq.deepseq (_EventCreateGroup'groupId x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Events_Fields.address' @:: Lens' EventCreateGroupPolicy Data.Text.Text@ -}
data EventCreateGroupPolicy
  = EventCreateGroupPolicy'_constructor {_EventCreateGroupPolicy'address :: !Data.Text.Text,
                                         _EventCreateGroupPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventCreateGroupPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventCreateGroupPolicy "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventCreateGroupPolicy'address
           (\ x__ y__ -> x__ {_EventCreateGroupPolicy'address = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventCreateGroupPolicy where
  messageName _
    = Data.Text.pack "cosmos.group.v1.EventCreateGroupPolicy"
  packedMessageDescriptor _
    = "\n\
      \\SYNEventCreateGroupPolicy\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString"
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
              Data.ProtoLens.FieldDescriptor EventCreateGroupPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventCreateGroupPolicy'_unknownFields
        (\ x__ y__ -> x__ {_EventCreateGroupPolicy'_unknownFields = y__})
  defMessage
    = EventCreateGroupPolicy'_constructor
        {_EventCreateGroupPolicy'address = Data.ProtoLens.fieldDefault,
         _EventCreateGroupPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventCreateGroupPolicy
          -> Data.ProtoLens.Encoding.Bytes.Parser EventCreateGroupPolicy
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventCreateGroupPolicy"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EventCreateGroupPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventCreateGroupPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq (_EventCreateGroupPolicy'address x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Events_Fields.proposalId' @:: Lens' EventExec Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Events_Fields.result' @:: Lens' EventExec Proto.Cosmos.Group.V1.Types.ProposalExecutorResult@
         * 'Proto.Cosmos.Group.V1.Events_Fields.logs' @:: Lens' EventExec Data.Text.Text@ -}
data EventExec
  = EventExec'_constructor {_EventExec'proposalId :: !Data.Word.Word64,
                            _EventExec'result :: !Proto.Cosmos.Group.V1.Types.ProposalExecutorResult,
                            _EventExec'logs :: !Data.Text.Text,
                            _EventExec'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventExec where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventExec "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventExec'proposalId
           (\ x__ y__ -> x__ {_EventExec'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventExec "result" Proto.Cosmos.Group.V1.Types.ProposalExecutorResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventExec'result (\ x__ y__ -> x__ {_EventExec'result = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventExec "logs" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventExec'logs (\ x__ y__ -> x__ {_EventExec'logs = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventExec where
  messageName _ = Data.Text.pack "cosmos.group.v1.EventExec"
  packedMessageDescriptor _
    = "\n\
      \\tEventExec\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC2?\n\
      \\ACKresult\CAN\STX \SOH(\SO2'.cosmos.group.v1.ProposalExecutorResultR\ACKresult\DC2\DC2\n\
      \\EOTlogs\CAN\ETX \SOH(\tR\EOTlogs"
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
              Data.ProtoLens.FieldDescriptor EventExec
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.ProposalExecutorResult)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"result")) ::
              Data.ProtoLens.FieldDescriptor EventExec
        logs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "logs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"logs")) ::
              Data.ProtoLens.FieldDescriptor EventExec
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, result__field_descriptor),
           (Data.ProtoLens.Tag 3, logs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventExec'_unknownFields
        (\ x__ y__ -> x__ {_EventExec'_unknownFields = y__})
  defMessage
    = EventExec'_constructor
        {_EventExec'proposalId = Data.ProtoLens.fieldDefault,
         _EventExec'result = Data.ProtoLens.fieldDefault,
         _EventExec'logs = Data.ProtoLens.fieldDefault,
         _EventExec'_unknownFields = []}
  parseMessage
    = let
        loop :: EventExec -> Data.ProtoLens.Encoding.Bytes.Parser EventExec
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "result"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"result") y x)
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
                                       "logs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"logs") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventExec"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"result") _x
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
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"logs") _x
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
instance Control.DeepSeq.NFData EventExec where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventExec'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventExec'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_EventExec'result x__)
                   (Control.DeepSeq.deepseq (_EventExec'logs x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Events_Fields.groupId' @:: Lens' EventLeaveGroup Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Events_Fields.address' @:: Lens' EventLeaveGroup Data.Text.Text@ -}
data EventLeaveGroup
  = EventLeaveGroup'_constructor {_EventLeaveGroup'groupId :: !Data.Word.Word64,
                                  _EventLeaveGroup'address :: !Data.Text.Text,
                                  _EventLeaveGroup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventLeaveGroup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventLeaveGroup "groupId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventLeaveGroup'groupId
           (\ x__ y__ -> x__ {_EventLeaveGroup'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventLeaveGroup "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventLeaveGroup'address
           (\ x__ y__ -> x__ {_EventLeaveGroup'address = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventLeaveGroup where
  messageName _ = Data.Text.pack "cosmos.group.v1.EventLeaveGroup"
  packedMessageDescriptor _
    = "\n\
      \\SIEventLeaveGroup\DC2\EM\n\
      \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId\DC22\n\
      \\aaddress\CAN\STX \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString"
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
              Data.ProtoLens.FieldDescriptor EventLeaveGroup
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor EventLeaveGroup
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupId__field_descriptor),
           (Data.ProtoLens.Tag 2, address__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventLeaveGroup'_unknownFields
        (\ x__ y__ -> x__ {_EventLeaveGroup'_unknownFields = y__})
  defMessage
    = EventLeaveGroup'_constructor
        {_EventLeaveGroup'groupId = Data.ProtoLens.fieldDefault,
         _EventLeaveGroup'address = Data.ProtoLens.fieldDefault,
         _EventLeaveGroup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventLeaveGroup
          -> Data.ProtoLens.Encoding.Bytes.Parser EventLeaveGroup
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventLeaveGroup"
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData EventLeaveGroup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventLeaveGroup'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventLeaveGroup'groupId x__)
                (Control.DeepSeq.deepseq (_EventLeaveGroup'address x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Events_Fields.proposalId' @:: Lens' EventProposalPruned Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Events_Fields.status' @:: Lens' EventProposalPruned Proto.Cosmos.Group.V1.Types.ProposalStatus@
         * 'Proto.Cosmos.Group.V1.Events_Fields.tallyResult' @:: Lens' EventProposalPruned Proto.Cosmos.Group.V1.Types.TallyResult@
         * 'Proto.Cosmos.Group.V1.Events_Fields.maybe'tallyResult' @:: Lens' EventProposalPruned (Prelude.Maybe Proto.Cosmos.Group.V1.Types.TallyResult)@ -}
data EventProposalPruned
  = EventProposalPruned'_constructor {_EventProposalPruned'proposalId :: !Data.Word.Word64,
                                      _EventProposalPruned'status :: !Proto.Cosmos.Group.V1.Types.ProposalStatus,
                                      _EventProposalPruned'tallyResult :: !(Prelude.Maybe Proto.Cosmos.Group.V1.Types.TallyResult),
                                      _EventProposalPruned'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventProposalPruned where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventProposalPruned "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventProposalPruned'proposalId
           (\ x__ y__ -> x__ {_EventProposalPruned'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventProposalPruned "status" Proto.Cosmos.Group.V1.Types.ProposalStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventProposalPruned'status
           (\ x__ y__ -> x__ {_EventProposalPruned'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventProposalPruned "tallyResult" Proto.Cosmos.Group.V1.Types.TallyResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventProposalPruned'tallyResult
           (\ x__ y__ -> x__ {_EventProposalPruned'tallyResult = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EventProposalPruned "maybe'tallyResult" (Prelude.Maybe Proto.Cosmos.Group.V1.Types.TallyResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventProposalPruned'tallyResult
           (\ x__ y__ -> x__ {_EventProposalPruned'tallyResult = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventProposalPruned where
  messageName _
    = Data.Text.pack "cosmos.group.v1.EventProposalPruned"
  packedMessageDescriptor _
    = "\n\
      \\DC3EventProposalPruned\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC27\n\
      \\ACKstatus\CAN\STX \SOH(\SO2\US.cosmos.group.v1.ProposalStatusR\ACKstatus\DC2?\n\
      \\ftally_result\CAN\ETX \SOH(\v2\FS.cosmos.group.v1.TallyResultR\vtallyResult"
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
              Data.ProtoLens.FieldDescriptor EventProposalPruned
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.ProposalStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor EventProposalPruned
        tallyResult__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tally_result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.TallyResult)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tallyResult")) ::
              Data.ProtoLens.FieldDescriptor EventProposalPruned
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, status__field_descriptor),
           (Data.ProtoLens.Tag 3, tallyResult__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventProposalPruned'_unknownFields
        (\ x__ y__ -> x__ {_EventProposalPruned'_unknownFields = y__})
  defMessage
    = EventProposalPruned'_constructor
        {_EventProposalPruned'proposalId = Data.ProtoLens.fieldDefault,
         _EventProposalPruned'status = Data.ProtoLens.fieldDefault,
         _EventProposalPruned'tallyResult = Prelude.Nothing,
         _EventProposalPruned'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventProposalPruned
          -> Data.ProtoLens.Encoding.Bytes.Parser EventProposalPruned
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tally_result"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tallyResult") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventProposalPruned"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'tallyResult") _x
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
instance Control.DeepSeq.NFData EventProposalPruned where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventProposalPruned'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventProposalPruned'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_EventProposalPruned'status x__)
                   (Control.DeepSeq.deepseq
                      (_EventProposalPruned'tallyResult x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Events_Fields.proposalId' @:: Lens' EventSubmitProposal Data.Word.Word64@ -}
data EventSubmitProposal
  = EventSubmitProposal'_constructor {_EventSubmitProposal'proposalId :: !Data.Word.Word64,
                                      _EventSubmitProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventSubmitProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventSubmitProposal "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventSubmitProposal'proposalId
           (\ x__ y__ -> x__ {_EventSubmitProposal'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventSubmitProposal where
  messageName _
    = Data.Text.pack "cosmos.group.v1.EventSubmitProposal"
  packedMessageDescriptor _
    = "\n\
      \\DC3EventSubmitProposal\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId"
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
              Data.ProtoLens.FieldDescriptor EventSubmitProposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventSubmitProposal'_unknownFields
        (\ x__ y__ -> x__ {_EventSubmitProposal'_unknownFields = y__})
  defMessage
    = EventSubmitProposal'_constructor
        {_EventSubmitProposal'proposalId = Data.ProtoLens.fieldDefault,
         _EventSubmitProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventSubmitProposal
          -> Data.ProtoLens.Encoding.Bytes.Parser EventSubmitProposal
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventSubmitProposal"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EventSubmitProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventSubmitProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq (_EventSubmitProposal'proposalId x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Events_Fields.groupId' @:: Lens' EventUpdateGroup Data.Word.Word64@ -}
data EventUpdateGroup
  = EventUpdateGroup'_constructor {_EventUpdateGroup'groupId :: !Data.Word.Word64,
                                   _EventUpdateGroup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventUpdateGroup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventUpdateGroup "groupId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateGroup'groupId
           (\ x__ y__ -> x__ {_EventUpdateGroup'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventUpdateGroup where
  messageName _ = Data.Text.pack "cosmos.group.v1.EventUpdateGroup"
  packedMessageDescriptor _
    = "\n\
      \\DLEEventUpdateGroup\DC2\EM\n\
      \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId"
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
              Data.ProtoLens.FieldDescriptor EventUpdateGroup
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventUpdateGroup'_unknownFields
        (\ x__ y__ -> x__ {_EventUpdateGroup'_unknownFields = y__})
  defMessage
    = EventUpdateGroup'_constructor
        {_EventUpdateGroup'groupId = Data.ProtoLens.fieldDefault,
         _EventUpdateGroup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventUpdateGroup
          -> Data.ProtoLens.Encoding.Bytes.Parser EventUpdateGroup
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventUpdateGroup"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EventUpdateGroup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventUpdateGroup'_unknownFields x__)
             (Control.DeepSeq.deepseq (_EventUpdateGroup'groupId x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Events_Fields.address' @:: Lens' EventUpdateGroupPolicy Data.Text.Text@ -}
data EventUpdateGroupPolicy
  = EventUpdateGroupPolicy'_constructor {_EventUpdateGroupPolicy'address :: !Data.Text.Text,
                                         _EventUpdateGroupPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventUpdateGroupPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventUpdateGroupPolicy "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventUpdateGroupPolicy'address
           (\ x__ y__ -> x__ {_EventUpdateGroupPolicy'address = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventUpdateGroupPolicy where
  messageName _
    = Data.Text.pack "cosmos.group.v1.EventUpdateGroupPolicy"
  packedMessageDescriptor _
    = "\n\
      \\SYNEventUpdateGroupPolicy\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString"
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
              Data.ProtoLens.FieldDescriptor EventUpdateGroupPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventUpdateGroupPolicy'_unknownFields
        (\ x__ y__ -> x__ {_EventUpdateGroupPolicy'_unknownFields = y__})
  defMessage
    = EventUpdateGroupPolicy'_constructor
        {_EventUpdateGroupPolicy'address = Data.ProtoLens.fieldDefault,
         _EventUpdateGroupPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventUpdateGroupPolicy
          -> Data.ProtoLens.Encoding.Bytes.Parser EventUpdateGroupPolicy
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventUpdateGroupPolicy"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EventUpdateGroupPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventUpdateGroupPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq (_EventUpdateGroupPolicy'address x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Events_Fields.proposalId' @:: Lens' EventVote Data.Word.Word64@ -}
data EventVote
  = EventVote'_constructor {_EventVote'proposalId :: !Data.Word.Word64,
                            _EventVote'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventVote where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventVote "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventVote'proposalId
           (\ x__ y__ -> x__ {_EventVote'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventVote where
  messageName _ = Data.Text.pack "cosmos.group.v1.EventVote"
  packedMessageDescriptor _
    = "\n\
      \\tEventVote\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId"
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
              Data.ProtoLens.FieldDescriptor EventVote
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventVote'_unknownFields
        (\ x__ y__ -> x__ {_EventVote'_unknownFields = y__})
  defMessage
    = EventVote'_constructor
        {_EventVote'proposalId = Data.ProtoLens.fieldDefault,
         _EventVote'_unknownFields = []}
  parseMessage
    = let
        loop :: EventVote -> Data.ProtoLens.Encoding.Bytes.Parser EventVote
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventVote"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EventVote where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventVote'_unknownFields x__)
             (Control.DeepSeq.deepseq (_EventVote'proposalId x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Events_Fields.proposalId' @:: Lens' EventWithdrawProposal Data.Word.Word64@ -}
data EventWithdrawProposal
  = EventWithdrawProposal'_constructor {_EventWithdrawProposal'proposalId :: !Data.Word.Word64,
                                        _EventWithdrawProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventWithdrawProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventWithdrawProposal "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventWithdrawProposal'proposalId
           (\ x__ y__ -> x__ {_EventWithdrawProposal'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventWithdrawProposal where
  messageName _
    = Data.Text.pack "cosmos.group.v1.EventWithdrawProposal"
  packedMessageDescriptor _
    = "\n\
      \\NAKEventWithdrawProposal\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId"
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
              Data.ProtoLens.FieldDescriptor EventWithdrawProposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventWithdrawProposal'_unknownFields
        (\ x__ y__ -> x__ {_EventWithdrawProposal'_unknownFields = y__})
  defMessage
    = EventWithdrawProposal'_constructor
        {_EventWithdrawProposal'proposalId = Data.ProtoLens.fieldDefault,
         _EventWithdrawProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventWithdrawProposal
          -> Data.ProtoLens.Encoding.Bytes.Parser EventWithdrawProposal
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventWithdrawProposal"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EventWithdrawProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventWithdrawProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventWithdrawProposal'proposalId x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\FScosmos/group/v1/events.proto\DC2\SIcosmos.group.v1\SUB\EMcosmos_proto/cosmos.proto\SUB\ESCcosmos/group/v1/types.proto\"-\n\
    \\DLEEventCreateGroup\DC2\EM\n\
    \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId\"-\n\
    \\DLEEventUpdateGroup\DC2\EM\n\
    \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId\"L\n\
    \\SYNEventCreateGroupPolicy\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\"L\n\
    \\SYNEventUpdateGroupPolicy\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\"6\n\
    \\DC3EventSubmitProposal\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\"8\n\
    \\NAKEventWithdrawProposal\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\",\n\
    \\tEventVote\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\"\129\SOH\n\
    \\tEventExec\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC2?\n\
    \\ACKresult\CAN\STX \SOH(\SO2'.cosmos.group.v1.ProposalExecutorResultR\ACKresult\DC2\DC2\n\
    \\EOTlogs\CAN\ETX \SOH(\tR\EOTlogs\"`\n\
    \\SIEventLeaveGroup\DC2\EM\n\
    \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId\DC22\n\
    \\aaddress\CAN\STX \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\"\176\SOH\n\
    \\DC3EventProposalPruned\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC27\n\
    \\ACKstatus\CAN\STX \SOH(\SO2\US.cosmos.group.v1.ProposalStatusR\ACKstatus\DC2?\n\
    \\ftally_result\CAN\ETX \SOH(\v2\FS.cosmos.group.v1.TallyResultR\vtallyResultB&Z$github.com/cosmos/cosmos-sdk/x/groupJ\216\NAK\n\
    \\ACK\DC2\EOT\SOH\NUL]\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.46\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ETX\NUL\CAN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL%\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL;\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NUL;\n\
    \K\n\
    \\STX\EOT\NUL\DC2\EOT\v\NUL\SI\SOH\SUB? EventCreateGroup is an event emitted when a group is created.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\v\b\CAN\n\
    \6\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SO\STX\SYN\SUB) group_id is the unique ID of the group.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SO\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SO\DC4\NAK\n\
    \K\n\
    \\STX\EOT\SOH\DC2\EOT\DC2\NUL\SYN\SOH\SUB? EventUpdateGroup is an event emitted when a group is updated.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC2\b\CAN\n\
    \6\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\NAK\STX\SYN\SUB) group_id is the unique ID of the group.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\NAK\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\NAK\DC4\NAK\n\
    \X\n\
    \\STX\EOT\STX\DC2\EOT\EM\NUL\GS\SOH\SUBL EventCreateGroupPolicy is an event emitted when a group policy is created.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\EM\b\RS\n\
    \B\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\FS\STXF\SUB5 address is the account address of the group policy.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\FS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\FS\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\FS\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX\FS\NAKE\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX\FS\SYND\n\
    \X\n\
    \\STX\EOT\ETX\DC2\EOT \NUL$\SOH\SUBL EventUpdateGroupPolicy is an event emitted when a group policy is updated.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX \b\RS\n\
    \B\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX#\STXF\SUB5 address is the account address of the group policy.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX#\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX#\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETX#\NAKE\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\202\214\ENQ\DC2\ETX#\SYND\n\
    \Q\n\
    \\STX\EOT\EOT\DC2\EOT'\NUL+\SOH\SUBE EventSubmitProposal is an event emitted when a proposal is created.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX'\b\ESC\n\
    \<\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX*\STX\EM\SUB/ proposal_id is the unique ID of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX*\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX*\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX*\ETB\CAN\n\
    \U\n\
    \\STX\EOT\ENQ\DC2\EOT.\NUL2\SOH\SUBI EventWithdrawProposal is an event emitted when a proposal is withdrawn.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX.\b\GS\n\
    \<\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX1\STX\EM\SUB/ proposal_id is the unique ID of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX1\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX1\ETB\CAN\n\
    \M\n\
    \\STX\EOT\ACK\DC2\EOT5\NUL9\SOH\SUBA EventVote is an event emitted when a voter votes on a proposal.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX5\b\DC1\n\
    \<\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX8\STX\EM\SUB/ proposal_id is the unique ID of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX8\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX8\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX8\ETB\CAN\n\
    \H\n\
    \\STX\EOT\a\DC2\EOT<\NULF\SOH\SUB< EventExec is an event emitted when a proposal is executed.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX<\b\DC1\n\
    \<\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX?\STX\EM\SUB/ proposal_id is the unique ID of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX?\STX\b\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX?\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX?\ETB\CAN\n\
    \7\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXB\STX$\SUB* result is the proposal execution result.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\ETXB\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXB\EM\US\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXB\"#\n\
    \P\n\
    \\EOT\EOT\a\STX\STX\DC2\ETXE\STX\DC2\SUBC logs contains error logs in case the execution result is FAILURE.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\ETXE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETXE\t\r\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETXE\DLE\DC1\n\
    \U\n\
    \\STX\EOT\b\DC2\EOTI\NULP\SOH\SUBI EventLeaveGroup is an event emitted when group member leaves the group.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXI\b\ETB\n\
    \6\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXL\STX\SYN\SUB) group_id is the unique ID of the group.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETXL\STX\b\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXL\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXL\DC4\NAK\n\
    \B\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETXO\STXF\SUB5 address is the account address of the group member.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETXO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETXO\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETXO\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\b\DC2\ETXO\NAKE\n\
    \\SI\n\
    \\b\EOT\b\STX\SOH\b\202\214\ENQ\DC2\ETXO\SYND\n\
    \P\n\
    \\STX\EOT\t\DC2\EOTS\NUL]\SOH\SUBD EventProposalPruned is an event emitted when a proposal is pruned.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXS\b\ESC\n\
    \<\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXV\STX\EM\SUB/ proposal_id is the unique ID of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETXV\STX\b\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXV\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXV\ETB\CAN\n\
    \n\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETXY\STX\FS\SUBa status is the proposal status (UNSPECIFIED, SUBMITTED, ACCEPTED, REJECTED, ABORTED, WITHDRAWN).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\ETXY\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETXY\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETXY\SUB\ESC\n\
    \K\n\
    \\EOT\EOT\t\STX\STX\DC2\ETX\\\STX\US\SUB> tally_result is the proposal tally result (when applicable).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ACK\DC2\ETX\\\STX\r\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\ETX\\\SO\SUB\n\
    \\f\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\ETX\\\GS\RSb\ACKproto3"