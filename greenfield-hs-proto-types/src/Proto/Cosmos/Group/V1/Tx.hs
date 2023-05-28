{- This file was auto-generated from cosmos/group/v1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Group.V1.Tx (
        Msg(..), Exec(..), Exec(), Exec'UnrecognizedValue,
        MsgCreateGroup(), MsgCreateGroupPolicy(),
        MsgCreateGroupPolicyResponse(), MsgCreateGroupResponse(),
        MsgCreateGroupWithPolicy(), MsgCreateGroupWithPolicyResponse(),
        MsgExec(), MsgExecResponse(), MsgLeaveGroup(),
        MsgLeaveGroupResponse(), MsgSubmitProposal(),
        MsgSubmitProposalResponse(), MsgUpdateGroupAdmin(),
        MsgUpdateGroupAdminResponse(), MsgUpdateGroupMembers(),
        MsgUpdateGroupMembersResponse(), MsgUpdateGroupMetadata(),
        MsgUpdateGroupMetadataResponse(), MsgUpdateGroupPolicyAdmin(),
        MsgUpdateGroupPolicyAdminResponse(),
        MsgUpdateGroupPolicyDecisionPolicy(),
        MsgUpdateGroupPolicyDecisionPolicyResponse(),
        MsgUpdateGroupPolicyMetadata(),
        MsgUpdateGroupPolicyMetadataResponse(), MsgVote(),
        MsgVoteResponse(), MsgWithdrawProposal(),
        MsgWithdrawProposalResponse()
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
import qualified Proto.Cosmos.Group.V1.Types
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
newtype Exec'UnrecognizedValue
  = Exec'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Exec
  = EXEC_UNSPECIFIED |
    EXEC_TRY |
    Exec'Unrecognized !Exec'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Exec where
  maybeToEnum 0 = Prelude.Just EXEC_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just EXEC_TRY
  maybeToEnum k
    = Prelude.Just
        (Exec'Unrecognized
           (Exec'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum EXEC_UNSPECIFIED = "EXEC_UNSPECIFIED"
  showEnum EXEC_TRY = "EXEC_TRY"
  showEnum (Exec'Unrecognized (Exec'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "EXEC_UNSPECIFIED" = Prelude.Just EXEC_UNSPECIFIED
    | (Prelude.==) k "EXEC_TRY" = Prelude.Just EXEC_TRY
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Exec where
  minBound = EXEC_UNSPECIFIED
  maxBound = EXEC_TRY
instance Prelude.Enum Exec where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Exec: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum EXEC_UNSPECIFIED = 0
  fromEnum EXEC_TRY = 1
  fromEnum (Exec'Unrecognized (Exec'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ EXEC_TRY
    = Prelude.error
        "Exec.succ: bad argument EXEC_TRY. This value would be out of bounds."
  succ EXEC_UNSPECIFIED = EXEC_TRY
  succ (Exec'Unrecognized _)
    = Prelude.error "Exec.succ: bad argument: unrecognized value"
  pred EXEC_UNSPECIFIED
    = Prelude.error
        "Exec.pred: bad argument EXEC_UNSPECIFIED. This value would be out of bounds."
  pred EXEC_TRY = EXEC_UNSPECIFIED
  pred (Exec'Unrecognized _)
    = Prelude.error "Exec.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Exec where
  fieldDefault = EXEC_UNSPECIFIED
instance Control.DeepSeq.NFData Exec where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.admin' @:: Lens' MsgCreateGroup Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.members' @:: Lens' MsgCreateGroup [Proto.Cosmos.Group.V1.Types.MemberRequest]@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.vec'members' @:: Lens' MsgCreateGroup (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.MemberRequest)@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.metadata' @:: Lens' MsgCreateGroup Data.Text.Text@ -}
data MsgCreateGroup
  = MsgCreateGroup'_constructor {_MsgCreateGroup'admin :: !Data.Text.Text,
                                 _MsgCreateGroup'members :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.MemberRequest),
                                 _MsgCreateGroup'metadata :: !Data.Text.Text,
                                 _MsgCreateGroup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateGroup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreateGroup "admin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroup'admin
           (\ x__ y__ -> x__ {_MsgCreateGroup'admin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateGroup "members" [Proto.Cosmos.Group.V1.Types.MemberRequest] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroup'members
           (\ x__ y__ -> x__ {_MsgCreateGroup'members = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgCreateGroup "vec'members" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.MemberRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroup'members
           (\ x__ y__ -> x__ {_MsgCreateGroup'members = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateGroup "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroup'metadata
           (\ x__ y__ -> x__ {_MsgCreateGroup'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreateGroup where
  messageName _ = Data.Text.pack "cosmos.group.v1.MsgCreateGroup"
  packedMessageDescriptor _
    = "\n\
      \\SOMsgCreateGroup\DC2.\n\
      \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
      \\amembers\CAN\STX \ETX(\v2\RS.cosmos.group.v1.MemberRequestR\amembersB\t\200\222\US\NUL\168\231\176*\SOH\DC2\SUB\n\
      \\bmetadata\CAN\ETX \SOH(\tR\bmetadata:(\130\231\176*\ENQadmin\138\231\176*\EMcosmos-sdk/MsgCreateGroup"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        admin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "admin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"admin")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroup
        members__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "members"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.MemberRequest)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"members")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroup
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroup
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, admin__field_descriptor),
           (Data.ProtoLens.Tag 2, members__field_descriptor),
           (Data.ProtoLens.Tag 3, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateGroup'_unknownFields
        (\ x__ y__ -> x__ {_MsgCreateGroup'_unknownFields = y__})
  defMessage
    = MsgCreateGroup'_constructor
        {_MsgCreateGroup'admin = Data.ProtoLens.fieldDefault,
         _MsgCreateGroup'members = Data.Vector.Generic.empty,
         _MsgCreateGroup'metadata = Data.ProtoLens.fieldDefault,
         _MsgCreateGroup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateGroup
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.MemberRequest
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateGroup
        loop x mutable'members
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'members <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'members)
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
                              (Data.ProtoLens.Field.field @"vec'members") frozen'members x))
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
                                       "admin"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"admin") y x)
                                  mutable'members
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "members"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'members y)
                                loop x v
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
                                  mutable'members
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'members
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'members <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'members)
          "MsgCreateGroup"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"admin") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'members") _x))
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
instance Control.DeepSeq.NFData MsgCreateGroup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateGroup'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCreateGroup'admin x__)
                (Control.DeepSeq.deepseq
                   (_MsgCreateGroup'members x__)
                   (Control.DeepSeq.deepseq (_MsgCreateGroup'metadata x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.admin' @:: Lens' MsgCreateGroupPolicy Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.groupId' @:: Lens' MsgCreateGroupPolicy Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.metadata' @:: Lens' MsgCreateGroupPolicy Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.decisionPolicy' @:: Lens' MsgCreateGroupPolicy Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.maybe'decisionPolicy' @:: Lens' MsgCreateGroupPolicy (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data MsgCreateGroupPolicy
  = MsgCreateGroupPolicy'_constructor {_MsgCreateGroupPolicy'admin :: !Data.Text.Text,
                                       _MsgCreateGroupPolicy'groupId :: !Data.Word.Word64,
                                       _MsgCreateGroupPolicy'metadata :: !Data.Text.Text,
                                       _MsgCreateGroupPolicy'decisionPolicy :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                       _MsgCreateGroupPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateGroupPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreateGroupPolicy "admin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupPolicy'admin
           (\ x__ y__ -> x__ {_MsgCreateGroupPolicy'admin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateGroupPolicy "groupId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupPolicy'groupId
           (\ x__ y__ -> x__ {_MsgCreateGroupPolicy'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateGroupPolicy "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupPolicy'metadata
           (\ x__ y__ -> x__ {_MsgCreateGroupPolicy'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateGroupPolicy "decisionPolicy" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupPolicy'decisionPolicy
           (\ x__ y__ -> x__ {_MsgCreateGroupPolicy'decisionPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgCreateGroupPolicy "maybe'decisionPolicy" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupPolicy'decisionPolicy
           (\ x__ y__ -> x__ {_MsgCreateGroupPolicy'decisionPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreateGroupPolicy where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgCreateGroupPolicy"
  packedMessageDescriptor _
    = "\n\
      \\DC4MsgCreateGroupPolicy\DC2.\n\
      \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2\EM\n\
      \\bgroup_id\CAN\STX \SOH(\EOTR\agroupId\DC2\SUB\n\
      \\bmetadata\CAN\ETX \SOH(\tR\bmetadata\DC2a\n\
      \\SIdecision_policy\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyR\SOdecisionPolicyB\"\202\180-\RScosmos.group.v1.DecisionPolicy:2\136\160\US\NUL\130\231\176*\ENQadmin\138\231\176*\UScosmos-sdk/MsgCreateGroupPolicy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        admin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "admin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"admin")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroupPolicy
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroupPolicy
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroupPolicy
        decisionPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "decision_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'decisionPolicy")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroupPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, admin__field_descriptor),
           (Data.ProtoLens.Tag 2, groupId__field_descriptor),
           (Data.ProtoLens.Tag 3, metadata__field_descriptor),
           (Data.ProtoLens.Tag 4, decisionPolicy__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateGroupPolicy'_unknownFields
        (\ x__ y__ -> x__ {_MsgCreateGroupPolicy'_unknownFields = y__})
  defMessage
    = MsgCreateGroupPolicy'_constructor
        {_MsgCreateGroupPolicy'admin = Data.ProtoLens.fieldDefault,
         _MsgCreateGroupPolicy'groupId = Data.ProtoLens.fieldDefault,
         _MsgCreateGroupPolicy'metadata = Data.ProtoLens.fieldDefault,
         _MsgCreateGroupPolicy'decisionPolicy = Prelude.Nothing,
         _MsgCreateGroupPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateGroupPolicy
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateGroupPolicy
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
                                       "admin"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"admin") y x)
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
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "decision_policy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"decisionPolicy") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgCreateGroupPolicy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"admin") _x
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
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'decisionPolicy") _x
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
instance Control.DeepSeq.NFData MsgCreateGroupPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateGroupPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCreateGroupPolicy'admin x__)
                (Control.DeepSeq.deepseq
                   (_MsgCreateGroupPolicy'groupId x__)
                   (Control.DeepSeq.deepseq
                      (_MsgCreateGroupPolicy'metadata x__)
                      (Control.DeepSeq.deepseq
                         (_MsgCreateGroupPolicy'decisionPolicy x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.address' @:: Lens' MsgCreateGroupPolicyResponse Data.Text.Text@ -}
data MsgCreateGroupPolicyResponse
  = MsgCreateGroupPolicyResponse'_constructor {_MsgCreateGroupPolicyResponse'address :: !Data.Text.Text,
                                               _MsgCreateGroupPolicyResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateGroupPolicyResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreateGroupPolicyResponse "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupPolicyResponse'address
           (\ x__ y__ -> x__ {_MsgCreateGroupPolicyResponse'address = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreateGroupPolicyResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgCreateGroupPolicyResponse"
  packedMessageDescriptor _
    = "\n\
      \\FSMsgCreateGroupPolicyResponse\DC22\n\
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
              Data.ProtoLens.FieldDescriptor MsgCreateGroupPolicyResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateGroupPolicyResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgCreateGroupPolicyResponse'_unknownFields = y__})
  defMessage
    = MsgCreateGroupPolicyResponse'_constructor
        {_MsgCreateGroupPolicyResponse'address = Data.ProtoLens.fieldDefault,
         _MsgCreateGroupPolicyResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateGroupPolicyResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateGroupPolicyResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgCreateGroupPolicyResponse"
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
instance Control.DeepSeq.NFData MsgCreateGroupPolicyResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateGroupPolicyResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCreateGroupPolicyResponse'address x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.groupId' @:: Lens' MsgCreateGroupResponse Data.Word.Word64@ -}
data MsgCreateGroupResponse
  = MsgCreateGroupResponse'_constructor {_MsgCreateGroupResponse'groupId :: !Data.Word.Word64,
                                         _MsgCreateGroupResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateGroupResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreateGroupResponse "groupId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupResponse'groupId
           (\ x__ y__ -> x__ {_MsgCreateGroupResponse'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreateGroupResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgCreateGroupResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNMsgCreateGroupResponse\DC2\EM\n\
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
              Data.ProtoLens.FieldDescriptor MsgCreateGroupResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateGroupResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgCreateGroupResponse'_unknownFields = y__})
  defMessage
    = MsgCreateGroupResponse'_constructor
        {_MsgCreateGroupResponse'groupId = Data.ProtoLens.fieldDefault,
         _MsgCreateGroupResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateGroupResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateGroupResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgCreateGroupResponse"
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
instance Control.DeepSeq.NFData MsgCreateGroupResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateGroupResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MsgCreateGroupResponse'groupId x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.admin' @:: Lens' MsgCreateGroupWithPolicy Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.members' @:: Lens' MsgCreateGroupWithPolicy [Proto.Cosmos.Group.V1.Types.MemberRequest]@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.vec'members' @:: Lens' MsgCreateGroupWithPolicy (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.MemberRequest)@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.groupMetadata' @:: Lens' MsgCreateGroupWithPolicy Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.groupPolicyMetadata' @:: Lens' MsgCreateGroupWithPolicy Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.groupPolicyAsAdmin' @:: Lens' MsgCreateGroupWithPolicy Prelude.Bool@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.decisionPolicy' @:: Lens' MsgCreateGroupWithPolicy Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.maybe'decisionPolicy' @:: Lens' MsgCreateGroupWithPolicy (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data MsgCreateGroupWithPolicy
  = MsgCreateGroupWithPolicy'_constructor {_MsgCreateGroupWithPolicy'admin :: !Data.Text.Text,
                                           _MsgCreateGroupWithPolicy'members :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.MemberRequest),
                                           _MsgCreateGroupWithPolicy'groupMetadata :: !Data.Text.Text,
                                           _MsgCreateGroupWithPolicy'groupPolicyMetadata :: !Data.Text.Text,
                                           _MsgCreateGroupWithPolicy'groupPolicyAsAdmin :: !Prelude.Bool,
                                           _MsgCreateGroupWithPolicy'decisionPolicy :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                           _MsgCreateGroupWithPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateGroupWithPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreateGroupWithPolicy "admin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupWithPolicy'admin
           (\ x__ y__ -> x__ {_MsgCreateGroupWithPolicy'admin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateGroupWithPolicy "members" [Proto.Cosmos.Group.V1.Types.MemberRequest] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupWithPolicy'members
           (\ x__ y__ -> x__ {_MsgCreateGroupWithPolicy'members = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgCreateGroupWithPolicy "vec'members" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.MemberRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupWithPolicy'members
           (\ x__ y__ -> x__ {_MsgCreateGroupWithPolicy'members = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateGroupWithPolicy "groupMetadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupWithPolicy'groupMetadata
           (\ x__ y__ -> x__ {_MsgCreateGroupWithPolicy'groupMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateGroupWithPolicy "groupPolicyMetadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupWithPolicy'groupPolicyMetadata
           (\ x__ y__
              -> x__ {_MsgCreateGroupWithPolicy'groupPolicyMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateGroupWithPolicy "groupPolicyAsAdmin" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupWithPolicy'groupPolicyAsAdmin
           (\ x__ y__
              -> x__ {_MsgCreateGroupWithPolicy'groupPolicyAsAdmin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateGroupWithPolicy "decisionPolicy" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupWithPolicy'decisionPolicy
           (\ x__ y__
              -> x__ {_MsgCreateGroupWithPolicy'decisionPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgCreateGroupWithPolicy "maybe'decisionPolicy" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupWithPolicy'decisionPolicy
           (\ x__ y__
              -> x__ {_MsgCreateGroupWithPolicy'decisionPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreateGroupWithPolicy where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgCreateGroupWithPolicy"
  packedMessageDescriptor _
    = "\n\
      \\CANMsgCreateGroupWithPolicy\DC2.\n\
      \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
      \\amembers\CAN\STX \ETX(\v2\RS.cosmos.group.v1.MemberRequestR\amembersB\t\200\222\US\NUL\168\231\176*\SOH\DC2%\n\
      \\SOgroup_metadata\CAN\ETX \SOH(\tR\rgroupMetadata\DC22\n\
      \\NAKgroup_policy_metadata\CAN\EOT \SOH(\tR\DC3groupPolicyMetadata\DC21\n\
      \\NAKgroup_policy_as_admin\CAN\ENQ \SOH(\bR\DC2groupPolicyAsAdmin\DC2a\n\
      \\SIdecision_policy\CAN\ACK \SOH(\v2\DC4.google.protobuf.AnyR\SOdecisionPolicyB\"\202\180-\RScosmos.group.v1.DecisionPolicy:6\136\160\US\NUL\130\231\176*\ENQadmin\138\231\176*#cosmos-sdk/MsgCreateGroupWithPolicy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        admin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "admin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"admin")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroupWithPolicy
        members__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "members"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.MemberRequest)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"members")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroupWithPolicy
        groupMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupMetadata")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroupWithPolicy
        groupPolicyMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_policy_metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupPolicyMetadata")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroupWithPolicy
        groupPolicyAsAdmin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_policy_as_admin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupPolicyAsAdmin")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroupWithPolicy
        decisionPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "decision_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'decisionPolicy")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroupWithPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, admin__field_descriptor),
           (Data.ProtoLens.Tag 2, members__field_descriptor),
           (Data.ProtoLens.Tag 3, groupMetadata__field_descriptor),
           (Data.ProtoLens.Tag 4, groupPolicyMetadata__field_descriptor),
           (Data.ProtoLens.Tag 5, groupPolicyAsAdmin__field_descriptor),
           (Data.ProtoLens.Tag 6, decisionPolicy__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateGroupWithPolicy'_unknownFields
        (\ x__ y__ -> x__ {_MsgCreateGroupWithPolicy'_unknownFields = y__})
  defMessage
    = MsgCreateGroupWithPolicy'_constructor
        {_MsgCreateGroupWithPolicy'admin = Data.ProtoLens.fieldDefault,
         _MsgCreateGroupWithPolicy'members = Data.Vector.Generic.empty,
         _MsgCreateGroupWithPolicy'groupMetadata = Data.ProtoLens.fieldDefault,
         _MsgCreateGroupWithPolicy'groupPolicyMetadata = Data.ProtoLens.fieldDefault,
         _MsgCreateGroupWithPolicy'groupPolicyAsAdmin = Data.ProtoLens.fieldDefault,
         _MsgCreateGroupWithPolicy'decisionPolicy = Prelude.Nothing,
         _MsgCreateGroupWithPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateGroupWithPolicy
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.MemberRequest
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateGroupWithPolicy
        loop x mutable'members
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'members <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'members)
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
                              (Data.ProtoLens.Field.field @"vec'members") frozen'members x))
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
                                       "admin"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"admin") y x)
                                  mutable'members
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "members"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'members y)
                                loop x v
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
                                       "group_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"groupMetadata") y x)
                                  mutable'members
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
                                       "group_policy_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"groupPolicyMetadata") y x)
                                  mutable'members
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "group_policy_as_admin"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"groupPolicyAsAdmin") y x)
                                  mutable'members
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "decision_policy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"decisionPolicy") y x)
                                  mutable'members
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'members
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'members <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'members)
          "MsgCreateGroupWithPolicy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"admin") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'members") _x))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"groupMetadata") _x
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
                               (Data.ProtoLens.Field.field @"groupPolicyMetadata") _x
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
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"groupPolicyAsAdmin") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0) _v))
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData MsgCreateGroupWithPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateGroupWithPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCreateGroupWithPolicy'admin x__)
                (Control.DeepSeq.deepseq
                   (_MsgCreateGroupWithPolicy'members x__)
                   (Control.DeepSeq.deepseq
                      (_MsgCreateGroupWithPolicy'groupMetadata x__)
                      (Control.DeepSeq.deepseq
                         (_MsgCreateGroupWithPolicy'groupPolicyMetadata x__)
                         (Control.DeepSeq.deepseq
                            (_MsgCreateGroupWithPolicy'groupPolicyAsAdmin x__)
                            (Control.DeepSeq.deepseq
                               (_MsgCreateGroupWithPolicy'decisionPolicy x__) ()))))))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.groupId' @:: Lens' MsgCreateGroupWithPolicyResponse Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.groupPolicyAddress' @:: Lens' MsgCreateGroupWithPolicyResponse Data.Text.Text@ -}
data MsgCreateGroupWithPolicyResponse
  = MsgCreateGroupWithPolicyResponse'_constructor {_MsgCreateGroupWithPolicyResponse'groupId :: !Data.Word.Word64,
                                                   _MsgCreateGroupWithPolicyResponse'groupPolicyAddress :: !Data.Text.Text,
                                                   _MsgCreateGroupWithPolicyResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateGroupWithPolicyResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreateGroupWithPolicyResponse "groupId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupWithPolicyResponse'groupId
           (\ x__ y__
              -> x__ {_MsgCreateGroupWithPolicyResponse'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateGroupWithPolicyResponse "groupPolicyAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateGroupWithPolicyResponse'groupPolicyAddress
           (\ x__ y__
              -> x__
                   {_MsgCreateGroupWithPolicyResponse'groupPolicyAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreateGroupWithPolicyResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgCreateGroupWithPolicyResponse"
  packedMessageDescriptor _
    = "\n\
      \ MsgCreateGroupWithPolicyResponse\DC2\EM\n\
      \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId\DC2J\n\
      \\DC4group_policy_address\CAN\STX \SOH(\tR\DC2groupPolicyAddressB\CAN\210\180-\DC4cosmos.AddressString"
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
              Data.ProtoLens.FieldDescriptor MsgCreateGroupWithPolicyResponse
        groupPolicyAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_policy_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupPolicyAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateGroupWithPolicyResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupId__field_descriptor),
           (Data.ProtoLens.Tag 2, groupPolicyAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateGroupWithPolicyResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgCreateGroupWithPolicyResponse'_unknownFields = y__})
  defMessage
    = MsgCreateGroupWithPolicyResponse'_constructor
        {_MsgCreateGroupWithPolicyResponse'groupId = Data.ProtoLens.fieldDefault,
         _MsgCreateGroupWithPolicyResponse'groupPolicyAddress = Data.ProtoLens.fieldDefault,
         _MsgCreateGroupWithPolicyResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateGroupWithPolicyResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateGroupWithPolicyResponse
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
                                       "group_policy_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"groupPolicyAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MsgCreateGroupWithPolicyResponse"
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MsgCreateGroupWithPolicyResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateGroupWithPolicyResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCreateGroupWithPolicyResponse'groupId x__)
                (Control.DeepSeq.deepseq
                   (_MsgCreateGroupWithPolicyResponse'groupPolicyAddress x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.proposalId' @:: Lens' MsgExec Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.executor' @:: Lens' MsgExec Data.Text.Text@ -}
data MsgExec
  = MsgExec'_constructor {_MsgExec'proposalId :: !Data.Word.Word64,
                          _MsgExec'executor :: !Data.Text.Text,
                          _MsgExec'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgExec where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgExec "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgExec'proposalId (\ x__ y__ -> x__ {_MsgExec'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgExec "executor" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgExec'executor (\ x__ y__ -> x__ {_MsgExec'executor = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgExec where
  messageName _ = Data.Text.pack "cosmos.group.v1.MsgExec"
  packedMessageDescriptor _
    = "\n\
      \\aMsgExec\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC24\n\
      \\bexecutor\CAN\STX \SOH(\tR\bexecutorB\CAN\210\180-\DC4cosmos.AddressString:*\130\231\176*\bexecutor\138\231\176*\CANcosmos-sdk/group/MsgExec"
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
              Data.ProtoLens.FieldDescriptor MsgExec
        executor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "executor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"executor")) ::
              Data.ProtoLens.FieldDescriptor MsgExec
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, executor__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgExec'_unknownFields
        (\ x__ y__ -> x__ {_MsgExec'_unknownFields = y__})
  defMessage
    = MsgExec'_constructor
        {_MsgExec'proposalId = Data.ProtoLens.fieldDefault,
         _MsgExec'executor = Data.ProtoLens.fieldDefault,
         _MsgExec'_unknownFields = []}
  parseMessage
    = let
        loop :: MsgExec -> Data.ProtoLens.Encoding.Bytes.Parser MsgExec
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
                                       "executor"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"executor") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgExec"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"executor") _x
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
instance Control.DeepSeq.NFData MsgExec where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgExec'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgExec'proposalId x__)
                (Control.DeepSeq.deepseq (_MsgExec'executor x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.result' @:: Lens' MsgExecResponse Proto.Cosmos.Group.V1.Types.ProposalExecutorResult@ -}
data MsgExecResponse
  = MsgExecResponse'_constructor {_MsgExecResponse'result :: !Proto.Cosmos.Group.V1.Types.ProposalExecutorResult,
                                  _MsgExecResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgExecResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgExecResponse "result" Proto.Cosmos.Group.V1.Types.ProposalExecutorResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgExecResponse'result
           (\ x__ y__ -> x__ {_MsgExecResponse'result = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgExecResponse where
  messageName _ = Data.Text.pack "cosmos.group.v1.MsgExecResponse"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgExecResponse\DC2?\n\
      \\ACKresult\CAN\STX \SOH(\SO2'.cosmos.group.v1.ProposalExecutorResultR\ACKresult"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.ProposalExecutorResult)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"result")) ::
              Data.ProtoLens.FieldDescriptor MsgExecResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, result__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgExecResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgExecResponse'_unknownFields = y__})
  defMessage
    = MsgExecResponse'_constructor
        {_MsgExecResponse'result = Data.ProtoLens.fieldDefault,
         _MsgExecResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgExecResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgExecResponse
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
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
          (do loop Data.ProtoLens.defMessage) "MsgExecResponse"
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
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgExecResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgExecResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MsgExecResponse'result x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.address' @:: Lens' MsgLeaveGroup Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.groupId' @:: Lens' MsgLeaveGroup Data.Word.Word64@ -}
data MsgLeaveGroup
  = MsgLeaveGroup'_constructor {_MsgLeaveGroup'address :: !Data.Text.Text,
                                _MsgLeaveGroup'groupId :: !Data.Word.Word64,
                                _MsgLeaveGroup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgLeaveGroup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgLeaveGroup "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgLeaveGroup'address
           (\ x__ y__ -> x__ {_MsgLeaveGroup'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgLeaveGroup "groupId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgLeaveGroup'groupId
           (\ x__ y__ -> x__ {_MsgLeaveGroup'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgLeaveGroup where
  messageName _ = Data.Text.pack "cosmos.group.v1.MsgLeaveGroup"
  packedMessageDescriptor _
    = "\n\
      \\rMsgLeaveGroup\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\EM\n\
      \\bgroup_id\CAN\STX \SOH(\EOTR\agroupId:/\130\231\176*\aaddress\138\231\176*\RScosmos-sdk/group/MsgLeaveGroup"
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
              Data.ProtoLens.FieldDescriptor MsgLeaveGroup
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor MsgLeaveGroup
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, groupId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgLeaveGroup'_unknownFields
        (\ x__ y__ -> x__ {_MsgLeaveGroup'_unknownFields = y__})
  defMessage
    = MsgLeaveGroup'_constructor
        {_MsgLeaveGroup'address = Data.ProtoLens.fieldDefault,
         _MsgLeaveGroup'groupId = Data.ProtoLens.fieldDefault,
         _MsgLeaveGroup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgLeaveGroup -> Data.ProtoLens.Encoding.Bytes.Parser MsgLeaveGroup
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgLeaveGroup"
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MsgLeaveGroup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgLeaveGroup'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgLeaveGroup'address x__)
                (Control.DeepSeq.deepseq (_MsgLeaveGroup'groupId x__) ()))
{- | Fields :
      -}
data MsgLeaveGroupResponse
  = MsgLeaveGroupResponse'_constructor {_MsgLeaveGroupResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgLeaveGroupResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgLeaveGroupResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgLeaveGroupResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKMsgLeaveGroupResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgLeaveGroupResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgLeaveGroupResponse'_unknownFields = y__})
  defMessage
    = MsgLeaveGroupResponse'_constructor
        {_MsgLeaveGroupResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgLeaveGroupResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgLeaveGroupResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgLeaveGroupResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgLeaveGroupResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgLeaveGroupResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.groupPolicyAddress' @:: Lens' MsgSubmitProposal Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.proposers' @:: Lens' MsgSubmitProposal [Data.Text.Text]@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.vec'proposers' @:: Lens' MsgSubmitProposal (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.metadata' @:: Lens' MsgSubmitProposal Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.messages' @:: Lens' MsgSubmitProposal [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.vec'messages' @:: Lens' MsgSubmitProposal (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.exec' @:: Lens' MsgSubmitProposal Exec@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.title' @:: Lens' MsgSubmitProposal Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.summary' @:: Lens' MsgSubmitProposal Data.Text.Text@ -}
data MsgSubmitProposal
  = MsgSubmitProposal'_constructor {_MsgSubmitProposal'groupPolicyAddress :: !Data.Text.Text,
                                    _MsgSubmitProposal'proposers :: !(Data.Vector.Vector Data.Text.Text),
                                    _MsgSubmitProposal'metadata :: !Data.Text.Text,
                                    _MsgSubmitProposal'messages :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                                    _MsgSubmitProposal'exec :: !Exec,
                                    _MsgSubmitProposal'title :: !Data.Text.Text,
                                    _MsgSubmitProposal'summary :: !Data.Text.Text,
                                    _MsgSubmitProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSubmitProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "groupPolicyAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'groupPolicyAddress
           (\ x__ y__ -> x__ {_MsgSubmitProposal'groupPolicyAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "proposers" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'proposers
           (\ x__ y__ -> x__ {_MsgSubmitProposal'proposers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "vec'proposers" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'proposers
           (\ x__ y__ -> x__ {_MsgSubmitProposal'proposers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'metadata
           (\ x__ y__ -> x__ {_MsgSubmitProposal'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "messages" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'messages
           (\ x__ y__ -> x__ {_MsgSubmitProposal'messages = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "vec'messages" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'messages
           (\ x__ y__ -> x__ {_MsgSubmitProposal'messages = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "exec" Exec where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'exec
           (\ x__ y__ -> x__ {_MsgSubmitProposal'exec = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "title" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'title
           (\ x__ y__ -> x__ {_MsgSubmitProposal'title = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "summary" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'summary
           (\ x__ y__ -> x__ {_MsgSubmitProposal'summary = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgSubmitProposal where
  messageName _ = Data.Text.pack "cosmos.group.v1.MsgSubmitProposal"
  packedMessageDescriptor _
    = "\n\
      \\DC1MsgSubmitProposal\DC2J\n\
      \\DC4group_policy_address\CAN\SOH \SOH(\tR\DC2groupPolicyAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\FS\n\
      \\tproposers\CAN\STX \ETX(\tR\tproposers\DC2\SUB\n\
      \\bmetadata\CAN\ETX \SOH(\tR\bmetadata\DC20\n\
      \\bmessages\CAN\EOT \ETX(\v2\DC4.google.protobuf.AnyR\bmessages\DC2)\n\
      \\EOTexec\CAN\ENQ \SOH(\SO2\NAK.cosmos.group.v1.ExecR\EOTexec\DC2\DC4\n\
      \\ENQtitle\CAN\ACK \SOH(\tR\ENQtitle\DC2\CAN\n\
      \\asummary\CAN\a \SOH(\tR\asummary:9\136\160\US\NUL\130\231\176*\tproposers\138\231\176*\"cosmos-sdk/group/MsgSubmitProposal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        groupPolicyAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_policy_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupPolicyAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitProposal
        proposers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"proposers")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitProposal
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitProposal
        messages__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "messages"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"messages")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitProposal
        exec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exec"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Exec)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"exec")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitProposal
        title__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "title"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"title")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitProposal
        summary__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "summary"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"summary")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitProposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupPolicyAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, proposers__field_descriptor),
           (Data.ProtoLens.Tag 3, metadata__field_descriptor),
           (Data.ProtoLens.Tag 4, messages__field_descriptor),
           (Data.ProtoLens.Tag 5, exec__field_descriptor),
           (Data.ProtoLens.Tag 6, title__field_descriptor),
           (Data.ProtoLens.Tag 7, summary__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSubmitProposal'_unknownFields
        (\ x__ y__ -> x__ {_MsgSubmitProposal'_unknownFields = y__})
  defMessage
    = MsgSubmitProposal'_constructor
        {_MsgSubmitProposal'groupPolicyAddress = Data.ProtoLens.fieldDefault,
         _MsgSubmitProposal'proposers = Data.Vector.Generic.empty,
         _MsgSubmitProposal'metadata = Data.ProtoLens.fieldDefault,
         _MsgSubmitProposal'messages = Data.Vector.Generic.empty,
         _MsgSubmitProposal'exec = Data.ProtoLens.fieldDefault,
         _MsgSubmitProposal'title = Data.ProtoLens.fieldDefault,
         _MsgSubmitProposal'summary = Data.ProtoLens.fieldDefault,
         _MsgSubmitProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSubmitProposal
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser MsgSubmitProposal
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
                                       "group_policy_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"groupPolicyAddress") y x)
                                  mutable'messages mutable'proposers
                        18
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
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "messages"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'messages y)
                                loop x v mutable'proposers
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "exec"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"exec") y x)
                                  mutable'messages mutable'proposers
                        50
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
                        58
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
          "MsgSubmitProposal"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"groupPolicyAddress") _x
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
                              Data.Text.Encoding.encodeUtf8 _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'proposers") _x))
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
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'messages") _x))
                      ((Data.Monoid.<>)
                         (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"exec") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"title") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8 _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v = Lens.Family2.view (Data.ProtoLens.Field.field @"summary") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((Prelude..)
                                           (\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8 _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData MsgSubmitProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSubmitProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgSubmitProposal'groupPolicyAddress x__)
                (Control.DeepSeq.deepseq
                   (_MsgSubmitProposal'proposers x__)
                   (Control.DeepSeq.deepseq
                      (_MsgSubmitProposal'metadata x__)
                      (Control.DeepSeq.deepseq
                         (_MsgSubmitProposal'messages x__)
                         (Control.DeepSeq.deepseq
                            (_MsgSubmitProposal'exec x__)
                            (Control.DeepSeq.deepseq
                               (_MsgSubmitProposal'title x__)
                               (Control.DeepSeq.deepseq (_MsgSubmitProposal'summary x__) ())))))))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.proposalId' @:: Lens' MsgSubmitProposalResponse Data.Word.Word64@ -}
data MsgSubmitProposalResponse
  = MsgSubmitProposalResponse'_constructor {_MsgSubmitProposalResponse'proposalId :: !Data.Word.Word64,
                                            _MsgSubmitProposalResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSubmitProposalResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgSubmitProposalResponse "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposalResponse'proposalId
           (\ x__ y__ -> x__ {_MsgSubmitProposalResponse'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgSubmitProposalResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgSubmitProposalResponse"
  packedMessageDescriptor _
    = "\n\
      \\EMMsgSubmitProposalResponse\DC2\US\n\
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
              Data.ProtoLens.FieldDescriptor MsgSubmitProposalResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSubmitProposalResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgSubmitProposalResponse'_unknownFields = y__})
  defMessage
    = MsgSubmitProposalResponse'_constructor
        {_MsgSubmitProposalResponse'proposalId = Data.ProtoLens.fieldDefault,
         _MsgSubmitProposalResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSubmitProposalResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgSubmitProposalResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgSubmitProposalResponse"
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
instance Control.DeepSeq.NFData MsgSubmitProposalResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSubmitProposalResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgSubmitProposalResponse'proposalId x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.admin' @:: Lens' MsgUpdateGroupAdmin Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.groupId' @:: Lens' MsgUpdateGroupAdmin Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.newAdmin' @:: Lens' MsgUpdateGroupAdmin Data.Text.Text@ -}
data MsgUpdateGroupAdmin
  = MsgUpdateGroupAdmin'_constructor {_MsgUpdateGroupAdmin'admin :: !Data.Text.Text,
                                      _MsgUpdateGroupAdmin'groupId :: !Data.Word.Word64,
                                      _MsgUpdateGroupAdmin'newAdmin :: !Data.Text.Text,
                                      _MsgUpdateGroupAdmin'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateGroupAdmin where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUpdateGroupAdmin "admin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupAdmin'admin
           (\ x__ y__ -> x__ {_MsgUpdateGroupAdmin'admin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupAdmin "groupId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupAdmin'groupId
           (\ x__ y__ -> x__ {_MsgUpdateGroupAdmin'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupAdmin "newAdmin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupAdmin'newAdmin
           (\ x__ y__ -> x__ {_MsgUpdateGroupAdmin'newAdmin = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateGroupAdmin where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgUpdateGroupAdmin"
  packedMessageDescriptor _
    = "\n\
      \\DC3MsgUpdateGroupAdmin\DC2.\n\
      \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2\EM\n\
      \\bgroup_id\CAN\STX \SOH(\EOTR\agroupId\DC25\n\
      \\tnew_admin\CAN\ETX \SOH(\tR\bnewAdminB\CAN\210\180-\DC4cosmos.AddressString:-\130\231\176*\ENQadmin\138\231\176*\RScosmos-sdk/MsgUpdateGroupAdmin"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        admin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "admin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"admin")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupAdmin
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupAdmin
        newAdmin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "new_admin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"newAdmin")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupAdmin
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, admin__field_descriptor),
           (Data.ProtoLens.Tag 2, groupId__field_descriptor),
           (Data.ProtoLens.Tag 3, newAdmin__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateGroupAdmin'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateGroupAdmin'_unknownFields = y__})
  defMessage
    = MsgUpdateGroupAdmin'_constructor
        {_MsgUpdateGroupAdmin'admin = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupAdmin'groupId = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupAdmin'newAdmin = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupAdmin'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateGroupAdmin
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateGroupAdmin
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
                                       "admin"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"admin") y x)
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
                                       "new_admin"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"newAdmin") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgUpdateGroupAdmin"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"admin") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"newAdmin") _x
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
instance Control.DeepSeq.NFData MsgUpdateGroupAdmin where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateGroupAdmin'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUpdateGroupAdmin'admin x__)
                (Control.DeepSeq.deepseq
                   (_MsgUpdateGroupAdmin'groupId x__)
                   (Control.DeepSeq.deepseq (_MsgUpdateGroupAdmin'newAdmin x__) ())))
{- | Fields :
      -}
data MsgUpdateGroupAdminResponse
  = MsgUpdateGroupAdminResponse'_constructor {_MsgUpdateGroupAdminResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateGroupAdminResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUpdateGroupAdminResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgUpdateGroupAdminResponse"
  packedMessageDescriptor _
    = "\n\
      \\ESCMsgUpdateGroupAdminResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateGroupAdminResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgUpdateGroupAdminResponse'_unknownFields = y__})
  defMessage
    = MsgUpdateGroupAdminResponse'_constructor
        {_MsgUpdateGroupAdminResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateGroupAdminResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateGroupAdminResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgUpdateGroupAdminResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUpdateGroupAdminResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateGroupAdminResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.admin' @:: Lens' MsgUpdateGroupMembers Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.groupId' @:: Lens' MsgUpdateGroupMembers Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.memberUpdates' @:: Lens' MsgUpdateGroupMembers [Proto.Cosmos.Group.V1.Types.MemberRequest]@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.vec'memberUpdates' @:: Lens' MsgUpdateGroupMembers (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.MemberRequest)@ -}
data MsgUpdateGroupMembers
  = MsgUpdateGroupMembers'_constructor {_MsgUpdateGroupMembers'admin :: !Data.Text.Text,
                                        _MsgUpdateGroupMembers'groupId :: !Data.Word.Word64,
                                        _MsgUpdateGroupMembers'memberUpdates :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.MemberRequest),
                                        _MsgUpdateGroupMembers'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateGroupMembers where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUpdateGroupMembers "admin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupMembers'admin
           (\ x__ y__ -> x__ {_MsgUpdateGroupMembers'admin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupMembers "groupId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupMembers'groupId
           (\ x__ y__ -> x__ {_MsgUpdateGroupMembers'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupMembers "memberUpdates" [Proto.Cosmos.Group.V1.Types.MemberRequest] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupMembers'memberUpdates
           (\ x__ y__ -> x__ {_MsgUpdateGroupMembers'memberUpdates = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgUpdateGroupMembers "vec'memberUpdates" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.MemberRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupMembers'memberUpdates
           (\ x__ y__ -> x__ {_MsgUpdateGroupMembers'memberUpdates = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateGroupMembers where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgUpdateGroupMembers"
  packedMessageDescriptor _
    = "\n\
      \\NAKMsgUpdateGroupMembers\DC2.\n\
      \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2\EM\n\
      \\bgroup_id\CAN\STX \SOH(\EOTR\agroupId\DC2P\n\
      \\SOmember_updates\CAN\ETX \ETX(\v2\RS.cosmos.group.v1.MemberRequestR\rmemberUpdatesB\t\200\222\US\NUL\168\231\176*\SOH:/\130\231\176*\ENQadmin\138\231\176* cosmos-sdk/MsgUpdateGroupMembers"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        admin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "admin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"admin")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupMembers
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupMembers
        memberUpdates__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "member_updates"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.MemberRequest)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"memberUpdates")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupMembers
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, admin__field_descriptor),
           (Data.ProtoLens.Tag 2, groupId__field_descriptor),
           (Data.ProtoLens.Tag 3, memberUpdates__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateGroupMembers'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateGroupMembers'_unknownFields = y__})
  defMessage
    = MsgUpdateGroupMembers'_constructor
        {_MsgUpdateGroupMembers'admin = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupMembers'groupId = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupMembers'memberUpdates = Data.Vector.Generic.empty,
         _MsgUpdateGroupMembers'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateGroupMembers
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.MemberRequest
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateGroupMembers
        loop x mutable'memberUpdates
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'memberUpdates <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'memberUpdates)
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
                              (Data.ProtoLens.Field.field @"vec'memberUpdates")
                              frozen'memberUpdates x))
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
                                       "admin"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"admin") y x)
                                  mutable'memberUpdates
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "group_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupId") y x)
                                  mutable'memberUpdates
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "member_updates"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'memberUpdates y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'memberUpdates
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'memberUpdates <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'memberUpdates)
          "MsgUpdateGroupMembers"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"admin") _x
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
                         (Data.ProtoLens.Field.field @"vec'memberUpdates") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgUpdateGroupMembers where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateGroupMembers'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUpdateGroupMembers'admin x__)
                (Control.DeepSeq.deepseq
                   (_MsgUpdateGroupMembers'groupId x__)
                   (Control.DeepSeq.deepseq
                      (_MsgUpdateGroupMembers'memberUpdates x__) ())))
{- | Fields :
      -}
data MsgUpdateGroupMembersResponse
  = MsgUpdateGroupMembersResponse'_constructor {_MsgUpdateGroupMembersResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateGroupMembersResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUpdateGroupMembersResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgUpdateGroupMembersResponse"
  packedMessageDescriptor _
    = "\n\
      \\GSMsgUpdateGroupMembersResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateGroupMembersResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgUpdateGroupMembersResponse'_unknownFields = y__})
  defMessage
    = MsgUpdateGroupMembersResponse'_constructor
        {_MsgUpdateGroupMembersResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateGroupMembersResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateGroupMembersResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgUpdateGroupMembersResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUpdateGroupMembersResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateGroupMembersResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.admin' @:: Lens' MsgUpdateGroupMetadata Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.groupId' @:: Lens' MsgUpdateGroupMetadata Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.metadata' @:: Lens' MsgUpdateGroupMetadata Data.Text.Text@ -}
data MsgUpdateGroupMetadata
  = MsgUpdateGroupMetadata'_constructor {_MsgUpdateGroupMetadata'admin :: !Data.Text.Text,
                                         _MsgUpdateGroupMetadata'groupId :: !Data.Word.Word64,
                                         _MsgUpdateGroupMetadata'metadata :: !Data.Text.Text,
                                         _MsgUpdateGroupMetadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateGroupMetadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUpdateGroupMetadata "admin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupMetadata'admin
           (\ x__ y__ -> x__ {_MsgUpdateGroupMetadata'admin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupMetadata "groupId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupMetadata'groupId
           (\ x__ y__ -> x__ {_MsgUpdateGroupMetadata'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupMetadata "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupMetadata'metadata
           (\ x__ y__ -> x__ {_MsgUpdateGroupMetadata'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateGroupMetadata where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgUpdateGroupMetadata"
  packedMessageDescriptor _
    = "\n\
      \\SYNMsgUpdateGroupMetadata\DC2.\n\
      \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2\EM\n\
      \\bgroup_id\CAN\STX \SOH(\EOTR\agroupId\DC2\SUB\n\
      \\bmetadata\CAN\ETX \SOH(\tR\bmetadata:0\130\231\176*\ENQadmin\138\231\176*!cosmos-sdk/MsgUpdateGroupMetadata"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        admin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "admin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"admin")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupMetadata
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupMetadata
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupMetadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, admin__field_descriptor),
           (Data.ProtoLens.Tag 2, groupId__field_descriptor),
           (Data.ProtoLens.Tag 3, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateGroupMetadata'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateGroupMetadata'_unknownFields = y__})
  defMessage
    = MsgUpdateGroupMetadata'_constructor
        {_MsgUpdateGroupMetadata'admin = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupMetadata'groupId = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupMetadata'metadata = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupMetadata'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateGroupMetadata
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateGroupMetadata
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
                                       "admin"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"admin") y x)
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
          (do loop Data.ProtoLens.defMessage) "MsgUpdateGroupMetadata"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"admin") _x
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
instance Control.DeepSeq.NFData MsgUpdateGroupMetadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateGroupMetadata'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUpdateGroupMetadata'admin x__)
                (Control.DeepSeq.deepseq
                   (_MsgUpdateGroupMetadata'groupId x__)
                   (Control.DeepSeq.deepseq
                      (_MsgUpdateGroupMetadata'metadata x__) ())))
{- | Fields :
      -}
data MsgUpdateGroupMetadataResponse
  = MsgUpdateGroupMetadataResponse'_constructor {_MsgUpdateGroupMetadataResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateGroupMetadataResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUpdateGroupMetadataResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgUpdateGroupMetadataResponse"
  packedMessageDescriptor _
    = "\n\
      \\RSMsgUpdateGroupMetadataResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateGroupMetadataResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgUpdateGroupMetadataResponse'_unknownFields = y__})
  defMessage
    = MsgUpdateGroupMetadataResponse'_constructor
        {_MsgUpdateGroupMetadataResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateGroupMetadataResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateGroupMetadataResponse
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
          (do loop Data.ProtoLens.defMessage)
          "MsgUpdateGroupMetadataResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUpdateGroupMetadataResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateGroupMetadataResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.admin' @:: Lens' MsgUpdateGroupPolicyAdmin Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.groupPolicyAddress' @:: Lens' MsgUpdateGroupPolicyAdmin Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.newAdmin' @:: Lens' MsgUpdateGroupPolicyAdmin Data.Text.Text@ -}
data MsgUpdateGroupPolicyAdmin
  = MsgUpdateGroupPolicyAdmin'_constructor {_MsgUpdateGroupPolicyAdmin'admin :: !Data.Text.Text,
                                            _MsgUpdateGroupPolicyAdmin'groupPolicyAddress :: !Data.Text.Text,
                                            _MsgUpdateGroupPolicyAdmin'newAdmin :: !Data.Text.Text,
                                            _MsgUpdateGroupPolicyAdmin'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateGroupPolicyAdmin where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUpdateGroupPolicyAdmin "admin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupPolicyAdmin'admin
           (\ x__ y__ -> x__ {_MsgUpdateGroupPolicyAdmin'admin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupPolicyAdmin "groupPolicyAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupPolicyAdmin'groupPolicyAddress
           (\ x__ y__
              -> x__ {_MsgUpdateGroupPolicyAdmin'groupPolicyAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupPolicyAdmin "newAdmin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupPolicyAdmin'newAdmin
           (\ x__ y__ -> x__ {_MsgUpdateGroupPolicyAdmin'newAdmin = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateGroupPolicyAdmin where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgUpdateGroupPolicyAdmin"
  packedMessageDescriptor _
    = "\n\
      \\EMMsgUpdateGroupPolicyAdmin\DC2.\n\
      \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2J\n\
      \\DC4group_policy_address\CAN\STX \SOH(\tR\DC2groupPolicyAddressB\CAN\210\180-\DC4cosmos.AddressString\DC25\n\
      \\tnew_admin\CAN\ETX \SOH(\tR\bnewAdminB\CAN\210\180-\DC4cosmos.AddressString:3\130\231\176*\ENQadmin\138\231\176*$cosmos-sdk/MsgUpdateGroupPolicyAdmin"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        admin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "admin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"admin")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupPolicyAdmin
        groupPolicyAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_policy_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupPolicyAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupPolicyAdmin
        newAdmin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "new_admin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"newAdmin")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupPolicyAdmin
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, admin__field_descriptor),
           (Data.ProtoLens.Tag 2, groupPolicyAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, newAdmin__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateGroupPolicyAdmin'_unknownFields
        (\ x__ y__
           -> x__ {_MsgUpdateGroupPolicyAdmin'_unknownFields = y__})
  defMessage
    = MsgUpdateGroupPolicyAdmin'_constructor
        {_MsgUpdateGroupPolicyAdmin'admin = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupPolicyAdmin'groupPolicyAddress = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupPolicyAdmin'newAdmin = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupPolicyAdmin'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateGroupPolicyAdmin
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateGroupPolicyAdmin
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
                                       "admin"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"admin") y x)
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
                                       "new_admin"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"newAdmin") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgUpdateGroupPolicyAdmin"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"admin") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"newAdmin") _x
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
instance Control.DeepSeq.NFData MsgUpdateGroupPolicyAdmin where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateGroupPolicyAdmin'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUpdateGroupPolicyAdmin'admin x__)
                (Control.DeepSeq.deepseq
                   (_MsgUpdateGroupPolicyAdmin'groupPolicyAddress x__)
                   (Control.DeepSeq.deepseq
                      (_MsgUpdateGroupPolicyAdmin'newAdmin x__) ())))
{- | Fields :
      -}
data MsgUpdateGroupPolicyAdminResponse
  = MsgUpdateGroupPolicyAdminResponse'_constructor {_MsgUpdateGroupPolicyAdminResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateGroupPolicyAdminResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUpdateGroupPolicyAdminResponse where
  messageName _
    = Data.Text.pack
        "cosmos.group.v1.MsgUpdateGroupPolicyAdminResponse"
  packedMessageDescriptor _
    = "\n\
      \!MsgUpdateGroupPolicyAdminResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateGroupPolicyAdminResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgUpdateGroupPolicyAdminResponse'_unknownFields = y__})
  defMessage
    = MsgUpdateGroupPolicyAdminResponse'_constructor
        {_MsgUpdateGroupPolicyAdminResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateGroupPolicyAdminResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateGroupPolicyAdminResponse
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
          (do loop Data.ProtoLens.defMessage)
          "MsgUpdateGroupPolicyAdminResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUpdateGroupPolicyAdminResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateGroupPolicyAdminResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.admin' @:: Lens' MsgUpdateGroupPolicyDecisionPolicy Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.groupPolicyAddress' @:: Lens' MsgUpdateGroupPolicyDecisionPolicy Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.decisionPolicy' @:: Lens' MsgUpdateGroupPolicyDecisionPolicy Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.maybe'decisionPolicy' @:: Lens' MsgUpdateGroupPolicyDecisionPolicy (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data MsgUpdateGroupPolicyDecisionPolicy
  = MsgUpdateGroupPolicyDecisionPolicy'_constructor {_MsgUpdateGroupPolicyDecisionPolicy'admin :: !Data.Text.Text,
                                                     _MsgUpdateGroupPolicyDecisionPolicy'groupPolicyAddress :: !Data.Text.Text,
                                                     _MsgUpdateGroupPolicyDecisionPolicy'decisionPolicy :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                     _MsgUpdateGroupPolicyDecisionPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateGroupPolicyDecisionPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUpdateGroupPolicyDecisionPolicy "admin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupPolicyDecisionPolicy'admin
           (\ x__ y__
              -> x__ {_MsgUpdateGroupPolicyDecisionPolicy'admin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupPolicyDecisionPolicy "groupPolicyAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupPolicyDecisionPolicy'groupPolicyAddress
           (\ x__ y__
              -> x__
                   {_MsgUpdateGroupPolicyDecisionPolicy'groupPolicyAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupPolicyDecisionPolicy "decisionPolicy" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupPolicyDecisionPolicy'decisionPolicy
           (\ x__ y__
              -> x__ {_MsgUpdateGroupPolicyDecisionPolicy'decisionPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgUpdateGroupPolicyDecisionPolicy "maybe'decisionPolicy" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupPolicyDecisionPolicy'decisionPolicy
           (\ x__ y__
              -> x__ {_MsgUpdateGroupPolicyDecisionPolicy'decisionPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateGroupPolicyDecisionPolicy where
  messageName _
    = Data.Text.pack
        "cosmos.group.v1.MsgUpdateGroupPolicyDecisionPolicy"
  packedMessageDescriptor _
    = "\n\
      \\"MsgUpdateGroupPolicyDecisionPolicy\DC2.\n\
      \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2J\n\
      \\DC4group_policy_address\CAN\STX \SOH(\tR\DC2groupPolicyAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2a\n\
      \\SIdecision_policy\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\SOdecisionPolicyB\"\202\180-\RScosmos.group.v1.DecisionPolicy::\136\160\US\NUL\130\231\176*\ENQadmin\138\231\176*'cosmos-sdk/MsgUpdateGroupDecisionPolicy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        admin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "admin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"admin")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupPolicyDecisionPolicy
        groupPolicyAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_policy_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupPolicyAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupPolicyDecisionPolicy
        decisionPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "decision_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'decisionPolicy")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupPolicyDecisionPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, admin__field_descriptor),
           (Data.ProtoLens.Tag 2, groupPolicyAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, decisionPolicy__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateGroupPolicyDecisionPolicy'_unknownFields
        (\ x__ y__
           -> x__ {_MsgUpdateGroupPolicyDecisionPolicy'_unknownFields = y__})
  defMessage
    = MsgUpdateGroupPolicyDecisionPolicy'_constructor
        {_MsgUpdateGroupPolicyDecisionPolicy'admin = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupPolicyDecisionPolicy'groupPolicyAddress = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupPolicyDecisionPolicy'decisionPolicy = Prelude.Nothing,
         _MsgUpdateGroupPolicyDecisionPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateGroupPolicyDecisionPolicy
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateGroupPolicyDecisionPolicy
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
                                       "admin"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"admin") y x)
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
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "decision_policy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"decisionPolicy") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MsgUpdateGroupPolicyDecisionPolicy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"admin") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'decisionPolicy") _x
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
instance Control.DeepSeq.NFData MsgUpdateGroupPolicyDecisionPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateGroupPolicyDecisionPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUpdateGroupPolicyDecisionPolicy'admin x__)
                (Control.DeepSeq.deepseq
                   (_MsgUpdateGroupPolicyDecisionPolicy'groupPolicyAddress x__)
                   (Control.DeepSeq.deepseq
                      (_MsgUpdateGroupPolicyDecisionPolicy'decisionPolicy x__) ())))
{- | Fields :
      -}
data MsgUpdateGroupPolicyDecisionPolicyResponse
  = MsgUpdateGroupPolicyDecisionPolicyResponse'_constructor {_MsgUpdateGroupPolicyDecisionPolicyResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateGroupPolicyDecisionPolicyResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUpdateGroupPolicyDecisionPolicyResponse where
  messageName _
    = Data.Text.pack
        "cosmos.group.v1.MsgUpdateGroupPolicyDecisionPolicyResponse"
  packedMessageDescriptor _
    = "\n\
      \*MsgUpdateGroupPolicyDecisionPolicyResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateGroupPolicyDecisionPolicyResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_MsgUpdateGroupPolicyDecisionPolicyResponse'_unknownFields = y__})
  defMessage
    = MsgUpdateGroupPolicyDecisionPolicyResponse'_constructor
        {_MsgUpdateGroupPolicyDecisionPolicyResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateGroupPolicyDecisionPolicyResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateGroupPolicyDecisionPolicyResponse
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
          (do loop Data.ProtoLens.defMessage)
          "MsgUpdateGroupPolicyDecisionPolicyResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUpdateGroupPolicyDecisionPolicyResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateGroupPolicyDecisionPolicyResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.admin' @:: Lens' MsgUpdateGroupPolicyMetadata Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.groupPolicyAddress' @:: Lens' MsgUpdateGroupPolicyMetadata Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.metadata' @:: Lens' MsgUpdateGroupPolicyMetadata Data.Text.Text@ -}
data MsgUpdateGroupPolicyMetadata
  = MsgUpdateGroupPolicyMetadata'_constructor {_MsgUpdateGroupPolicyMetadata'admin :: !Data.Text.Text,
                                               _MsgUpdateGroupPolicyMetadata'groupPolicyAddress :: !Data.Text.Text,
                                               _MsgUpdateGroupPolicyMetadata'metadata :: !Data.Text.Text,
                                               _MsgUpdateGroupPolicyMetadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateGroupPolicyMetadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUpdateGroupPolicyMetadata "admin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupPolicyMetadata'admin
           (\ x__ y__ -> x__ {_MsgUpdateGroupPolicyMetadata'admin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupPolicyMetadata "groupPolicyAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupPolicyMetadata'groupPolicyAddress
           (\ x__ y__
              -> x__ {_MsgUpdateGroupPolicyMetadata'groupPolicyAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateGroupPolicyMetadata "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateGroupPolicyMetadata'metadata
           (\ x__ y__ -> x__ {_MsgUpdateGroupPolicyMetadata'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateGroupPolicyMetadata where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgUpdateGroupPolicyMetadata"
  packedMessageDescriptor _
    = "\n\
      \\FSMsgUpdateGroupPolicyMetadata\DC2.\n\
      \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2J\n\
      \\DC4group_policy_address\CAN\STX \SOH(\tR\DC2groupPolicyAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
      \\bmetadata\CAN\ETX \SOH(\tR\bmetadata:6\130\231\176*\ENQadmin\138\231\176*'cosmos-sdk/MsgUpdateGroupPolicyMetadata"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        admin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "admin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"admin")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupPolicyMetadata
        groupPolicyAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_policy_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupPolicyAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupPolicyMetadata
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateGroupPolicyMetadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, admin__field_descriptor),
           (Data.ProtoLens.Tag 2, groupPolicyAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateGroupPolicyMetadata'_unknownFields
        (\ x__ y__
           -> x__ {_MsgUpdateGroupPolicyMetadata'_unknownFields = y__})
  defMessage
    = MsgUpdateGroupPolicyMetadata'_constructor
        {_MsgUpdateGroupPolicyMetadata'admin = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupPolicyMetadata'groupPolicyAddress = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupPolicyMetadata'metadata = Data.ProtoLens.fieldDefault,
         _MsgUpdateGroupPolicyMetadata'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateGroupPolicyMetadata
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateGroupPolicyMetadata
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
                                       "admin"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"admin") y x)
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
          (do loop Data.ProtoLens.defMessage) "MsgUpdateGroupPolicyMetadata"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"admin") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgUpdateGroupPolicyMetadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateGroupPolicyMetadata'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUpdateGroupPolicyMetadata'admin x__)
                (Control.DeepSeq.deepseq
                   (_MsgUpdateGroupPolicyMetadata'groupPolicyAddress x__)
                   (Control.DeepSeq.deepseq
                      (_MsgUpdateGroupPolicyMetadata'metadata x__) ())))
{- | Fields :
      -}
data MsgUpdateGroupPolicyMetadataResponse
  = MsgUpdateGroupPolicyMetadataResponse'_constructor {_MsgUpdateGroupPolicyMetadataResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateGroupPolicyMetadataResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUpdateGroupPolicyMetadataResponse where
  messageName _
    = Data.Text.pack
        "cosmos.group.v1.MsgUpdateGroupPolicyMetadataResponse"
  packedMessageDescriptor _
    = "\n\
      \$MsgUpdateGroupPolicyMetadataResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateGroupPolicyMetadataResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_MsgUpdateGroupPolicyMetadataResponse'_unknownFields = y__})
  defMessage
    = MsgUpdateGroupPolicyMetadataResponse'_constructor
        {_MsgUpdateGroupPolicyMetadataResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateGroupPolicyMetadataResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateGroupPolicyMetadataResponse
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
          (do loop Data.ProtoLens.defMessage)
          "MsgUpdateGroupPolicyMetadataResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUpdateGroupPolicyMetadataResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateGroupPolicyMetadataResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.proposalId' @:: Lens' MsgVote Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.voter' @:: Lens' MsgVote Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.option' @:: Lens' MsgVote Proto.Cosmos.Group.V1.Types.VoteOption@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.metadata' @:: Lens' MsgVote Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.exec' @:: Lens' MsgVote Exec@ -}
data MsgVote
  = MsgVote'_constructor {_MsgVote'proposalId :: !Data.Word.Word64,
                          _MsgVote'voter :: !Data.Text.Text,
                          _MsgVote'option :: !Proto.Cosmos.Group.V1.Types.VoteOption,
                          _MsgVote'metadata :: !Data.Text.Text,
                          _MsgVote'exec :: !Exec,
                          _MsgVote'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgVote where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgVote "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVote'proposalId (\ x__ y__ -> x__ {_MsgVote'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgVote "voter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVote'voter (\ x__ y__ -> x__ {_MsgVote'voter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgVote "option" Proto.Cosmos.Group.V1.Types.VoteOption where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVote'option (\ x__ y__ -> x__ {_MsgVote'option = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgVote "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVote'metadata (\ x__ y__ -> x__ {_MsgVote'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgVote "exec" Exec where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVote'exec (\ x__ y__ -> x__ {_MsgVote'exec = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgVote where
  messageName _ = Data.Text.pack "cosmos.group.v1.MsgVote"
  packedMessageDescriptor _
    = "\n\
      \\aMsgVote\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC2.\n\
      \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC23\n\
      \\ACKoption\CAN\ETX \SOH(\SO2\ESC.cosmos.group.v1.VoteOptionR\ACKoption\DC2\SUB\n\
      \\bmetadata\CAN\EOT \SOH(\tR\bmetadata\DC2)\n\
      \\EOTexec\CAN\ENQ \SOH(\SO2\NAK.cosmos.group.v1.ExecR\EOTexec:'\130\231\176*\ENQvoter\138\231\176*\CANcosmos-sdk/group/MsgVote"
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
              Data.ProtoLens.FieldDescriptor MsgVote
        voter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"voter")) ::
              Data.ProtoLens.FieldDescriptor MsgVote
        option__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "option"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.VoteOption)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"option")) ::
              Data.ProtoLens.FieldDescriptor MsgVote
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor MsgVote
        exec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exec"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Exec)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"exec")) ::
              Data.ProtoLens.FieldDescriptor MsgVote
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, voter__field_descriptor),
           (Data.ProtoLens.Tag 3, option__field_descriptor),
           (Data.ProtoLens.Tag 4, metadata__field_descriptor),
           (Data.ProtoLens.Tag 5, exec__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgVote'_unknownFields
        (\ x__ y__ -> x__ {_MsgVote'_unknownFields = y__})
  defMessage
    = MsgVote'_constructor
        {_MsgVote'proposalId = Data.ProtoLens.fieldDefault,
         _MsgVote'voter = Data.ProtoLens.fieldDefault,
         _MsgVote'option = Data.ProtoLens.fieldDefault,
         _MsgVote'metadata = Data.ProtoLens.fieldDefault,
         _MsgVote'exec = Data.ProtoLens.fieldDefault,
         _MsgVote'_unknownFields = []}
  parseMessage
    = let
        loop :: MsgVote -> Data.ProtoLens.Encoding.Bytes.Parser MsgVote
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
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "exec"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"exec") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgVote"
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
                         (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"exec") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData MsgVote where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgVote'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgVote'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_MsgVote'voter x__)
                   (Control.DeepSeq.deepseq
                      (_MsgVote'option x__)
                      (Control.DeepSeq.deepseq
                         (_MsgVote'metadata x__)
                         (Control.DeepSeq.deepseq (_MsgVote'exec x__) ())))))
{- | Fields :
      -}
data MsgVoteResponse
  = MsgVoteResponse'_constructor {_MsgVoteResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgVoteResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgVoteResponse where
  messageName _ = Data.Text.pack "cosmos.group.v1.MsgVoteResponse"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgVoteResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgVoteResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgVoteResponse'_unknownFields = y__})
  defMessage
    = MsgVoteResponse'_constructor
        {_MsgVoteResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgVoteResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgVoteResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgVoteResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgVoteResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_MsgVoteResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Tx_Fields.proposalId' @:: Lens' MsgWithdrawProposal Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Tx_Fields.address' @:: Lens' MsgWithdrawProposal Data.Text.Text@ -}
data MsgWithdrawProposal
  = MsgWithdrawProposal'_constructor {_MsgWithdrawProposal'proposalId :: !Data.Word.Word64,
                                      _MsgWithdrawProposal'address :: !Data.Text.Text,
                                      _MsgWithdrawProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgWithdrawProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgWithdrawProposal "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgWithdrawProposal'proposalId
           (\ x__ y__ -> x__ {_MsgWithdrawProposal'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgWithdrawProposal "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgWithdrawProposal'address
           (\ x__ y__ -> x__ {_MsgWithdrawProposal'address = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgWithdrawProposal where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgWithdrawProposal"
  packedMessageDescriptor _
    = "\n\
      \\DC3MsgWithdrawProposal\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC22\n\
      \\aaddress\CAN\STX \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString:5\130\231\176*\aaddress\138\231\176*$cosmos-sdk/group/MsgWithdrawProposal"
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
              Data.ProtoLens.FieldDescriptor MsgWithdrawProposal
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor MsgWithdrawProposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, address__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgWithdrawProposal'_unknownFields
        (\ x__ y__ -> x__ {_MsgWithdrawProposal'_unknownFields = y__})
  defMessage
    = MsgWithdrawProposal'_constructor
        {_MsgWithdrawProposal'proposalId = Data.ProtoLens.fieldDefault,
         _MsgWithdrawProposal'address = Data.ProtoLens.fieldDefault,
         _MsgWithdrawProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgWithdrawProposal
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgWithdrawProposal
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
          (do loop Data.ProtoLens.defMessage) "MsgWithdrawProposal"
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
instance Control.DeepSeq.NFData MsgWithdrawProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgWithdrawProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgWithdrawProposal'proposalId x__)
                (Control.DeepSeq.deepseq (_MsgWithdrawProposal'address x__) ()))
{- | Fields :
      -}
data MsgWithdrawProposalResponse
  = MsgWithdrawProposalResponse'_constructor {_MsgWithdrawProposalResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgWithdrawProposalResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgWithdrawProposalResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.MsgWithdrawProposalResponse"
  packedMessageDescriptor _
    = "\n\
      \\ESCMsgWithdrawProposalResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgWithdrawProposalResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgWithdrawProposalResponse'_unknownFields = y__})
  defMessage
    = MsgWithdrawProposalResponse'_constructor
        {_MsgWithdrawProposalResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgWithdrawProposalResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgWithdrawProposalResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgWithdrawProposalResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgWithdrawProposalResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgWithdrawProposalResponse'_unknownFields x__) ()
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "cosmos.group.v1"
  type ServiceMethods Msg = '["createGroup",
                              "createGroupPolicy",
                              "createGroupWithPolicy",
                              "exec",
                              "leaveGroup",
                              "submitProposal",
                              "updateGroupAdmin",
                              "updateGroupMembers",
                              "updateGroupMetadata",
                              "updateGroupPolicyAdmin",
                              "updateGroupPolicyDecisionPolicy",
                              "updateGroupPolicyMetadata",
                              "vote",
                              "withdrawProposal"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2W\n\
      \\vCreateGroup\DC2\US.cosmos.group.v1.MsgCreateGroup\SUB'.cosmos.group.v1.MsgCreateGroupResponse\DC2l\n\
      \\DC2UpdateGroupMembers\DC2&.cosmos.group.v1.MsgUpdateGroupMembers\SUB..cosmos.group.v1.MsgUpdateGroupMembersResponse\DC2f\n\
      \\DLEUpdateGroupAdmin\DC2$.cosmos.group.v1.MsgUpdateGroupAdmin\SUB,.cosmos.group.v1.MsgUpdateGroupAdminResponse\DC2o\n\
      \\DC3UpdateGroupMetadata\DC2'.cosmos.group.v1.MsgUpdateGroupMetadata\SUB/.cosmos.group.v1.MsgUpdateGroupMetadataResponse\DC2i\n\
      \\DC1CreateGroupPolicy\DC2%.cosmos.group.v1.MsgCreateGroupPolicy\SUB-.cosmos.group.v1.MsgCreateGroupPolicyResponse\DC2u\n\
      \\NAKCreateGroupWithPolicy\DC2).cosmos.group.v1.MsgCreateGroupWithPolicy\SUB1.cosmos.group.v1.MsgCreateGroupWithPolicyResponse\DC2x\n\
      \\SYNUpdateGroupPolicyAdmin\DC2*.cosmos.group.v1.MsgUpdateGroupPolicyAdmin\SUB2.cosmos.group.v1.MsgUpdateGroupPolicyAdminResponse\DC2\147\SOH\n\
      \\USUpdateGroupPolicyDecisionPolicy\DC23.cosmos.group.v1.MsgUpdateGroupPolicyDecisionPolicy\SUB;.cosmos.group.v1.MsgUpdateGroupPolicyDecisionPolicyResponse\DC2\129\SOH\n\
      \\EMUpdateGroupPolicyMetadata\DC2-.cosmos.group.v1.MsgUpdateGroupPolicyMetadata\SUB5.cosmos.group.v1.MsgUpdateGroupPolicyMetadataResponse\DC2`\n\
      \\SOSubmitProposal\DC2\".cosmos.group.v1.MsgSubmitProposal\SUB*.cosmos.group.v1.MsgSubmitProposalResponse\DC2f\n\
      \\DLEWithdrawProposal\DC2$.cosmos.group.v1.MsgWithdrawProposal\SUB,.cosmos.group.v1.MsgWithdrawProposalResponse\DC2B\n\
      \\EOTVote\DC2\CAN.cosmos.group.v1.MsgVote\SUB .cosmos.group.v1.MsgVoteResponse\DC2B\n\
      \\EOTExec\DC2\CAN.cosmos.group.v1.MsgExec\SUB .cosmos.group.v1.MsgExecResponse\DC2T\n\
      \\n\
      \LeaveGroup\DC2\RS.cosmos.group.v1.MsgLeaveGroup\SUB&.cosmos.group.v1.MsgLeaveGroupResponse\SUB\ENQ\128\231\176*\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "createGroup" where
  type MethodName Msg "createGroup" = "CreateGroup"
  type MethodInput Msg "createGroup" = MsgCreateGroup
  type MethodOutput Msg "createGroup" = MsgCreateGroupResponse
  type MethodStreamingType Msg "createGroup" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateGroupMembers" where
  type MethodName Msg "updateGroupMembers" = "UpdateGroupMembers"
  type MethodInput Msg "updateGroupMembers" = MsgUpdateGroupMembers
  type MethodOutput Msg "updateGroupMembers" = MsgUpdateGroupMembersResponse
  type MethodStreamingType Msg "updateGroupMembers" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateGroupAdmin" where
  type MethodName Msg "updateGroupAdmin" = "UpdateGroupAdmin"
  type MethodInput Msg "updateGroupAdmin" = MsgUpdateGroupAdmin
  type MethodOutput Msg "updateGroupAdmin" = MsgUpdateGroupAdminResponse
  type MethodStreamingType Msg "updateGroupAdmin" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateGroupMetadata" where
  type MethodName Msg "updateGroupMetadata" = "UpdateGroupMetadata"
  type MethodInput Msg "updateGroupMetadata" = MsgUpdateGroupMetadata
  type MethodOutput Msg "updateGroupMetadata" = MsgUpdateGroupMetadataResponse
  type MethodStreamingType Msg "updateGroupMetadata" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "createGroupPolicy" where
  type MethodName Msg "createGroupPolicy" = "CreateGroupPolicy"
  type MethodInput Msg "createGroupPolicy" = MsgCreateGroupPolicy
  type MethodOutput Msg "createGroupPolicy" = MsgCreateGroupPolicyResponse
  type MethodStreamingType Msg "createGroupPolicy" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "createGroupWithPolicy" where
  type MethodName Msg "createGroupWithPolicy" = "CreateGroupWithPolicy"
  type MethodInput Msg "createGroupWithPolicy" = MsgCreateGroupWithPolicy
  type MethodOutput Msg "createGroupWithPolicy" = MsgCreateGroupWithPolicyResponse
  type MethodStreamingType Msg "createGroupWithPolicy" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateGroupPolicyAdmin" where
  type MethodName Msg "updateGroupPolicyAdmin" = "UpdateGroupPolicyAdmin"
  type MethodInput Msg "updateGroupPolicyAdmin" = MsgUpdateGroupPolicyAdmin
  type MethodOutput Msg "updateGroupPolicyAdmin" = MsgUpdateGroupPolicyAdminResponse
  type MethodStreamingType Msg "updateGroupPolicyAdmin" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateGroupPolicyDecisionPolicy" where
  type MethodName Msg "updateGroupPolicyDecisionPolicy" = "UpdateGroupPolicyDecisionPolicy"
  type MethodInput Msg "updateGroupPolicyDecisionPolicy" = MsgUpdateGroupPolicyDecisionPolicy
  type MethodOutput Msg "updateGroupPolicyDecisionPolicy" = MsgUpdateGroupPolicyDecisionPolicyResponse
  type MethodStreamingType Msg "updateGroupPolicyDecisionPolicy" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateGroupPolicyMetadata" where
  type MethodName Msg "updateGroupPolicyMetadata" = "UpdateGroupPolicyMetadata"
  type MethodInput Msg "updateGroupPolicyMetadata" = MsgUpdateGroupPolicyMetadata
  type MethodOutput Msg "updateGroupPolicyMetadata" = MsgUpdateGroupPolicyMetadataResponse
  type MethodStreamingType Msg "updateGroupPolicyMetadata" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "submitProposal" where
  type MethodName Msg "submitProposal" = "SubmitProposal"
  type MethodInput Msg "submitProposal" = MsgSubmitProposal
  type MethodOutput Msg "submitProposal" = MsgSubmitProposalResponse
  type MethodStreamingType Msg "submitProposal" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "withdrawProposal" where
  type MethodName Msg "withdrawProposal" = "WithdrawProposal"
  type MethodInput Msg "withdrawProposal" = MsgWithdrawProposal
  type MethodOutput Msg "withdrawProposal" = MsgWithdrawProposalResponse
  type MethodStreamingType Msg "withdrawProposal" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "vote" where
  type MethodName Msg "vote" = "Vote"
  type MethodInput Msg "vote" = MsgVote
  type MethodOutput Msg "vote" = MsgVoteResponse
  type MethodStreamingType Msg "vote" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "exec" where
  type MethodName Msg "exec" = "Exec"
  type MethodInput Msg "exec" = MsgExec
  type MethodOutput Msg "exec" = MsgExecResponse
  type MethodStreamingType Msg "exec" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "leaveGroup" where
  type MethodName Msg "leaveGroup" = "LeaveGroup"
  type MethodInput Msg "leaveGroup" = MsgLeaveGroup
  type MethodOutput Msg "leaveGroup" = MsgLeaveGroupResponse
  type MethodStreamingType Msg "leaveGroup" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\CANcosmos/group/v1/tx.proto\DC2\SIcosmos.group.v1\SUB\DC4gogoproto/gogo.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\EMgoogle/protobuf/any.proto\SUB\ESCcosmos/group/v1/types.proto\SUB\ETBcosmos/msg/v1/msg.proto\SUB\DC1amino/amino.proto\"\203\SOH\n\
    \\SOMsgCreateGroup\DC2.\n\
    \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
    \\amembers\CAN\STX \ETX(\v2\RS.cosmos.group.v1.MemberRequestR\amembersB\t\200\222\US\NUL\168\231\176*\SOH\DC2\SUB\n\
    \\bmetadata\CAN\ETX \SOH(\tR\bmetadata:(\130\231\176*\ENQadmin\138\231\176*\EMcosmos-sdk/MsgCreateGroup\"3\n\
    \\SYNMsgCreateGroupResponse\DC2\EM\n\
    \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId\"\229\SOH\n\
    \\NAKMsgUpdateGroupMembers\DC2.\n\
    \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2\EM\n\
    \\bgroup_id\CAN\STX \SOH(\EOTR\agroupId\DC2P\n\
    \\SOmember_updates\CAN\ETX \ETX(\v2\RS.cosmos.group.v1.MemberRequestR\rmemberUpdatesB\t\200\222\US\NUL\168\231\176*\SOH:/\130\231\176*\ENQadmin\138\231\176* cosmos-sdk/MsgUpdateGroupMembers\"\US\n\
    \\GSMsgUpdateGroupMembersResponse\"\198\SOH\n\
    \\DC3MsgUpdateGroupAdmin\DC2.\n\
    \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2\EM\n\
    \\bgroup_id\CAN\STX \SOH(\EOTR\agroupId\DC25\n\
    \\tnew_admin\CAN\ETX \SOH(\tR\bnewAdminB\CAN\210\180-\DC4cosmos.AddressString:-\130\231\176*\ENQadmin\138\231\176*\RScosmos-sdk/MsgUpdateGroupAdmin\"\GS\n\
    \\ESCMsgUpdateGroupAdminResponse\"\177\SOH\n\
    \\SYNMsgUpdateGroupMetadata\DC2.\n\
    \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2\EM\n\
    \\bgroup_id\CAN\STX \SOH(\EOTR\agroupId\DC2\SUB\n\
    \\bmetadata\CAN\ETX \SOH(\tR\bmetadata:0\130\231\176*\ENQadmin\138\231\176*!cosmos-sdk/MsgUpdateGroupMetadata\" \n\
    \\RSMsgUpdateGroupMetadataResponse\"\148\STX\n\
    \\DC4MsgCreateGroupPolicy\DC2.\n\
    \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2\EM\n\
    \\bgroup_id\CAN\STX \SOH(\EOTR\agroupId\DC2\SUB\n\
    \\bmetadata\CAN\ETX \SOH(\tR\bmetadata\DC2a\n\
    \\SIdecision_policy\CAN\EOT \SOH(\v2\DC4.google.protobuf.AnyR\SOdecisionPolicyB\"\202\180-\RScosmos.group.v1.DecisionPolicy:2\136\160\US\NUL\130\231\176*\ENQadmin\138\231\176*\UScosmos-sdk/MsgCreateGroupPolicy\"R\n\
    \\FSMsgCreateGroupPolicyResponse\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\"\131\STX\n\
    \\EMMsgUpdateGroupPolicyAdmin\DC2.\n\
    \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2J\n\
    \\DC4group_policy_address\CAN\STX \SOH(\tR\DC2groupPolicyAddressB\CAN\210\180-\DC4cosmos.AddressString\DC25\n\
    \\tnew_admin\CAN\ETX \SOH(\tR\bnewAdminB\CAN\210\180-\DC4cosmos.AddressString:3\130\231\176*\ENQadmin\138\231\176*$cosmos-sdk/MsgUpdateGroupPolicyAdmin\"#\n\
    \!MsgUpdateGroupPolicyAdminResponse\"\184\ETX\n\
    \\CANMsgCreateGroupWithPolicy\DC2.\n\
    \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
    \\amembers\CAN\STX \ETX(\v2\RS.cosmos.group.v1.MemberRequestR\amembersB\t\200\222\US\NUL\168\231\176*\SOH\DC2%\n\
    \\SOgroup_metadata\CAN\ETX \SOH(\tR\rgroupMetadata\DC22\n\
    \\NAKgroup_policy_metadata\CAN\EOT \SOH(\tR\DC3groupPolicyMetadata\DC21\n\
    \\NAKgroup_policy_as_admin\CAN\ENQ \SOH(\bR\DC2groupPolicyAsAdmin\DC2a\n\
    \\SIdecision_policy\CAN\ACK \SOH(\v2\DC4.google.protobuf.AnyR\SOdecisionPolicyB\"\202\180-\RScosmos.group.v1.DecisionPolicy:6\136\160\US\NUL\130\231\176*\ENQadmin\138\231\176*#cosmos-sdk/MsgCreateGroupWithPolicy\"\137\SOH\n\
    \ MsgCreateGroupWithPolicyResponse\DC2\EM\n\
    \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId\DC2J\n\
    \\DC4group_policy_address\CAN\STX \SOH(\tR\DC2groupPolicyAddressB\CAN\210\180-\DC4cosmos.AddressString\"\191\STX\n\
    \\"MsgUpdateGroupPolicyDecisionPolicy\DC2.\n\
    \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2J\n\
    \\DC4group_policy_address\CAN\STX \SOH(\tR\DC2groupPolicyAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2a\n\
    \\SIdecision_policy\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\SOdecisionPolicyB\"\202\180-\RScosmos.group.v1.DecisionPolicy::\136\160\US\NUL\130\231\176*\ENQadmin\138\231\176*'cosmos-sdk/MsgUpdateGroupDecisionPolicy\",\n\
    \*MsgUpdateGroupPolicyDecisionPolicyResponse\"\238\SOH\n\
    \\FSMsgUpdateGroupPolicyMetadata\DC2.\n\
    \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2J\n\
    \\DC4group_policy_address\CAN\STX \SOH(\tR\DC2groupPolicyAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
    \\bmetadata\CAN\ETX \SOH(\tR\bmetadata:6\130\231\176*\ENQadmin\138\231\176*'cosmos-sdk/MsgUpdateGroupPolicyMetadata\"&\n\
    \$MsgUpdateGroupPolicyMetadataResponse\"\225\STX\n\
    \\DC1MsgSubmitProposal\DC2J\n\
    \\DC4group_policy_address\CAN\SOH \SOH(\tR\DC2groupPolicyAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\FS\n\
    \\tproposers\CAN\STX \ETX(\tR\tproposers\DC2\SUB\n\
    \\bmetadata\CAN\ETX \SOH(\tR\bmetadata\DC20\n\
    \\bmessages\CAN\EOT \ETX(\v2\DC4.google.protobuf.AnyR\bmessages\DC2)\n\
    \\EOTexec\CAN\ENQ \SOH(\SO2\NAK.cosmos.group.v1.ExecR\EOTexec\DC2\DC4\n\
    \\ENQtitle\CAN\ACK \SOH(\tR\ENQtitle\DC2\CAN\n\
    \\asummary\CAN\a \SOH(\tR\asummary:9\136\160\US\NUL\130\231\176*\tproposers\138\231\176*\"cosmos-sdk/group/MsgSubmitProposal\"<\n\
    \\EMMsgSubmitProposalResponse\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\"\161\SOH\n\
    \\DC3MsgWithdrawProposal\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC22\n\
    \\aaddress\CAN\STX \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString:5\130\231\176*\aaddress\138\231\176*$cosmos-sdk/group/MsgWithdrawProposal\"\GS\n\
    \\ESCMsgWithdrawProposalResponse\"\255\SOH\n\
    \\aMsgVote\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC2.\n\
    \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC23\n\
    \\ACKoption\CAN\ETX \SOH(\SO2\ESC.cosmos.group.v1.VoteOptionR\ACKoption\DC2\SUB\n\
    \\bmetadata\CAN\EOT \SOH(\tR\bmetadata\DC2)\n\
    \\EOTexec\CAN\ENQ \SOH(\SO2\NAK.cosmos.group.v1.ExecR\EOTexec:'\130\231\176*\ENQvoter\138\231\176*\CANcosmos-sdk/group/MsgVote\"\DC1\n\
    \\SIMsgVoteResponse\"\140\SOH\n\
    \\aMsgExec\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC24\n\
    \\bexecutor\CAN\STX \SOH(\tR\bexecutorB\CAN\210\180-\DC4cosmos.AddressString:*\130\231\176*\bexecutor\138\231\176*\CANcosmos-sdk/group/MsgExec\"R\n\
    \\SIMsgExecResponse\DC2?\n\
    \\ACKresult\CAN\STX \SOH(\SO2'.cosmos.group.v1.ProposalExecutorResultR\ACKresult\"\143\SOH\n\
    \\rMsgLeaveGroup\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\EM\n\
    \\bgroup_id\CAN\STX \SOH(\EOTR\agroupId:/\130\231\176*\aaddress\138\231\176*\RScosmos-sdk/group/MsgLeaveGroup\"\ETB\n\
    \\NAKMsgLeaveGroupResponse**\n\
    \\EOTExec\DC2\DC4\n\
    \\DLEEXEC_UNSPECIFIED\DLE\NUL\DC2\f\n\
    \\bEXEC_TRY\DLE\SOH2\202\v\n\
    \\ETXMsg\DC2W\n\
    \\vCreateGroup\DC2\US.cosmos.group.v1.MsgCreateGroup\SUB'.cosmos.group.v1.MsgCreateGroupResponse\DC2l\n\
    \\DC2UpdateGroupMembers\DC2&.cosmos.group.v1.MsgUpdateGroupMembers\SUB..cosmos.group.v1.MsgUpdateGroupMembersResponse\DC2f\n\
    \\DLEUpdateGroupAdmin\DC2$.cosmos.group.v1.MsgUpdateGroupAdmin\SUB,.cosmos.group.v1.MsgUpdateGroupAdminResponse\DC2o\n\
    \\DC3UpdateGroupMetadata\DC2'.cosmos.group.v1.MsgUpdateGroupMetadata\SUB/.cosmos.group.v1.MsgUpdateGroupMetadataResponse\DC2i\n\
    \\DC1CreateGroupPolicy\DC2%.cosmos.group.v1.MsgCreateGroupPolicy\SUB-.cosmos.group.v1.MsgCreateGroupPolicyResponse\DC2u\n\
    \\NAKCreateGroupWithPolicy\DC2).cosmos.group.v1.MsgCreateGroupWithPolicy\SUB1.cosmos.group.v1.MsgCreateGroupWithPolicyResponse\DC2x\n\
    \\SYNUpdateGroupPolicyAdmin\DC2*.cosmos.group.v1.MsgUpdateGroupPolicyAdmin\SUB2.cosmos.group.v1.MsgUpdateGroupPolicyAdminResponse\DC2\147\SOH\n\
    \\USUpdateGroupPolicyDecisionPolicy\DC23.cosmos.group.v1.MsgUpdateGroupPolicyDecisionPolicy\SUB;.cosmos.group.v1.MsgUpdateGroupPolicyDecisionPolicyResponse\DC2\129\SOH\n\
    \\EMUpdateGroupPolicyMetadata\DC2-.cosmos.group.v1.MsgUpdateGroupPolicyMetadata\SUB5.cosmos.group.v1.MsgUpdateGroupPolicyMetadataResponse\DC2`\n\
    \\SOSubmitProposal\DC2\".cosmos.group.v1.MsgSubmitProposal\SUB*.cosmos.group.v1.MsgSubmitProposalResponse\DC2f\n\
    \\DLEWithdrawProposal\DC2$.cosmos.group.v1.MsgWithdrawProposal\SUB,.cosmos.group.v1.MsgWithdrawProposalResponse\DC2B\n\
    \\EOTVote\DC2\CAN.cosmos.group.v1.MsgVote\SUB .cosmos.group.v1.MsgVoteResponse\DC2B\n\
    \\EOTExec\DC2\CAN.cosmos.group.v1.MsgExec\SUB .cosmos.group.v1.MsgExecResponse\DC2T\n\
    \\n\
    \LeaveGroup\DC2\RS.cosmos.group.v1.MsgLeaveGroup\SUB&.cosmos.group.v1.MsgLeaveGroupResponse\SUB\ENQ\128\231\176*\SOHB&Z$github.com/cosmos/cosmos-sdk/x/groupJ\227k\n\
    \\a\DC2\ENQ\SOH\NUL\137\ETX \n\
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
    \\STX\ETX\SOH\DC2\ETX\b\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\t\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\n\
    \\NUL%\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\v\NUL!\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\f\NUL\ESC\n\
    \5\n\
    \\STX\ACK\NUL\DC2\EOT\SI\NUL<\SOH\SUB) Msg is the cosmos.group.v1 Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\SI\b\v\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\DLE\STX(\n\
    \\SO\n\
    \\a\ACK\NUL\ETX\240\140\166\ENQ\DC2\ETX\DLE\STX(\n\
    \{\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DC3\STXC\SUBn CreateGroup creates a new group with an admin account address, a list of members and some optional metadata.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC3\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC3\DC2 \n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC3+A\n\
    \b\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\SYN\STXX\SUBU UpdateGroupMembers updates the group members with given group id and admin address.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\SYN\ACK\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\SYN\EM.\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\SYN9V\n\
    \g\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX\EM\STXR\SUBZ UpdateGroupAdmin updates the group admin with given group id and previous admin address.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\EM\ACK\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\EM\ETB*\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\EM5P\n\
    \d\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\ETX\FS\STX[\SUBW UpdateGroupMetadata updates the group metadata with given group id and admin address.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\FS\ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\FS\SUB0\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\FS;Y\n\
    \W\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\ETX\US\STXU\SUBJ CreateGroupPolicy creates a new group policy using given DecisionPolicy.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX\US\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX\US\CAN,\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX\US7S\n\
    \E\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\ETX\"\STXa\SUB8 CreateGroupWithPolicy creates a new group with policy.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX\"\ACK\ESC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX\"\FS4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX\"?_\n\
    \C\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\ETX%\STXd\SUB6 UpdateGroupPolicyAdmin updates a group policy admin.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX%\ACK\FS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX%\GS6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX%Ab\n\
    \f\n\
    \\EOT\ACK\NUL\STX\a\DC2\EOT(\STX);\SUBX UpdateGroupPolicyDecisionPolicy allows a group policy's decision policy to be updated.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\SOH\DC2\ETX(\ACK%\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\STX\DC2\ETX(&H\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\ETX\DC2\ETX)\SI9\n\
    \I\n\
    \\EOT\ACK\NUL\STX\b\DC2\ETX,\STXm\SUB< UpdateGroupPolicyMetadata updates a group policy metadata.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\SOH\DC2\ETX,\ACK\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\STX\DC2\ETX, <\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\ETX\DC2\ETX,Gk\n\
    \5\n\
    \\EOT\ACK\NUL\STX\t\DC2\ETX/\STXL\SUB( SubmitProposal submits a new proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\SOH\DC2\ETX/\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\STX\DC2\ETX/\NAK&\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\ETX\DC2\ETX/1J\n\
    \5\n\
    \\EOT\ACK\NUL\STX\n\
    \\DC2\ETX2\STXR\SUB( WithdrawProposal withdraws a proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\SOH\DC2\ETX2\ACK\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\STX\DC2\ETX2\ETB*\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\ETX\DC2\ETX25P\n\
    \9\n\
    \\EOT\ACK\NUL\STX\v\DC2\ETX5\STX.\SUB, Vote allows a voter to vote on a proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\SOH\DC2\ETX5\ACK\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\STX\DC2\ETX5\v\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\ETX\DC2\ETX5\GS,\n\
    \(\n\
    \\EOT\ACK\NUL\STX\f\DC2\ETX8\STX.\SUB\ESC Exec executes a proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\SOH\DC2\ETX8\ACK\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\STX\DC2\ETX8\v\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\ETX\DC2\ETX8\GS,\n\
    \C\n\
    \\EOT\ACK\NUL\STX\r\DC2\ETX;\STX@\SUB6 LeaveGroup allows a group member to leave the group.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\SOH\DC2\ETX;\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\STX\DC2\ETX;\DC1\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\ETX\DC2\ETX;)>\n\
    \M\n\
    \\STX\EOT\NUL\DC2\EOTC\NULO\SOH\SUB5 MsgCreateGroup is the Msg/CreateGroup request type.\n\
    \2\n\
    \\n\
    \ Groups\n\
    \\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXC\b\SYN\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETXD\STX*\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETXD\STX*\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETXE\STX>\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETXE\STX>\n\
    \?\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXH\STXD\SUB2 admin is the account address of the group admin.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETXH\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXH\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXH\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETXH\DC3C\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETXH\DC4B\n\
    \1\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXK\STXc\SUB$ members defines the group members.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETXK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXK\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXK\EM \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXK#$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETXK%b\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETXK&B\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETXKDa\n\
    \K\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXN\STX\SYN\SUB> metadata is any arbitrary metadata to attached to the group.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETXN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXN\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXN\DC4\NAK\n\
    \J\n\
    \\STX\EOT\SOH\DC2\EOTR\NULU\SOH\SUB> MsgCreateGroupResponse is the Msg/CreateGroup response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXR\b\RS\n\
    \D\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXT\STX\SYN\SUB7 group_id is the unique ID of the newly created group.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXT\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXT\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXT\DC4\NAK\n\
    \O\n\
    \\STX\EOT\STX\DC2\EOTX\NULe\SOH\SUBC MsgUpdateGroupMembers is the Msg/UpdateGroupMembers request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXX\b\GS\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXY\STX*\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETXY\STX*\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXZ\STXE\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETXZ\STXE\n\
    \?\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX]\STXD\SUB2 admin is the account address of the group admin.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX]\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX]\t\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX]\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX]\DC3C\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX]\DC4B\n\
    \6\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX`\STX\SYN\SUB) group_id is the unique ID of the group.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX`\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX`\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX`\DC4\NAK\n\
    \d\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXd\STXj\SUBW member_updates is the list of members to update,\n\
    \ set weight to 0 to remove a member.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETXd\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETXd\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXd\EM'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXd*+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\ETXd,i\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\233\251\ETX\DC2\ETXd-I\n\
    \\DLE\n\
    \\t\EOT\STX\STX\STX\b\245\140\166\ENQ\DC2\ETXdKh\n\
    \W\n\
    \\STX\EOT\ETX\DC2\ETXh\NUL(\SUBL MsgUpdateGroupMembersResponse is the Msg/UpdateGroupMembers response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXh\b%\n\
    \K\n\
    \\STX\EOT\EOT\DC2\EOTk\NULw\SOH\SUB? MsgUpdateGroupAdmin is the Msg/UpdateGroupAdmin request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXk\b\ESC\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXl\STX*\n\
    \\SI\n\
    \\b\EOT\EOT\a\240\140\166\ENQ\NUL\DC2\ETXl\STX*\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXm\STXC\n\
    \\SO\n\
    \\a\EOT\EOT\a\241\140\166\ENQ\DC2\ETXm\STXC\n\
    \G\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXp\STXD\SUB: admin is the current account address of the group admin.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXp\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXp\t\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXp\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXp\DC3C\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETXp\DC4B\n\
    \6\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXs\STX\SYN\SUB) group_id is the unique ID of the group.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXs\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXs\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXs\DC4\NAK\n\
    \@\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXv\STXH\SUB3 new_admin is the group new admin account address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETXv\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXv\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXv\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\b\DC2\ETXv\ETBG\n\
    \\SI\n\
    \\b\EOT\EOT\STX\STX\b\202\214\ENQ\DC2\ETXv\CANF\n\
    \S\n\
    \\STX\EOT\ENQ\DC2\ETXz\NUL&\SUBH MsgUpdateGroupAdminResponse is the Msg/UpdateGroupAdmin response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXz\b#\n\
    \R\n\
    \\STX\EOT\ACK\DC2\ENQ}\NUL\137\SOH\SOH\SUBE MsgUpdateGroupMetadata is the Msg/UpdateGroupMetadata request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX}\b\RS\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETX~\STX*\n\
    \\SI\n\
    \\b\EOT\ACK\a\240\140\166\ENQ\NUL\DC2\ETX~\STX*\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETX\DEL\STXF\n\
    \\SO\n\
    \\a\EOT\ACK\a\241\140\166\ENQ\DC2\ETX\DEL\STXF\n\
    \@\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\130\SOH\STXD\SUB2 admin is the account address of the group admin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\130\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\130\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\130\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\EOT\130\SOH\DC3C\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\202\214\ENQ\DC2\EOT\130\SOH\DC4B\n\
    \7\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\133\SOH\STX\SYN\SUB) group_id is the unique ID of the group.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\133\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\133\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\133\SOH\DC4\NAK\n\
    \9\n\
    \\EOT\EOT\ACK\STX\STX\DC2\EOT\136\SOH\STX\SYN\SUB+ metadata is the updated group's metadata.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\EOT\136\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\EOT\136\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\EOT\136\SOH\DC4\NAK\n\
    \Z\n\
    \\STX\EOT\a\DC2\EOT\140\SOH\NUL)\SUBN MsgUpdateGroupMetadataResponse is the Msg/UpdateGroupMetadata response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\140\SOH\b&\n\
    \c\n\
    \\STX\EOT\b\DC2\ACK\147\SOH\NUL\164\SOH\SOH\SUBA MsgCreateGroupPolicy is the Msg/CreateGroupPolicy request type.\n\
    \2\DC2\n\
    \ Group Policies\n\
    \\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\147\SOH\b\FS\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\148\SOH\STX*\n\
    \\DLE\n\
    \\b\EOT\b\a\240\140\166\ENQ\NUL\DC2\EOT\148\SOH\STX*\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\149\SOH\STXD\n\
    \\SI\n\
    \\a\EOT\b\a\241\140\166\ENQ\DC2\EOT\149\SOH\STXD\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\151\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\b\a\129\244\ETX\DC2\EOT\151\SOH\STX-\n\
    \@\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\154\SOH\STXD\SUB2 admin is the account address of the group admin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\154\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\154\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\154\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\154\SOH\DC3C\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\202\214\ENQ\DC2\EOT\154\SOH\DC4B\n\
    \7\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\157\SOH\STX\SYN\SUB) group_id is the unique ID of the group.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\157\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\157\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\157\SOH\DC4\NAK\n\
    \P\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\160\SOH\STX\SYN\SUBB metadata is any arbitrary metadata attached to the group policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\EOT\160\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\160\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\160\SOH\DC4\NAK\n\
    \M\n\
    \\EOT\EOT\b\STX\ETX\DC2\EOT\163\SOH\STXp\SUB? decision_policy specifies the group policy's decision policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ACK\DC2\EOT\163\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\163\SOH\SYN%\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\163\SOH()\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\b\DC2\EOT\163\SOH*o\n\
    \\DLE\n\
    \\b\EOT\b\STX\ETX\b\201\214\ENQ\DC2\EOT\163\SOH+n\n\
    \X\n\
    \\STX\EOT\t\DC2\ACK\167\SOH\NUL\170\SOH\SOH\SUBJ MsgCreateGroupPolicyResponse is the Msg/CreateGroupPolicy response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\167\SOH\b$\n\
    \Q\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\169\SOH\STXF\SUBC address is the account address of the newly created group policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\EOT\169\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\169\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\169\SOH\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\b\DC2\EOT\169\SOH\NAKE\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\202\214\ENQ\DC2\EOT\169\SOH\SYND\n\
    \Y\n\
    \\STX\EOT\n\
    \\DC2\ACK\173\SOH\NUL\185\SOH\SOH\SUBK MsgUpdateGroupPolicyAdmin is the Msg/UpdateGroupPolicyAdmin request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\173\SOH\b!\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\174\SOH\STX*\n\
    \\DLE\n\
    \\b\EOT\n\
    \\a\240\140\166\ENQ\NUL\DC2\EOT\174\SOH\STX*\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\175\SOH\STXI\n\
    \\SI\n\
    \\a\EOT\n\
    \\a\241\140\166\ENQ\DC2\EOT\175\SOH\STXI\n\
    \@\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\178\SOH\STXD\SUB2 admin is the account address of the group admin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\178\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\178\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\178\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\b\DC2\EOT\178\SOH\DC3C\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\NUL\b\202\214\ENQ\DC2\EOT\178\SOH\DC4B\n\
    \P\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\181\SOH\STXS\SUBB group_policy_address is the account address of the group policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\181\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\181\SOH\t\GS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\181\SOH !\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\b\DC2\EOT\181\SOH\"R\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\SOH\b\202\214\ENQ\DC2\EOT\181\SOH#Q\n\
    \8\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\EOT\184\SOH\STXH\SUB* new_admin is the new group policy admin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ENQ\DC2\EOT\184\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\184\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\184\SOH\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\b\DC2\EOT\184\SOH\ETBG\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\STX\b\202\214\ENQ\DC2\EOT\184\SOH\CANF\n\
    \`\n\
    \\STX\EOT\v\DC2\EOT\188\SOH\NUL,\SUBT MsgUpdateGroupPolicyAdminResponse is the Msg/UpdateGroupPolicyAdmin response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\188\SOH\b)\n\
    \W\n\
    \\STX\EOT\f\DC2\ACK\191\SOH\NUL\214\SOH\SOH\SUBI MsgCreateGroupWithPolicy is the Msg/CreateGroupWithPolicy request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\191\SOH\b \n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\192\SOH\STX/\n\
    \\DLE\n\
    \\b\EOT\f\a\240\140\166\ENQ\NUL\DC2\EOT\192\SOH\STX/\n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\193\SOH\STXM\n\
    \\SI\n\
    \\a\EOT\f\a\241\140\166\ENQ\DC2\EOT\193\SOH\STXM\n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\194\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\f\a\129\244\ETX\DC2\EOT\194\SOH\STX-\n\
    \Q\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\197\SOH\STXD\SUBC admin is the account address of the group and group policy admin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\197\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\197\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\197\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\b\DC2\EOT\197\SOH\DC3C\n\
    \\DLE\n\
    \\b\EOT\f\STX\NUL\b\202\214\ENQ\DC2\EOT\197\SOH\DC4B\n\
    \2\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\200\SOH\STXc\SUB$ members defines the group members.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\EOT\DC2\EOT\200\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ACK\DC2\EOT\200\SOH\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\200\SOH\EM \n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\200\SOH#$\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\b\DC2\EOT\200\SOH%b\n\
    \\DLE\n\
    \\b\EOT\f\STX\SOH\b\233\251\ETX\DC2\EOT\200\SOH&B\n\
    \\DC1\n\
    \\t\EOT\f\STX\SOH\b\245\140\166\ENQ\DC2\EOT\200\SOHDa\n\
    \O\n\
    \\EOT\EOT\f\STX\STX\DC2\EOT\203\SOH\STX\FS\SUBA group_metadata is any arbitrary metadata attached to the group.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ENQ\DC2\EOT\203\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\EOT\203\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\EOT\203\SOH\SUB\ESC\n\
    \]\n\
    \\EOT\EOT\f\STX\ETX\DC2\EOT\206\SOH\STX#\SUBO group_policy_metadata is any arbitrary metadata attached to the group policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ENQ\DC2\EOT\206\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\EOT\206\SOH\t\RS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\EOT\206\SOH!\"\n\
    \\154\SOH\n\
    \\EOT\EOT\f\STX\EOT\DC2\EOT\210\SOH\STX!\SUB\139\SOH group_policy_as_admin is a boolean field, if set to true, the group policy account address will be used as group\n\
    \ and group policy admin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ENQ\DC2\EOT\210\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\SOH\DC2\EOT\210\SOH\a\FS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ETX\DC2\EOT\210\SOH\US \n\
    \M\n\
    \\EOT\EOT\f\STX\ENQ\DC2\EOT\213\SOH\STXp\SUB? decision_policy specifies the group policy's decision policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ACK\DC2\EOT\213\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\SOH\DC2\EOT\213\SOH\SYN%\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ETX\DC2\EOT\213\SOH()\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\b\DC2\EOT\213\SOH*o\n\
    \\DLE\n\
    \\b\EOT\f\STX\ENQ\b\201\214\ENQ\DC2\EOT\213\SOH+n\n\
    \`\n\
    \\STX\EOT\r\DC2\ACK\217\SOH\NUL\223\SOH\SOH\SUBR MsgCreateGroupWithPolicyResponse is the Msg/CreateGroupWithPolicy response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\217\SOH\b(\n\
    \Q\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\219\SOH\STX\SYN\SUBC group_id is the unique ID of the newly created group with policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\219\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\219\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\219\SOH\DC4\NAK\n\
    \^\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\222\SOH\STXS\SUBP group_policy_address is the account address of the newly created group policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\EOT\222\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\222\SOH\t\GS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\222\SOH !\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\b\DC2\EOT\222\SOH\"R\n\
    \\DLE\n\
    \\b\EOT\r\STX\SOH\b\202\214\ENQ\DC2\EOT\222\SOH#Q\n\
    \k\n\
    \\STX\EOT\SO\DC2\ACK\226\SOH\NUL\240\SOH\SOH\SUB] MsgUpdateGroupPolicyDecisionPolicy is the Msg/UpdateGroupPolicyDecisionPolicy request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\226\SOH\b*\n\
    \\v\n\
    \\ETX\EOT\SO\a\DC2\EOT\227\SOH\STX*\n\
    \\DLE\n\
    \\b\EOT\SO\a\240\140\166\ENQ\NUL\DC2\EOT\227\SOH\STX*\n\
    \\v\n\
    \\ETX\EOT\SO\a\DC2\EOT\228\SOH\STXL\n\
    \\SI\n\
    \\a\EOT\SO\a\241\140\166\ENQ\DC2\EOT\228\SOH\STXL\n\
    \\v\n\
    \\ETX\EOT\SO\a\DC2\EOT\230\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\SO\a\129\244\ETX\DC2\EOT\230\SOH\STX-\n\
    \@\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\233\SOH\STXD\SUB2 admin is the account address of the group admin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\233\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\233\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\233\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\b\DC2\EOT\233\SOH\DC3C\n\
    \\DLE\n\
    \\b\EOT\SO\STX\NUL\b\202\214\ENQ\DC2\EOT\233\SOH\DC4B\n\
    \L\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\236\SOH\STXS\SUB> group_policy_address is the account address of group policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\EOT\236\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\236\SOH\t\GS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\236\SOH !\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\b\DC2\EOT\236\SOH\"R\n\
    \\DLE\n\
    \\b\EOT\SO\STX\SOH\b\202\214\ENQ\DC2\EOT\236\SOH#Q\n\
    \N\n\
    \\EOT\EOT\SO\STX\STX\DC2\EOT\239\SOH\STXp\SUB@ decision_policy is the updated group policy's decision policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ACK\DC2\EOT\239\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\SOH\DC2\EOT\239\SOH\SYN%\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ETX\DC2\EOT\239\SOH()\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\b\DC2\EOT\239\SOH*o\n\
    \\DLE\n\
    \\b\EOT\SO\STX\STX\b\201\214\ENQ\DC2\EOT\239\SOH+n\n\
    \r\n\
    \\STX\EOT\SI\DC2\EOT\243\SOH\NUL5\SUBf MsgUpdateGroupPolicyDecisionPolicyResponse is the Msg/UpdateGroupPolicyDecisionPolicy response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\243\SOH\b2\n\
    \_\n\
    \\STX\EOT\DLE\DC2\ACK\246\SOH\NUL\130\STX\SOH\SUBQ MsgUpdateGroupPolicyMetadata is the Msg/UpdateGroupPolicyMetadata request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\246\SOH\b$\n\
    \\v\n\
    \\ETX\EOT\DLE\a\DC2\EOT\247\SOH\STX*\n\
    \\DLE\n\
    \\b\EOT\DLE\a\240\140\166\ENQ\NUL\DC2\EOT\247\SOH\STX*\n\
    \\v\n\
    \\ETX\EOT\DLE\a\DC2\EOT\248\SOH\STXL\n\
    \\SI\n\
    \\a\EOT\DLE\a\241\140\166\ENQ\DC2\EOT\248\SOH\STXL\n\
    \@\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\251\SOH\STXD\SUB2 admin is the account address of the group admin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\251\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\251\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\251\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\b\DC2\EOT\251\SOH\DC3C\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\NUL\b\202\214\ENQ\DC2\EOT\251\SOH\DC4B\n\
    \L\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\254\SOH\STXS\SUB> group_policy_address is the account address of group policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ENQ\DC2\EOT\254\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\254\SOH\t\GS\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\254\SOH !\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\b\DC2\EOT\254\SOH\"R\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\SOH\b\202\214\ENQ\DC2\EOT\254\SOH#Q\n\
    \D\n\
    \\EOT\EOT\DLE\STX\STX\DC2\EOT\129\STX\STX\SYN\SUB6 metadata is the group policy metadata to be updated.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ENQ\DC2\EOT\129\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\EOT\129\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\EOT\129\STX\DC4\NAK\n\
    \f\n\
    \\STX\EOT\DC1\DC2\EOT\133\STX\NUL/\SUBZ MsgUpdateGroupPolicyMetadataResponse is the Msg/UpdateGroupPolicyMetadata response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\133\STX\b,\n\
    \s\n\
    \\STX\ENQ\NUL\DC2\ACK\140\STX\NUL\150\STX\SOH\SUBK Exec defines modes of execution of a proposal on creation or on new vote.\n\
    \2\CAN\n\
    \ Proposals and Voting\n\
    \\n\
    \\n\
    \\v\n\
    \\ETX\ENQ\NUL\SOH\DC2\EOT\140\STX\ENQ\t\n\
    \r\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\EOT\143\STX\STX\ETB\SUBd An empty value means that there should be a separate\n\
    \ MsgExec request for the proposal to execute.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\EOT\143\STX\STX\DC2\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\EOT\143\STX\NAK\SYN\n\
    \\187\SOH\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\EOT\149\STX\STX\SI\SUB\172\SOH Try to execute the proposal immediately.\n\
    \ If the proposal is not allowed per the DecisionPolicy,\n\
    \ the proposal will still be open and could\n\
    \ be executed at a later point.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\EOT\149\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\EOT\149\STX\r\SO\n\
    \I\n\
    \\STX\EOT\DC2\DC2\ACK\153\STX\NUL\186\STX\SOH\SUB; MsgSubmitProposal is the Msg/SubmitProposal request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\153\STX\b\EM\n\
    \\v\n\
    \\ETX\EOT\DC2\a\DC2\EOT\154\STX\STX.\n\
    \\DLE\n\
    \\b\EOT\DC2\a\240\140\166\ENQ\NUL\DC2\EOT\154\STX\STX.\n\
    \\v\n\
    \\ETX\EOT\DC2\a\DC2\EOT\155\STX\STXG\n\
    \\SI\n\
    \\a\EOT\DC2\a\241\140\166\ENQ\DC2\EOT\155\STX\STXG\n\
    \\v\n\
    \\ETX\EOT\DC2\a\DC2\EOT\157\STX\STX-\n\
    \\SO\n\
    \\ACK\EOT\DC2\a\129\244\ETX\DC2\EOT\157\STX\STX-\n\
    \L\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\160\STX\STXS\SUB> group_policy_address is the account address of group policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\160\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\160\STX\t\GS\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\160\STX !\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\b\DC2\EOT\160\STX\"R\n\
    \\DLE\n\
    \\b\EOT\DC2\STX\NUL\b\202\214\ENQ\DC2\EOT\160\STX#Q\n\
    \y\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\164\STX\STX \SUBk proposers are the account addresses of the proposers.\n\
    \ Proposers signatures will be counted as yes votes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\EOT\DC2\EOT\164\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ENQ\DC2\EOT\164\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\164\STX\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\164\STX\RS\US\n\
    \L\n\
    \\EOT\EOT\DC2\STX\STX\DC2\EOT\167\STX\STX\SYN\SUB> metadata is any arbitrary metadata attached to the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ENQ\DC2\EOT\167\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\SOH\DC2\EOT\167\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ETX\DC2\EOT\167\STX\DC4\NAK\n\
    \^\n\
    \\EOT\EOT\DC2\STX\ETX\DC2\EOT\170\STX\STX,\SUBP messages is a list of `sdk.Msg`s that will be executed if the proposal passes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\EOT\DC2\EOT\170\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\ACK\DC2\EOT\170\STX\v\RS\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\SOH\DC2\EOT\170\STX\US'\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\ETX\DC2\EOT\170\STX*+\n\
    \\189\SOH\n\
    \\EOT\EOT\DC2\STX\EOT\DC2\EOT\175\STX\STX\DLE\SUB\174\SOH exec defines the mode of execution of the proposal,\n\
    \ whether it should be executed immediately on creation or not.\n\
    \ If so, proposers signatures are considered as Yes votes.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\ACK\DC2\EOT\175\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\SOH\DC2\EOT\175\STX\a\v\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\ETX\DC2\EOT\175\STX\SO\SI\n\
    \L\n\
    \\EOT\EOT\DC2\STX\ENQ\DC2\EOT\180\STX\STX\DC3\SUB> title is the title of the proposal.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ENQ\ENQ\DC2\EOT\180\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ENQ\SOH\DC2\EOT\180\STX\t\SO\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ENQ\ETX\DC2\EOT\180\STX\DC1\DC2\n\
    \P\n\
    \\EOT\EOT\DC2\STX\ACK\DC2\EOT\185\STX\STX\NAK\SUBB summary is the summary of the proposal.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ACK\ENQ\DC2\EOT\185\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ACK\SOH\DC2\EOT\185\STX\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ACK\ETX\DC2\EOT\185\STX\DC3\DC4\n\
    \R\n\
    \\STX\EOT\DC3\DC2\ACK\189\STX\NUL\192\STX\SOH\SUBD MsgSubmitProposalResponse is the Msg/SubmitProposal response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\189\STX\b!\n\
    \:\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\191\STX\STX\EM\SUB, proposal is the unique ID of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\191\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\191\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\191\STX\ETB\CAN\n\
    \M\n\
    \\STX\EOT\DC4\DC2\ACK\195\STX\NUL\204\STX\SOH\SUB? MsgWithdrawProposal is the Msg/WithdrawProposal request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\195\STX\b\ESC\n\
    \\v\n\
    \\ETX\EOT\DC4\a\DC2\EOT\196\STX\STX,\n\
    \\DLE\n\
    \\b\EOT\DC4\a\240\140\166\ENQ\NUL\DC2\EOT\196\STX\STX,\n\
    \\v\n\
    \\ETX\EOT\DC4\a\DC2\EOT\197\STX\STXI\n\
    \\SI\n\
    \\a\EOT\DC4\a\241\140\166\ENQ\DC2\EOT\197\STX\STXI\n\
    \:\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\200\STX\STX\EM\SUB, proposal is the unique ID of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ENQ\DC2\EOT\200\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\200\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\200\STX\ETB\CAN\n\
    \`\n\
    \\EOT\EOT\DC4\STX\SOH\DC2\EOT\203\STX\STXF\SUBR address is the admin of the group policy or one of the proposer of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ENQ\DC2\EOT\203\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\SOH\DC2\EOT\203\STX\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ETX\DC2\EOT\203\STX\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\b\DC2\EOT\203\STX\NAKE\n\
    \\DLE\n\
    \\b\EOT\DC4\STX\SOH\b\202\214\ENQ\DC2\EOT\203\STX\SYND\n\
    \T\n\
    \\STX\EOT\NAK\DC2\EOT\207\STX\NUL&\SUBH MsgWithdrawProposalResponse is the Msg/WithdrawProposal response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\207\STX\b#\n\
    \5\n\
    \\STX\EOT\SYN\DC2\ACK\210\STX\NUL\229\STX\SOH\SUB' MsgVote is the Msg/Vote request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\210\STX\b\SI\n\
    \\v\n\
    \\ETX\EOT\SYN\a\DC2\EOT\211\STX\STX*\n\
    \\DLE\n\
    \\b\EOT\SYN\a\240\140\166\ENQ\NUL\DC2\EOT\211\STX\STX*\n\
    \\v\n\
    \\ETX\EOT\SYN\a\DC2\EOT\212\STX\STX=\n\
    \\SI\n\
    \\a\EOT\SYN\a\241\140\166\ENQ\DC2\EOT\212\STX\STX=\n\
    \:\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\215\STX\STX\EM\SUB, proposal is the unique ID of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ENQ\DC2\EOT\215\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\215\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\215\STX\ETB\CAN\n\
    \3\n\
    \\EOT\EOT\SYN\STX\SOH\DC2\EOT\218\STX\STXD\SUB% voter is the voter account address.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ENQ\DC2\EOT\218\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\SOH\DC2\EOT\218\STX\t\SO\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ETX\DC2\EOT\218\STX\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\b\DC2\EOT\218\STX\DC3C\n\
    \\DLE\n\
    \\b\EOT\SYN\STX\SOH\b\202\214\ENQ\DC2\EOT\218\STX\DC4B\n\
    \=\n\
    \\EOT\EOT\SYN\STX\STX\DC2\EOT\221\STX\STX\CAN\SUB/ option is the voter's choice on the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ACK\DC2\EOT\221\STX\STX\f\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\SOH\DC2\EOT\221\STX\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\STX\ETX\DC2\EOT\221\STX\SYN\ETB\n\
    \H\n\
    \\EOT\EOT\SYN\STX\ETX\DC2\EOT\224\STX\STX\SYN\SUB: metadata is any arbitrary metadata attached to the vote.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\ENQ\DC2\EOT\224\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\SOH\DC2\EOT\224\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\ETX\ETX\DC2\EOT\224\STX\DC4\NAK\n\
    \f\n\
    \\EOT\EOT\SYN\STX\EOT\DC2\EOT\228\STX\STX\DLE\SUBX exec defines whether the proposal should be executed\n\
    \ immediately after voting or not.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\ACK\DC2\EOT\228\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\SOH\DC2\EOT\228\STX\a\v\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\EOT\ETX\DC2\EOT\228\STX\SO\SI\n\
    \<\n\
    \\STX\EOT\ETB\DC2\EOT\232\STX\NUL\SUB\SUB0 MsgVoteResponse is the Msg/Vote response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETB\SOH\DC2\EOT\232\STX\b\ETB\n\
    \5\n\
    \\STX\EOT\CAN\DC2\ACK\235\STX\NUL\244\STX\SOH\SUB' MsgExec is the Msg/Exec request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\CAN\SOH\DC2\EOT\235\STX\b\SI\n\
    \\v\n\
    \\ETX\EOT\CAN\a\DC2\EOT\236\STX\STX-\n\
    \\DLE\n\
    \\b\EOT\CAN\a\240\140\166\ENQ\NUL\DC2\EOT\236\STX\STX-\n\
    \\v\n\
    \\ETX\EOT\CAN\a\DC2\EOT\237\STX\STX=\n\
    \\SI\n\
    \\a\EOT\CAN\a\241\140\166\ENQ\DC2\EOT\237\STX\STX=\n\
    \:\n\
    \\EOT\EOT\CAN\STX\NUL\DC2\EOT\240\STX\STX\EM\SUB, proposal is the unique ID of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ENQ\DC2\EOT\240\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\SOH\DC2\EOT\240\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ETX\DC2\EOT\240\STX\ETB\CAN\n\
    \M\n\
    \\EOT\EOT\CAN\STX\SOH\DC2\EOT\243\STX\STXG\SUB? executor is the account address used to execute the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ENQ\DC2\EOT\243\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\SOH\DC2\EOT\243\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\ETX\DC2\EOT\243\STX\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\SOH\b\DC2\EOT\243\STX\SYNF\n\
    \\DLE\n\
    \\b\EOT\CAN\STX\SOH\b\202\214\ENQ\DC2\EOT\243\STX\ETBE\n\
    \=\n\
    \\STX\EOT\EM\DC2\ACK\247\STX\NUL\250\STX\SOH\SUB/ MsgExecResponse is the Msg/Exec request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EM\SOH\DC2\EOT\247\STX\b\ETB\n\
    \E\n\
    \\EOT\EOT\EM\STX\NUL\DC2\EOT\249\STX\STX$\SUB7 result is the final result of the proposal execution.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ACK\DC2\EOT\249\STX\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\SOH\DC2\EOT\249\STX\EM\US\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ETX\DC2\EOT\249\STX\"#\n\
    \A\n\
    \\STX\EOT\SUB\DC2\ACK\253\STX\NUL\134\ETX\SOH\SUB3 MsgLeaveGroup is the Msg/LeaveGroup request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SUB\SOH\DC2\EOT\253\STX\b\NAK\n\
    \\v\n\
    \\ETX\EOT\SUB\a\DC2\EOT\254\STX\STX,\n\
    \\DLE\n\
    \\b\EOT\SUB\a\240\140\166\ENQ\NUL\DC2\EOT\254\STX\STX,\n\
    \\v\n\
    \\ETX\EOT\SUB\a\DC2\EOT\255\STX\STXC\n\
    \\SI\n\
    \\a\EOT\SUB\a\241\140\166\ENQ\DC2\EOT\255\STX\STXC\n\
    \C\n\
    \\EOT\EOT\SUB\STX\NUL\DC2\EOT\130\ETX\STXF\SUB5 address is the account address of the group member.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ENQ\DC2\EOT\130\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\SOH\DC2\EOT\130\ETX\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ETX\DC2\EOT\130\ETX\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\b\DC2\EOT\130\ETX\NAKE\n\
    \\DLE\n\
    \\b\EOT\SUB\STX\NUL\b\202\214\ENQ\DC2\EOT\130\ETX\SYND\n\
    \7\n\
    \\EOT\EOT\SUB\STX\SOH\DC2\EOT\133\ETX\STX\SYN\SUB) group_id is the unique ID of the group.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\ENQ\DC2\EOT\133\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\SOH\DC2\EOT\133\ETX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\SOH\ETX\DC2\EOT\133\ETX\DC4\NAK\n\
    \H\n\
    \\STX\EOT\ESC\DC2\EOT\137\ETX\NUL \SUB< MsgLeaveGroupResponse is the Msg/LeaveGroup response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ESC\SOH\DC2\EOT\137\ETX\b\GSb\ACKproto3"