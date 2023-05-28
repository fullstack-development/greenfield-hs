{- This file was auto-generated from cosmos/reflection/v1/reflection.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Reflection.V1.Reflection (
        ReflectionService(..), FileDescriptorsRequest(),
        FileDescriptorsResponse()
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
import qualified Proto.Cosmos.Query.V1.Query
import qualified Proto.Google.Protobuf.Descriptor
{- | Fields :
      -}
data FileDescriptorsRequest
  = FileDescriptorsRequest'_constructor {_FileDescriptorsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FileDescriptorsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message FileDescriptorsRequest where
  messageName _
    = Data.Text.pack "cosmos.reflection.v1.FileDescriptorsRequest"
  packedMessageDescriptor _
    = "\n\
      \\SYNFileDescriptorsRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FileDescriptorsRequest'_unknownFields
        (\ x__ y__ -> x__ {_FileDescriptorsRequest'_unknownFields = y__})
  defMessage
    = FileDescriptorsRequest'_constructor
        {_FileDescriptorsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FileDescriptorsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser FileDescriptorsRequest
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
          (do loop Data.ProtoLens.defMessage) "FileDescriptorsRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData FileDescriptorsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FileDescriptorsRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Reflection.V1.Reflection_Fields.files' @:: Lens' FileDescriptorsResponse [Proto.Google.Protobuf.Descriptor.FileDescriptorProto]@
         * 'Proto.Cosmos.Reflection.V1.Reflection_Fields.vec'files' @:: Lens' FileDescriptorsResponse (Data.Vector.Vector Proto.Google.Protobuf.Descriptor.FileDescriptorProto)@ -}
data FileDescriptorsResponse
  = FileDescriptorsResponse'_constructor {_FileDescriptorsResponse'files :: !(Data.Vector.Vector Proto.Google.Protobuf.Descriptor.FileDescriptorProto),
                                          _FileDescriptorsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FileDescriptorsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FileDescriptorsResponse "files" [Proto.Google.Protobuf.Descriptor.FileDescriptorProto] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorsResponse'files
           (\ x__ y__ -> x__ {_FileDescriptorsResponse'files = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FileDescriptorsResponse "vec'files" (Data.Vector.Vector Proto.Google.Protobuf.Descriptor.FileDescriptorProto) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileDescriptorsResponse'files
           (\ x__ y__ -> x__ {_FileDescriptorsResponse'files = y__}))
        Prelude.id
instance Data.ProtoLens.Message FileDescriptorsResponse where
  messageName _
    = Data.Text.pack "cosmos.reflection.v1.FileDescriptorsResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBFileDescriptorsResponse\DC2:\n\
      \\ENQfiles\CAN\SOH \ETX(\v2$.google.protobuf.FileDescriptorProtoR\ENQfiles"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        files__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "files"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Descriptor.FileDescriptorProto)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"files")) ::
              Data.ProtoLens.FieldDescriptor FileDescriptorsResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, files__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FileDescriptorsResponse'_unknownFields
        (\ x__ y__ -> x__ {_FileDescriptorsResponse'_unknownFields = y__})
  defMessage
    = FileDescriptorsResponse'_constructor
        {_FileDescriptorsResponse'files = Data.Vector.Generic.empty,
         _FileDescriptorsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FileDescriptorsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Descriptor.FileDescriptorProto
             -> Data.ProtoLens.Encoding.Bytes.Parser FileDescriptorsResponse
        loop x mutable'files
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'files <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'files)
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
                              (Data.ProtoLens.Field.field @"vec'files") frozen'files x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "files"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'files y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'files
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'files <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'files)
          "FileDescriptorsResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'files") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FileDescriptorsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FileDescriptorsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_FileDescriptorsResponse'files x__) ())
data ReflectionService = ReflectionService {}
instance Data.ProtoLens.Service.Types.Service ReflectionService where
  type ServiceName ReflectionService = "ReflectionService"
  type ServicePackage ReflectionService = "cosmos.reflection.v1"
  type ServiceMethods ReflectionService = '["fileDescriptors"]
  packedServiceDescriptor _
    = "\n\
      \\DC1ReflectionService\DC2u\n\
      \\SIFileDescriptors\DC2,.cosmos.reflection.v1.FileDescriptorsRequest\SUB-.cosmos.reflection.v1.FileDescriptorsResponse\"\ENQ\136\231\176*\NUL"
instance Data.ProtoLens.Service.Types.HasMethodImpl ReflectionService "fileDescriptors" where
  type MethodName ReflectionService "fileDescriptors" = "FileDescriptors"
  type MethodInput ReflectionService "fileDescriptors" = FileDescriptorsRequest
  type MethodOutput ReflectionService "fileDescriptors" = FileDescriptorsResponse
  type MethodStreamingType ReflectionService "fileDescriptors" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \%cosmos/reflection/v1/reflection.proto\DC2\DC4cosmos.reflection.v1\SUB google/protobuf/descriptor.proto\SUB\ESCcosmos/query/v1/query.proto\"\CAN\n\
    \\SYNFileDescriptorsRequest\"U\n\
    \\ETBFileDescriptorsResponse\DC2:\n\
    \\ENQfiles\CAN\SOH \ETX(\v2$.google.protobuf.FileDescriptorProtoR\ENQfiles2\138\SOH\n\
    \\DC1ReflectionService\DC2u\n\
    \\SIFileDescriptors\DC2,.cosmos.reflection.v1.FileDescriptorsRequest\SUB-.cosmos.reflection.v1.FileDescriptorsResponse\"\ENQ\136\231\176*\NULJ\179\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL\SUB\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL%\n\
    \f\n\
    \\STX\ACK\NUL\DC2\EOT\t\NUL\DC1\SOH\SUBZ Package cosmos.reflection.v1 provides support for inspecting protobuf\n\
    \ file descriptors.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\t\b\EM\n\
    \\133\SOH\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\f\STX\DLE\ETX\SUBw FileDescriptors queries all the file descriptors in the app in order\n\
    \ to enable easier generation of dynamic clients.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\f\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\f\SYN,\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\f7N\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\SI\EOT7\n\
    \\168\SOH\n\
    \\t\ACK\NUL\STX\NUL\EOT\241\140\166\ENQ\DC2\ETX\SI\EOT7\SUB\149\SOH NOTE: file descriptors SHOULD NOT be part of consensus because they\n\
    \ include changes to doc commands and module_query_safe should be kept as false.\n\
    \\n\
    \N\n\
    \\STX\EOT\NUL\DC2\ETX\DC4\NUL!\SUBC FileDescriptorsRequest is the Query/FileDescriptors request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\RS\n\
    \Q\n\
    \\STX\EOT\SOH\DC2\EOT\ETB\NUL\SUB\SOH\SUBE FileDescriptorsResponse is the Query/FileDescriptors response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\ETB\b\US\n\
    \-\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\EM\STX9\SUB  files is the file descriptors.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\EM\v.\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\EM/4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\EM78b\ACKproto3"