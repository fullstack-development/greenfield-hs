{- This file was auto-generated from cosmos/group/v1/genesis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Group.V1.Genesis (
        GenesisState()
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
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Genesis_Fields.groupSeq' @:: Lens' GenesisState Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Genesis_Fields.groups' @:: Lens' GenesisState [Proto.Cosmos.Group.V1.Types.GroupInfo]@
         * 'Proto.Cosmos.Group.V1.Genesis_Fields.vec'groups' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupInfo)@
         * 'Proto.Cosmos.Group.V1.Genesis_Fields.groupMembers' @:: Lens' GenesisState [Proto.Cosmos.Group.V1.Types.GroupMember]@
         * 'Proto.Cosmos.Group.V1.Genesis_Fields.vec'groupMembers' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupMember)@
         * 'Proto.Cosmos.Group.V1.Genesis_Fields.groupPolicySeq' @:: Lens' GenesisState Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Genesis_Fields.groupPolicies' @:: Lens' GenesisState [Proto.Cosmos.Group.V1.Types.GroupPolicyInfo]@
         * 'Proto.Cosmos.Group.V1.Genesis_Fields.vec'groupPolicies' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupPolicyInfo)@
         * 'Proto.Cosmos.Group.V1.Genesis_Fields.proposalSeq' @:: Lens' GenesisState Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Genesis_Fields.proposals' @:: Lens' GenesisState [Proto.Cosmos.Group.V1.Types.Proposal]@
         * 'Proto.Cosmos.Group.V1.Genesis_Fields.vec'proposals' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.Proposal)@
         * 'Proto.Cosmos.Group.V1.Genesis_Fields.votes' @:: Lens' GenesisState [Proto.Cosmos.Group.V1.Types.Vote]@
         * 'Proto.Cosmos.Group.V1.Genesis_Fields.vec'votes' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.Vote)@ -}
data GenesisState
  = GenesisState'_constructor {_GenesisState'groupSeq :: !Data.Word.Word64,
                               _GenesisState'groups :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupInfo),
                               _GenesisState'groupMembers :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupMember),
                               _GenesisState'groupPolicySeq :: !Data.Word.Word64,
                               _GenesisState'groupPolicies :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupPolicyInfo),
                               _GenesisState'proposalSeq :: !Data.Word.Word64,
                               _GenesisState'proposals :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.Proposal),
                               _GenesisState'votes :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.Vote),
                               _GenesisState'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenesisState where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenesisState "groupSeq" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'groupSeq
           (\ x__ y__ -> x__ {_GenesisState'groupSeq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "groups" [Proto.Cosmos.Group.V1.Types.GroupInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'groups
           (\ x__ y__ -> x__ {_GenesisState'groups = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'groups" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'groups
           (\ x__ y__ -> x__ {_GenesisState'groups = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "groupMembers" [Proto.Cosmos.Group.V1.Types.GroupMember] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'groupMembers
           (\ x__ y__ -> x__ {_GenesisState'groupMembers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'groupMembers" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupMember) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'groupMembers
           (\ x__ y__ -> x__ {_GenesisState'groupMembers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "groupPolicySeq" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'groupPolicySeq
           (\ x__ y__ -> x__ {_GenesisState'groupPolicySeq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "groupPolicies" [Proto.Cosmos.Group.V1.Types.GroupPolicyInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'groupPolicies
           (\ x__ y__ -> x__ {_GenesisState'groupPolicies = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'groupPolicies" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupPolicyInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'groupPolicies
           (\ x__ y__ -> x__ {_GenesisState'groupPolicies = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "proposalSeq" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'proposalSeq
           (\ x__ y__ -> x__ {_GenesisState'proposalSeq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "proposals" [Proto.Cosmos.Group.V1.Types.Proposal] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'proposals
           (\ x__ y__ -> x__ {_GenesisState'proposals = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'proposals" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.Proposal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'proposals
           (\ x__ y__ -> x__ {_GenesisState'proposals = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "votes" [Proto.Cosmos.Group.V1.Types.Vote] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'votes (\ x__ y__ -> x__ {_GenesisState'votes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'votes" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.Vote) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'votes (\ x__ y__ -> x__ {_GenesisState'votes = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenesisState where
  messageName _ = Data.Text.pack "cosmos.group.v1.GenesisState"
  packedMessageDescriptor _
    = "\n\
      \\fGenesisState\DC2\ESC\n\
      \\tgroup_seq\CAN\SOH \SOH(\EOTR\bgroupSeq\DC22\n\
      \\ACKgroups\CAN\STX \ETX(\v2\SUB.cosmos.group.v1.GroupInfoR\ACKgroups\DC2A\n\
      \\rgroup_members\CAN\ETX \ETX(\v2\FS.cosmos.group.v1.GroupMemberR\fgroupMembers\DC2(\n\
      \\DLEgroup_policy_seq\CAN\EOT \SOH(\EOTR\SOgroupPolicySeq\DC2G\n\
      \\SOgroup_policies\CAN\ENQ \ETX(\v2 .cosmos.group.v1.GroupPolicyInfoR\rgroupPolicies\DC2!\n\
      \\fproposal_seq\CAN\ACK \SOH(\EOTR\vproposalSeq\DC27\n\
      \\tproposals\CAN\a \ETX(\v2\EM.cosmos.group.v1.ProposalR\tproposals\DC2+\n\
      \\ENQvotes\CAN\b \ETX(\v2\NAK.cosmos.group.v1.VoteR\ENQvotes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        groupSeq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupSeq")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        groups__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "groups"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.GroupInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"groups")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        groupMembers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_members"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.GroupMember)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"groupMembers")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        groupPolicySeq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_policy_seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"groupPolicySeq")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        groupPolicies__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_policies"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.GroupPolicyInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"groupPolicies")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        proposalSeq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal_seq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposalSeq")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        proposals__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposals"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.Proposal)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"proposals")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        votes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "votes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.Vote)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"votes")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupSeq__field_descriptor),
           (Data.ProtoLens.Tag 2, groups__field_descriptor),
           (Data.ProtoLens.Tag 3, groupMembers__field_descriptor),
           (Data.ProtoLens.Tag 4, groupPolicySeq__field_descriptor),
           (Data.ProtoLens.Tag 5, groupPolicies__field_descriptor),
           (Data.ProtoLens.Tag 6, proposalSeq__field_descriptor),
           (Data.ProtoLens.Tag 7, proposals__field_descriptor),
           (Data.ProtoLens.Tag 8, votes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenesisState'_unknownFields
        (\ x__ y__ -> x__ {_GenesisState'_unknownFields = y__})
  defMessage
    = GenesisState'_constructor
        {_GenesisState'groupSeq = Data.ProtoLens.fieldDefault,
         _GenesisState'groups = Data.Vector.Generic.empty,
         _GenesisState'groupMembers = Data.Vector.Generic.empty,
         _GenesisState'groupPolicySeq = Data.ProtoLens.fieldDefault,
         _GenesisState'groupPolicies = Data.Vector.Generic.empty,
         _GenesisState'proposalSeq = Data.ProtoLens.fieldDefault,
         _GenesisState'proposals = Data.Vector.Generic.empty,
         _GenesisState'votes = Data.Vector.Generic.empty,
         _GenesisState'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenesisState
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.GroupMember
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.GroupPolicyInfo
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.GroupInfo
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.Proposal
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.Vote
                         -> Data.ProtoLens.Encoding.Bytes.Parser GenesisState
        loop
          x
          mutable'groupMembers
          mutable'groupPolicies
          mutable'groups
          mutable'proposals
          mutable'votes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'groupMembers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'groupMembers)
                      frozen'groupPolicies <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'groupPolicies)
                      frozen'groups <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'groups)
                      frozen'proposals <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'proposals)
                      frozen'votes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
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
                              (Data.ProtoLens.Field.field @"vec'groupMembers")
                              frozen'groupMembers
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'groupPolicies")
                                 frozen'groupPolicies
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'groups") frozen'groups
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'proposals")
                                       frozen'proposals
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'votes") frozen'votes
                                          x))))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "group_seq"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"groupSeq") y x)
                                  mutable'groupMembers mutable'groupPolicies mutable'groups
                                  mutable'proposals mutable'votes
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "groups"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'groups y)
                                loop
                                  x mutable'groupMembers mutable'groupPolicies v mutable'proposals
                                  mutable'votes
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "group_members"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'groupMembers y)
                                loop
                                  x v mutable'groupPolicies mutable'groups mutable'proposals
                                  mutable'votes
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "group_policy_seq"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"groupPolicySeq") y x)
                                  mutable'groupMembers mutable'groupPolicies mutable'groups
                                  mutable'proposals mutable'votes
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "group_policies"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'groupPolicies y)
                                loop
                                  x mutable'groupMembers v mutable'groups mutable'proposals
                                  mutable'votes
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proposal_seq"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposalSeq") y x)
                                  mutable'groupMembers mutable'groupPolicies mutable'groups
                                  mutable'proposals mutable'votes
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "proposals"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'proposals y)
                                loop
                                  x mutable'groupMembers mutable'groupPolicies mutable'groups v
                                  mutable'votes
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "votes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'votes y)
                                loop
                                  x mutable'groupMembers mutable'groupPolicies mutable'groups
                                  mutable'proposals v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'groupMembers mutable'groupPolicies mutable'groups
                                  mutable'proposals mutable'votes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'groupMembers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'groupPolicies <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              mutable'groups <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'proposals <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'votes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'groupMembers
                mutable'groupPolicies mutable'groups mutable'proposals
                mutable'votes)
          "GenesisState"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"groupSeq") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'groups") _x))
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
                         (Data.ProtoLens.Field.field @"vec'groupMembers") _x))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"groupPolicySeq") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'groupPolicies") _x))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"proposalSeq") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'proposals") _x))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
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
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'votes") _x))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData GenesisState where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenesisState'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GenesisState'groupSeq x__)
                (Control.DeepSeq.deepseq
                   (_GenesisState'groups x__)
                   (Control.DeepSeq.deepseq
                      (_GenesisState'groupMembers x__)
                      (Control.DeepSeq.deepseq
                         (_GenesisState'groupPolicySeq x__)
                         (Control.DeepSeq.deepseq
                            (_GenesisState'groupPolicies x__)
                            (Control.DeepSeq.deepseq
                               (_GenesisState'proposalSeq x__)
                               (Control.DeepSeq.deepseq
                                  (_GenesisState'proposals x__)
                                  (Control.DeepSeq.deepseq (_GenesisState'votes x__) ()))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\GScosmos/group/v1/genesis.proto\DC2\SIcosmos.group.v1\SUB\ESCcosmos/group/v1/types.proto\"\158\ETX\n\
    \\fGenesisState\DC2\ESC\n\
    \\tgroup_seq\CAN\SOH \SOH(\EOTR\bgroupSeq\DC22\n\
    \\ACKgroups\CAN\STX \ETX(\v2\SUB.cosmos.group.v1.GroupInfoR\ACKgroups\DC2A\n\
    \\rgroup_members\CAN\ETX \ETX(\v2\FS.cosmos.group.v1.GroupMemberR\fgroupMembers\DC2(\n\
    \\DLEgroup_policy_seq\CAN\EOT \SOH(\EOTR\SOgroupPolicySeq\DC2G\n\
    \\SOgroup_policies\CAN\ENQ \ETX(\v2 .cosmos.group.v1.GroupPolicyInfoR\rgroupPolicies\DC2!\n\
    \\fproposal_seq\CAN\ACK \SOH(\EOTR\vproposalSeq\DC27\n\
    \\tproposals\CAN\a \ETX(\v2\EM.cosmos.group.v1.ProposalR\tproposals\DC2+\n\
    \\ENQvotes\CAN\b \ETX(\v2\NAK.cosmos.group.v1.VoteR\ENQvotesB&Z$github.com/cosmos/cosmos-sdk/x/groupJ\165\t\n\
    \\ACK\DC2\EOT\SOH\NUL&\SOH\n\
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
    \\STX\ETX\NUL\DC2\ETX\a\NUL%\n\
    \D\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL&\SOH\SUB8 GenesisState defines the group module's genesis state.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\DC4\n\
    \_\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SO\STX\ETB\SUBR group_seq is the group table orm.Sequence,\n\
    \ it is used to get the next group ID.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SO\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SO\NAK\SYN\n\
    \1\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC1\STX \SUB$ groups is the list of groups info.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DC1\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC1\NAK\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC1\RS\US\n\
    \;\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DC4\STX)\SUB. group_members is the list of groups members.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\DC4\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC4\ETB$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC4'(\n\
    \\134\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\CAN\STX\RS\SUBy group_policy_seq is the group policy table orm.Sequence,\n\
    \ it is used to generate the next group policy account address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\CAN\t\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\CAN\FS\GS\n\
    \A\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\ESC\STX.\SUB4 group_policies is the list of group policies info.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\ESC\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\ESC\ESC)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\ESC,-\n\
    \h\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\US\STX\SUB\SUB[ proposal_seq is the proposal table orm.Sequence,\n\
    \ it is used to get the next proposal ID.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\US\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\US\CAN\EM\n\
    \2\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\"\STX\"\SUB% proposals is the list of proposals.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX\"\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\"\DC4\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\" !\n\
    \*\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX%\STX\SUB\SUB\GS votes is the list of votes.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETX%\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX%\DLE\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX%\CAN\EMb\ACKproto3"