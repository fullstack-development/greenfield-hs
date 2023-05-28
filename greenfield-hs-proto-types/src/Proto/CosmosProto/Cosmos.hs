{- This file was auto-generated from cosmos_proto/cosmos.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.CosmosProto.Cosmos (
        InterfaceDescriptor(), ScalarDescriptor(), ScalarType(..),
        ScalarType(), ScalarType'UnrecognizedValue
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
import qualified Proto.Google.Protobuf.Descriptor
{- | Fields :
     
         * 'Proto.CosmosProto.Cosmos_Fields.name' @:: Lens' InterfaceDescriptor Data.Text.Text@
         * 'Proto.CosmosProto.Cosmos_Fields.description' @:: Lens' InterfaceDescriptor Data.Text.Text@ -}
data InterfaceDescriptor
  = InterfaceDescriptor'_constructor {_InterfaceDescriptor'name :: !Data.Text.Text,
                                      _InterfaceDescriptor'description :: !Data.Text.Text,
                                      _InterfaceDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InterfaceDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InterfaceDescriptor "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InterfaceDescriptor'name
           (\ x__ y__ -> x__ {_InterfaceDescriptor'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InterfaceDescriptor "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InterfaceDescriptor'description
           (\ x__ y__ -> x__ {_InterfaceDescriptor'description = y__}))
        Prelude.id
instance Data.ProtoLens.Message InterfaceDescriptor where
  messageName _ = Data.Text.pack "cosmos_proto.InterfaceDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\DC3InterfaceDescriptor\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2 \n\
      \\vdescription\CAN\STX \SOH(\tR\vdescription"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor InterfaceDescriptor
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor InterfaceDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, description__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InterfaceDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_InterfaceDescriptor'_unknownFields = y__})
  defMessage
    = InterfaceDescriptor'_constructor
        {_InterfaceDescriptor'name = Data.ProtoLens.fieldDefault,
         _InterfaceDescriptor'description = Data.ProtoLens.fieldDefault,
         _InterfaceDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InterfaceDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser InterfaceDescriptor
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "InterfaceDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
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
instance Control.DeepSeq.NFData InterfaceDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InterfaceDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InterfaceDescriptor'name x__)
                (Control.DeepSeq.deepseq
                   (_InterfaceDescriptor'description x__) ()))
{- | Fields :
     
         * 'Proto.CosmosProto.Cosmos_Fields.name' @:: Lens' ScalarDescriptor Data.Text.Text@
         * 'Proto.CosmosProto.Cosmos_Fields.description' @:: Lens' ScalarDescriptor Data.Text.Text@
         * 'Proto.CosmosProto.Cosmos_Fields.fieldType' @:: Lens' ScalarDescriptor [ScalarType]@
         * 'Proto.CosmosProto.Cosmos_Fields.vec'fieldType' @:: Lens' ScalarDescriptor (Data.Vector.Vector ScalarType)@ -}
data ScalarDescriptor
  = ScalarDescriptor'_constructor {_ScalarDescriptor'name :: !Data.Text.Text,
                                   _ScalarDescriptor'description :: !Data.Text.Text,
                                   _ScalarDescriptor'fieldType :: !(Data.Vector.Vector ScalarType),
                                   _ScalarDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScalarDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScalarDescriptor "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScalarDescriptor'name
           (\ x__ y__ -> x__ {_ScalarDescriptor'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScalarDescriptor "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScalarDescriptor'description
           (\ x__ y__ -> x__ {_ScalarDescriptor'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScalarDescriptor "fieldType" [ScalarType] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScalarDescriptor'fieldType
           (\ x__ y__ -> x__ {_ScalarDescriptor'fieldType = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ScalarDescriptor "vec'fieldType" (Data.Vector.Vector ScalarType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScalarDescriptor'fieldType
           (\ x__ y__ -> x__ {_ScalarDescriptor'fieldType = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScalarDescriptor where
  messageName _ = Data.Text.pack "cosmos_proto.ScalarDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\DLEScalarDescriptor\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2 \n\
      \\vdescription\CAN\STX \SOH(\tR\vdescription\DC27\n\
      \\n\
      \field_type\CAN\ETX \ETX(\SO2\CAN.cosmos_proto.ScalarTypeR\tfieldType"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor ScalarDescriptor
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor ScalarDescriptor
        fieldType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ScalarType)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed (Data.ProtoLens.Field.field @"fieldType")) ::
              Data.ProtoLens.FieldDescriptor ScalarDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, description__field_descriptor),
           (Data.ProtoLens.Tag 3, fieldType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScalarDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_ScalarDescriptor'_unknownFields = y__})
  defMessage
    = ScalarDescriptor'_constructor
        {_ScalarDescriptor'name = Data.ProtoLens.fieldDefault,
         _ScalarDescriptor'description = Data.ProtoLens.fieldDefault,
         _ScalarDescriptor'fieldType = Data.Vector.Generic.empty,
         _ScalarDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScalarDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ScalarType
             -> Data.ProtoLens.Encoding.Bytes.Parser ScalarDescriptor
        loop x mutable'fieldType
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'fieldType <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'fieldType)
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
                              (Data.ProtoLens.Field.field @"vec'fieldType") frozen'fieldType x))
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
                                       "name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'fieldType
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                                  mutable'fieldType
                        24
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.toEnum
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "field_type"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'fieldType y)
                                loop x v
                        26
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
                                                                    "field_type"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'fieldType)
                                loop x y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'fieldType
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'fieldType <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'fieldType)
          "ScalarDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
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
                      p = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'fieldType") _x
                    in
                      if Data.Vector.Generic.null p then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ScalarDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScalarDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScalarDescriptor'name x__)
                (Control.DeepSeq.deepseq
                   (_ScalarDescriptor'description x__)
                   (Control.DeepSeq.deepseq (_ScalarDescriptor'fieldType x__) ())))
newtype ScalarType'UnrecognizedValue
  = ScalarType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ScalarType
  = SCALAR_TYPE_UNSPECIFIED |
    SCALAR_TYPE_STRING |
    SCALAR_TYPE_BYTES |
    ScalarType'Unrecognized !ScalarType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ScalarType where
  maybeToEnum 0 = Prelude.Just SCALAR_TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just SCALAR_TYPE_STRING
  maybeToEnum 2 = Prelude.Just SCALAR_TYPE_BYTES
  maybeToEnum k
    = Prelude.Just
        (ScalarType'Unrecognized
           (ScalarType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum SCALAR_TYPE_UNSPECIFIED = "SCALAR_TYPE_UNSPECIFIED"
  showEnum SCALAR_TYPE_STRING = "SCALAR_TYPE_STRING"
  showEnum SCALAR_TYPE_BYTES = "SCALAR_TYPE_BYTES"
  showEnum (ScalarType'Unrecognized (ScalarType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "SCALAR_TYPE_UNSPECIFIED"
    = Prelude.Just SCALAR_TYPE_UNSPECIFIED
    | (Prelude.==) k "SCALAR_TYPE_STRING"
    = Prelude.Just SCALAR_TYPE_STRING
    | (Prelude.==) k "SCALAR_TYPE_BYTES"
    = Prelude.Just SCALAR_TYPE_BYTES
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ScalarType where
  minBound = SCALAR_TYPE_UNSPECIFIED
  maxBound = SCALAR_TYPE_BYTES
instance Prelude.Enum ScalarType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ScalarType: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum SCALAR_TYPE_UNSPECIFIED = 0
  fromEnum SCALAR_TYPE_STRING = 1
  fromEnum SCALAR_TYPE_BYTES = 2
  fromEnum (ScalarType'Unrecognized (ScalarType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ SCALAR_TYPE_BYTES
    = Prelude.error
        "ScalarType.succ: bad argument SCALAR_TYPE_BYTES. This value would be out of bounds."
  succ SCALAR_TYPE_UNSPECIFIED = SCALAR_TYPE_STRING
  succ SCALAR_TYPE_STRING = SCALAR_TYPE_BYTES
  succ (ScalarType'Unrecognized _)
    = Prelude.error "ScalarType.succ: bad argument: unrecognized value"
  pred SCALAR_TYPE_UNSPECIFIED
    = Prelude.error
        "ScalarType.pred: bad argument SCALAR_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred SCALAR_TYPE_STRING = SCALAR_TYPE_UNSPECIFIED
  pred SCALAR_TYPE_BYTES = SCALAR_TYPE_STRING
  pred (ScalarType'Unrecognized _)
    = Prelude.error "ScalarType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ScalarType where
  fieldDefault = SCALAR_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData ScalarType where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\EMcosmos_proto/cosmos.proto\DC2\fcosmos_proto\SUB google/protobuf/descriptor.proto\"K\n\
    \\DC3InterfaceDescriptor\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2 \n\
    \\vdescription\CAN\STX \SOH(\tR\vdescription\"\129\SOH\n\
    \\DLEScalarDescriptor\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2 \n\
    \\vdescription\CAN\STX \SOH(\tR\vdescription\DC27\n\
    \\n\
    \field_type\CAN\ETX \ETX(\SO2\CAN.cosmos_proto.ScalarTypeR\tfieldType*X\n\
    \\n\
    \ScalarType\DC2\ESC\n\
    \\ETBSCALAR_TYPE_UNSPECIFIED\DLE\NUL\DC2\SYN\n\
    \\DC2SCALAR_TYPE_STRING\DLE\SOH\DC2\NAK\n\
    \\DC1SCALAR_TYPE_BYTES\DLE\STX:T\n\
    \\DC4implements_interface\CAN\201\214\ENQ \ETX(\t\DC2\US.google.protobuf.MessageOptionsR\DC3implementsInterface:L\n\
    \\DC1accepts_interface\CAN\201\214\ENQ \SOH(\t\DC2\GS.google.protobuf.FieldOptionsR\DLEacceptsInterface:7\n\
    \\ACKscalar\CAN\202\214\ENQ \SOH(\t\DC2\GS.google.protobuf.FieldOptionsR\ACKscalar:n\n\
    \\DC1declare_interface\CAN\189\179\&0 \ETX(\v2!.cosmos_proto.InterfaceDescriptor\DC2\FS.google.protobuf.FileOptionsR\DLEdeclareInterface:e\n\
    \\SOdeclare_scalar\CAN\190\179\&0 \ETX(\v2\RS.cosmos_proto.ScalarDescriptor\DC2\FS.google.protobuf.FileOptionsR\rdeclareScalarB-Z+github.com/cosmos/cosmos-proto;cosmos_protoJ\176\US\n\
    \\ACK\DC2\EOT\NUL\NUL`\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\NAK\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NULB\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ENQ\NULB\n\
    \\t\n\
    \\SOH\a\DC2\EOT\a\NUL\SI\SOH\n\
    \\182\STX\n\
    \\STX\a\NUL\DC2\ETX\SO\EOT1\SUB\170\STX implements_interface is used to indicate the type name of the interface\n\
    \ that a message implements so that it can be used in google.protobuf.Any\n\
    \ fields that accept that interface. A message can implement multiple\n\
    \ interfaces. Interfaces should be declared using a declare_interface\n\
    \ file option.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\NUL\STX\DC2\ETX\a\a%\n\
    \\n\
    \\n\
    \\ETX\a\NUL\EOT\DC2\ETX\SO\EOT\f\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ENQ\DC2\ETX\SO\r\DC3\n\
    \\n\
    \\n\
    \\ETX\a\NUL\SOH\DC2\ETX\SO\DC4(\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ETX\DC2\ETX\SO+0\n\
    \\t\n\
    \\SOH\a\DC2\EOT\DC1\NUL\GS\SOH\n\
    \\212\SOH\n\
    \\STX\a\SOH\DC2\ETX\SYN\EOT%\SUB\200\SOH accepts_interface is used to annotate that a google.protobuf.Any\n\
    \ field accepts messages that implement the specified interface.\n\
    \ Interfaces should be declared using a declare_interface file option.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\SOH\STX\DC2\ETX\DC1\a#\n\
    \\n\
    \\n\
    \\ETX\a\SOH\ENQ\DC2\ETX\SYN\EOT\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\SOH\SOH\DC2\ETX\SYN\v\FS\n\
    \\n\
    \\n\
    \\ETX\a\SOH\ETX\DC2\ETX\SYN\US$\n\
    \\150\STX\n\
    \\STX\a\STX\DC2\ETX\FS\EOT\SUB\SUB\138\STX scalar is used to indicate that this field follows the formatting defined\n\
    \ by the named scalar which should be declared with declare_scalar. Code\n\
    \ generators may choose to use this information to map this field to a\n\
    \ language-specific type representing the scalar.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\STX\STX\DC2\ETX\DC1\a#\n\
    \\n\
    \\n\
    \\ETX\a\STX\ENQ\DC2\ETX\FS\EOT\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\STX\SOH\DC2\ETX\FS\v\DC1\n\
    \\n\
    \\n\
    \\ETX\a\STX\ETX\DC2\ETX\FS\DC4\EM\n\
    \\t\n\
    \\SOH\a\DC2\EOT\US\NUL0\SOH\n\
    \\145\ETX\n\
    \\STX\a\ETX\DC2\ETX'\EOT<\SUB\133\ETX declare_interface declares an interface type to be used with\n\
    \ accepts_interface and implements_interface. Interface names are\n\
    \ expected to follow the following convention such that their declaration\n\
    \ can be discovered by tools: for a given interface type a.b.C, it is\n\
    \ expected that the declaration will be found in a protobuf file named\n\
    \ a/b/interfaces.proto in the file descriptor set.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\ETX\STX\DC2\ETX\US\a\"\n\
    \\n\
    \\n\
    \\ETX\a\ETX\EOT\DC2\ETX'\EOT\f\n\
    \\n\
    \\n\
    \\ETX\a\ETX\ACK\DC2\ETX'\r \n\
    \\n\
    \\n\
    \\ETX\a\ETX\SOH\DC2\ETX'!2\n\
    \\n\
    \\n\
    \\ETX\a\ETX\ETX\DC2\ETX'5;\n\
    \\238\STX\n\
    \\STX\a\EOT\DC2\ETX/\EOT6\SUB\226\STX declare_scalar declares a scalar type to be used with\n\
    \ the scalar field option. Scalar names are\n\
    \ expected to follow the following convention such that their declaration\n\
    \ can be discovered by tools: for a given scalar type a.b.C, it is\n\
    \ expected that the declaration will be found in a protobuf file named\n\
    \ a/b/scalars.proto in the file descriptor set.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\EOT\STX\DC2\ETX\US\a\"\n\
    \\n\
    \\n\
    \\ETX\a\EOT\EOT\DC2\ETX/\EOT\f\n\
    \\n\
    \\n\
    \\ETX\a\EOT\ACK\DC2\ETX/\r\GS\n\
    \\n\
    \\n\
    \\ETX\a\EOT\SOH\DC2\ETX/\RS,\n\
    \\n\
    \\n\
    \\ETX\a\EOT\ETX\DC2\ETX//5\n\
    \\157\SOH\n\
    \\STX\EOT\NUL\DC2\EOT4\NUL?\SOH\SUB\144\SOH InterfaceDescriptor describes an interface type to be used with\n\
    \ accepts_interface and implements_interface and declared by declare_interface.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX4\b\ESC\n\
    \\131\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX:\EOT\DC4\SUB\245\SOH name is the name of the interface. It should be a short-name (without\n\
    \ a period) such that the fully qualified name of the interface will be\n\
    \ package.name, ex. for the package a.b and interface named C, the\n\
    \ fully-qualified name will be a.b.C.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX:\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX:\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX:\DC2\DC3\n\
    \]\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX>\EOT\ESC\SUBP description is a human-readable description of the interface and its\n\
    \ purpose.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX>\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX>\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX>\EM\SUB\n\
    \\178\ETX\n\
    \\STX\EOT\SOH\DC2\EOTH\NULZ\SOH\SUB\165\ETX ScalarDescriptor describes an scalar type to be used with\n\
    \ the scalar field option and declared by declare_scalar.\n\
    \ Scalars extend simple protobuf built-in types with additional\n\
    \ syntax and semantics, for instance to represent big integers.\n\
    \ Scalars should ideally define an encoding such that there is only one\n\
    \ valid syntactical representation for a given semantic meaning,\n\
    \ i.e. the encoding should be deterministic.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXH\b\CAN\n\
    \\250\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXN\EOT\DC4\SUB\236\SOH name is the name of the scalar. It should be a short-name (without\n\
    \ a period) such that the fully qualified name of the scalar will be\n\
    \ package.name, ex. for the package a.b and scalar named C, the\n\
    \ fully-qualified name will be a.b.C.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXN\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXN\v\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXN\DC2\DC3\n\
    \\200\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXS\EOT\ESC\SUB\186\SOH description is a human-readable description of the scalar and its\n\
    \ encoding format. For instance a big integer or decimal scalar should\n\
    \ specify precisely the expected encoding format.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETXS\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXS\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXS\EM\SUB\n\
    \\129\STX\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXY\EOT'\SUB\243\SOH field_type is the type of field with which this scalar can be used.\n\
    \ Scalars can be used with one and only one type of field so that\n\
    \ encoding standards and simple and clear. Currently only string and\n\
    \ bytes fields are supported for scalars.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETXY\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETXY\r\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXY\CAN\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXY%&\n\
    \\n\
    \\n\
    \\STX\ENQ\NUL\DC2\EOT\\\NUL`\SOH\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\\\ENQ\SI\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX]\EOT \n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX]\EOT\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX]\RS\US\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX^\EOT\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX^\EOT\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX^\EM\SUB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX_\EOT\SUB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX_\EOT\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX_\CAN\EMb\ACKproto3"