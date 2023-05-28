{- This file was auto-generated from cosmos/base/reflection/v1beta1/reflection.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Base.Reflection.V1beta1.Reflection (
        ReflectionService(..), ListAllInterfacesRequest(),
        ListAllInterfacesResponse(), ListImplementationsRequest(),
        ListImplementationsResponse()
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
import qualified Proto.Google.Api.Annotations
{- | Fields :
      -}
data ListAllInterfacesRequest
  = ListAllInterfacesRequest'_constructor {_ListAllInterfacesRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListAllInterfacesRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message ListAllInterfacesRequest where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v1beta1.ListAllInterfacesRequest"
  packedMessageDescriptor _
    = "\n\
      \\CANListAllInterfacesRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListAllInterfacesRequest'_unknownFields
        (\ x__ y__ -> x__ {_ListAllInterfacesRequest'_unknownFields = y__})
  defMessage
    = ListAllInterfacesRequest'_constructor
        {_ListAllInterfacesRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListAllInterfacesRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser ListAllInterfacesRequest
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
          (do loop Data.ProtoLens.defMessage) "ListAllInterfacesRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData ListAllInterfacesRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListAllInterfacesRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V1beta1.Reflection_Fields.interfaceNames' @:: Lens' ListAllInterfacesResponse [Data.Text.Text]@
         * 'Proto.Cosmos.Base.Reflection.V1beta1.Reflection_Fields.vec'interfaceNames' @:: Lens' ListAllInterfacesResponse (Data.Vector.Vector Data.Text.Text)@ -}
data ListAllInterfacesResponse
  = ListAllInterfacesResponse'_constructor {_ListAllInterfacesResponse'interfaceNames :: !(Data.Vector.Vector Data.Text.Text),
                                            _ListAllInterfacesResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListAllInterfacesResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListAllInterfacesResponse "interfaceNames" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListAllInterfacesResponse'interfaceNames
           (\ x__ y__
              -> x__ {_ListAllInterfacesResponse'interfaceNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ListAllInterfacesResponse "vec'interfaceNames" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListAllInterfacesResponse'interfaceNames
           (\ x__ y__
              -> x__ {_ListAllInterfacesResponse'interfaceNames = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListAllInterfacesResponse where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v1beta1.ListAllInterfacesResponse"
  packedMessageDescriptor _
    = "\n\
      \\EMListAllInterfacesResponse\DC2'\n\
      \\SIinterface_names\CAN\SOH \ETX(\tR\SOinterfaceNames"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        interfaceNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interface_names"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"interfaceNames")) ::
              Data.ProtoLens.FieldDescriptor ListAllInterfacesResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, interfaceNames__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListAllInterfacesResponse'_unknownFields
        (\ x__ y__
           -> x__ {_ListAllInterfacesResponse'_unknownFields = y__})
  defMessage
    = ListAllInterfacesResponse'_constructor
        {_ListAllInterfacesResponse'interfaceNames = Data.Vector.Generic.empty,
         _ListAllInterfacesResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListAllInterfacesResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser ListAllInterfacesResponse
        loop x mutable'interfaceNames
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'interfaceNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'interfaceNames)
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
                              (Data.ProtoLens.Field.field @"vec'interfaceNames")
                              frozen'interfaceNames x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "interface_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'interfaceNames y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'interfaceNames
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'interfaceNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'interfaceNames)
          "ListAllInterfacesResponse"
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
                           Data.Text.Encoding.encodeUtf8 _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'interfaceNames") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ListAllInterfacesResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListAllInterfacesResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListAllInterfacesResponse'interfaceNames x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V1beta1.Reflection_Fields.interfaceName' @:: Lens' ListImplementationsRequest Data.Text.Text@ -}
data ListImplementationsRequest
  = ListImplementationsRequest'_constructor {_ListImplementationsRequest'interfaceName :: !Data.Text.Text,
                                             _ListImplementationsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListImplementationsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListImplementationsRequest "interfaceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListImplementationsRequest'interfaceName
           (\ x__ y__
              -> x__ {_ListImplementationsRequest'interfaceName = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListImplementationsRequest where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v1beta1.ListImplementationsRequest"
  packedMessageDescriptor _
    = "\n\
      \\SUBListImplementationsRequest\DC2%\n\
      \\SOinterface_name\CAN\SOH \SOH(\tR\rinterfaceName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        interfaceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interface_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"interfaceName")) ::
              Data.ProtoLens.FieldDescriptor ListImplementationsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, interfaceName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListImplementationsRequest'_unknownFields
        (\ x__ y__
           -> x__ {_ListImplementationsRequest'_unknownFields = y__})
  defMessage
    = ListImplementationsRequest'_constructor
        {_ListImplementationsRequest'interfaceName = Data.ProtoLens.fieldDefault,
         _ListImplementationsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListImplementationsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser ListImplementationsRequest
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
                                       "interface_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"interfaceName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ListImplementationsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"interfaceName") _x
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
instance Control.DeepSeq.NFData ListImplementationsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListImplementationsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListImplementationsRequest'interfaceName x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Base.Reflection.V1beta1.Reflection_Fields.implementationMessageNames' @:: Lens' ListImplementationsResponse [Data.Text.Text]@
         * 'Proto.Cosmos.Base.Reflection.V1beta1.Reflection_Fields.vec'implementationMessageNames' @:: Lens' ListImplementationsResponse (Data.Vector.Vector Data.Text.Text)@ -}
data ListImplementationsResponse
  = ListImplementationsResponse'_constructor {_ListImplementationsResponse'implementationMessageNames :: !(Data.Vector.Vector Data.Text.Text),
                                              _ListImplementationsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListImplementationsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListImplementationsResponse "implementationMessageNames" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListImplementationsResponse'implementationMessageNames
           (\ x__ y__
              -> x__
                   {_ListImplementationsResponse'implementationMessageNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ListImplementationsResponse "vec'implementationMessageNames" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListImplementationsResponse'implementationMessageNames
           (\ x__ y__
              -> x__
                   {_ListImplementationsResponse'implementationMessageNames = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListImplementationsResponse where
  messageName _
    = Data.Text.pack
        "cosmos.base.reflection.v1beta1.ListImplementationsResponse"
  packedMessageDescriptor _
    = "\n\
      \\ESCListImplementationsResponse\DC2@\n\
      \\FSimplementation_message_names\CAN\SOH \ETX(\tR\SUBimplementationMessageNames"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        implementationMessageNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "implementation_message_names"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"implementationMessageNames")) ::
              Data.ProtoLens.FieldDescriptor ListImplementationsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            implementationMessageNames__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListImplementationsResponse'_unknownFields
        (\ x__ y__
           -> x__ {_ListImplementationsResponse'_unknownFields = y__})
  defMessage
    = ListImplementationsResponse'_constructor
        {_ListImplementationsResponse'implementationMessageNames = Data.Vector.Generic.empty,
         _ListImplementationsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListImplementationsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser ListImplementationsResponse
        loop x mutable'implementationMessageNames
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'implementationMessageNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                mutable'implementationMessageNames)
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
                              (Data.ProtoLens.Field.field @"vec'implementationMessageNames")
                              frozen'implementationMessageNames x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "implementation_message_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'implementationMessageNames y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'implementationMessageNames
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'implementationMessageNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'implementationMessageNames)
          "ListImplementationsResponse"
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
                           Data.Text.Encoding.encodeUtf8 _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'implementationMessageNames") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ListImplementationsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListImplementationsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ListImplementationsResponse'implementationMessageNames x__) ())
data ReflectionService = ReflectionService {}
instance Data.ProtoLens.Service.Types.Service ReflectionService where
  type ServiceName ReflectionService = "ReflectionService"
  type ServicePackage ReflectionService = "cosmos.base.reflection.v1beta1"
  type ServiceMethods ReflectionService = '["listAllInterfaces",
                                            "listImplementations"]
  packedServiceDescriptor _
    = "\n\
      \\DC1ReflectionService\DC2\188\SOH\n\
      \\DC1ListAllInterfaces\DC28.cosmos.base.reflection.v1beta1.ListAllInterfacesRequest\SUB9.cosmos.base.reflection.v1beta1.ListAllInterfacesResponse\"2\130\211\228\147\STX,\DC2*/cosmos/base/reflection/v1beta1/interfaces\DC2\227\SOH\n\
      \\DC3ListImplementations\DC2:.cosmos.base.reflection.v1beta1.ListImplementationsRequest\SUB;.cosmos.base.reflection.v1beta1.ListImplementationsResponse\"S\130\211\228\147\STXM\DC2K/cosmos/base/reflection/v1beta1/interfaces/{interface_name}/implementations"
instance Data.ProtoLens.Service.Types.HasMethodImpl ReflectionService "listAllInterfaces" where
  type MethodName ReflectionService "listAllInterfaces" = "ListAllInterfaces"
  type MethodInput ReflectionService "listAllInterfaces" = ListAllInterfacesRequest
  type MethodOutput ReflectionService "listAllInterfaces" = ListAllInterfacesResponse
  type MethodStreamingType ReflectionService "listAllInterfaces" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ReflectionService "listImplementations" where
  type MethodName ReflectionService "listImplementations" = "ListImplementations"
  type MethodInput ReflectionService "listImplementations" = ListImplementationsRequest
  type MethodOutput ReflectionService "listImplementations" = ListImplementationsResponse
  type MethodStreamingType ReflectionService "listImplementations" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \/cosmos/base/reflection/v1beta1/reflection.proto\DC2\RScosmos.base.reflection.v1beta1\SUB\FSgoogle/api/annotations.proto\"\SUB\n\
    \\CANListAllInterfacesRequest\"D\n\
    \\EMListAllInterfacesResponse\DC2'\n\
    \\SIinterface_names\CAN\SOH \ETX(\tR\SOinterfaceNames\"C\n\
    \\SUBListImplementationsRequest\DC2%\n\
    \\SOinterface_name\CAN\SOH \SOH(\tR\rinterfaceName\"_\n\
    \\ESCListImplementationsResponse\DC2@\n\
    \\FSimplementation_message_names\CAN\SOH \ETX(\tR\SUBimplementationMessageNames2\184\ETX\n\
    \\DC1ReflectionService\DC2\188\SOH\n\
    \\DC1ListAllInterfaces\DC28.cosmos.base.reflection.v1beta1.ListAllInterfacesRequest\SUB9.cosmos.base.reflection.v1beta1.ListAllInterfacesResponse\"2\130\211\228\147\STX,\DC2*/cosmos/base/reflection/v1beta1/interfaces\DC2\227\SOH\n\
    \\DC3ListImplementations\DC2:.cosmos.base.reflection.v1beta1.ListImplementationsRequest\SUB;.cosmos.base.reflection.v1beta1.ListImplementationsResponse\"S\130\211\228\147\STXM\DC2K/cosmos/base/reflection/v1beta1/interfaces/{interface_name}/implementationsB5Z3github.com/cosmos/cosmos-sdk/client/grpc/reflectionJ\229\t\n\
    \\ACK\DC2\EOT\NUL\NUL+\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL'\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL&\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NULJ\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ENQ\NULJ\n\
    \K\n\
    \\STX\ACK\NUL\DC2\EOT\b\NUL\NAK\SOH\SUB? ReflectionService defines a service for interface reflection.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\b\b\EM\n\
    \a\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\v\STX\r\ETX\SUBS ListAllInterfaces lists all the interfaces registered in the interface\n\
    \ registry.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\v\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\v\CAN0\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\v;T\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\f\EOTP\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\f\EOTP\n\
    \b\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\DC1\STX\DC4\ETX\SUBT ListImplementations list all the concrete types that implement a given\n\
    \ interface.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DC1\ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DC1\SUB4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DC1?Z\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\EOT\DC2\EOT\DC3F\n\
    \\DC2\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\EOT\DC2\EOT\DC3F\n\
    \W\n\
    \\STX\EOT\NUL\DC2\ETX\CAN\NUL#\SUBL ListAllInterfacesRequest is the request type of the ListAllInterfaces RPC.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b \n\
    \Z\n\
    \\STX\EOT\SOH\DC2\EOT\ESC\NUL\RS\SOH\SUBN ListAllInterfacesResponse is the response type of the ListAllInterfaces RPC.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\ESC\b!\n\
    \L\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\GS\STX&\SUB? interface_names is an array of all the registered interfaces.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\GS\DC2!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\GS$%\n\
    \]\n\
    \\STX\EOT\STX\DC2\EOT\"\NUL%\SOH\SUBQ ListImplementationsRequest is the request type of the ListImplementations\n\
    \ RPC.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\"\b\"\n\
    \U\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX$\STX\FS\SUBH interface_name defines the interface to query the implementations for.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX$\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX$\SUB\ESC\n\
    \_\n\
    \\STX\EOT\ETX\DC2\EOT)\NUL+\SOH\SUBS ListImplementationsResponse is the response type of the ListImplementations\n\
    \ RPC.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX)\b#\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX*\STX3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX*\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX*\DC2.\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX*12b\ACKproto3"