{- This file was auto-generated from greenfield/permission/events.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Permission.Events (
        EventDeletePolicy(), EventPutPolicy()
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
import qualified Proto.Greenfield.Permission.Types
import qualified Proto.Greenfield.Resource.Types
{- | Fields :
     
         * 'Proto.Greenfield.Permission.Events_Fields.policyId' @:: Lens' EventDeletePolicy Data.Text.Text@ -}
data EventDeletePolicy
  = EventDeletePolicy'_constructor {_EventDeletePolicy'policyId :: !Data.Text.Text,
                                    _EventDeletePolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventDeletePolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventDeletePolicy "policyId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventDeletePolicy'policyId
           (\ x__ y__ -> x__ {_EventDeletePolicy'policyId = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventDeletePolicy where
  messageName _
    = Data.Text.pack "greenfield.permission.EventDeletePolicy"
  packedMessageDescriptor _
    = "\n\
      \\DC1EventDeletePolicy\DC28\n\
      \\tpolicy_id\CAN\SOH \SOH(\tR\bpolicyIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint"
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
              Data.ProtoLens.FieldDescriptor EventDeletePolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, policyId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventDeletePolicy'_unknownFields
        (\ x__ y__ -> x__ {_EventDeletePolicy'_unknownFields = y__})
  defMessage
    = EventDeletePolicy'_constructor
        {_EventDeletePolicy'policyId = Data.ProtoLens.fieldDefault,
         _EventDeletePolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventDeletePolicy
          -> Data.ProtoLens.Encoding.Bytes.Parser EventDeletePolicy
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventDeletePolicy"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EventDeletePolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventDeletePolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq (_EventDeletePolicy'policyId x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Permission.Events_Fields.policyId' @:: Lens' EventPutPolicy Data.Text.Text@
         * 'Proto.Greenfield.Permission.Events_Fields.principal' @:: Lens' EventPutPolicy Proto.Greenfield.Permission.Common.Principal@
         * 'Proto.Greenfield.Permission.Events_Fields.maybe'principal' @:: Lens' EventPutPolicy (Prelude.Maybe Proto.Greenfield.Permission.Common.Principal)@
         * 'Proto.Greenfield.Permission.Events_Fields.resourceType' @:: Lens' EventPutPolicy Proto.Greenfield.Resource.Types.ResourceType@
         * 'Proto.Greenfield.Permission.Events_Fields.resourceId' @:: Lens' EventPutPolicy Data.Text.Text@
         * 'Proto.Greenfield.Permission.Events_Fields.statements' @:: Lens' EventPutPolicy [Proto.Greenfield.Permission.Common.Statement]@
         * 'Proto.Greenfield.Permission.Events_Fields.vec'statements' @:: Lens' EventPutPolicy (Data.Vector.Vector Proto.Greenfield.Permission.Common.Statement)@
         * 'Proto.Greenfield.Permission.Events_Fields.expirationTime' @:: Lens' EventPutPolicy Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Greenfield.Permission.Events_Fields.maybe'expirationTime' @:: Lens' EventPutPolicy (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data EventPutPolicy
  = EventPutPolicy'_constructor {_EventPutPolicy'policyId :: !Data.Text.Text,
                                 _EventPutPolicy'principal :: !(Prelude.Maybe Proto.Greenfield.Permission.Common.Principal),
                                 _EventPutPolicy'resourceType :: !Proto.Greenfield.Resource.Types.ResourceType,
                                 _EventPutPolicy'resourceId :: !Data.Text.Text,
                                 _EventPutPolicy'statements :: !(Data.Vector.Vector Proto.Greenfield.Permission.Common.Statement),
                                 _EventPutPolicy'expirationTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                 _EventPutPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventPutPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventPutPolicy "policyId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventPutPolicy'policyId
           (\ x__ y__ -> x__ {_EventPutPolicy'policyId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventPutPolicy "principal" Proto.Greenfield.Permission.Common.Principal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventPutPolicy'principal
           (\ x__ y__ -> x__ {_EventPutPolicy'principal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EventPutPolicy "maybe'principal" (Prelude.Maybe Proto.Greenfield.Permission.Common.Principal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventPutPolicy'principal
           (\ x__ y__ -> x__ {_EventPutPolicy'principal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventPutPolicy "resourceType" Proto.Greenfield.Resource.Types.ResourceType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventPutPolicy'resourceType
           (\ x__ y__ -> x__ {_EventPutPolicy'resourceType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventPutPolicy "resourceId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventPutPolicy'resourceId
           (\ x__ y__ -> x__ {_EventPutPolicy'resourceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventPutPolicy "statements" [Proto.Greenfield.Permission.Common.Statement] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventPutPolicy'statements
           (\ x__ y__ -> x__ {_EventPutPolicy'statements = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField EventPutPolicy "vec'statements" (Data.Vector.Vector Proto.Greenfield.Permission.Common.Statement) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventPutPolicy'statements
           (\ x__ y__ -> x__ {_EventPutPolicy'statements = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventPutPolicy "expirationTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventPutPolicy'expirationTime
           (\ x__ y__ -> x__ {_EventPutPolicy'expirationTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField EventPutPolicy "maybe'expirationTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventPutPolicy'expirationTime
           (\ x__ y__ -> x__ {_EventPutPolicy'expirationTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventPutPolicy where
  messageName _
    = Data.Text.pack "greenfield.permission.EventPutPolicy"
  packedMessageDescriptor _
    = "\n\
      \\SOEventPutPolicy\DC28\n\
      \\tpolicy_id\CAN\SOH \SOH(\tR\bpolicyIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2>\n\
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
        policyId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "policy_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"policyId")) ::
              Data.ProtoLens.FieldDescriptor EventPutPolicy
        principal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "principal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Permission.Common.Principal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'principal")) ::
              Data.ProtoLens.FieldDescriptor EventPutPolicy
        resourceType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Resource.Types.ResourceType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resourceType")) ::
              Data.ProtoLens.FieldDescriptor EventPutPolicy
        resourceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resourceId")) ::
              Data.ProtoLens.FieldDescriptor EventPutPolicy
        statements__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "statements"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Permission.Common.Statement)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"statements")) ::
              Data.ProtoLens.FieldDescriptor EventPutPolicy
        expirationTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expiration_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expirationTime")) ::
              Data.ProtoLens.FieldDescriptor EventPutPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, policyId__field_descriptor),
           (Data.ProtoLens.Tag 2, principal__field_descriptor),
           (Data.ProtoLens.Tag 3, resourceType__field_descriptor),
           (Data.ProtoLens.Tag 4, resourceId__field_descriptor),
           (Data.ProtoLens.Tag 5, statements__field_descriptor),
           (Data.ProtoLens.Tag 6, expirationTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventPutPolicy'_unknownFields
        (\ x__ y__ -> x__ {_EventPutPolicy'_unknownFields = y__})
  defMessage
    = EventPutPolicy'_constructor
        {_EventPutPolicy'policyId = Data.ProtoLens.fieldDefault,
         _EventPutPolicy'principal = Prelude.Nothing,
         _EventPutPolicy'resourceType = Data.ProtoLens.fieldDefault,
         _EventPutPolicy'resourceId = Data.ProtoLens.fieldDefault,
         _EventPutPolicy'statements = Data.Vector.Generic.empty,
         _EventPutPolicy'expirationTime = Prelude.Nothing,
         _EventPutPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventPutPolicy
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Permission.Common.Statement
             -> Data.ProtoLens.Encoding.Bytes.Parser EventPutPolicy
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
                                       "policy_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"policyId") y x)
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
          "EventPutPolicy"
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
instance Control.DeepSeq.NFData EventPutPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventPutPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventPutPolicy'policyId x__)
                (Control.DeepSeq.deepseq
                   (_EventPutPolicy'principal x__)
                   (Control.DeepSeq.deepseq
                      (_EventPutPolicy'resourceType x__)
                      (Control.DeepSeq.deepseq
                         (_EventPutPolicy'resourceId x__)
                         (Control.DeepSeq.deepseq
                            (_EventPutPolicy'statements x__)
                            (Control.DeepSeq.deepseq
                               (_EventPutPolicy'expirationTime x__) ()))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"greenfield/permission/events.proto\DC2\NAKgreenfield.permission\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\"greenfield/permission/common.proto\SUB!greenfield/permission/types.proto\SUB\USgreenfield/resource/types.proto\"\161\ETX\n\
    \\SOEventPutPolicy\DC28\n\
    \\tpolicy_id\CAN\SOH \SOH(\tR\bpolicyIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2>\n\
    \\tprincipal\CAN\STX \SOH(\v2 .greenfield.permission.PrincipalR\tprincipal\DC2F\n\
    \\rresource_type\CAN\ETX \SOH(\SO2!.greenfield.resource.ResourceTypeR\fresourceType\DC2<\n\
    \\vresource_id\CAN\EOT \SOH(\tR\n\
    \resourceIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2@\n\
    \\n\
    \statements\CAN\ENQ \ETX(\v2 .greenfield.permission.StatementR\n\
    \statements\DC2M\n\
    \\SIexpiration_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\SOexpirationTimeB\b\200\222\US\SOH\144\223\US\SOH\"M\n\
    \\DC1EventDeletePolicy\DC28\n\
    \\tpolicy_id\CAN\SOH \SOH(\tR\bpolicyIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.UintB4Z2github.com/bnb-chain/greenfield/x/permission/typesJ\201\v\n\
    \\ACK\DC2\EOT\NUL\NUL.\SOH\n\
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
    \\STX\ETX\EOT\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULI\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\n\
    \\NULI\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\f\NUL%\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\f\b\SYN\n\
    \d\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\SO\STX\DC2\EOT\SUBV policy_id is an unique u256 sequence for each policy. It also be used as NFT tokenID\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SO\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SO\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\EOT\SO\ETB\DC2\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\SI\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\235\251\ETX\DC2\ETX\DLE\EOT#\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\DC1\EOT \n\
    \R\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC4\STX\SUB\SUBE principal defines the accounts/group which the permission grants to\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DC4\STX\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC4\f\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC4\CAN\EM\n\
    \T\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\SYN\STX*\SUBG resource_type defines the type of resource that grants permission for\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\SYN\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\SYN\CAN%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\SYN()\n\
    \i\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\CAN\STX\FS\EOT\SUB[ resource_id defines the bucket/object/group id of the resource that grants permission for\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\CAN\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\CAN\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\EOT\CAN\EM\FS\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\202\214\ENQ\DC2\ETX\EM\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\235\251\ETX\DC2\ETX\SUB\EOT#\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\233\251\ETX\DC2\ETX\ESC\EOT \n\
    \m\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\RS\STX$\SUB` statements defines the details content of the permission, include effect/actions/sub-resources\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\RS\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\RS\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\RS\"#\n\
    \\168\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT!\STX$\EOT\SUB\153\SOH expiration_time defines the whole expiration time of all the statements.\n\
    \ Notices: Its priority is higher than the expiration time inside the Statement\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX!\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX!\FS+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX!./\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\EOT!0$\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\242\251\ETX\DC2\ETX\"\EOT\RS\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\233\251\ETX\DC2\ETX#\EOT\US\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT'\NUL.\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX'\b\EM\n\
    \d\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT)\STX-\EOT\SUBV policy_id is an unique u256 sequence for each policy. It also be used as NFT tokenID\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX)\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX)\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX)\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\EOT)\ETB-\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\202\214\ENQ\DC2\ETX*\EOT)\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\235\251\ETX\DC2\ETX+\EOT#\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\ETX,\EOT b\ACKproto3"