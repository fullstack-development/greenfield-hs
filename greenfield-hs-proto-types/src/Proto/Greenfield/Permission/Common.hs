{- This file was auto-generated from greenfield/permission/common.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Permission.Common (
        ActionType(..), ActionType(), ActionType'UnrecognizedValue,
        Effect(..), Effect(), Effect'UnrecognizedValue, Principal(),
        PrincipalType(..), PrincipalType(),
        PrincipalType'UnrecognizedValue, Statement()
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
import qualified Proto.Greenfield.Common.Wrapper
newtype ActionType'UnrecognizedValue
  = ActionType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ActionType
  = ACTION_UNSPECIFIED |
    ACTION_UPDATE_BUCKET_INFO |
    ACTION_DELETE_BUCKET |
    ACTION_CREATE_OBJECT |
    ACTION_DELETE_OBJECT |
    ACTION_COPY_OBJECT |
    ACTION_GET_OBJECT |
    ACTION_EXECUTE_OBJECT |
    ACTION_LIST_OBJECT |
    ACTION_UPDATE_GROUP_MEMBER |
    ACTION_DELETE_GROUP |
    ACTION_UPDATE_OBJECT_INFO |
    ACTION_TYPE_ALL |
    ActionType'Unrecognized !ActionType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ActionType where
  maybeToEnum 0 = Prelude.Just ACTION_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just ACTION_UPDATE_BUCKET_INFO
  maybeToEnum 2 = Prelude.Just ACTION_DELETE_BUCKET
  maybeToEnum 3 = Prelude.Just ACTION_CREATE_OBJECT
  maybeToEnum 4 = Prelude.Just ACTION_DELETE_OBJECT
  maybeToEnum 5 = Prelude.Just ACTION_COPY_OBJECT
  maybeToEnum 6 = Prelude.Just ACTION_GET_OBJECT
  maybeToEnum 7 = Prelude.Just ACTION_EXECUTE_OBJECT
  maybeToEnum 8 = Prelude.Just ACTION_LIST_OBJECT
  maybeToEnum 9 = Prelude.Just ACTION_UPDATE_GROUP_MEMBER
  maybeToEnum 10 = Prelude.Just ACTION_DELETE_GROUP
  maybeToEnum 11 = Prelude.Just ACTION_UPDATE_OBJECT_INFO
  maybeToEnum 99 = Prelude.Just ACTION_TYPE_ALL
  maybeToEnum k
    = Prelude.Just
        (ActionType'Unrecognized
           (ActionType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum ACTION_UNSPECIFIED = "ACTION_UNSPECIFIED"
  showEnum ACTION_UPDATE_BUCKET_INFO = "ACTION_UPDATE_BUCKET_INFO"
  showEnum ACTION_DELETE_BUCKET = "ACTION_DELETE_BUCKET"
  showEnum ACTION_CREATE_OBJECT = "ACTION_CREATE_OBJECT"
  showEnum ACTION_DELETE_OBJECT = "ACTION_DELETE_OBJECT"
  showEnum ACTION_COPY_OBJECT = "ACTION_COPY_OBJECT"
  showEnum ACTION_GET_OBJECT = "ACTION_GET_OBJECT"
  showEnum ACTION_EXECUTE_OBJECT = "ACTION_EXECUTE_OBJECT"
  showEnum ACTION_LIST_OBJECT = "ACTION_LIST_OBJECT"
  showEnum ACTION_UPDATE_GROUP_MEMBER = "ACTION_UPDATE_GROUP_MEMBER"
  showEnum ACTION_DELETE_GROUP = "ACTION_DELETE_GROUP"
  showEnum ACTION_UPDATE_OBJECT_INFO = "ACTION_UPDATE_OBJECT_INFO"
  showEnum ACTION_TYPE_ALL = "ACTION_TYPE_ALL"
  showEnum (ActionType'Unrecognized (ActionType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ACTION_UNSPECIFIED"
    = Prelude.Just ACTION_UNSPECIFIED
    | (Prelude.==) k "ACTION_UPDATE_BUCKET_INFO"
    = Prelude.Just ACTION_UPDATE_BUCKET_INFO
    | (Prelude.==) k "ACTION_DELETE_BUCKET"
    = Prelude.Just ACTION_DELETE_BUCKET
    | (Prelude.==) k "ACTION_CREATE_OBJECT"
    = Prelude.Just ACTION_CREATE_OBJECT
    | (Prelude.==) k "ACTION_DELETE_OBJECT"
    = Prelude.Just ACTION_DELETE_OBJECT
    | (Prelude.==) k "ACTION_COPY_OBJECT"
    = Prelude.Just ACTION_COPY_OBJECT
    | (Prelude.==) k "ACTION_GET_OBJECT"
    = Prelude.Just ACTION_GET_OBJECT
    | (Prelude.==) k "ACTION_EXECUTE_OBJECT"
    = Prelude.Just ACTION_EXECUTE_OBJECT
    | (Prelude.==) k "ACTION_LIST_OBJECT"
    = Prelude.Just ACTION_LIST_OBJECT
    | (Prelude.==) k "ACTION_UPDATE_GROUP_MEMBER"
    = Prelude.Just ACTION_UPDATE_GROUP_MEMBER
    | (Prelude.==) k "ACTION_DELETE_GROUP"
    = Prelude.Just ACTION_DELETE_GROUP
    | (Prelude.==) k "ACTION_UPDATE_OBJECT_INFO"
    = Prelude.Just ACTION_UPDATE_OBJECT_INFO
    | (Prelude.==) k "ACTION_TYPE_ALL" = Prelude.Just ACTION_TYPE_ALL
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ActionType where
  minBound = ACTION_UNSPECIFIED
  maxBound = ACTION_TYPE_ALL
instance Prelude.Enum ActionType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ActionType: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ACTION_UNSPECIFIED = 0
  fromEnum ACTION_UPDATE_BUCKET_INFO = 1
  fromEnum ACTION_DELETE_BUCKET = 2
  fromEnum ACTION_CREATE_OBJECT = 3
  fromEnum ACTION_DELETE_OBJECT = 4
  fromEnum ACTION_COPY_OBJECT = 5
  fromEnum ACTION_GET_OBJECT = 6
  fromEnum ACTION_EXECUTE_OBJECT = 7
  fromEnum ACTION_LIST_OBJECT = 8
  fromEnum ACTION_UPDATE_GROUP_MEMBER = 9
  fromEnum ACTION_DELETE_GROUP = 10
  fromEnum ACTION_UPDATE_OBJECT_INFO = 11
  fromEnum ACTION_TYPE_ALL = 99
  fromEnum (ActionType'Unrecognized (ActionType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ACTION_TYPE_ALL
    = Prelude.error
        "ActionType.succ: bad argument ACTION_TYPE_ALL. This value would be out of bounds."
  succ ACTION_UNSPECIFIED = ACTION_UPDATE_BUCKET_INFO
  succ ACTION_UPDATE_BUCKET_INFO = ACTION_DELETE_BUCKET
  succ ACTION_DELETE_BUCKET = ACTION_CREATE_OBJECT
  succ ACTION_CREATE_OBJECT = ACTION_DELETE_OBJECT
  succ ACTION_DELETE_OBJECT = ACTION_COPY_OBJECT
  succ ACTION_COPY_OBJECT = ACTION_GET_OBJECT
  succ ACTION_GET_OBJECT = ACTION_EXECUTE_OBJECT
  succ ACTION_EXECUTE_OBJECT = ACTION_LIST_OBJECT
  succ ACTION_LIST_OBJECT = ACTION_UPDATE_GROUP_MEMBER
  succ ACTION_UPDATE_GROUP_MEMBER = ACTION_DELETE_GROUP
  succ ACTION_DELETE_GROUP = ACTION_UPDATE_OBJECT_INFO
  succ ACTION_UPDATE_OBJECT_INFO = ACTION_TYPE_ALL
  succ (ActionType'Unrecognized _)
    = Prelude.error "ActionType.succ: bad argument: unrecognized value"
  pred ACTION_UNSPECIFIED
    = Prelude.error
        "ActionType.pred: bad argument ACTION_UNSPECIFIED. This value would be out of bounds."
  pred ACTION_UPDATE_BUCKET_INFO = ACTION_UNSPECIFIED
  pred ACTION_DELETE_BUCKET = ACTION_UPDATE_BUCKET_INFO
  pred ACTION_CREATE_OBJECT = ACTION_DELETE_BUCKET
  pred ACTION_DELETE_OBJECT = ACTION_CREATE_OBJECT
  pred ACTION_COPY_OBJECT = ACTION_DELETE_OBJECT
  pred ACTION_GET_OBJECT = ACTION_COPY_OBJECT
  pred ACTION_EXECUTE_OBJECT = ACTION_GET_OBJECT
  pred ACTION_LIST_OBJECT = ACTION_EXECUTE_OBJECT
  pred ACTION_UPDATE_GROUP_MEMBER = ACTION_LIST_OBJECT
  pred ACTION_DELETE_GROUP = ACTION_UPDATE_GROUP_MEMBER
  pred ACTION_UPDATE_OBJECT_INFO = ACTION_DELETE_GROUP
  pred ACTION_TYPE_ALL = ACTION_UPDATE_OBJECT_INFO
  pred (ActionType'Unrecognized _)
    = Prelude.error "ActionType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ActionType where
  fieldDefault = ACTION_UNSPECIFIED
instance Control.DeepSeq.NFData ActionType where
  rnf x__ = Prelude.seq x__ ()
newtype Effect'UnrecognizedValue
  = Effect'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Effect
  = EFFECT_UNSPECIFIED |
    EFFECT_ALLOW |
    EFFECT_DENY |
    Effect'Unrecognized !Effect'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Effect where
  maybeToEnum 0 = Prelude.Just EFFECT_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just EFFECT_ALLOW
  maybeToEnum 2 = Prelude.Just EFFECT_DENY
  maybeToEnum k
    = Prelude.Just
        (Effect'Unrecognized
           (Effect'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum EFFECT_UNSPECIFIED = "EFFECT_UNSPECIFIED"
  showEnum EFFECT_ALLOW = "EFFECT_ALLOW"
  showEnum EFFECT_DENY = "EFFECT_DENY"
  showEnum (Effect'Unrecognized (Effect'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "EFFECT_UNSPECIFIED"
    = Prelude.Just EFFECT_UNSPECIFIED
    | (Prelude.==) k "EFFECT_ALLOW" = Prelude.Just EFFECT_ALLOW
    | (Prelude.==) k "EFFECT_DENY" = Prelude.Just EFFECT_DENY
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Effect where
  minBound = EFFECT_UNSPECIFIED
  maxBound = EFFECT_DENY
instance Prelude.Enum Effect where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Effect: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum EFFECT_UNSPECIFIED = 0
  fromEnum EFFECT_ALLOW = 1
  fromEnum EFFECT_DENY = 2
  fromEnum (Effect'Unrecognized (Effect'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ EFFECT_DENY
    = Prelude.error
        "Effect.succ: bad argument EFFECT_DENY. This value would be out of bounds."
  succ EFFECT_UNSPECIFIED = EFFECT_ALLOW
  succ EFFECT_ALLOW = EFFECT_DENY
  succ (Effect'Unrecognized _)
    = Prelude.error "Effect.succ: bad argument: unrecognized value"
  pred EFFECT_UNSPECIFIED
    = Prelude.error
        "Effect.pred: bad argument EFFECT_UNSPECIFIED. This value would be out of bounds."
  pred EFFECT_ALLOW = EFFECT_UNSPECIFIED
  pred EFFECT_DENY = EFFECT_ALLOW
  pred (Effect'Unrecognized _)
    = Prelude.error "Effect.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Effect where
  fieldDefault = EFFECT_UNSPECIFIED
instance Control.DeepSeq.NFData Effect where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Greenfield.Permission.Common_Fields.type'' @:: Lens' Principal PrincipalType@
         * 'Proto.Greenfield.Permission.Common_Fields.value' @:: Lens' Principal Data.Text.Text@ -}
data Principal
  = Principal'_constructor {_Principal'type' :: !PrincipalType,
                            _Principal'value :: !Data.Text.Text,
                            _Principal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Principal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Principal "type'" PrincipalType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'type' (\ x__ y__ -> x__ {_Principal'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Principal "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Principal'value (\ x__ y__ -> x__ {_Principal'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Principal where
  messageName _ = Data.Text.pack "greenfield.permission.Principal"
  packedMessageDescriptor _
    = "\n\
      \\tPrincipal\DC28\n\
      \\EOTtype\CAN\SOH \SOH(\SO2$.greenfield.permission.PrincipalTypeR\EOTtype\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor PrincipalType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor Principal
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor Principal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Principal'_unknownFields
        (\ x__ y__ -> x__ {_Principal'_unknownFields = y__})
  defMessage
    = Principal'_constructor
        {_Principal'type' = Data.ProtoLens.fieldDefault,
         _Principal'value = Data.ProtoLens.fieldDefault,
         _Principal'_unknownFields = []}
  parseMessage
    = let
        loop :: Principal -> Data.ProtoLens.Encoding.Bytes.Parser Principal
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Principal"
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Principal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Principal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Principal'type' x__)
                (Control.DeepSeq.deepseq (_Principal'value x__) ()))
newtype PrincipalType'UnrecognizedValue
  = PrincipalType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data PrincipalType
  = PRINCIPAL_TYPE_UNSPECIFIED |
    PRINCIPAL_TYPE_GNFD_ACCOUNT |
    PRINCIPAL_TYPE_GNFD_GROUP |
    PrincipalType'Unrecognized !PrincipalType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum PrincipalType where
  maybeToEnum 0 = Prelude.Just PRINCIPAL_TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just PRINCIPAL_TYPE_GNFD_ACCOUNT
  maybeToEnum 2 = Prelude.Just PRINCIPAL_TYPE_GNFD_GROUP
  maybeToEnum k
    = Prelude.Just
        (PrincipalType'Unrecognized
           (PrincipalType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum PRINCIPAL_TYPE_UNSPECIFIED = "PRINCIPAL_TYPE_UNSPECIFIED"
  showEnum PRINCIPAL_TYPE_GNFD_ACCOUNT
    = "PRINCIPAL_TYPE_GNFD_ACCOUNT"
  showEnum PRINCIPAL_TYPE_GNFD_GROUP = "PRINCIPAL_TYPE_GNFD_GROUP"
  showEnum
    (PrincipalType'Unrecognized (PrincipalType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "PRINCIPAL_TYPE_UNSPECIFIED"
    = Prelude.Just PRINCIPAL_TYPE_UNSPECIFIED
    | (Prelude.==) k "PRINCIPAL_TYPE_GNFD_ACCOUNT"
    = Prelude.Just PRINCIPAL_TYPE_GNFD_ACCOUNT
    | (Prelude.==) k "PRINCIPAL_TYPE_GNFD_GROUP"
    = Prelude.Just PRINCIPAL_TYPE_GNFD_GROUP
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded PrincipalType where
  minBound = PRINCIPAL_TYPE_UNSPECIFIED
  maxBound = PRINCIPAL_TYPE_GNFD_GROUP
instance Prelude.Enum PrincipalType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum PrincipalType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum PRINCIPAL_TYPE_UNSPECIFIED = 0
  fromEnum PRINCIPAL_TYPE_GNFD_ACCOUNT = 1
  fromEnum PRINCIPAL_TYPE_GNFD_GROUP = 2
  fromEnum
    (PrincipalType'Unrecognized (PrincipalType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ PRINCIPAL_TYPE_GNFD_GROUP
    = Prelude.error
        "PrincipalType.succ: bad argument PRINCIPAL_TYPE_GNFD_GROUP. This value would be out of bounds."
  succ PRINCIPAL_TYPE_UNSPECIFIED = PRINCIPAL_TYPE_GNFD_ACCOUNT
  succ PRINCIPAL_TYPE_GNFD_ACCOUNT = PRINCIPAL_TYPE_GNFD_GROUP
  succ (PrincipalType'Unrecognized _)
    = Prelude.error
        "PrincipalType.succ: bad argument: unrecognized value"
  pred PRINCIPAL_TYPE_UNSPECIFIED
    = Prelude.error
        "PrincipalType.pred: bad argument PRINCIPAL_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred PRINCIPAL_TYPE_GNFD_ACCOUNT = PRINCIPAL_TYPE_UNSPECIFIED
  pred PRINCIPAL_TYPE_GNFD_GROUP = PRINCIPAL_TYPE_GNFD_ACCOUNT
  pred (PrincipalType'Unrecognized _)
    = Prelude.error
        "PrincipalType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault PrincipalType where
  fieldDefault = PRINCIPAL_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData PrincipalType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Greenfield.Permission.Common_Fields.effect' @:: Lens' Statement Effect@
         * 'Proto.Greenfield.Permission.Common_Fields.actions' @:: Lens' Statement [ActionType]@
         * 'Proto.Greenfield.Permission.Common_Fields.vec'actions' @:: Lens' Statement (Data.Vector.Vector ActionType)@
         * 'Proto.Greenfield.Permission.Common_Fields.resources' @:: Lens' Statement [Data.Text.Text]@
         * 'Proto.Greenfield.Permission.Common_Fields.vec'resources' @:: Lens' Statement (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Greenfield.Permission.Common_Fields.expirationTime' @:: Lens' Statement Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Greenfield.Permission.Common_Fields.maybe'expirationTime' @:: Lens' Statement (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Greenfield.Permission.Common_Fields.limitSize' @:: Lens' Statement Proto.Greenfield.Common.Wrapper.UInt64Value@
         * 'Proto.Greenfield.Permission.Common_Fields.maybe'limitSize' @:: Lens' Statement (Prelude.Maybe Proto.Greenfield.Common.Wrapper.UInt64Value)@ -}
data Statement
  = Statement'_constructor {_Statement'effect :: !Effect,
                            _Statement'actions :: !(Data.Vector.Vector ActionType),
                            _Statement'resources :: !(Data.Vector.Vector Data.Text.Text),
                            _Statement'expirationTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                            _Statement'limitSize :: !(Prelude.Maybe Proto.Greenfield.Common.Wrapper.UInt64Value),
                            _Statement'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Statement where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Statement "effect" Effect where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Statement'effect (\ x__ y__ -> x__ {_Statement'effect = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Statement "actions" [ActionType] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Statement'actions (\ x__ y__ -> x__ {_Statement'actions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Statement "vec'actions" (Data.Vector.Vector ActionType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Statement'actions (\ x__ y__ -> x__ {_Statement'actions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Statement "resources" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Statement'resources
           (\ x__ y__ -> x__ {_Statement'resources = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Statement "vec'resources" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Statement'resources
           (\ x__ y__ -> x__ {_Statement'resources = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Statement "expirationTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Statement'expirationTime
           (\ x__ y__ -> x__ {_Statement'expirationTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Statement "maybe'expirationTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Statement'expirationTime
           (\ x__ y__ -> x__ {_Statement'expirationTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Statement "limitSize" Proto.Greenfield.Common.Wrapper.UInt64Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Statement'limitSize
           (\ x__ y__ -> x__ {_Statement'limitSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Statement "maybe'limitSize" (Prelude.Maybe Proto.Greenfield.Common.Wrapper.UInt64Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Statement'limitSize
           (\ x__ y__ -> x__ {_Statement'limitSize = y__}))
        Prelude.id
instance Data.ProtoLens.Message Statement where
  messageName _ = Data.Text.pack "greenfield.permission.Statement"
  packedMessageDescriptor _
    = "\n\
      \\tStatement\DC25\n\
      \\ACKeffect\CAN\SOH \SOH(\SO2\GS.greenfield.permission.EffectR\ACKeffect\DC2;\n\
      \\aactions\CAN\STX \ETX(\SO2!.greenfield.permission.ActionTypeR\aactions\DC2\FS\n\
      \\tresources\CAN\ETX \ETX(\tR\tresources\DC2M\n\
      \\SIexpiration_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\SOexpirationTimeB\b\200\222\US\SOH\144\223\US\SOH\DC2C\n\
      \\n\
      \limit_size\CAN\ENQ \SOH(\v2\RS.greenfield.common.UInt64ValueR\tlimitSizeB\EOT\200\222\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        effect__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "effect"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Effect)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"effect")) ::
              Data.ProtoLens.FieldDescriptor Statement
        actions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "actions"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ActionType)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed (Data.ProtoLens.Field.field @"actions")) ::
              Data.ProtoLens.FieldDescriptor Statement
        resources__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resources"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"resources")) ::
              Data.ProtoLens.FieldDescriptor Statement
        expirationTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expiration_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expirationTime")) ::
              Data.ProtoLens.FieldDescriptor Statement
        limitSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "limit_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Common.Wrapper.UInt64Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'limitSize")) ::
              Data.ProtoLens.FieldDescriptor Statement
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, effect__field_descriptor),
           (Data.ProtoLens.Tag 2, actions__field_descriptor),
           (Data.ProtoLens.Tag 3, resources__field_descriptor),
           (Data.ProtoLens.Tag 4, expirationTime__field_descriptor),
           (Data.ProtoLens.Tag 5, limitSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Statement'_unknownFields
        (\ x__ y__ -> x__ {_Statement'_unknownFields = y__})
  defMessage
    = Statement'_constructor
        {_Statement'effect = Data.ProtoLens.fieldDefault,
         _Statement'actions = Data.Vector.Generic.empty,
         _Statement'resources = Data.Vector.Generic.empty,
         _Statement'expirationTime = Prelude.Nothing,
         _Statement'limitSize = Prelude.Nothing,
         _Statement'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Statement
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ActionType
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser Statement
        loop x mutable'actions mutable'resources
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'actions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'actions)
                      frozen'resources <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'resources)
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
                              (Data.ProtoLens.Field.field @"vec'actions") frozen'actions
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'resources") frozen'resources x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "effect"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"effect") y x)
                                  mutable'actions mutable'resources
                        16
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.toEnum
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "actions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'actions y)
                                loop x v mutable'resources
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
                                                                       Prelude.toEnum
                                                                       (Prelude.fmap
                                                                          Prelude.fromIntegral
                                                                          Data.ProtoLens.Encoding.Bytes.getVarInt))
                                                                    "actions"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'actions)
                                loop x y mutable'resources
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
                                        "resources"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'resources y)
                                loop x mutable'actions v
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "expiration_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"expirationTime") y x)
                                  mutable'actions mutable'resources
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "limit_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"limitSize") y x)
                                  mutable'actions mutable'resources
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'actions mutable'resources
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'actions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'resources <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'actions mutable'resources)
          "Statement"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"effect") _x
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
                         (Data.ProtoLens.Field.field @"vec'actions") _x
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
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum)
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
                         (Data.ProtoLens.Field.field @"vec'resources") _x))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'expirationTime") _x
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
                                (Data.ProtoLens.Field.field @"maybe'limitSize") _x
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
instance Control.DeepSeq.NFData Statement where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Statement'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Statement'effect x__)
                (Control.DeepSeq.deepseq
                   (_Statement'actions x__)
                   (Control.DeepSeq.deepseq
                      (_Statement'resources x__)
                      (Control.DeepSeq.deepseq
                         (_Statement'expirationTime x__)
                         (Control.DeepSeq.deepseq (_Statement'limitSize x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"greenfield/permission/common.proto\DC2\NAKgreenfield.permission\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\USgreenfield/common/wrapper.proto\"\177\STX\n\
    \\tStatement\DC25\n\
    \\ACKeffect\CAN\SOH \SOH(\SO2\GS.greenfield.permission.EffectR\ACKeffect\DC2;\n\
    \\aactions\CAN\STX \ETX(\SO2!.greenfield.permission.ActionTypeR\aactions\DC2\FS\n\
    \\tresources\CAN\ETX \ETX(\tR\tresources\DC2M\n\
    \\SIexpiration_time\CAN\EOT \SOH(\v2\SUB.google.protobuf.TimestampR\SOexpirationTimeB\b\200\222\US\SOH\144\223\US\SOH\DC2C\n\
    \\n\
    \limit_size\CAN\ENQ \SOH(\v2\RS.greenfield.common.UInt64ValueR\tlimitSizeB\EOT\200\222\US\SOH\"[\n\
    \\tPrincipal\DC28\n\
    \\EOTtype\CAN\SOH \SOH(\SO2$.greenfield.permission.PrincipalTypeR\EOTtype\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue*\230\STX\n\
    \\n\
    \ActionType\DC2\SYN\n\
    \\DC2ACTION_UNSPECIFIED\DLE\NUL\DC2\GS\n\
    \\EMACTION_UPDATE_BUCKET_INFO\DLE\SOH\DC2\CAN\n\
    \\DC4ACTION_DELETE_BUCKET\DLE\STX\DC2\CAN\n\
    \\DC4ACTION_CREATE_OBJECT\DLE\ETX\DC2\CAN\n\
    \\DC4ACTION_DELETE_OBJECT\DLE\EOT\DC2\SYN\n\
    \\DC2ACTION_COPY_OBJECT\DLE\ENQ\DC2\NAK\n\
    \\DC1ACTION_GET_OBJECT\DLE\ACK\DC2\EM\n\
    \\NAKACTION_EXECUTE_OBJECT\DLE\a\DC2\SYN\n\
    \\DC2ACTION_LIST_OBJECT\DLE\b\DC2\RS\n\
    \\SUBACTION_UPDATE_GROUP_MEMBER\DLE\t\DC2\ETB\n\
    \\DC3ACTION_DELETE_GROUP\DLE\n\
    \\DC2\GS\n\
    \\EMACTION_UPDATE_OBJECT_INFO\DLE\v\DC2\DC3\n\
    \\SIACTION_TYPE_ALL\DLEc\SUB\EOT\136\163\RS\NUL*I\n\
    \\ACKEffect\DC2\SYN\n\
    \\DC2EFFECT_UNSPECIFIED\DLE\NUL\DC2\DLE\n\
    \\fEFFECT_ALLOW\DLE\SOH\DC2\SI\n\
    \\vEFFECT_DENY\DLE\STX\SUB\EOT\136\163\RS\NUL*u\n\
    \\rPrincipalType\DC2\RS\n\
    \\SUBPRINCIPAL_TYPE_UNSPECIFIED\DLE\NUL\DC2\US\n\
    \\ESCPRINCIPAL_TYPE_GNFD_ACCOUNT\DLE\SOH\DC2\GS\n\
    \\EMPRINCIPAL_TYPE_GNFD_GROUP\DLE\STX\SUB\EOT\136\163\RS\NULB4Z2github.com/bnb-chain/greenfield/x/permission/typesJ\230\SYN\n\
    \\ACK\DC2\EOT\NUL\NULM\SOH\n\
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
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULI\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NULI\n\
    \]\n\
    \\STX\ENQ\NUL\DC2\EOT\v\NUL\US\SOH\SUBQ ActionType defines the operations you can execute in greenfield storage network\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\v\ENQ\SI\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\ETX\DC2\ETX\f\STX1\n\
    \\r\n\
    \\ACK\ENQ\NUL\ETX\177\228\ETX\DC2\ETX\f\STX1\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\SO\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\SO\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\SO\ETB\CAN\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\SI\STX \n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\SI\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\SI\RS\US\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\DLE\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\DLE\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\DLE\EM\SUB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX\DC2\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX\DC2\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX\DC2\EM\SUB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX\DC3\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX\DC3\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX\DC3\EM\SUB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ENQ\DC2\ETX\DC4\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ENQ\SOH\DC2\ETX\DC4\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ENQ\STX\DC2\ETX\DC4\ETB\CAN\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ACK\DC2\ETX\NAK\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ACK\SOH\DC2\ETX\NAK\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ACK\STX\DC2\ETX\NAK\SYN\ETB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\a\DC2\ETX\SYN\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\a\SOH\DC2\ETX\SYN\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\a\STX\DC2\ETX\SYN\SUB\ESC\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\b\DC2\ETX\ETB\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\b\SOH\DC2\ETX\ETB\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\b\STX\DC2\ETX\ETB\ETB\CAN\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\t\DC2\ETX\EM\STX!\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\t\SOH\DC2\ETX\EM\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\t\STX\DC2\ETX\EM\US \n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\n\
    \\DC2\ETX\SUB\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\n\
    \\SOH\DC2\ETX\SUB\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\n\
    \\STX\DC2\ETX\SUB\CAN\SUB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\v\DC2\ETX\FS\STX!\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\v\SOH\DC2\ETX\FS\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\v\STX\DC2\ETX\FS\RS \n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\f\DC2\ETX\RS\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\f\SOH\DC2\ETX\RS\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\f\STX\DC2\ETX\RS\DC4\SYN\n\
    \Y\n\
    \\STX\ENQ\SOH\DC2\EOT\"\NUL(\SOH\SUBM Effect define the effect of the operation permission, include Allow or deny\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\SOH\DC2\ETX\"\ENQ\v\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\ETX\DC2\ETX#\STX1\n\
    \\r\n\
    \\ACK\ENQ\SOH\ETX\177\228\ETX\DC2\ETX#\STX1\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\ETX%\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\ETX%\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\ETX%\ETB\CAN\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\ETX&\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\ETX&\STX\SO\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\ETX&\DC1\DC2\n\
    \\v\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\ETX'\STX\DC2\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\ETX'\STX\r\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\ETX'\DLE\DC1\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT*\NUL<\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX*\b\DC1\n\
    \O\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX,\STX\DC4\SUBB effect define the impact of permissions, which can be Allow/Deny\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX,\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX,\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX,\DC2\DC3\n\
    \\180\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX/\STX\"\SUB\166\SOH action_type define the operation type you can act. greenfield defines a set of permission\n\
    \ that you can specify in a permissionInfo. see ActionType enum for detail.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX/\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX/\SYN\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX/ !\n\
    \\220\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX4\STX \SUB\206\STX CAN ONLY USED IN bucket level. Support fuzzy match and limit to 5\n\
    \ If no sub-resource is specified in a statement, then all objects in the bucket are accessible by the principal.\n\
    \ However, if the sub-resource is defined as 'bucket/test_*,' in the statement, then only objects with a 'test_'\n\
    \ prefix can be accessed by the principal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX4\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX4\RS\US\n\
    \\131\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT6\STX9\EOT\SUBu expiration_time defines how long the permission is valid. If not explicitly specified, it means it will not expire.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX6\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX6\FS+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX6./\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\EOT609\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\242\251\ETX\DC2\ETX7\EOT\RS\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\233\251\ETX\DC2\ETX8\EOT\US\n\
    \\138\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX;\STXB\SUB} limit_size defines the total data size that is allowed to operate. If not explicitly specified, it means it will not limit.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX;\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX;\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX;\"#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX;$A\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\233\251\ETX\DC2\ETX;%@\n\
    \\142\SOH\n\
    \\STX\ENQ\STX\DC2\EOT@\NULE\SOH\SUB\129\SOH PrincipalType refers to the identity type of system users or entities.\n\
    \ In Greenfield, it usually refers to accounts or groups.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\STX\SOH\DC2\ETX@\ENQ\DC2\n\
    \\n\
    \\n\
    \\ETX\ENQ\STX\ETX\DC2\ETXA\STX1\n\
    \\r\n\
    \\ACK\ENQ\STX\ETX\177\228\ETX\DC2\ETXA\STX1\n\
    \\v\n\
    \\EOT\ENQ\STX\STX\NUL\DC2\ETXB\STX!\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\NUL\SOH\DC2\ETXB\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\NUL\STX\DC2\ETXB\US \n\
    \\v\n\
    \\EOT\ENQ\STX\STX\SOH\DC2\ETXC\STX\"\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\SOH\SOH\DC2\ETXC\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\SOH\STX\DC2\ETXC !\n\
    \\v\n\
    \\EOT\ENQ\STX\STX\STX\DC2\ETXD\STX \n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\STX\SOH\DC2\ETXD\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\STX\STX\STX\STX\DC2\ETXD\RS\US\n\
    \k\n\
    \\STX\EOT\SOH\DC2\EOTH\NULM\SOH\SUB_ Principal define the roles that can grant permissions. Currently, it can be account or group.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXH\b\DC1\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXI\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXI\STX\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXI\DLE\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXI\ETB\CAN\n\
    \\145\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXL\STX\DC3\SUB\131\SOH When the type is an account, its value is sdk.AccAddress().String();\n\
    \ when the type is a group, its value is math.Uint().String()\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETXL\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXL\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXL\DC1\DC2b\ACKproto3"