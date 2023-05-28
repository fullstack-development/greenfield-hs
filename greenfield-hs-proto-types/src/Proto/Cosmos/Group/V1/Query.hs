{- This file was auto-generated from cosmos/group/v1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Group.V1.Query (
        Query(..), QueryGroupInfoRequest(), QueryGroupInfoResponse(),
        QueryGroupMembersRequest(), QueryGroupMembersResponse(),
        QueryGroupPoliciesByAdminRequest(),
        QueryGroupPoliciesByAdminResponse(),
        QueryGroupPoliciesByGroupRequest(),
        QueryGroupPoliciesByGroupResponse(), QueryGroupPolicyInfoRequest(),
        QueryGroupPolicyInfoResponse(), QueryGroupsByAdminRequest(),
        QueryGroupsByAdminResponse(), QueryGroupsByMemberRequest(),
        QueryGroupsByMemberResponse(), QueryGroupsRequest(),
        QueryGroupsResponse(), QueryProposalRequest(),
        QueryProposalResponse(), QueryProposalsByGroupPolicyRequest(),
        QueryProposalsByGroupPolicyResponse(), QueryTallyResultRequest(),
        QueryTallyResultResponse(), QueryVoteByProposalVoterRequest(),
        QueryVoteByProposalVoterResponse(), QueryVotesByProposalRequest(),
        QueryVotesByProposalResponse(), QueryVotesByVoterRequest(),
        QueryVotesByVoterResponse()
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
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.Cosmos.Group.V1.Types
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.groupId' @:: Lens' QueryGroupInfoRequest Data.Word.Word64@ -}
data QueryGroupInfoRequest
  = QueryGroupInfoRequest'_constructor {_QueryGroupInfoRequest'groupId :: !Data.Word.Word64,
                                        _QueryGroupInfoRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupInfoRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupInfoRequest "groupId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupInfoRequest'groupId
           (\ x__ y__ -> x__ {_QueryGroupInfoRequest'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupInfoRequest where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryGroupInfoRequest"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryGroupInfoRequest\DC2\EM\n\
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
              Data.ProtoLens.FieldDescriptor QueryGroupInfoRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupInfoRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryGroupInfoRequest'_unknownFields = y__})
  defMessage
    = QueryGroupInfoRequest'_constructor
        {_QueryGroupInfoRequest'groupId = Data.ProtoLens.fieldDefault,
         _QueryGroupInfoRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupInfoRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupInfoRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryGroupInfoRequest"
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
instance Control.DeepSeq.NFData QueryGroupInfoRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupInfoRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryGroupInfoRequest'groupId x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.info' @:: Lens' QueryGroupInfoResponse Proto.Cosmos.Group.V1.Types.GroupInfo@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'info' @:: Lens' QueryGroupInfoResponse (Prelude.Maybe Proto.Cosmos.Group.V1.Types.GroupInfo)@ -}
data QueryGroupInfoResponse
  = QueryGroupInfoResponse'_constructor {_QueryGroupInfoResponse'info :: !(Prelude.Maybe Proto.Cosmos.Group.V1.Types.GroupInfo),
                                         _QueryGroupInfoResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupInfoResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupInfoResponse "info" Proto.Cosmos.Group.V1.Types.GroupInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupInfoResponse'info
           (\ x__ y__ -> x__ {_QueryGroupInfoResponse'info = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGroupInfoResponse "maybe'info" (Prelude.Maybe Proto.Cosmos.Group.V1.Types.GroupInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupInfoResponse'info
           (\ x__ y__ -> x__ {_QueryGroupInfoResponse'info = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupInfoResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryGroupInfoResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryGroupInfoResponse\DC2.\n\
      \\EOTinfo\CAN\SOH \SOH(\v2\SUB.cosmos.group.v1.GroupInfoR\EOTinfo"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        info__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.GroupInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'info")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupInfoResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, info__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupInfoResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryGroupInfoResponse'_unknownFields = y__})
  defMessage
    = QueryGroupInfoResponse'_constructor
        {_QueryGroupInfoResponse'info = Prelude.Nothing,
         _QueryGroupInfoResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupInfoResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupInfoResponse
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
                                       "info"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryGroupInfoResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'info") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryGroupInfoResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupInfoResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryGroupInfoResponse'info x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.groupId' @:: Lens' QueryGroupMembersRequest Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryGroupMembersRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryGroupMembersRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryGroupMembersRequest
  = QueryGroupMembersRequest'_constructor {_QueryGroupMembersRequest'groupId :: !Data.Word.Word64,
                                           _QueryGroupMembersRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                           _QueryGroupMembersRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupMembersRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupMembersRequest "groupId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupMembersRequest'groupId
           (\ x__ y__ -> x__ {_QueryGroupMembersRequest'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGroupMembersRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupMembersRequest'pagination
           (\ x__ y__ -> x__ {_QueryGroupMembersRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGroupMembersRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupMembersRequest'pagination
           (\ x__ y__ -> x__ {_QueryGroupMembersRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupMembersRequest where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryGroupMembersRequest"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryGroupMembersRequest\DC2\EM\n\
      \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
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
              Data.ProtoLens.FieldDescriptor QueryGroupMembersRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupMembersRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupId__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupMembersRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryGroupMembersRequest'_unknownFields = y__})
  defMessage
    = QueryGroupMembersRequest'_constructor
        {_QueryGroupMembersRequest'groupId = Data.ProtoLens.fieldDefault,
         _QueryGroupMembersRequest'pagination = Prelude.Nothing,
         _QueryGroupMembersRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupMembersRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupMembersRequest
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
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryGroupMembersRequest"
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryGroupMembersRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupMembersRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGroupMembersRequest'groupId x__)
                (Control.DeepSeq.deepseq
                   (_QueryGroupMembersRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.members' @:: Lens' QueryGroupMembersResponse [Proto.Cosmos.Group.V1.Types.GroupMember]@
         * 'Proto.Cosmos.Group.V1.Query_Fields.vec'members' @:: Lens' QueryGroupMembersResponse (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupMember)@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryGroupMembersResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryGroupMembersResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryGroupMembersResponse
  = QueryGroupMembersResponse'_constructor {_QueryGroupMembersResponse'members :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupMember),
                                            _QueryGroupMembersResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                            _QueryGroupMembersResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupMembersResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupMembersResponse "members" [Proto.Cosmos.Group.V1.Types.GroupMember] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupMembersResponse'members
           (\ x__ y__ -> x__ {_QueryGroupMembersResponse'members = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryGroupMembersResponse "vec'members" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupMember) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupMembersResponse'members
           (\ x__ y__ -> x__ {_QueryGroupMembersResponse'members = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGroupMembersResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupMembersResponse'pagination
           (\ x__ y__ -> x__ {_QueryGroupMembersResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGroupMembersResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupMembersResponse'pagination
           (\ x__ y__ -> x__ {_QueryGroupMembersResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupMembersResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryGroupMembersResponse"
  packedMessageDescriptor _
    = "\n\
      \\EMQueryGroupMembersResponse\DC26\n\
      \\amembers\CAN\SOH \ETX(\v2\FS.cosmos.group.v1.GroupMemberR\amembers\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        members__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "members"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.GroupMember)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"members")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupMembersResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupMembersResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, members__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupMembersResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGroupMembersResponse'_unknownFields = y__})
  defMessage
    = QueryGroupMembersResponse'_constructor
        {_QueryGroupMembersResponse'members = Data.Vector.Generic.empty,
         _QueryGroupMembersResponse'pagination = Prelude.Nothing,
         _QueryGroupMembersResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupMembersResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.GroupMember
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupMembersResponse
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
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "members"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'members y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
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
          "QueryGroupMembersResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'members") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryGroupMembersResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupMembersResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGroupMembersResponse'members x__)
                (Control.DeepSeq.deepseq
                   (_QueryGroupMembersResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.admin' @:: Lens' QueryGroupPoliciesByAdminRequest Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryGroupPoliciesByAdminRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryGroupPoliciesByAdminRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryGroupPoliciesByAdminRequest
  = QueryGroupPoliciesByAdminRequest'_constructor {_QueryGroupPoliciesByAdminRequest'admin :: !Data.Text.Text,
                                                   _QueryGroupPoliciesByAdminRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                                   _QueryGroupPoliciesByAdminRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupPoliciesByAdminRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupPoliciesByAdminRequest "admin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPoliciesByAdminRequest'admin
           (\ x__ y__ -> x__ {_QueryGroupPoliciesByAdminRequest'admin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGroupPoliciesByAdminRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPoliciesByAdminRequest'pagination
           (\ x__ y__
              -> x__ {_QueryGroupPoliciesByAdminRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGroupPoliciesByAdminRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPoliciesByAdminRequest'pagination
           (\ x__ y__
              -> x__ {_QueryGroupPoliciesByAdminRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupPoliciesByAdminRequest where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryGroupPoliciesByAdminRequest"
  packedMessageDescriptor _
    = "\n\
      \ QueryGroupPoliciesByAdminRequest\DC2.\n\
      \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
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
              Data.ProtoLens.FieldDescriptor QueryGroupPoliciesByAdminRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupPoliciesByAdminRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, admin__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupPoliciesByAdminRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGroupPoliciesByAdminRequest'_unknownFields = y__})
  defMessage
    = QueryGroupPoliciesByAdminRequest'_constructor
        {_QueryGroupPoliciesByAdminRequest'admin = Data.ProtoLens.fieldDefault,
         _QueryGroupPoliciesByAdminRequest'pagination = Prelude.Nothing,
         _QueryGroupPoliciesByAdminRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupPoliciesByAdminRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupPoliciesByAdminRequest
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryGroupPoliciesByAdminRequest"
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryGroupPoliciesByAdminRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupPoliciesByAdminRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGroupPoliciesByAdminRequest'admin x__)
                (Control.DeepSeq.deepseq
                   (_QueryGroupPoliciesByAdminRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.groupPolicies' @:: Lens' QueryGroupPoliciesByAdminResponse [Proto.Cosmos.Group.V1.Types.GroupPolicyInfo]@
         * 'Proto.Cosmos.Group.V1.Query_Fields.vec'groupPolicies' @:: Lens' QueryGroupPoliciesByAdminResponse (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupPolicyInfo)@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryGroupPoliciesByAdminResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryGroupPoliciesByAdminResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryGroupPoliciesByAdminResponse
  = QueryGroupPoliciesByAdminResponse'_constructor {_QueryGroupPoliciesByAdminResponse'groupPolicies :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupPolicyInfo),
                                                    _QueryGroupPoliciesByAdminResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                    _QueryGroupPoliciesByAdminResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupPoliciesByAdminResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupPoliciesByAdminResponse "groupPolicies" [Proto.Cosmos.Group.V1.Types.GroupPolicyInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPoliciesByAdminResponse'groupPolicies
           (\ x__ y__
              -> x__ {_QueryGroupPoliciesByAdminResponse'groupPolicies = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryGroupPoliciesByAdminResponse "vec'groupPolicies" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupPolicyInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPoliciesByAdminResponse'groupPolicies
           (\ x__ y__
              -> x__ {_QueryGroupPoliciesByAdminResponse'groupPolicies = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGroupPoliciesByAdminResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPoliciesByAdminResponse'pagination
           (\ x__ y__
              -> x__ {_QueryGroupPoliciesByAdminResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGroupPoliciesByAdminResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPoliciesByAdminResponse'pagination
           (\ x__ y__
              -> x__ {_QueryGroupPoliciesByAdminResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupPoliciesByAdminResponse where
  messageName _
    = Data.Text.pack
        "cosmos.group.v1.QueryGroupPoliciesByAdminResponse"
  packedMessageDescriptor _
    = "\n\
      \!QueryGroupPoliciesByAdminResponse\DC2G\n\
      \\SOgroup_policies\CAN\SOH \ETX(\v2 .cosmos.group.v1.GroupPolicyInfoR\rgroupPolicies\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        groupPolicies__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_policies"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.GroupPolicyInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"groupPolicies")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupPoliciesByAdminResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupPoliciesByAdminResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupPolicies__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupPoliciesByAdminResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGroupPoliciesByAdminResponse'_unknownFields = y__})
  defMessage
    = QueryGroupPoliciesByAdminResponse'_constructor
        {_QueryGroupPoliciesByAdminResponse'groupPolicies = Data.Vector.Generic.empty,
         _QueryGroupPoliciesByAdminResponse'pagination = Prelude.Nothing,
         _QueryGroupPoliciesByAdminResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupPoliciesByAdminResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.GroupPolicyInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupPoliciesByAdminResponse
        loop x mutable'groupPolicies
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'groupPolicies <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'groupPolicies)
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
                              (Data.ProtoLens.Field.field @"vec'groupPolicies")
                              frozen'groupPolicies x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "group_policies"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'groupPolicies y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'groupPolicies
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'groupPolicies
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'groupPolicies <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'groupPolicies)
          "QueryGroupPoliciesByAdminResponse"
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
                   (Data.ProtoLens.Field.field @"vec'groupPolicies") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryGroupPoliciesByAdminResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupPoliciesByAdminResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGroupPoliciesByAdminResponse'groupPolicies x__)
                (Control.DeepSeq.deepseq
                   (_QueryGroupPoliciesByAdminResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.groupId' @:: Lens' QueryGroupPoliciesByGroupRequest Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryGroupPoliciesByGroupRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryGroupPoliciesByGroupRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryGroupPoliciesByGroupRequest
  = QueryGroupPoliciesByGroupRequest'_constructor {_QueryGroupPoliciesByGroupRequest'groupId :: !Data.Word.Word64,
                                                   _QueryGroupPoliciesByGroupRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                                   _QueryGroupPoliciesByGroupRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupPoliciesByGroupRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupPoliciesByGroupRequest "groupId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPoliciesByGroupRequest'groupId
           (\ x__ y__
              -> x__ {_QueryGroupPoliciesByGroupRequest'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGroupPoliciesByGroupRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPoliciesByGroupRequest'pagination
           (\ x__ y__
              -> x__ {_QueryGroupPoliciesByGroupRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGroupPoliciesByGroupRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPoliciesByGroupRequest'pagination
           (\ x__ y__
              -> x__ {_QueryGroupPoliciesByGroupRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupPoliciesByGroupRequest where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryGroupPoliciesByGroupRequest"
  packedMessageDescriptor _
    = "\n\
      \ QueryGroupPoliciesByGroupRequest\DC2\EM\n\
      \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
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
              Data.ProtoLens.FieldDescriptor QueryGroupPoliciesByGroupRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupPoliciesByGroupRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupId__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupPoliciesByGroupRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGroupPoliciesByGroupRequest'_unknownFields = y__})
  defMessage
    = QueryGroupPoliciesByGroupRequest'_constructor
        {_QueryGroupPoliciesByGroupRequest'groupId = Data.ProtoLens.fieldDefault,
         _QueryGroupPoliciesByGroupRequest'pagination = Prelude.Nothing,
         _QueryGroupPoliciesByGroupRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupPoliciesByGroupRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupPoliciesByGroupRequest
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
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryGroupPoliciesByGroupRequest"
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryGroupPoliciesByGroupRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupPoliciesByGroupRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGroupPoliciesByGroupRequest'groupId x__)
                (Control.DeepSeq.deepseq
                   (_QueryGroupPoliciesByGroupRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.groupPolicies' @:: Lens' QueryGroupPoliciesByGroupResponse [Proto.Cosmos.Group.V1.Types.GroupPolicyInfo]@
         * 'Proto.Cosmos.Group.V1.Query_Fields.vec'groupPolicies' @:: Lens' QueryGroupPoliciesByGroupResponse (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupPolicyInfo)@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryGroupPoliciesByGroupResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryGroupPoliciesByGroupResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryGroupPoliciesByGroupResponse
  = QueryGroupPoliciesByGroupResponse'_constructor {_QueryGroupPoliciesByGroupResponse'groupPolicies :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupPolicyInfo),
                                                    _QueryGroupPoliciesByGroupResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                    _QueryGroupPoliciesByGroupResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupPoliciesByGroupResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupPoliciesByGroupResponse "groupPolicies" [Proto.Cosmos.Group.V1.Types.GroupPolicyInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPoliciesByGroupResponse'groupPolicies
           (\ x__ y__
              -> x__ {_QueryGroupPoliciesByGroupResponse'groupPolicies = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryGroupPoliciesByGroupResponse "vec'groupPolicies" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupPolicyInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPoliciesByGroupResponse'groupPolicies
           (\ x__ y__
              -> x__ {_QueryGroupPoliciesByGroupResponse'groupPolicies = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGroupPoliciesByGroupResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPoliciesByGroupResponse'pagination
           (\ x__ y__
              -> x__ {_QueryGroupPoliciesByGroupResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGroupPoliciesByGroupResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPoliciesByGroupResponse'pagination
           (\ x__ y__
              -> x__ {_QueryGroupPoliciesByGroupResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupPoliciesByGroupResponse where
  messageName _
    = Data.Text.pack
        "cosmos.group.v1.QueryGroupPoliciesByGroupResponse"
  packedMessageDescriptor _
    = "\n\
      \!QueryGroupPoliciesByGroupResponse\DC2G\n\
      \\SOgroup_policies\CAN\SOH \ETX(\v2 .cosmos.group.v1.GroupPolicyInfoR\rgroupPolicies\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        groupPolicies__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_policies"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.GroupPolicyInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"groupPolicies")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupPoliciesByGroupResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupPoliciesByGroupResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groupPolicies__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupPoliciesByGroupResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGroupPoliciesByGroupResponse'_unknownFields = y__})
  defMessage
    = QueryGroupPoliciesByGroupResponse'_constructor
        {_QueryGroupPoliciesByGroupResponse'groupPolicies = Data.Vector.Generic.empty,
         _QueryGroupPoliciesByGroupResponse'pagination = Prelude.Nothing,
         _QueryGroupPoliciesByGroupResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupPoliciesByGroupResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.GroupPolicyInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupPoliciesByGroupResponse
        loop x mutable'groupPolicies
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'groupPolicies <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'groupPolicies)
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
                              (Data.ProtoLens.Field.field @"vec'groupPolicies")
                              frozen'groupPolicies x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "group_policies"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'groupPolicies y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'groupPolicies
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'groupPolicies
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'groupPolicies <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'groupPolicies)
          "QueryGroupPoliciesByGroupResponse"
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
                   (Data.ProtoLens.Field.field @"vec'groupPolicies") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryGroupPoliciesByGroupResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupPoliciesByGroupResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGroupPoliciesByGroupResponse'groupPolicies x__)
                (Control.DeepSeq.deepseq
                   (_QueryGroupPoliciesByGroupResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.address' @:: Lens' QueryGroupPolicyInfoRequest Data.Text.Text@ -}
data QueryGroupPolicyInfoRequest
  = QueryGroupPolicyInfoRequest'_constructor {_QueryGroupPolicyInfoRequest'address :: !Data.Text.Text,
                                              _QueryGroupPolicyInfoRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupPolicyInfoRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupPolicyInfoRequest "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPolicyInfoRequest'address
           (\ x__ y__ -> x__ {_QueryGroupPolicyInfoRequest'address = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupPolicyInfoRequest where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryGroupPolicyInfoRequest"
  packedMessageDescriptor _
    = "\n\
      \\ESCQueryGroupPolicyInfoRequest\DC22\n\
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
              Data.ProtoLens.FieldDescriptor QueryGroupPolicyInfoRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupPolicyInfoRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGroupPolicyInfoRequest'_unknownFields = y__})
  defMessage
    = QueryGroupPolicyInfoRequest'_constructor
        {_QueryGroupPolicyInfoRequest'address = Data.ProtoLens.fieldDefault,
         _QueryGroupPolicyInfoRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupPolicyInfoRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupPolicyInfoRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryGroupPolicyInfoRequest"
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
instance Control.DeepSeq.NFData QueryGroupPolicyInfoRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupPolicyInfoRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGroupPolicyInfoRequest'address x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.info' @:: Lens' QueryGroupPolicyInfoResponse Proto.Cosmos.Group.V1.Types.GroupPolicyInfo@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'info' @:: Lens' QueryGroupPolicyInfoResponse (Prelude.Maybe Proto.Cosmos.Group.V1.Types.GroupPolicyInfo)@ -}
data QueryGroupPolicyInfoResponse
  = QueryGroupPolicyInfoResponse'_constructor {_QueryGroupPolicyInfoResponse'info :: !(Prelude.Maybe Proto.Cosmos.Group.V1.Types.GroupPolicyInfo),
                                               _QueryGroupPolicyInfoResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupPolicyInfoResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupPolicyInfoResponse "info" Proto.Cosmos.Group.V1.Types.GroupPolicyInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPolicyInfoResponse'info
           (\ x__ y__ -> x__ {_QueryGroupPolicyInfoResponse'info = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGroupPolicyInfoResponse "maybe'info" (Prelude.Maybe Proto.Cosmos.Group.V1.Types.GroupPolicyInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupPolicyInfoResponse'info
           (\ x__ y__ -> x__ {_QueryGroupPolicyInfoResponse'info = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupPolicyInfoResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryGroupPolicyInfoResponse"
  packedMessageDescriptor _
    = "\n\
      \\FSQueryGroupPolicyInfoResponse\DC24\n\
      \\EOTinfo\CAN\SOH \SOH(\v2 .cosmos.group.v1.GroupPolicyInfoR\EOTinfo"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        info__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.GroupPolicyInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'info")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupPolicyInfoResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, info__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupPolicyInfoResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGroupPolicyInfoResponse'_unknownFields = y__})
  defMessage
    = QueryGroupPolicyInfoResponse'_constructor
        {_QueryGroupPolicyInfoResponse'info = Prelude.Nothing,
         _QueryGroupPolicyInfoResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupPolicyInfoResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupPolicyInfoResponse
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
                                       "info"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryGroupPolicyInfoResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'info") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryGroupPolicyInfoResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupPolicyInfoResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGroupPolicyInfoResponse'info x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.admin' @:: Lens' QueryGroupsByAdminRequest Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryGroupsByAdminRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryGroupsByAdminRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryGroupsByAdminRequest
  = QueryGroupsByAdminRequest'_constructor {_QueryGroupsByAdminRequest'admin :: !Data.Text.Text,
                                            _QueryGroupsByAdminRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                            _QueryGroupsByAdminRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupsByAdminRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupsByAdminRequest "admin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsByAdminRequest'admin
           (\ x__ y__ -> x__ {_QueryGroupsByAdminRequest'admin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGroupsByAdminRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsByAdminRequest'pagination
           (\ x__ y__ -> x__ {_QueryGroupsByAdminRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGroupsByAdminRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsByAdminRequest'pagination
           (\ x__ y__ -> x__ {_QueryGroupsByAdminRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupsByAdminRequest where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryGroupsByAdminRequest"
  packedMessageDescriptor _
    = "\n\
      \\EMQueryGroupsByAdminRequest\DC2.\n\
      \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
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
              Data.ProtoLens.FieldDescriptor QueryGroupsByAdminRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupsByAdminRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, admin__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupsByAdminRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGroupsByAdminRequest'_unknownFields = y__})
  defMessage
    = QueryGroupsByAdminRequest'_constructor
        {_QueryGroupsByAdminRequest'admin = Data.ProtoLens.fieldDefault,
         _QueryGroupsByAdminRequest'pagination = Prelude.Nothing,
         _QueryGroupsByAdminRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupsByAdminRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupsByAdminRequest
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryGroupsByAdminRequest"
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryGroupsByAdminRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupsByAdminRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGroupsByAdminRequest'admin x__)
                (Control.DeepSeq.deepseq
                   (_QueryGroupsByAdminRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.groups' @:: Lens' QueryGroupsByAdminResponse [Proto.Cosmos.Group.V1.Types.GroupInfo]@
         * 'Proto.Cosmos.Group.V1.Query_Fields.vec'groups' @:: Lens' QueryGroupsByAdminResponse (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupInfo)@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryGroupsByAdminResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryGroupsByAdminResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryGroupsByAdminResponse
  = QueryGroupsByAdminResponse'_constructor {_QueryGroupsByAdminResponse'groups :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupInfo),
                                             _QueryGroupsByAdminResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                             _QueryGroupsByAdminResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupsByAdminResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupsByAdminResponse "groups" [Proto.Cosmos.Group.V1.Types.GroupInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsByAdminResponse'groups
           (\ x__ y__ -> x__ {_QueryGroupsByAdminResponse'groups = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryGroupsByAdminResponse "vec'groups" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsByAdminResponse'groups
           (\ x__ y__ -> x__ {_QueryGroupsByAdminResponse'groups = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGroupsByAdminResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsByAdminResponse'pagination
           (\ x__ y__ -> x__ {_QueryGroupsByAdminResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGroupsByAdminResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsByAdminResponse'pagination
           (\ x__ y__ -> x__ {_QueryGroupsByAdminResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupsByAdminResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryGroupsByAdminResponse"
  packedMessageDescriptor _
    = "\n\
      \\SUBQueryGroupsByAdminResponse\DC22\n\
      \\ACKgroups\CAN\SOH \ETX(\v2\SUB.cosmos.group.v1.GroupInfoR\ACKgroups\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        groups__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "groups"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.GroupInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"groups")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupsByAdminResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupsByAdminResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groups__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupsByAdminResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGroupsByAdminResponse'_unknownFields = y__})
  defMessage
    = QueryGroupsByAdminResponse'_constructor
        {_QueryGroupsByAdminResponse'groups = Data.Vector.Generic.empty,
         _QueryGroupsByAdminResponse'pagination = Prelude.Nothing,
         _QueryGroupsByAdminResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupsByAdminResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.GroupInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupsByAdminResponse
        loop x mutable'groups
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'groups <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'groups)
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
                              (Data.ProtoLens.Field.field @"vec'groups") frozen'groups x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "groups"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'groups y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'groups
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'groups
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'groups <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'groups)
          "QueryGroupsByAdminResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'groups") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryGroupsByAdminResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupsByAdminResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGroupsByAdminResponse'groups x__)
                (Control.DeepSeq.deepseq
                   (_QueryGroupsByAdminResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.address' @:: Lens' QueryGroupsByMemberRequest Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryGroupsByMemberRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryGroupsByMemberRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryGroupsByMemberRequest
  = QueryGroupsByMemberRequest'_constructor {_QueryGroupsByMemberRequest'address :: !Data.Text.Text,
                                             _QueryGroupsByMemberRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                             _QueryGroupsByMemberRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupsByMemberRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupsByMemberRequest "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsByMemberRequest'address
           (\ x__ y__ -> x__ {_QueryGroupsByMemberRequest'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGroupsByMemberRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsByMemberRequest'pagination
           (\ x__ y__ -> x__ {_QueryGroupsByMemberRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGroupsByMemberRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsByMemberRequest'pagination
           (\ x__ y__ -> x__ {_QueryGroupsByMemberRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupsByMemberRequest where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryGroupsByMemberRequest"
  packedMessageDescriptor _
    = "\n\
      \\SUBQueryGroupsByMemberRequest\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
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
              Data.ProtoLens.FieldDescriptor QueryGroupsByMemberRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupsByMemberRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupsByMemberRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGroupsByMemberRequest'_unknownFields = y__})
  defMessage
    = QueryGroupsByMemberRequest'_constructor
        {_QueryGroupsByMemberRequest'address = Data.ProtoLens.fieldDefault,
         _QueryGroupsByMemberRequest'pagination = Prelude.Nothing,
         _QueryGroupsByMemberRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupsByMemberRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupsByMemberRequest
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryGroupsByMemberRequest"
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryGroupsByMemberRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupsByMemberRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGroupsByMemberRequest'address x__)
                (Control.DeepSeq.deepseq
                   (_QueryGroupsByMemberRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.groups' @:: Lens' QueryGroupsByMemberResponse [Proto.Cosmos.Group.V1.Types.GroupInfo]@
         * 'Proto.Cosmos.Group.V1.Query_Fields.vec'groups' @:: Lens' QueryGroupsByMemberResponse (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupInfo)@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryGroupsByMemberResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryGroupsByMemberResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryGroupsByMemberResponse
  = QueryGroupsByMemberResponse'_constructor {_QueryGroupsByMemberResponse'groups :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupInfo),
                                              _QueryGroupsByMemberResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                              _QueryGroupsByMemberResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupsByMemberResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupsByMemberResponse "groups" [Proto.Cosmos.Group.V1.Types.GroupInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsByMemberResponse'groups
           (\ x__ y__ -> x__ {_QueryGroupsByMemberResponse'groups = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryGroupsByMemberResponse "vec'groups" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsByMemberResponse'groups
           (\ x__ y__ -> x__ {_QueryGroupsByMemberResponse'groups = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGroupsByMemberResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsByMemberResponse'pagination
           (\ x__ y__ -> x__ {_QueryGroupsByMemberResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGroupsByMemberResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsByMemberResponse'pagination
           (\ x__ y__ -> x__ {_QueryGroupsByMemberResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupsByMemberResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryGroupsByMemberResponse"
  packedMessageDescriptor _
    = "\n\
      \\ESCQueryGroupsByMemberResponse\DC22\n\
      \\ACKgroups\CAN\SOH \ETX(\v2\SUB.cosmos.group.v1.GroupInfoR\ACKgroups\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        groups__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "groups"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.GroupInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"groups")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupsByMemberResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupsByMemberResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groups__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupsByMemberResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGroupsByMemberResponse'_unknownFields = y__})
  defMessage
    = QueryGroupsByMemberResponse'_constructor
        {_QueryGroupsByMemberResponse'groups = Data.Vector.Generic.empty,
         _QueryGroupsByMemberResponse'pagination = Prelude.Nothing,
         _QueryGroupsByMemberResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupsByMemberResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.GroupInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupsByMemberResponse
        loop x mutable'groups
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'groups <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'groups)
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
                              (Data.ProtoLens.Field.field @"vec'groups") frozen'groups x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "groups"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'groups y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'groups
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'groups
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'groups <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'groups)
          "QueryGroupsByMemberResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'groups") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryGroupsByMemberResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupsByMemberResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGroupsByMemberResponse'groups x__)
                (Control.DeepSeq.deepseq
                   (_QueryGroupsByMemberResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryGroupsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryGroupsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryGroupsRequest
  = QueryGroupsRequest'_constructor {_QueryGroupsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                     _QueryGroupsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsRequest'pagination
           (\ x__ y__ -> x__ {_QueryGroupsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGroupsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsRequest'pagination
           (\ x__ y__ -> x__ {_QueryGroupsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupsRequest where
  messageName _ = Data.Text.pack "cosmos.group.v1.QueryGroupsRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2QueryGroupsRequest\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupsRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryGroupsRequest'_unknownFields = y__})
  defMessage
    = QueryGroupsRequest'_constructor
        {_QueryGroupsRequest'pagination = Prelude.Nothing,
         _QueryGroupsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupsRequest
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryGroupsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryGroupsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryGroupsRequest'pagination x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.groups' @:: Lens' QueryGroupsResponse [Proto.Cosmos.Group.V1.Types.GroupInfo]@
         * 'Proto.Cosmos.Group.V1.Query_Fields.vec'groups' @:: Lens' QueryGroupsResponse (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupInfo)@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryGroupsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryGroupsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryGroupsResponse
  = QueryGroupsResponse'_constructor {_QueryGroupsResponse'groups :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupInfo),
                                      _QueryGroupsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                      _QueryGroupsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGroupsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGroupsResponse "groups" [Proto.Cosmos.Group.V1.Types.GroupInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsResponse'groups
           (\ x__ y__ -> x__ {_QueryGroupsResponse'groups = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryGroupsResponse "vec'groups" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.GroupInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsResponse'groups
           (\ x__ y__ -> x__ {_QueryGroupsResponse'groups = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGroupsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsResponse'pagination
           (\ x__ y__ -> x__ {_QueryGroupsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGroupsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGroupsResponse'pagination
           (\ x__ y__ -> x__ {_QueryGroupsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGroupsResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryGroupsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryGroupsResponse\DC22\n\
      \\ACKgroups\CAN\SOH \ETX(\v2\SUB.cosmos.group.v1.GroupInfoR\ACKgroups\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        groups__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "groups"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.GroupInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"groups")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryGroupsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, groups__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGroupsResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryGroupsResponse'_unknownFields = y__})
  defMessage
    = QueryGroupsResponse'_constructor
        {_QueryGroupsResponse'groups = Data.Vector.Generic.empty,
         _QueryGroupsResponse'pagination = Prelude.Nothing,
         _QueryGroupsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGroupsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.GroupInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryGroupsResponse
        loop x mutable'groups
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'groups <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'groups)
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
                              (Data.ProtoLens.Field.field @"vec'groups") frozen'groups x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "groups"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'groups y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'groups
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'groups
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'groups <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'groups)
          "QueryGroupsResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'groups") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryGroupsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGroupsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGroupsResponse'groups x__)
                (Control.DeepSeq.deepseq (_QueryGroupsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.proposalId' @:: Lens' QueryProposalRequest Data.Word.Word64@ -}
data QueryProposalRequest
  = QueryProposalRequest'_constructor {_QueryProposalRequest'proposalId :: !Data.Word.Word64,
                                       _QueryProposalRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryProposalRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryProposalRequest "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalRequest'proposalId
           (\ x__ y__ -> x__ {_QueryProposalRequest'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryProposalRequest where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryProposalRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC4QueryProposalRequest\DC2\US\n\
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
              Data.ProtoLens.FieldDescriptor QueryProposalRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryProposalRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryProposalRequest'_unknownFields = y__})
  defMessage
    = QueryProposalRequest'_constructor
        {_QueryProposalRequest'proposalId = Data.ProtoLens.fieldDefault,
         _QueryProposalRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryProposalRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryProposalRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryProposalRequest"
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
instance Control.DeepSeq.NFData QueryProposalRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryProposalRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryProposalRequest'proposalId x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.proposal' @:: Lens' QueryProposalResponse Proto.Cosmos.Group.V1.Types.Proposal@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'proposal' @:: Lens' QueryProposalResponse (Prelude.Maybe Proto.Cosmos.Group.V1.Types.Proposal)@ -}
data QueryProposalResponse
  = QueryProposalResponse'_constructor {_QueryProposalResponse'proposal :: !(Prelude.Maybe Proto.Cosmos.Group.V1.Types.Proposal),
                                        _QueryProposalResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryProposalResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryProposalResponse "proposal" Proto.Cosmos.Group.V1.Types.Proposal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalResponse'proposal
           (\ x__ y__ -> x__ {_QueryProposalResponse'proposal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryProposalResponse "maybe'proposal" (Prelude.Maybe Proto.Cosmos.Group.V1.Types.Proposal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalResponse'proposal
           (\ x__ y__ -> x__ {_QueryProposalResponse'proposal = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryProposalResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryProposalResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryProposalResponse\DC25\n\
      \\bproposal\CAN\SOH \SOH(\v2\EM.cosmos.group.v1.ProposalR\bproposal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.Proposal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'proposal")) ::
              Data.ProtoLens.FieldDescriptor QueryProposalResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposal__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryProposalResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryProposalResponse'_unknownFields = y__})
  defMessage
    = QueryProposalResponse'_constructor
        {_QueryProposalResponse'proposal = Prelude.Nothing,
         _QueryProposalResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryProposalResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryProposalResponse
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
                                       "proposal"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposal") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryProposalResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'proposal") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryProposalResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryProposalResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryProposalResponse'proposal x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.address' @:: Lens' QueryProposalsByGroupPolicyRequest Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryProposalsByGroupPolicyRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryProposalsByGroupPolicyRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryProposalsByGroupPolicyRequest
  = QueryProposalsByGroupPolicyRequest'_constructor {_QueryProposalsByGroupPolicyRequest'address :: !Data.Text.Text,
                                                     _QueryProposalsByGroupPolicyRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                                     _QueryProposalsByGroupPolicyRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryProposalsByGroupPolicyRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryProposalsByGroupPolicyRequest "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsByGroupPolicyRequest'address
           (\ x__ y__
              -> x__ {_QueryProposalsByGroupPolicyRequest'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryProposalsByGroupPolicyRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsByGroupPolicyRequest'pagination
           (\ x__ y__
              -> x__ {_QueryProposalsByGroupPolicyRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryProposalsByGroupPolicyRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsByGroupPolicyRequest'pagination
           (\ x__ y__
              -> x__ {_QueryProposalsByGroupPolicyRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryProposalsByGroupPolicyRequest where
  messageName _
    = Data.Text.pack
        "cosmos.group.v1.QueryProposalsByGroupPolicyRequest"
  packedMessageDescriptor _
    = "\n\
      \\"QueryProposalsByGroupPolicyRequest\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
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
              Data.ProtoLens.FieldDescriptor QueryProposalsByGroupPolicyRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryProposalsByGroupPolicyRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryProposalsByGroupPolicyRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryProposalsByGroupPolicyRequest'_unknownFields = y__})
  defMessage
    = QueryProposalsByGroupPolicyRequest'_constructor
        {_QueryProposalsByGroupPolicyRequest'address = Data.ProtoLens.fieldDefault,
         _QueryProposalsByGroupPolicyRequest'pagination = Prelude.Nothing,
         _QueryProposalsByGroupPolicyRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryProposalsByGroupPolicyRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryProposalsByGroupPolicyRequest
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryProposalsByGroupPolicyRequest"
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryProposalsByGroupPolicyRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryProposalsByGroupPolicyRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryProposalsByGroupPolicyRequest'address x__)
                (Control.DeepSeq.deepseq
                   (_QueryProposalsByGroupPolicyRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.proposals' @:: Lens' QueryProposalsByGroupPolicyResponse [Proto.Cosmos.Group.V1.Types.Proposal]@
         * 'Proto.Cosmos.Group.V1.Query_Fields.vec'proposals' @:: Lens' QueryProposalsByGroupPolicyResponse (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.Proposal)@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryProposalsByGroupPolicyResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryProposalsByGroupPolicyResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryProposalsByGroupPolicyResponse
  = QueryProposalsByGroupPolicyResponse'_constructor {_QueryProposalsByGroupPolicyResponse'proposals :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.Proposal),
                                                      _QueryProposalsByGroupPolicyResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                      _QueryProposalsByGroupPolicyResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryProposalsByGroupPolicyResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryProposalsByGroupPolicyResponse "proposals" [Proto.Cosmos.Group.V1.Types.Proposal] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsByGroupPolicyResponse'proposals
           (\ x__ y__
              -> x__ {_QueryProposalsByGroupPolicyResponse'proposals = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryProposalsByGroupPolicyResponse "vec'proposals" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.Proposal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsByGroupPolicyResponse'proposals
           (\ x__ y__
              -> x__ {_QueryProposalsByGroupPolicyResponse'proposals = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryProposalsByGroupPolicyResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsByGroupPolicyResponse'pagination
           (\ x__ y__
              -> x__ {_QueryProposalsByGroupPolicyResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryProposalsByGroupPolicyResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryProposalsByGroupPolicyResponse'pagination
           (\ x__ y__
              -> x__ {_QueryProposalsByGroupPolicyResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryProposalsByGroupPolicyResponse where
  messageName _
    = Data.Text.pack
        "cosmos.group.v1.QueryProposalsByGroupPolicyResponse"
  packedMessageDescriptor _
    = "\n\
      \#QueryProposalsByGroupPolicyResponse\DC27\n\
      \\tproposals\CAN\SOH \ETX(\v2\EM.cosmos.group.v1.ProposalR\tproposals\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposals__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposals"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.Proposal)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"proposals")) ::
              Data.ProtoLens.FieldDescriptor QueryProposalsByGroupPolicyResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryProposalsByGroupPolicyResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposals__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryProposalsByGroupPolicyResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryProposalsByGroupPolicyResponse'_unknownFields = y__})
  defMessage
    = QueryProposalsByGroupPolicyResponse'_constructor
        {_QueryProposalsByGroupPolicyResponse'proposals = Data.Vector.Generic.empty,
         _QueryProposalsByGroupPolicyResponse'pagination = Prelude.Nothing,
         _QueryProposalsByGroupPolicyResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryProposalsByGroupPolicyResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.Proposal
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryProposalsByGroupPolicyResponse
        loop x mutable'proposals
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'proposals <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'proposals)
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
                              (Data.ProtoLens.Field.field @"vec'proposals") frozen'proposals x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "proposals"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'proposals y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'proposals
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'proposals
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'proposals <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'proposals)
          "QueryProposalsByGroupPolicyResponse"
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
                   (Data.ProtoLens.Field.field @"vec'proposals") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryProposalsByGroupPolicyResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryProposalsByGroupPolicyResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryProposalsByGroupPolicyResponse'proposals x__)
                (Control.DeepSeq.deepseq
                   (_QueryProposalsByGroupPolicyResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.proposalId' @:: Lens' QueryTallyResultRequest Data.Word.Word64@ -}
data QueryTallyResultRequest
  = QueryTallyResultRequest'_constructor {_QueryTallyResultRequest'proposalId :: !Data.Word.Word64,
                                          _QueryTallyResultRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryTallyResultRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryTallyResultRequest "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryTallyResultRequest'proposalId
           (\ x__ y__ -> x__ {_QueryTallyResultRequest'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryTallyResultRequest where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryTallyResultRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryTallyResultRequest\DC2\US\n\
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
              Data.ProtoLens.FieldDescriptor QueryTallyResultRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryTallyResultRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryTallyResultRequest'_unknownFields = y__})
  defMessage
    = QueryTallyResultRequest'_constructor
        {_QueryTallyResultRequest'proposalId = Data.ProtoLens.fieldDefault,
         _QueryTallyResultRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryTallyResultRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryTallyResultRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryTallyResultRequest"
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
instance Control.DeepSeq.NFData QueryTallyResultRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryTallyResultRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryTallyResultRequest'proposalId x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.tally' @:: Lens' QueryTallyResultResponse Proto.Cosmos.Group.V1.Types.TallyResult@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'tally' @:: Lens' QueryTallyResultResponse (Prelude.Maybe Proto.Cosmos.Group.V1.Types.TallyResult)@ -}
data QueryTallyResultResponse
  = QueryTallyResultResponse'_constructor {_QueryTallyResultResponse'tally :: !(Prelude.Maybe Proto.Cosmos.Group.V1.Types.TallyResult),
                                           _QueryTallyResultResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryTallyResultResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryTallyResultResponse "tally" Proto.Cosmos.Group.V1.Types.TallyResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryTallyResultResponse'tally
           (\ x__ y__ -> x__ {_QueryTallyResultResponse'tally = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryTallyResultResponse "maybe'tally" (Prelude.Maybe Proto.Cosmos.Group.V1.Types.TallyResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryTallyResultResponse'tally
           (\ x__ y__ -> x__ {_QueryTallyResultResponse'tally = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryTallyResultResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryTallyResultResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryTallyResultResponse\DC2=\n\
      \\ENQtally\CAN\SOH \SOH(\v2\FS.cosmos.group.v1.TallyResultR\ENQtallyB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tally__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tally"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.TallyResult)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tally")) ::
              Data.ProtoLens.FieldDescriptor QueryTallyResultResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, tally__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryTallyResultResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryTallyResultResponse'_unknownFields = y__})
  defMessage
    = QueryTallyResultResponse'_constructor
        {_QueryTallyResultResponse'tally = Prelude.Nothing,
         _QueryTallyResultResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryTallyResultResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryTallyResultResponse
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
                                       "tally"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tally") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryTallyResultResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tally") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryTallyResultResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryTallyResultResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryTallyResultResponse'tally x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.proposalId' @:: Lens' QueryVoteByProposalVoterRequest Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Query_Fields.voter' @:: Lens' QueryVoteByProposalVoterRequest Data.Text.Text@ -}
data QueryVoteByProposalVoterRequest
  = QueryVoteByProposalVoterRequest'_constructor {_QueryVoteByProposalVoterRequest'proposalId :: !Data.Word.Word64,
                                                  _QueryVoteByProposalVoterRequest'voter :: !Data.Text.Text,
                                                  _QueryVoteByProposalVoterRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryVoteByProposalVoterRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryVoteByProposalVoterRequest "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVoteByProposalVoterRequest'proposalId
           (\ x__ y__
              -> x__ {_QueryVoteByProposalVoterRequest'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryVoteByProposalVoterRequest "voter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVoteByProposalVoterRequest'voter
           (\ x__ y__ -> x__ {_QueryVoteByProposalVoterRequest'voter = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryVoteByProposalVoterRequest where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryVoteByProposalVoterRequest"
  packedMessageDescriptor _
    = "\n\
      \\USQueryVoteByProposalVoterRequest\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC2.\n\
      \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString"
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
              Data.ProtoLens.FieldDescriptor QueryVoteByProposalVoterRequest
        voter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"voter")) ::
              Data.ProtoLens.FieldDescriptor QueryVoteByProposalVoterRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, voter__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryVoteByProposalVoterRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryVoteByProposalVoterRequest'_unknownFields = y__})
  defMessage
    = QueryVoteByProposalVoterRequest'_constructor
        {_QueryVoteByProposalVoterRequest'proposalId = Data.ProtoLens.fieldDefault,
         _QueryVoteByProposalVoterRequest'voter = Data.ProtoLens.fieldDefault,
         _QueryVoteByProposalVoterRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryVoteByProposalVoterRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryVoteByProposalVoterRequest
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryVoteByProposalVoterRequest"
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData QueryVoteByProposalVoterRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryVoteByProposalVoterRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryVoteByProposalVoterRequest'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_QueryVoteByProposalVoterRequest'voter x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.vote' @:: Lens' QueryVoteByProposalVoterResponse Proto.Cosmos.Group.V1.Types.Vote@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'vote' @:: Lens' QueryVoteByProposalVoterResponse (Prelude.Maybe Proto.Cosmos.Group.V1.Types.Vote)@ -}
data QueryVoteByProposalVoterResponse
  = QueryVoteByProposalVoterResponse'_constructor {_QueryVoteByProposalVoterResponse'vote :: !(Prelude.Maybe Proto.Cosmos.Group.V1.Types.Vote),
                                                   _QueryVoteByProposalVoterResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryVoteByProposalVoterResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryVoteByProposalVoterResponse "vote" Proto.Cosmos.Group.V1.Types.Vote where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVoteByProposalVoterResponse'vote
           (\ x__ y__ -> x__ {_QueryVoteByProposalVoterResponse'vote = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryVoteByProposalVoterResponse "maybe'vote" (Prelude.Maybe Proto.Cosmos.Group.V1.Types.Vote) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVoteByProposalVoterResponse'vote
           (\ x__ y__ -> x__ {_QueryVoteByProposalVoterResponse'vote = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryVoteByProposalVoterResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryVoteByProposalVoterResponse"
  packedMessageDescriptor _
    = "\n\
      \ QueryVoteByProposalVoterResponse\DC2)\n\
      \\EOTvote\CAN\SOH \SOH(\v2\NAK.cosmos.group.v1.VoteR\EOTvote"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        vote__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vote"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.Vote)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vote")) ::
              Data.ProtoLens.FieldDescriptor QueryVoteByProposalVoterResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, vote__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryVoteByProposalVoterResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryVoteByProposalVoterResponse'_unknownFields = y__})
  defMessage
    = QueryVoteByProposalVoterResponse'_constructor
        {_QueryVoteByProposalVoterResponse'vote = Prelude.Nothing,
         _QueryVoteByProposalVoterResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryVoteByProposalVoterResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryVoteByProposalVoterResponse
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
                                       "vote"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vote") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryVoteByProposalVoterResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vote") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryVoteByProposalVoterResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryVoteByProposalVoterResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryVoteByProposalVoterResponse'vote x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.proposalId' @:: Lens' QueryVotesByProposalRequest Data.Word.Word64@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryVotesByProposalRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryVotesByProposalRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryVotesByProposalRequest
  = QueryVotesByProposalRequest'_constructor {_QueryVotesByProposalRequest'proposalId :: !Data.Word.Word64,
                                              _QueryVotesByProposalRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                              _QueryVotesByProposalRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryVotesByProposalRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryVotesByProposalRequest "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesByProposalRequest'proposalId
           (\ x__ y__ -> x__ {_QueryVotesByProposalRequest'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryVotesByProposalRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesByProposalRequest'pagination
           (\ x__ y__ -> x__ {_QueryVotesByProposalRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryVotesByProposalRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesByProposalRequest'pagination
           (\ x__ y__ -> x__ {_QueryVotesByProposalRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryVotesByProposalRequest where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryVotesByProposalRequest"
  packedMessageDescriptor _
    = "\n\
      \\ESCQueryVotesByProposalRequest\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
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
              Data.ProtoLens.FieldDescriptor QueryVotesByProposalRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryVotesByProposalRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryVotesByProposalRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryVotesByProposalRequest'_unknownFields = y__})
  defMessage
    = QueryVotesByProposalRequest'_constructor
        {_QueryVotesByProposalRequest'proposalId = Data.ProtoLens.fieldDefault,
         _QueryVotesByProposalRequest'pagination = Prelude.Nothing,
         _QueryVotesByProposalRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryVotesByProposalRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryVotesByProposalRequest
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryVotesByProposalRequest"
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryVotesByProposalRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryVotesByProposalRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryVotesByProposalRequest'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_QueryVotesByProposalRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.votes' @:: Lens' QueryVotesByProposalResponse [Proto.Cosmos.Group.V1.Types.Vote]@
         * 'Proto.Cosmos.Group.V1.Query_Fields.vec'votes' @:: Lens' QueryVotesByProposalResponse (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.Vote)@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryVotesByProposalResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryVotesByProposalResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryVotesByProposalResponse
  = QueryVotesByProposalResponse'_constructor {_QueryVotesByProposalResponse'votes :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.Vote),
                                               _QueryVotesByProposalResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                               _QueryVotesByProposalResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryVotesByProposalResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryVotesByProposalResponse "votes" [Proto.Cosmos.Group.V1.Types.Vote] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesByProposalResponse'votes
           (\ x__ y__ -> x__ {_QueryVotesByProposalResponse'votes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryVotesByProposalResponse "vec'votes" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.Vote) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesByProposalResponse'votes
           (\ x__ y__ -> x__ {_QueryVotesByProposalResponse'votes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryVotesByProposalResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesByProposalResponse'pagination
           (\ x__ y__
              -> x__ {_QueryVotesByProposalResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryVotesByProposalResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesByProposalResponse'pagination
           (\ x__ y__
              -> x__ {_QueryVotesByProposalResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryVotesByProposalResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryVotesByProposalResponse"
  packedMessageDescriptor _
    = "\n\
      \\FSQueryVotesByProposalResponse\DC2+\n\
      \\ENQvotes\CAN\SOH \ETX(\v2\NAK.cosmos.group.v1.VoteR\ENQvotes\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        votes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "votes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.Vote)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"votes")) ::
              Data.ProtoLens.FieldDescriptor QueryVotesByProposalResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryVotesByProposalResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, votes__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryVotesByProposalResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryVotesByProposalResponse'_unknownFields = y__})
  defMessage
    = QueryVotesByProposalResponse'_constructor
        {_QueryVotesByProposalResponse'votes = Data.Vector.Generic.empty,
         _QueryVotesByProposalResponse'pagination = Prelude.Nothing,
         _QueryVotesByProposalResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryVotesByProposalResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.Vote
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryVotesByProposalResponse
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
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "votes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'votes y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'votes
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
          "QueryVotesByProposalResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'votes") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryVotesByProposalResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryVotesByProposalResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryVotesByProposalResponse'votes x__)
                (Control.DeepSeq.deepseq
                   (_QueryVotesByProposalResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.voter' @:: Lens' QueryVotesByVoterRequest Data.Text.Text@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryVotesByVoterRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryVotesByVoterRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryVotesByVoterRequest
  = QueryVotesByVoterRequest'_constructor {_QueryVotesByVoterRequest'voter :: !Data.Text.Text,
                                           _QueryVotesByVoterRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                           _QueryVotesByVoterRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryVotesByVoterRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryVotesByVoterRequest "voter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesByVoterRequest'voter
           (\ x__ y__ -> x__ {_QueryVotesByVoterRequest'voter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryVotesByVoterRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesByVoterRequest'pagination
           (\ x__ y__ -> x__ {_QueryVotesByVoterRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryVotesByVoterRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesByVoterRequest'pagination
           (\ x__ y__ -> x__ {_QueryVotesByVoterRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryVotesByVoterRequest where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryVotesByVoterRequest"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryVotesByVoterRequest\DC2.\n\
      \\ENQvoter\CAN\SOH \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        voter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"voter")) ::
              Data.ProtoLens.FieldDescriptor QueryVotesByVoterRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryVotesByVoterRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, voter__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryVotesByVoterRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryVotesByVoterRequest'_unknownFields = y__})
  defMessage
    = QueryVotesByVoterRequest'_constructor
        {_QueryVotesByVoterRequest'voter = Data.ProtoLens.fieldDefault,
         _QueryVotesByVoterRequest'pagination = Prelude.Nothing,
         _QueryVotesByVoterRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryVotesByVoterRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryVotesByVoterRequest
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
                                       "voter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"voter") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryVotesByVoterRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"voter") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryVotesByVoterRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryVotesByVoterRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryVotesByVoterRequest'voter x__)
                (Control.DeepSeq.deepseq
                   (_QueryVotesByVoterRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Group.V1.Query_Fields.votes' @:: Lens' QueryVotesByVoterResponse [Proto.Cosmos.Group.V1.Types.Vote]@
         * 'Proto.Cosmos.Group.V1.Query_Fields.vec'votes' @:: Lens' QueryVotesByVoterResponse (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.Vote)@
         * 'Proto.Cosmos.Group.V1.Query_Fields.pagination' @:: Lens' QueryVotesByVoterResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Group.V1.Query_Fields.maybe'pagination' @:: Lens' QueryVotesByVoterResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryVotesByVoterResponse
  = QueryVotesByVoterResponse'_constructor {_QueryVotesByVoterResponse'votes :: !(Data.Vector.Vector Proto.Cosmos.Group.V1.Types.Vote),
                                            _QueryVotesByVoterResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                            _QueryVotesByVoterResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryVotesByVoterResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryVotesByVoterResponse "votes" [Proto.Cosmos.Group.V1.Types.Vote] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesByVoterResponse'votes
           (\ x__ y__ -> x__ {_QueryVotesByVoterResponse'votes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryVotesByVoterResponse "vec'votes" (Data.Vector.Vector Proto.Cosmos.Group.V1.Types.Vote) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesByVoterResponse'votes
           (\ x__ y__ -> x__ {_QueryVotesByVoterResponse'votes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryVotesByVoterResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesByVoterResponse'pagination
           (\ x__ y__ -> x__ {_QueryVotesByVoterResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryVotesByVoterResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryVotesByVoterResponse'pagination
           (\ x__ y__ -> x__ {_QueryVotesByVoterResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryVotesByVoterResponse where
  messageName _
    = Data.Text.pack "cosmos.group.v1.QueryVotesByVoterResponse"
  packedMessageDescriptor _
    = "\n\
      \\EMQueryVotesByVoterResponse\DC2+\n\
      \\ENQvotes\CAN\SOH \ETX(\v2\NAK.cosmos.group.v1.VoteR\ENQvotes\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        votes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "votes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Group.V1.Types.Vote)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"votes")) ::
              Data.ProtoLens.FieldDescriptor QueryVotesByVoterResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryVotesByVoterResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, votes__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryVotesByVoterResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryVotesByVoterResponse'_unknownFields = y__})
  defMessage
    = QueryVotesByVoterResponse'_constructor
        {_QueryVotesByVoterResponse'votes = Data.Vector.Generic.empty,
         _QueryVotesByVoterResponse'pagination = Prelude.Nothing,
         _QueryVotesByVoterResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryVotesByVoterResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Group.V1.Types.Vote
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryVotesByVoterResponse
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
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "votes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'votes y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'votes
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
          "QueryVotesByVoterResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'votes") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData QueryVotesByVoterResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryVotesByVoterResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryVotesByVoterResponse'votes x__)
                (Control.DeepSeq.deepseq
                   (_QueryVotesByVoterResponse'pagination x__) ()))
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.group.v1"
  type ServiceMethods Query = '["groupInfo",
                                "groupMembers",
                                "groupPoliciesByAdmin",
                                "groupPoliciesByGroup",
                                "groupPolicyInfo",
                                "groups",
                                "groupsByAdmin",
                                "groupsByMember",
                                "proposal",
                                "proposalsByGroupPolicy",
                                "tallyResult",
                                "voteByProposalVoter",
                                "votesByProposal",
                                "votesByVoter"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\140\SOH\n\
      \\tGroupInfo\DC2&.cosmos.group.v1.QueryGroupInfoRequest\SUB'.cosmos.group.v1.QueryGroupInfoResponse\".\130\211\228\147\STX(\DC2&/cosmos/group/v1/group_info/{group_id}\DC2\164\SOH\n\
      \\SIGroupPolicyInfo\DC2,.cosmos.group.v1.QueryGroupPolicyInfoRequest\SUB-.cosmos.group.v1.QueryGroupPolicyInfoResponse\"4\130\211\228\147\STX.\DC2,/cosmos/group/v1/group_policy_info/{address}\DC2\152\SOH\n\
      \\fGroupMembers\DC2).cosmos.group.v1.QueryGroupMembersRequest\SUB*.cosmos.group.v1.QueryGroupMembersResponse\"1\130\211\228\147\STX+\DC2)/cosmos/group/v1/group_members/{group_id}\DC2\154\SOH\n\
      \\rGroupsByAdmin\DC2*.cosmos.group.v1.QueryGroupsByAdminRequest\SUB+.cosmos.group.v1.QueryGroupsByAdminResponse\"0\130\211\228\147\STX*\DC2(/cosmos/group/v1/groups_by_admin/{admin}\DC2\186\SOH\n\
      \\DC4GroupPoliciesByGroup\DC21.cosmos.group.v1.QueryGroupPoliciesByGroupRequest\SUB2.cosmos.group.v1.QueryGroupPoliciesByGroupResponse\";\130\211\228\147\STX5\DC23/cosmos/group/v1/group_policies_by_group/{group_id}\DC2\183\SOH\n\
      \\DC4GroupPoliciesByAdmin\DC21.cosmos.group.v1.QueryGroupPoliciesByAdminRequest\SUB2.cosmos.group.v1.QueryGroupPoliciesByAdminResponse\"8\130\211\228\147\STX2\DC20/cosmos/group/v1/group_policies_by_admin/{admin}\DC2\138\SOH\n\
      \\bProposal\DC2%.cosmos.group.v1.QueryProposalRequest\SUB&.cosmos.group.v1.QueryProposalResponse\"/\130\211\228\147\STX)\DC2'/cosmos/group/v1/proposal/{proposal_id}\DC2\193\SOH\n\
      \\SYNProposalsByGroupPolicy\DC23.cosmos.group.v1.QueryProposalsByGroupPolicyRequest\SUB4.cosmos.group.v1.QueryProposalsByGroupPolicyResponse\"<\130\211\228\147\STX6\DC24/cosmos/group/v1/proposals_by_group_policy/{address}\DC2\193\SOH\n\
      \\DC3VoteByProposalVoter\DC20.cosmos.group.v1.QueryVoteByProposalVoterRequest\SUB1.cosmos.group.v1.QueryVoteByProposalVoterResponse\"E\130\211\228\147\STX?\DC2=/cosmos/group/v1/vote_by_proposal_voter/{proposal_id}/{voter}\DC2\168\SOH\n\
      \\SIVotesByProposal\DC2,.cosmos.group.v1.QueryVotesByProposalRequest\SUB-.cosmos.group.v1.QueryVotesByProposalResponse\"8\130\211\228\147\STX2\DC20/cosmos/group/v1/votes_by_proposal/{proposal_id}\DC2\150\SOH\n\
      \\fVotesByVoter\DC2).cosmos.group.v1.QueryVotesByVoterRequest\SUB*.cosmos.group.v1.QueryVotesByVoterResponse\"/\130\211\228\147\STX)\DC2'/cosmos/group/v1/votes_by_voter/{voter}\DC2\160\SOH\n\
      \\SOGroupsByMember\DC2+.cosmos.group.v1.QueryGroupsByMemberRequest\SUB,.cosmos.group.v1.QueryGroupsByMemberResponse\"3\130\211\228\147\STX-\DC2+/cosmos/group/v1/groups_by_member/{address}\DC2\154\SOH\n\
      \\vTallyResult\DC2(.cosmos.group.v1.QueryTallyResultRequest\SUB).cosmos.group.v1.QueryTallyResultResponse\"6\130\211\228\147\STX0\DC2./cosmos/group/v1/proposals/{proposal_id}/tally\DC2t\n\
      \\ACKGroups\DC2#.cosmos.group.v1.QueryGroupsRequest\SUB$.cosmos.group.v1.QueryGroupsResponse\"\US\130\211\228\147\STX\EM\DC2\ETB/cosmos/group/v1/groups"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "groupInfo" where
  type MethodName Query "groupInfo" = "GroupInfo"
  type MethodInput Query "groupInfo" = QueryGroupInfoRequest
  type MethodOutput Query "groupInfo" = QueryGroupInfoResponse
  type MethodStreamingType Query "groupInfo" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "groupPolicyInfo" where
  type MethodName Query "groupPolicyInfo" = "GroupPolicyInfo"
  type MethodInput Query "groupPolicyInfo" = QueryGroupPolicyInfoRequest
  type MethodOutput Query "groupPolicyInfo" = QueryGroupPolicyInfoResponse
  type MethodStreamingType Query "groupPolicyInfo" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "groupMembers" where
  type MethodName Query "groupMembers" = "GroupMembers"
  type MethodInput Query "groupMembers" = QueryGroupMembersRequest
  type MethodOutput Query "groupMembers" = QueryGroupMembersResponse
  type MethodStreamingType Query "groupMembers" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "groupsByAdmin" where
  type MethodName Query "groupsByAdmin" = "GroupsByAdmin"
  type MethodInput Query "groupsByAdmin" = QueryGroupsByAdminRequest
  type MethodOutput Query "groupsByAdmin" = QueryGroupsByAdminResponse
  type MethodStreamingType Query "groupsByAdmin" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "groupPoliciesByGroup" where
  type MethodName Query "groupPoliciesByGroup" = "GroupPoliciesByGroup"
  type MethodInput Query "groupPoliciesByGroup" = QueryGroupPoliciesByGroupRequest
  type MethodOutput Query "groupPoliciesByGroup" = QueryGroupPoliciesByGroupResponse
  type MethodStreamingType Query "groupPoliciesByGroup" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "groupPoliciesByAdmin" where
  type MethodName Query "groupPoliciesByAdmin" = "GroupPoliciesByAdmin"
  type MethodInput Query "groupPoliciesByAdmin" = QueryGroupPoliciesByAdminRequest
  type MethodOutput Query "groupPoliciesByAdmin" = QueryGroupPoliciesByAdminResponse
  type MethodStreamingType Query "groupPoliciesByAdmin" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "proposal" where
  type MethodName Query "proposal" = "Proposal"
  type MethodInput Query "proposal" = QueryProposalRequest
  type MethodOutput Query "proposal" = QueryProposalResponse
  type MethodStreamingType Query "proposal" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "proposalsByGroupPolicy" where
  type MethodName Query "proposalsByGroupPolicy" = "ProposalsByGroupPolicy"
  type MethodInput Query "proposalsByGroupPolicy" = QueryProposalsByGroupPolicyRequest
  type MethodOutput Query "proposalsByGroupPolicy" = QueryProposalsByGroupPolicyResponse
  type MethodStreamingType Query "proposalsByGroupPolicy" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "voteByProposalVoter" where
  type MethodName Query "voteByProposalVoter" = "VoteByProposalVoter"
  type MethodInput Query "voteByProposalVoter" = QueryVoteByProposalVoterRequest
  type MethodOutput Query "voteByProposalVoter" = QueryVoteByProposalVoterResponse
  type MethodStreamingType Query "voteByProposalVoter" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "votesByProposal" where
  type MethodName Query "votesByProposal" = "VotesByProposal"
  type MethodInput Query "votesByProposal" = QueryVotesByProposalRequest
  type MethodOutput Query "votesByProposal" = QueryVotesByProposalResponse
  type MethodStreamingType Query "votesByProposal" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "votesByVoter" where
  type MethodName Query "votesByVoter" = "VotesByVoter"
  type MethodInput Query "votesByVoter" = QueryVotesByVoterRequest
  type MethodOutput Query "votesByVoter" = QueryVotesByVoterResponse
  type MethodStreamingType Query "votesByVoter" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "groupsByMember" where
  type MethodName Query "groupsByMember" = "GroupsByMember"
  type MethodInput Query "groupsByMember" = QueryGroupsByMemberRequest
  type MethodOutput Query "groupsByMember" = QueryGroupsByMemberResponse
  type MethodStreamingType Query "groupsByMember" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "tallyResult" where
  type MethodName Query "tallyResult" = "TallyResult"
  type MethodInput Query "tallyResult" = QueryTallyResultRequest
  type MethodOutput Query "tallyResult" = QueryTallyResultResponse
  type MethodStreamingType Query "tallyResult" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "groups" where
  type MethodName Query "groups" = "Groups"
  type MethodInput Query "groups" = QueryGroupsRequest
  type MethodOutput Query "groups" = QueryGroupsResponse
  type MethodStreamingType Query "groups" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\ESCcosmos/group/v1/query.proto\DC2\SIcosmos.group.v1\SUB\DC4gogoproto/gogo.proto\SUB\FSgoogle/api/annotations.proto\SUB\ESCcosmos/group/v1/types.proto\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"2\n\
    \\NAKQueryGroupInfoRequest\DC2\EM\n\
    \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId\"H\n\
    \\SYNQueryGroupInfoResponse\DC2.\n\
    \\EOTinfo\CAN\SOH \SOH(\v2\SUB.cosmos.group.v1.GroupInfoR\EOTinfo\"Q\n\
    \\ESCQueryGroupPolicyInfoRequest\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\"T\n\
    \\FSQueryGroupPolicyInfoResponse\DC24\n\
    \\EOTinfo\CAN\SOH \SOH(\v2 .cosmos.group.v1.GroupPolicyInfoR\EOTinfo\"}\n\
    \\CANQueryGroupMembersRequest\DC2\EM\n\
    \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\156\SOH\n\
    \\EMQueryGroupMembersResponse\DC26\n\
    \\amembers\CAN\SOH \ETX(\v2\FS.cosmos.group.v1.GroupMemberR\amembers\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\147\SOH\n\
    \\EMQueryGroupsByAdminRequest\DC2.\n\
    \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\153\SOH\n\
    \\SUBQueryGroupsByAdminResponse\DC22\n\
    \\ACKgroups\CAN\SOH \ETX(\v2\SUB.cosmos.group.v1.GroupInfoR\ACKgroups\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\133\SOH\n\
    \ QueryGroupPoliciesByGroupRequest\DC2\EM\n\
    \\bgroup_id\CAN\SOH \SOH(\EOTR\agroupId\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\181\SOH\n\
    \!QueryGroupPoliciesByGroupResponse\DC2G\n\
    \\SOgroup_policies\CAN\SOH \ETX(\v2 .cosmos.group.v1.GroupPolicyInfoR\rgroupPolicies\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\154\SOH\n\
    \ QueryGroupPoliciesByAdminRequest\DC2.\n\
    \\ENQadmin\CAN\SOH \SOH(\tR\ENQadminB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\181\SOH\n\
    \!QueryGroupPoliciesByAdminResponse\DC2G\n\
    \\SOgroup_policies\CAN\SOH \ETX(\v2 .cosmos.group.v1.GroupPolicyInfoR\rgroupPolicies\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"7\n\
    \\DC4QueryProposalRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\"N\n\
    \\NAKQueryProposalResponse\DC25\n\
    \\bproposal\CAN\SOH \SOH(\v2\EM.cosmos.group.v1.ProposalR\bproposal\"\160\SOH\n\
    \\"QueryProposalsByGroupPolicyRequest\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\167\SOH\n\
    \#QueryProposalsByGroupPolicyResponse\DC27\n\
    \\tproposals\CAN\SOH \ETX(\v2\EM.cosmos.group.v1.ProposalR\tproposals\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"r\n\
    \\USQueryVoteByProposalVoterRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC2.\n\
    \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\"M\n\
    \ QueryVoteByProposalVoterResponse\DC2)\n\
    \\EOTvote\CAN\SOH \SOH(\v2\NAK.cosmos.group.v1.VoteR\EOTvote\"\134\SOH\n\
    \\ESCQueryVotesByProposalRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\148\SOH\n\
    \\FSQueryVotesByProposalResponse\DC2+\n\
    \\ENQvotes\CAN\SOH \ETX(\v2\NAK.cosmos.group.v1.VoteR\ENQvotes\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\146\SOH\n\
    \\CANQueryVotesByVoterRequest\DC2.\n\
    \\ENQvoter\CAN\SOH \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\145\SOH\n\
    \\EMQueryVotesByVoterResponse\DC2+\n\
    \\ENQvotes\CAN\SOH \ETX(\v2\NAK.cosmos.group.v1.VoteR\ENQvotes\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\152\SOH\n\
    \\SUBQueryGroupsByMemberRequest\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\154\SOH\n\
    \\ESCQueryGroupsByMemberResponse\DC22\n\
    \\ACKgroups\CAN\SOH \ETX(\v2\SUB.cosmos.group.v1.GroupInfoR\ACKgroups\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\":\n\
    \\ETBQueryTallyResultRequest\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\"Y\n\
    \\CANQueryTallyResultResponse\DC2=\n\
    \\ENQtally\CAN\SOH \SOH(\v2\FS.cosmos.group.v1.TallyResultR\ENQtallyB\t\200\222\US\NUL\168\231\176*\SOH\"\\\n\
    \\DC2QueryGroupsRequest\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\146\SOH\n\
    \\DC3QueryGroupsResponse\DC22\n\
    \\ACKgroups\CAN\SOH \ETX(\v2\SUB.cosmos.group.v1.GroupInfoR\ACKgroups\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination2\251\DC1\n\
    \\ENQQuery\DC2\140\SOH\n\
    \\tGroupInfo\DC2&.cosmos.group.v1.QueryGroupInfoRequest\SUB'.cosmos.group.v1.QueryGroupInfoResponse\".\130\211\228\147\STX(\DC2&/cosmos/group/v1/group_info/{group_id}\DC2\164\SOH\n\
    \\SIGroupPolicyInfo\DC2,.cosmos.group.v1.QueryGroupPolicyInfoRequest\SUB-.cosmos.group.v1.QueryGroupPolicyInfoResponse\"4\130\211\228\147\STX.\DC2,/cosmos/group/v1/group_policy_info/{address}\DC2\152\SOH\n\
    \\fGroupMembers\DC2).cosmos.group.v1.QueryGroupMembersRequest\SUB*.cosmos.group.v1.QueryGroupMembersResponse\"1\130\211\228\147\STX+\DC2)/cosmos/group/v1/group_members/{group_id}\DC2\154\SOH\n\
    \\rGroupsByAdmin\DC2*.cosmos.group.v1.QueryGroupsByAdminRequest\SUB+.cosmos.group.v1.QueryGroupsByAdminResponse\"0\130\211\228\147\STX*\DC2(/cosmos/group/v1/groups_by_admin/{admin}\DC2\186\SOH\n\
    \\DC4GroupPoliciesByGroup\DC21.cosmos.group.v1.QueryGroupPoliciesByGroupRequest\SUB2.cosmos.group.v1.QueryGroupPoliciesByGroupResponse\";\130\211\228\147\STX5\DC23/cosmos/group/v1/group_policies_by_group/{group_id}\DC2\183\SOH\n\
    \\DC4GroupPoliciesByAdmin\DC21.cosmos.group.v1.QueryGroupPoliciesByAdminRequest\SUB2.cosmos.group.v1.QueryGroupPoliciesByAdminResponse\"8\130\211\228\147\STX2\DC20/cosmos/group/v1/group_policies_by_admin/{admin}\DC2\138\SOH\n\
    \\bProposal\DC2%.cosmos.group.v1.QueryProposalRequest\SUB&.cosmos.group.v1.QueryProposalResponse\"/\130\211\228\147\STX)\DC2'/cosmos/group/v1/proposal/{proposal_id}\DC2\193\SOH\n\
    \\SYNProposalsByGroupPolicy\DC23.cosmos.group.v1.QueryProposalsByGroupPolicyRequest\SUB4.cosmos.group.v1.QueryProposalsByGroupPolicyResponse\"<\130\211\228\147\STX6\DC24/cosmos/group/v1/proposals_by_group_policy/{address}\DC2\193\SOH\n\
    \\DC3VoteByProposalVoter\DC20.cosmos.group.v1.QueryVoteByProposalVoterRequest\SUB1.cosmos.group.v1.QueryVoteByProposalVoterResponse\"E\130\211\228\147\STX?\DC2=/cosmos/group/v1/vote_by_proposal_voter/{proposal_id}/{voter}\DC2\168\SOH\n\
    \\SIVotesByProposal\DC2,.cosmos.group.v1.QueryVotesByProposalRequest\SUB-.cosmos.group.v1.QueryVotesByProposalResponse\"8\130\211\228\147\STX2\DC20/cosmos/group/v1/votes_by_proposal/{proposal_id}\DC2\150\SOH\n\
    \\fVotesByVoter\DC2).cosmos.group.v1.QueryVotesByVoterRequest\SUB*.cosmos.group.v1.QueryVotesByVoterResponse\"/\130\211\228\147\STX)\DC2'/cosmos/group/v1/votes_by_voter/{voter}\DC2\160\SOH\n\
    \\SOGroupsByMember\DC2+.cosmos.group.v1.QueryGroupsByMemberRequest\SUB,.cosmos.group.v1.QueryGroupsByMemberResponse\"3\130\211\228\147\STX-\DC2+/cosmos/group/v1/groups_by_member/{address}\DC2\154\SOH\n\
    \\vTallyResult\DC2(.cosmos.group.v1.QueryTallyResultRequest\SUB).cosmos.group.v1.QueryTallyResultResponse\"6\130\211\228\147\STX0\DC2./cosmos/group/v1/proposals/{proposal_id}/tally\DC2t\n\
    \\ACKGroups\DC2#.cosmos.group.v1.QueryGroupsRequest\SUB$.cosmos.group.v1.QueryGroupsResponse\"\US\130\211\228\147\STX\EM\DC2\ETB/cosmos/group/v1/groupsB&Z$github.com/cosmos/cosmos-sdk/x/groupJ\248U\n\
    \\a\DC2\ENQ\SOH\NUL\191\STX\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.46\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ETX\NUL\CAN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL%\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL4\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL#\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL;\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\f\NUL;\n\
    \9\n\
    \\STX\ACK\NUL\DC2\EOT\SI\NUL\\\SOH\SUB- Query is the cosmos.group.v1 Query service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\SI\b\r\n\
    \?\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\DC2\STX\DC4\ETX\SUB1 GroupInfo queries group info based on group id.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC2\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC2\DLE%\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC20F\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\DC3\EOTL\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\DC3\EOTL\n\
    \c\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\ETB\STX\EM\ETX\SUBU GroupPolicyInfo queries group policy info based on account address of group policy.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\ETB\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\ETB\SYN1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\ETB<X\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\CAN\EOTR\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\CAN\EOTR\n\
    \D\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\FS\STX\RS\ETX\SUB6 GroupMembers queries members of a group by group id.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\FS\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\FS\DC3+\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\FS6O\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\GS\EOTO\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX\GS\EOTO\n\
    \>\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\EOT!\STX#\ETX\SUB0 GroupsByAdmin queries groups by admin address.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX!\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX!\DC4-\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX!8R\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\ETX\"\EOTN\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ETX\EOT\176\202\188\"\STX\DC2\ETX\"\EOTN\n\
    \H\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\EOT&\STX(\ETX\SUB: GroupPoliciesByGroup queries group policies by group id.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX&\ACK\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX&\ESC;\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX&Fg\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX'\EOTY\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\EOT\EOT\176\202\188\"\STX\DC2\ETX'\EOTY\n\
    \M\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\EOT+\STX-\ETX\SUB? GroupPoliciesByAdmin queries group policies by admin address.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX+\ACK\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX+\ESC;\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX+Fg\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\ETX,\EOTV\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ENQ\EOT\176\202\188\"\STX\DC2\ETX,\EOTV\n\
    \A\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\EOT0\STX2\ETX\SUB3 Proposal queries a proposal based on proposal id.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX0\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX0\SI#\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX0.C\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\EOT\DC2\ETX1\EOTM\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ACK\EOT\176\202\188\"\STX\DC2\ETX1\EOTM\n\
    \b\n\
    \\EOT\ACK\NUL\STX\a\DC2\EOT5\STX7\ETX\SUBT ProposalsByGroupPolicy queries proposals based on account address of group policy.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\SOH\DC2\ETX5\ACK\FS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\STX\DC2\ETX5\GS?\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\ETX\DC2\ETX5Jm\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\EOT\DC2\ETX6\EOTZ\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\a\EOT\176\202\188\"\STX\DC2\ETX6\EOTZ\n\
    \L\n\
    \\EOT\ACK\NUL\STX\b\DC2\EOT:\STX<\ETX\SUB> VoteByProposalVoter queries a vote by proposal id and voter.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\SOH\DC2\ETX:\ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\STX\DC2\ETX:\SUB9\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\ETX\DC2\ETX:Dd\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\EOT\DC2\ETX;\EOTc\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\b\EOT\176\202\188\"\STX\DC2\ETX;\EOTc\n\
    \>\n\
    \\EOT\ACK\NUL\STX\t\DC2\EOT?\STXA\ETX\SUB0 VotesByProposal queries a vote by proposal id.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\SOH\DC2\ETX?\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\STX\DC2\ETX?\SYN1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\ETX\DC2\ETX?<X\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\EOT\DC2\ETX@\EOTV\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\t\EOT\176\202\188\"\STX\DC2\ETX@\EOTV\n\
    \5\n\
    \\EOT\ACK\NUL\STX\n\
    \\DC2\EOTD\STXF\ETX\SUB' VotesByVoter queries a vote by voter.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\SOH\DC2\ETXD\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\STX\DC2\ETXD\DC3+\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\ETX\DC2\ETXD6O\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\n\
    \\EOT\DC2\ETXE\EOTM\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\n\
    \\EOT\176\202\188\"\STX\DC2\ETXE\EOTM\n\
    \@\n\
    \\EOT\ACK\NUL\STX\v\DC2\EOTI\STXK\ETX\SUB2 GroupsByMember queries groups by member address.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\SOH\DC2\ETXI\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\STX\DC2\ETXI\NAK/\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\ETX\DC2\ETXI:U\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\v\EOT\DC2\ETXJ\EOTQ\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\v\EOT\176\202\188\"\STX\DC2\ETXJ\EOTQ\n\
    \\193\STX\n\
    \\EOT\ACK\NUL\STX\f\DC2\EOTR\STXT\ETX\SUB\178\STX TallyResult returns the tally result of a proposal. If the proposal is\n\
    \ still in voting period, then this query computes the current tally state,\n\
    \ which might not be final. On the other hand, if the proposal is final,\n\
    \ then it simply returns the `final_tally_result` state stored in the\n\
    \ proposal itself.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\SOH\DC2\ETXR\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\STX\DC2\ETXR\DC2)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\ETX\DC2\ETXR4L\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\f\EOT\DC2\ETXS\EOTT\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\f\EOT\176\202\188\"\STX\DC2\ETXS\EOTT\n\
    \N\n\
    \\EOT\ACK\NUL\STX\r\DC2\EOTY\STX[\ETX\SUB@ Groups queries all groups in state.\n\
    \\n\
    \ Since: cosmos-sdk 0.47.1\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\SOH\DC2\ETXY\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\STX\DC2\ETXY\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\ETX\DC2\ETXY*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\r\EOT\DC2\ETXZ\EOT=\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\r\EOT\176\202\188\"\STX\DC2\ETXZ\EOT=\n\
    \H\n\
    \\STX\EOT\NUL\DC2\EOT_\NULb\SOH\SUB< QueryGroupInfoRequest is the Query/GroupInfo request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX_\b\GS\n\
    \6\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXa\STX\SYN\SUB) group_id is the unique ID of the group.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETXa\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXa\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXa\DC4\NAK\n\
    \J\n\
    \\STX\EOT\SOH\DC2\EOTe\NULh\SOH\SUB> QueryGroupInfoResponse is the Query/GroupInfo response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXe\b\RS\n\
    \2\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXg\STX\NAK\SUB% info is the GroupInfo of the group.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXg\STX\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXg\f\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXg\DC3\DC4\n\
    \T\n\
    \\STX\EOT\STX\DC2\EOTk\NULn\SOH\SUBH QueryGroupPolicyInfoRequest is the Query/GroupPolicyInfo request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXk\b#\n\
    \B\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXm\STXF\SUB5 address is the account address of the group policy.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXm\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXm\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXm\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETXm\NAKE\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETXm\SYND\n\
    \V\n\
    \\STX\EOT\ETX\DC2\EOTq\NULt\SOH\SUBJ QueryGroupPolicyInfoResponse is the Query/GroupPolicyInfo response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXq\b$\n\
    \?\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXs\STX\ESC\SUB2 info is the GroupPolicyInfo of the group policy.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXs\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXs\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXs\EM\SUB\n\
    \N\n\
    \\STX\EOT\EOT\DC2\EOTw\NUL}\SOH\SUBB QueryGroupMembersRequest is the Query/GroupMembers request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXw\b \n\
    \6\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXy\STX\SYN\SUB) group_id is the unique ID of the group.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXy\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXy\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXy\DC4\NAK\n\
    \I\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX|\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETX|\STX'\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX|(2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX|56\n\
    \Z\n\
    \\STX\EOT\ENQ\DC2\ACK\128\SOH\NUL\134\SOH\SOH\SUBL QueryGroupMembersResponse is the Query/GroupMembersResponse response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\128\SOH\b!\n\
    \I\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\130\SOH\STX#\SUB; members are the members of the group with given group_id.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\EOT\130\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\130\SOH\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\130\SOH\ETB\RS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\130\SOH!\"\n\
    \B\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\133\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\133\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\133\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\133\SOH67\n\
    \R\n\
    \\STX\EOT\ACK\DC2\ACK\137\SOH\NUL\143\SOH\SOH\SUBD QueryGroupsByAdminRequest is the Query/GroupsByAdmin request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\137\SOH\b!\n\
    \@\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\139\SOH\STXD\SUB2 admin is the account address of a group's admin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\139\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\139\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\139\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\EOT\139\SOH\DC3C\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\202\214\ENQ\DC2\EOT\139\SOH\DC4B\n\
    \J\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\142\SOH\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\EOT\142\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\142\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\142\SOH56\n\
    \\\\n\
    \\STX\EOT\a\DC2\ACK\146\SOH\NUL\152\SOH\SOH\SUBN QueryGroupsByAdminResponse is the Query/GroupsByAdminResponse response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\146\SOH\b\"\n\
    \C\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\148\SOH\STX \SUB5 groups are the groups info with the provided admin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\EOT\148\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\148\SOH\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\148\SOH\NAK\ESC\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\148\SOH\RS\US\n\
    \B\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\151\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\EOT\151\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\151\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\151\SOH67\n\
    \`\n\
    \\STX\EOT\b\DC2\ACK\155\SOH\NUL\161\SOH\SOH\SUBR QueryGroupPoliciesByGroupRequest is the Query/GroupPoliciesByGroup request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\155\SOH\b(\n\
    \F\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\157\SOH\STX\SYN\SUB8 group_id is the unique ID of the group policy's group.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\157\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\157\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\157\SOH\DC4\NAK\n\
    \J\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\160\SOH\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\EOT\160\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\160\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\160\SOH56\n\
    \b\n\
    \\STX\EOT\t\DC2\ACK\164\SOH\NUL\170\SOH\SOH\SUBT QueryGroupPoliciesByGroupResponse is the Query/GroupPoliciesByGroup response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\164\SOH\b)\n\
    \^\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\166\SOH\STX.\SUBP group_policies are the group policies info associated with the provided group.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\EOT\166\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\166\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\166\SOH\ESC)\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\166\SOH,-\n\
    \B\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\169\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\EOT\169\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\169\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\169\SOH67\n\
    \`\n\
    \\STX\EOT\n\
    \\DC2\ACK\173\SOH\NUL\179\SOH\SOH\SUBR QueryGroupPoliciesByAdminRequest is the Query/GroupPoliciesByAdmin request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\173\SOH\b(\n\
    \?\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\175\SOH\STXD\SUB1 admin is the admin address of the group policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\175\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\175\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\175\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\b\DC2\EOT\175\SOH\DC3C\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\NUL\b\202\214\ENQ\DC2\EOT\175\SOH\DC4B\n\
    \J\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\178\SOH\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ACK\DC2\EOT\178\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\178\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\178\SOH56\n\
    \b\n\
    \\STX\EOT\v\DC2\ACK\182\SOH\NUL\188\SOH\SOH\SUBT QueryGroupPoliciesByAdminResponse is the Query/GroupPoliciesByAdmin response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\182\SOH\b)\n\
    \O\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\184\SOH\STX.\SUBA group_policies are the group policies info with provided admin.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\EOT\DC2\EOT\184\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\184\SOH\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\184\SOH\ESC)\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\184\SOH,-\n\
    \B\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\187\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ACK\DC2\EOT\187\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\187\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\187\SOH67\n\
    \H\n\
    \\STX\EOT\f\DC2\ACK\191\SOH\NUL\194\SOH\SOH\SUB: QueryProposalRequest is the Query/Proposal request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\191\SOH\b\FS\n\
    \;\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\193\SOH\STX\EM\SUB- proposal_id is the unique ID of a proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\193\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\193\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\193\SOH\ETB\CAN\n\
    \J\n\
    \\STX\EOT\r\DC2\ACK\197\SOH\NUL\200\SOH\SOH\SUB< QueryProposalResponse is the Query/Proposal response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\197\SOH\b\GS\n\
    \.\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\199\SOH\STX\CAN\SUB  proposal is the proposal info.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\EOT\199\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\199\SOH\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\199\SOH\SYN\ETB\n\
    \c\n\
    \\STX\EOT\SO\DC2\ACK\203\SOH\NUL\209\SOH\SOH\SUBU QueryProposalsByGroupPolicyRequest is the Query/ProposalByGroupPolicy request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\203\SOH\b*\n\
    \X\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\205\SOH\STXF\SUBJ address is the account address of the group policy related to proposals.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\205\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\205\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\205\SOH\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\b\DC2\EOT\205\SOH\NAKE\n\
    \\DLE\n\
    \\b\EOT\SO\STX\NUL\b\202\214\ENQ\DC2\EOT\205\SOH\SYND\n\
    \J\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\208\SOH\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ACK\DC2\EOT\208\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\208\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\208\SOH56\n\
    \e\n\
    \\STX\EOT\SI\DC2\ACK\212\SOH\NUL\218\SOH\SOH\SUBW QueryProposalsByGroupPolicyResponse is the Query/ProposalByGroupPolicy response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\212\SOH\b+\n\
    \D\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\214\SOH\STX\"\SUB6 proposals are the proposals with given group policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\EOT\DC2\EOT\214\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ACK\DC2\EOT\214\SOH\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\214\SOH\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\214\SOH !\n\
    \B\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\217\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ACK\DC2\EOT\217\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\217\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\217\SOH67\n\
    \^\n\
    \\STX\EOT\DLE\DC2\ACK\221\SOH\NUL\227\SOH\SOH\SUBP QueryVoteByProposalVoterRequest is the Query/VoteByProposalVoter request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\221\SOH\b'\n\
    \;\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\223\SOH\STX\EM\SUB- proposal_id is the unique ID of a proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\223\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\223\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\223\SOH\ETB\CAN\n\
    \:\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\226\SOH\STXD\SUB, voter is a proposal voter account address.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ENQ\DC2\EOT\226\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\226\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\226\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\b\DC2\EOT\226\SOH\DC3C\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\SOH\b\202\214\ENQ\DC2\EOT\226\SOH\DC4B\n\
    \`\n\
    \\STX\EOT\DC1\DC2\ACK\230\SOH\NUL\233\SOH\SOH\SUBR QueryVoteByProposalVoterResponse is the Query/VoteByProposalVoter response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\230\SOH\b(\n\
    \B\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\232\SOH\STX\DLE\SUB4 vote is the vote with given proposal_id and voter.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ACK\DC2\EOT\232\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\232\SOH\a\v\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\232\SOH\SO\SI\n\
    \V\n\
    \\STX\EOT\DC2\DC2\ACK\236\SOH\NUL\242\SOH\SOH\SUBH QueryVotesByProposalRequest is the Query/VotesByProposal request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\236\SOH\b#\n\
    \;\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\238\SOH\STX\EM\SUB- proposal_id is the unique ID of a proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\238\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\238\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\238\SOH\ETB\CAN\n\
    \J\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\241\SOH\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ACK\DC2\EOT\241\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\241\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\241\SOH56\n\
    \X\n\
    \\STX\EOT\DC3\DC2\ACK\245\SOH\NUL\251\SOH\SOH\SUBJ QueryVotesByProposalResponse is the Query/VotesByProposal response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\245\SOH\b$\n\
    \B\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\247\SOH\STX\SUB\SUB4 votes are the list of votes for given proposal_id.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\EOT\DC2\EOT\247\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ACK\DC2\EOT\247\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\247\SOH\DLE\NAK\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\247\SOH\CAN\EM\n\
    \B\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\EOT\250\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ACK\DC2\EOT\250\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\EOT\250\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\EOT\250\SOH67\n\
    \P\n\
    \\STX\EOT\DC4\DC2\ACK\254\SOH\NUL\132\STX\SOH\SUBB QueryVotesByVoterRequest is the Query/VotesByVoter request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\254\SOH\b \n\
    \:\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\128\STX\STXD\SUB, voter is a proposal voter account address.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ENQ\DC2\EOT\128\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\128\STX\t\SO\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\128\STX\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\b\DC2\EOT\128\STX\DC3C\n\
    \\DLE\n\
    \\b\EOT\DC4\STX\NUL\b\202\214\ENQ\DC2\EOT\128\STX\DC4B\n\
    \J\n\
    \\EOT\EOT\DC4\STX\SOH\DC2\EOT\131\STX\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ACK\DC2\EOT\131\STX\STX'\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\SOH\DC2\EOT\131\STX(2\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\SOH\ETX\DC2\EOT\131\STX56\n\
    \R\n\
    \\STX\EOT\NAK\DC2\ACK\135\STX\NUL\141\STX\SOH\SUBD QueryVotesByVoterResponse is the Query/VotesByVoter response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\NAK\SOH\DC2\EOT\135\STX\b!\n\
    \;\n\
    \\EOT\EOT\NAK\STX\NUL\DC2\EOT\137\STX\STX\SUB\SUB- votes are the list of votes by given voter.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\EOT\DC2\EOT\137\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ACK\DC2\EOT\137\STX\v\SI\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\SOH\DC2\EOT\137\STX\DLE\NAK\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\NUL\ETX\DC2\EOT\137\STX\CAN\EM\n\
    \B\n\
    \\EOT\EOT\NAK\STX\SOH\DC2\EOT\140\STX\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ACK\DC2\EOT\140\STX\STX(\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\SOH\DC2\EOT\140\STX)3\n\
    \\r\n\
    \\ENQ\EOT\NAK\STX\SOH\ETX\DC2\EOT\140\STX67\n\
    \T\n\
    \\STX\EOT\SYN\DC2\ACK\144\STX\NUL\150\STX\SOH\SUBF QueryGroupsByMemberRequest is the Query/GroupsByMember request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SYN\SOH\DC2\EOT\144\STX\b\"\n\
    \4\n\
    \\EOT\EOT\SYN\STX\NUL\DC2\EOT\146\STX\STXF\SUB& address is the group member address.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ENQ\DC2\EOT\146\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\SOH\DC2\EOT\146\STX\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\ETX\DC2\EOT\146\STX\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\NUL\b\DC2\EOT\146\STX\NAKE\n\
    \\DLE\n\
    \\b\EOT\SYN\STX\NUL\b\202\214\ENQ\DC2\EOT\146\STX\SYND\n\
    \J\n\
    \\EOT\EOT\SYN\STX\SOH\DC2\EOT\149\STX\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ACK\DC2\EOT\149\STX\STX'\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\SOH\DC2\EOT\149\STX(2\n\
    \\r\n\
    \\ENQ\EOT\SYN\STX\SOH\ETX\DC2\EOT\149\STX56\n\
    \V\n\
    \\STX\EOT\ETB\DC2\ACK\153\STX\NUL\159\STX\SOH\SUBH QueryGroupsByMemberResponse is the Query/GroupsByMember response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETB\SOH\DC2\EOT\153\STX\b#\n\
    \J\n\
    \\EOT\EOT\ETB\STX\NUL\DC2\EOT\155\STX\STX \SUB< groups are the groups info with the provided group member.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\EOT\DC2\EOT\155\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ACK\DC2\EOT\155\STX\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\SOH\DC2\EOT\155\STX\NAK\ESC\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\NUL\ETX\DC2\EOT\155\STX\RS\US\n\
    \B\n\
    \\EOT\EOT\ETB\STX\SOH\DC2\EOT\158\STX\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\ACK\DC2\EOT\158\STX\STX(\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\SOH\DC2\EOT\158\STX)3\n\
    \\r\n\
    \\ENQ\EOT\ETB\STX\SOH\ETX\DC2\EOT\158\STX67\n\
    \N\n\
    \\STX\EOT\CAN\DC2\ACK\162\STX\NUL\165\STX\SOH\SUB@ QueryTallyResultRequest is the Query/TallyResult request type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\CAN\SOH\DC2\EOT\162\STX\b\US\n\
    \;\n\
    \\EOT\EOT\CAN\STX\NUL\DC2\EOT\164\STX\STX\EM\SUB- proposal_id is the unique id of a proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ENQ\DC2\EOT\164\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\SOH\DC2\EOT\164\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\CAN\STX\NUL\ETX\DC2\EOT\164\STX\ETB\CAN\n\
    \P\n\
    \\STX\EOT\EM\DC2\ACK\168\STX\NUL\171\STX\SOH\SUBB QueryTallyResultResponse is the Query/TallyResult response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EM\SOH\DC2\EOT\168\STX\b \n\
    \2\n\
    \\EOT\EOT\EM\STX\NUL\DC2\EOT\170\STX\STXV\SUB$ tally defines the requested tally.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ACK\DC2\EOT\170\STX\STX\r\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\SOH\DC2\EOT\170\STX\SO\DC3\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\ETX\DC2\EOT\170\STX\SYN\ETB\n\
    \\r\n\
    \\ENQ\EOT\EM\STX\NUL\b\DC2\EOT\170\STX\CANU\n\
    \\DLE\n\
    \\b\EOT\EM\STX\NUL\b\233\251\ETX\DC2\EOT\170\STX\EM5\n\
    \\DC1\n\
    \\t\EOT\EM\STX\NUL\b\245\140\166\ENQ\DC2\EOT\170\STX7T\n\
    \_\n\
    \\STX\EOT\SUB\DC2\ACK\176\STX\NUL\180\STX\SOH\SUBQ QueryGroupsRequest is the Query/Groups request type.\n\
    \\n\
    \ Since: cosmos-sdk 0.47.1\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SUB\SOH\DC2\EOT\176\STX\b\SUB\n\
    \J\n\
    \\EOT\EOT\SUB\STX\NUL\DC2\EOT\179\STX\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ACK\DC2\EOT\179\STX\STX'\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\SOH\DC2\EOT\179\STX(2\n\
    \\r\n\
    \\ENQ\EOT\SUB\STX\NUL\ETX\DC2\EOT\179\STX56\n\
    \a\n\
    \\STX\EOT\ESC\DC2\ACK\185\STX\NUL\191\STX\SOH\SUBS QueryGroupsResponse is the Query/Groups response type.\n\
    \\n\
    \ Since: cosmos-sdk 0.47.1\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ESC\SOH\DC2\EOT\185\STX\b\ESC\n\
    \<\n\
    \\EOT\EOT\ESC\STX\NUL\DC2\EOT\187\STX\STX \SUB. `groups` is all the groups present in state.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\EOT\DC2\EOT\187\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ACK\DC2\EOT\187\STX\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\SOH\DC2\EOT\187\STX\NAK\ESC\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\NUL\ETX\DC2\EOT\187\STX\RS\US\n\
    \B\n\
    \\EOT\EOT\ESC\STX\SOH\DC2\EOT\190\STX\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\ACK\DC2\EOT\190\STX\STX(\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\SOH\DC2\EOT\190\STX)3\n\
    \\r\n\
    \\ENQ\EOT\ESC\STX\SOH\ETX\DC2\EOT\190\STX67b\ACKproto3"