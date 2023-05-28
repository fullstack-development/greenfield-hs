{- This file was auto-generated from greenfield/permission/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Permission.Types (
        GroupMember(), Policy(), PolicyGroup(), PolicyGroup'Item()
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Greenfield.Permission.Common
import qualified Proto.Greenfield.Resource.Types
{- | Fields :
     
         * 'Proto.Greenfield.Permission.Types_Fields.id' @:: Lens' GroupMember Data.Text.Text@
         * 'Proto.Greenfield.Permission.Types_Fields.groupId' @:: Lens' GroupMember Data.Text.Text@
         * 'Proto.Greenfield.Permission.Types_Fields.member' @:: Lens' GroupMember Data.Text.Text@ -}
data GroupMember
  = GroupMember'_constructor {_GroupMember'id :: !Data.Text.Text,
                              _GroupMember'groupId :: !Data.Text.Text,
                              _GroupMember'member :: !Data.Text.Text,
                              _GroupMember'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GroupMember where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GroupMember "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupMember'id (\ x__ y__ -> x__ {_GroupMember'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupMember "groupId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupMember'groupId
           (\ x__ y__ -> x__ {_GroupMember'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GroupMember "member" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GroupMember'member (\ x__ y__ -> x__ {_GroupMember'member = y__}))
        Prelude.id
instance Data.ProtoLens.Message GroupMember where
  messageName _ = Data.Text.pack "greenfield.permission.GroupMember"
  packedMessageDescriptor _
    = "\n\
      \\vGroupMember\DC2+\n\
      \\STXid\CAN\SOH \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC26\n\
      \\bgroup_id\CAN\STX \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC20\n\
      \\ACKmember\CAN\ETX \SOH(\tR\ACKmemberB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor GroupMember
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor GroupMember
        member__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "member"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"member")) ::
              Data.ProtoLens.FieldDescriptor GroupMember
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, groupId__field_descriptor),
           (Data.ProtoLens.Tag 3, member__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GroupMember'_unknownFields
        (\ x__ y__ -> x__ {_GroupMember'_unknownFields = y__})
  defMessage
    = GroupMember'_constructor
        {_GroupMember'id = Data.ProtoLens.fieldDefault,
         _GroupMember'groupId = Data.ProtoLens.fieldDefault,
         _GroupMember'member = Data.ProtoLens.fieldDefault,
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
                                       "id"
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
                                       "group_id"
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
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"member") _x
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
instance Control.DeepSeq.NFData GroupMember where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GroupMember'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GroupMember'id x__)
                (Control.DeepSeq.deepseq
                   (_GroupMember'groupId x__)
                   (Control.DeepSeq.deepseq (_GroupMember'member x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Permission.Types_Fields.id' @:: Lens' Policy Data.Text.Text@
         * 'Proto.Greenfield.Permission.Types_Fields.principal' @:: Lens' Policy Proto.Greenfield.Permission.Common.Principal@
         * 'Proto.Greenfield.Permission.Types_Fields.maybe'principal' @:: Lens' Policy (Prelude.Maybe Proto.Greenfield.Permission.Common.Principal)@
         * 'Proto.Greenfield.Permission.Types_Fields.resourceType' @:: Lens' Policy Proto.Greenfield.Resource.Types.ResourceType@
         * 'Proto.Greenfield.Permission.Types_Fields.resourceId' @:: Lens' Policy Data.Text.Text@
         * 'Proto.Greenfield.Permission.Types_Fields.statements' @:: Lens' Policy [Proto.Greenfield.Permission.Common.Statement]@
         * 'Proto.Greenfield.Permission.Types_Fields.vec'statements' @:: Lens' Policy (Data.Vector.Vector Proto.Greenfield.Permission.Common.Statement)@
         * 'Proto.Greenfield.Permission.Types_Fields.expirationTime' @:: Lens' Policy Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Greenfield.Permission.Types_Fields.maybe'expirationTime' @:: Lens' Policy (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data Policy
  = Policy'_constructor {_Policy'id :: !Data.Text.Text,
                         _Policy'principal :: !(Prelude.Maybe Proto.Greenfield.Permission.Common.Principal),
                         _Policy'resourceType :: !Proto.Greenfield.Resource.Types.ResourceType,
                         _Policy'resourceId :: !Data.Text.Text,
                         _Policy'statements :: !(Data.Vector.Vector Proto.Greenfield.Permission.Common.Statement),
                         _Policy'expirationTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                         _Policy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Policy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Policy "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'id (\ x__ y__ -> x__ {_Policy'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Policy "principal" Proto.Greenfield.Permission.Common.Principal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'principal (\ x__ y__ -> x__ {_Policy'principal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Policy "maybe'principal" (Prelude.Maybe Proto.Greenfield.Permission.Common.Principal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'principal (\ x__ y__ -> x__ {_Policy'principal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Policy "resourceType" Proto.Greenfield.Resource.Types.ResourceType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'resourceType
           (\ x__ y__ -> x__ {_Policy'resourceType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Policy "resourceId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'resourceId (\ x__ y__ -> x__ {_Policy'resourceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Policy "statements" [Proto.Greenfield.Permission.Common.Statement] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'statements (\ x__ y__ -> x__ {_Policy'statements = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Policy "vec'statements" (Data.Vector.Vector Proto.Greenfield.Permission.Common.Statement) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'statements (\ x__ y__ -> x__ {_Policy'statements = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Policy "expirationTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'expirationTime
           (\ x__ y__ -> x__ {_Policy'expirationTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Policy "maybe'expirationTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Policy'expirationTime
           (\ x__ y__ -> x__ {_Policy'expirationTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message Policy where
  messageName _ = Data.Text.pack "greenfield.permission.Policy"
  packedMessageDescriptor _
    = "\n\
      \\ACKPolicy\DC2+\n\
      \\STXid\CAN\SOH \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2>\n\
      \\tprincipal\CAN\STX \SOH(\v2 .greenfield.permission.PrincipalR\tprincipal\DC2F\n\
      \\rresource_type\CAN\ETX \SOH(\SO2!.greenfield.resource.ResourceTypeR\fresourceType\DC2<\n\
      \\vresource_id\CAN\EOT \SOH(\tR\n\
      \resourceIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2@\n\
      \\n\
      \statements\CAN\ENQ \ETX(\v2 .greenfield.permission.StatementR\n\
      \statements\DC2M\n\
      \\SIexpiration_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\SOexpirationTimeB\b\200\222\US\SOH\144\223\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor Policy
        principal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "principal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Permission.Common.Principal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'principal")) ::
              Data.ProtoLens.FieldDescriptor Policy
        resourceType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Resource.Types.ResourceType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resourceType")) ::
              Data.ProtoLens.FieldDescriptor Policy
        resourceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resourceId")) ::
              Data.ProtoLens.FieldDescriptor Policy
        statements__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "statements"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Permission.Common.Statement)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"statements")) ::
              Data.ProtoLens.FieldDescriptor Policy
        expirationTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expiration_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expirationTime")) ::
              Data.ProtoLens.FieldDescriptor Policy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, principal__field_descriptor),
           (Data.ProtoLens.Tag 3, resourceType__field_descriptor),
           (Data.ProtoLens.Tag 4, resourceId__field_descriptor),
           (Data.ProtoLens.Tag 5, statements__field_descriptor),
           (Data.ProtoLens.Tag 6, expirationTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Policy'_unknownFields
        (\ x__ y__ -> x__ {_Policy'_unknownFields = y__})
  defMessage
    = Policy'_constructor
        {_Policy'id = Data.ProtoLens.fieldDefault,
         _Policy'principal = Prelude.Nothing,
         _Policy'resourceType = Data.ProtoLens.fieldDefault,
         _Policy'resourceId = Data.ProtoLens.fieldDefault,
         _Policy'statements = Data.Vector.Generic.empty,
         _Policy'expirationTime = Prelude.Nothing,
         _Policy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Policy
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Permission.Common.Statement
             -> Data.ProtoLens.Encoding.Bytes.Parser Policy
        loop x mutable'statements
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'statements <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'statements)
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
                              (Data.ProtoLens.Field.field @"vec'statements") frozen'statements
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
                                       "id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                                  mutable'statements
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "principal"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"principal") y x)
                                  mutable'statements
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "resource_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resourceType") y x)
                                  mutable'statements
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
                                       "resource_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"resourceId") y x)
                                  mutable'statements
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "statements"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'statements y)
                                loop x v
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "expiration_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"expirationTime") y x)
                                  mutable'statements
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'statements
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'statements <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'statements)
          "Policy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
                       (Data.ProtoLens.Field.field @"maybe'principal") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"resourceType") _x
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
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"resourceId") _x
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
                               (Data.ProtoLens.Field.field @"vec'statements") _x))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'expirationTime") _x
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
instance Control.DeepSeq.NFData Policy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Policy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Policy'id x__)
                (Control.DeepSeq.deepseq
                   (_Policy'principal x__)
                   (Control.DeepSeq.deepseq
                      (_Policy'resourceType x__)
                      (Control.DeepSeq.deepseq
                         (_Policy'resourceId x__)
                         (Control.DeepSeq.deepseq
                            (_Policy'statements x__)
                            (Control.DeepSeq.deepseq (_Policy'expirationTime x__) ()))))))
{- | Fields :
     
         * 'Proto.Greenfield.Permission.Types_Fields.items' @:: Lens' PolicyGroup [PolicyGroup'Item]@
         * 'Proto.Greenfield.Permission.Types_Fields.vec'items' @:: Lens' PolicyGroup (Data.Vector.Vector PolicyGroup'Item)@ -}
data PolicyGroup
  = PolicyGroup'_constructor {_PolicyGroup'items :: !(Data.Vector.Vector PolicyGroup'Item),
                              _PolicyGroup'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PolicyGroup where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PolicyGroup "items" [PolicyGroup'Item] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PolicyGroup'items (\ x__ y__ -> x__ {_PolicyGroup'items = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField PolicyGroup "vec'items" (Data.Vector.Vector PolicyGroup'Item) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PolicyGroup'items (\ x__ y__ -> x__ {_PolicyGroup'items = y__}))
        Prelude.id
instance Data.ProtoLens.Message PolicyGroup where
  messageName _ = Data.Text.pack "greenfield.permission.PolicyGroup"
  packedMessageDescriptor _
    = "\n\
      \\vPolicyGroup\DC2=\n\
      \\ENQitems\CAN\SOH \ETX(\v2'.greenfield.permission.PolicyGroup.ItemR\ENQitems\SUBx\n\
      \\EOTItem\DC28\n\
      \\tpolicy_id\CAN\SOH \SOH(\tR\bpolicyIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC26\n\
      \\bgroup_id\CAN\STX \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        items__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "items"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PolicyGroup'Item)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"items")) ::
              Data.ProtoLens.FieldDescriptor PolicyGroup
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, items__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PolicyGroup'_unknownFields
        (\ x__ y__ -> x__ {_PolicyGroup'_unknownFields = y__})
  defMessage
    = PolicyGroup'_constructor
        {_PolicyGroup'items = Data.Vector.Generic.empty,
         _PolicyGroup'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PolicyGroup
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld PolicyGroup'Item
             -> Data.ProtoLens.Encoding.Bytes.Parser PolicyGroup
        loop x mutable'items
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'items)
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
                              (Data.ProtoLens.Field.field @"vec'items") frozen'items x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "items"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'items y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'items
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'items)
          "PolicyGroup"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'items") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PolicyGroup where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PolicyGroup'_unknownFields x__)
             (Control.DeepSeq.deepseq (_PolicyGroup'items x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Permission.Types_Fields.policyId' @:: Lens' PolicyGroup'Item Data.Text.Text@
         * 'Proto.Greenfield.Permission.Types_Fields.groupId' @:: Lens' PolicyGroup'Item Data.Text.Text@ -}
data PolicyGroup'Item
  = PolicyGroup'Item'_constructor {_PolicyGroup'Item'policyId :: !Data.Text.Text,
                                   _PolicyGroup'Item'groupId :: !Data.Text.Text,
                                   _PolicyGroup'Item'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PolicyGroup'Item where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PolicyGroup'Item "policyId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PolicyGroup'Item'policyId
           (\ x__ y__ -> x__ {_PolicyGroup'Item'policyId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PolicyGroup'Item "groupId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PolicyGroup'Item'groupId
           (\ x__ y__ -> x__ {_PolicyGroup'Item'groupId = y__}))
        Prelude.id
instance Data.ProtoLens.Message PolicyGroup'Item where
  messageName _
    = Data.Text.pack "greenfield.permission.PolicyGroup.Item"
  packedMessageDescriptor _
    = "\n\
      \\EOTItem\DC28\n\
      \\tpolicy_id\CAN\SOH \SOH(\tR\bpolicyIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC26\n\
      \\bgroup_id\CAN\STX \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        policyId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "policy_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"policyId")) ::
              Data.ProtoLens.FieldDescriptor PolicyGroup'Item
        groupId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "group_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"groupId")) ::
              Data.ProtoLens.FieldDescriptor PolicyGroup'Item
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, policyId__field_descriptor),
           (Data.ProtoLens.Tag 2, groupId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PolicyGroup'Item'_unknownFields
        (\ x__ y__ -> x__ {_PolicyGroup'Item'_unknownFields = y__})
  defMessage
    = PolicyGroup'Item'_constructor
        {_PolicyGroup'Item'policyId = Data.ProtoLens.fieldDefault,
         _PolicyGroup'Item'groupId = Data.ProtoLens.fieldDefault,
         _PolicyGroup'Item'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PolicyGroup'Item
          -> Data.ProtoLens.Encoding.Bytes.Parser PolicyGroup'Item
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
                                       "policy_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"policyId") y x)
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
                                       "group_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"groupId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Item"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"policyId") _x
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
instance Control.DeepSeq.NFData PolicyGroup'Item where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PolicyGroup'Item'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PolicyGroup'Item'policyId x__)
                (Control.DeepSeq.deepseq (_PolicyGroup'Item'groupId x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!greenfield/permission/types.proto\DC2\NAKgreenfield.permission\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\"greenfield/permission/common.proto\SUB\USgreenfield/resource/types.proto\"\140\ETX\n\
    \\ACKPolicy\DC2+\n\
    \\STXid\CAN\SOH \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2>\n\
    \\tprincipal\CAN\STX \SOH(\v2 .greenfield.permission.PrincipalR\tprincipal\DC2F\n\
    \\rresource_type\CAN\ETX \SOH(\SO2!.greenfield.resource.ResourceTypeR\fresourceType\DC2<\n\
    \\vresource_id\CAN\EOT \SOH(\tR\n\
    \resourceIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2@\n\
    \\n\
    \statements\CAN\ENQ \ETX(\v2 .greenfield.permission.StatementR\n\
    \statements\DC2M\n\
    \\SIexpiration_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\SOexpirationTimeB\b\200\222\US\SOH\144\223\US\SOH\"\198\SOH\n\
    \\vPolicyGroup\DC2=\n\
    \\ENQitems\CAN\SOH \ETX(\v2'.greenfield.permission.PolicyGroup.ItemR\ENQitems\SUBx\n\
    \\EOTItem\DC28\n\
    \\tpolicy_id\CAN\SOH \SOH(\tR\bpolicyIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC26\n\
    \\bgroup_id\CAN\STX \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\"\164\SOH\n\
    \\vGroupMember\DC2+\n\
    \\STXid\CAN\SOH \SOH(\tR\STXidB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC26\n\
    \\bgroup_id\CAN\STX \SOH(\tR\agroupIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC20\n\
    \\ACKmember\CAN\ETX \SOH(\tR\ACKmemberB\CAN\210\180-\DC4cosmos.AddressStringB4Z2github.com/bnb-chain/greenfield/x/permission/typesJ\175\DC4\n\
    \\ACK\DC2\EOT\NUL\NULI\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL,\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULI\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\t\NULI\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\v\NUL$\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\v\b\SO\n\
    \]\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\r\STX\DC1\EOT\SUBO id is an unique u256 sequence for each policy. It also be used as NFT tokenID\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\r\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\r\t\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\r\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\EOT\r\DLE\DC1\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\SO\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\235\251\ETX\DC2\ETX\SI\EOT#\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\DLE\EOT \n\
    \R\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC3\STX\SUB\SUBE principal defines the accounts/group which the permission grants to\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DC3\STX\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC3\f\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC3\CAN\EM\n\
    \T\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\NAK\STX*\SUBG resource_type defines the type of resource that grants permission for\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\NAK\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\NAK\CAN%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\NAK()\n\
    \i\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\ETB\STX\ESC\EOT\SUB[ resource_id defines the bucket/object/group id of the resource that grants permission for\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\ETB\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\ETB\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\EOT\ETB\EM\ESC\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\202\214\ENQ\DC2\ETX\CAN\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\235\251\ETX\DC2\ETX\EM\EOT#\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\233\251\ETX\DC2\ETX\SUB\EOT \n\
    \o\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\GS\STX$\SUBb statements defines the details content of the permission, including effect/actions/sub-resources\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\GS\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\GS\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\GS\"#\n\
    \\168\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT \STX#\EOT\SUB\153\SOH expiration_time defines the whole expiration time of all the statements.\n\
    \ Notices: Its priority is higher than the expiration time inside the Statement\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX \STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX \FS+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX ./\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\EOT 0#\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\242\251\ETX\DC2\ETX!\EOT\RS\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\233\251\ETX\DC2\ETX\"\EOT\US\n\
    \\200\STX\n\
    \\STX\EOT\SOH\DC2\EOT)\NUL8\SOH\SUB\187\STX PolicyGroup refers to a group of policies which grant permission to Group, which is limited to MaxGroupNum (default 10).\n\
    \ This means that a single resource can only grant permission to 10 groups. The reason for\n\
    \ this is to enable on-chain determination of whether an operator has permission within a limited time.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX)\b\DC3\n\
    \\f\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\EOT*\STX5\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\ETX*\n\
    \\SO\n\
    \\SO\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\NUL\DC2\EOT+\EOT/\ACK\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ENQ\DC2\ETX+\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETX+\v\DC4\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETX+\ETB\CAN\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\b\DC2\EOT+\EM/\ENQ\n\
    \\DC1\n\
    \\n\
    \\EOT\SOH\ETX\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX,\ACK+\n\
    \\DC1\n\
    \\n\
    \\EOT\SOH\ETX\NUL\STX\NUL\b\235\251\ETX\DC2\ETX-\ACK%\n\
    \\DC1\n\
    \\n\
    \\EOT\SOH\ETX\NUL\STX\NUL\b\233\251\ETX\DC2\ETX.\ACK\"\n\
    \\SO\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\SOH\DC2\EOT0\EOT4\ACK\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\ENQ\DC2\ETX0\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\SOH\DC2\ETX0\v\DC3\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\ETX\DC2\ETX0\SYN\ETB\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\b\DC2\EOT0\CAN4\ENQ\n\
    \\DC1\n\
    \\n\
    \\EOT\SOH\ETX\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX1\ACK+\n\
    \\DC1\n\
    \\n\
    \\EOT\SOH\ETX\NUL\STX\SOH\b\235\251\ETX\DC2\ETX2\ACK%\n\
    \\DC1\n\
    \\n\
    \\EOT\SOH\ETX\NUL\STX\SOH\b\233\251\ETX\DC2\ETX3\ACK\"\n\
    \\140\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX7\STX\SUB\SUB\DEL items define a pair of policy_id and group_id. Each resource can only grant its own permissions to a limited number of groups\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX7\v\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX7\DLE\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX7\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT:\NULI\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX:\b\DC3\n\
    \c\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT<\STX@\EOT\SUBU id is an unique u256 sequence for each group member. It also be used as NFT tokenID\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX<\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX<\t\v\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX<\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\EOT<\DLE@\ETX\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX=\EOT)\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\235\251\ETX\DC2\ETX>\EOT#\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\233\251\ETX\DC2\ETX?\EOT \n\
    \6\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOTB\STXF\EOT\SUB( group_id is the unique id of the group\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXB\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXB\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\EOTB\SYNF\ETX\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\202\214\ENQ\DC2\ETXC\EOT)\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\235\251\ETX\DC2\ETXD\EOT#\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\233\251\ETX\DC2\ETXE\EOT \n\
    \:\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXH\STXE\SUB- member is the account address of the member\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETXH\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXH\t\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXH\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\ETXH\DC4D\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\202\214\ENQ\DC2\ETXH\NAKCb\ACKproto3"