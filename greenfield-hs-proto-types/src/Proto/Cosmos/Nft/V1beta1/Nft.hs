{- This file was auto-generated from cosmos/nft/v1beta1/nft.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Nft.V1beta1.Nft (
        Class(), NFT()
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
import qualified Proto.Google.Protobuf.Any
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Nft_Fields.id' @:: Lens' Class Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Nft_Fields.name' @:: Lens' Class Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Nft_Fields.symbol' @:: Lens' Class Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Nft_Fields.description' @:: Lens' Class Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Nft_Fields.uri' @:: Lens' Class Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Nft_Fields.uriHash' @:: Lens' Class Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Nft_Fields.data'' @:: Lens' Class Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Nft.V1beta1.Nft_Fields.maybe'data'' @:: Lens' Class (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data Class
  = Class'_constructor {_Class'id :: !Data.Text.Text,
                        _Class'name :: !Data.Text.Text,
                        _Class'symbol :: !Data.Text.Text,
                        _Class'description :: !Data.Text.Text,
                        _Class'uri :: !Data.Text.Text,
                        _Class'uriHash :: !Data.Text.Text,
                        _Class'data' :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                        _Class'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Class where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Class "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Class'id (\ x__ y__ -> x__ {_Class'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Class "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Class'name (\ x__ y__ -> x__ {_Class'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Class "symbol" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Class'symbol (\ x__ y__ -> x__ {_Class'symbol = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Class "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Class'description (\ x__ y__ -> x__ {_Class'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Class "uri" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Class'uri (\ x__ y__ -> x__ {_Class'uri = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Class "uriHash" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Class'uriHash (\ x__ y__ -> x__ {_Class'uriHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Class "data'" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Class'data' (\ x__ y__ -> x__ {_Class'data' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Class "maybe'data'" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Class'data' (\ x__ y__ -> x__ {_Class'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Message Class where
  messageName _ = Data.Text.pack "cosmos.nft.v1beta1.Class"
  packedMessageDescriptor _
    = "\n\
      \\ENQClass\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\tR\STXid\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2\SYN\n\
      \\ACKsymbol\CAN\ETX \SOH(\tR\ACKsymbol\DC2 \n\
      \\vdescription\CAN\EOT \SOH(\tR\vdescription\DC2\DLE\n\
      \\ETXuri\CAN\ENQ \SOH(\tR\ETXuri\DC2\EM\n\
      \\buri_hash\CAN\ACK \SOH(\tR\auriHash\DC2(\n\
      \\EOTdata\CAN\a \SOH(\v2\DC4.google.protobuf.AnyR\EOTdata"
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
              Data.ProtoLens.FieldDescriptor Class
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor Class
        symbol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "symbol"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"symbol")) ::
              Data.ProtoLens.FieldDescriptor Class
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor Class
        uri__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uri"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"uri")) ::
              Data.ProtoLens.FieldDescriptor Class
        uriHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uri_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"uriHash")) ::
              Data.ProtoLens.FieldDescriptor Class
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'data'")) ::
              Data.ProtoLens.FieldDescriptor Class
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor),
           (Data.ProtoLens.Tag 3, symbol__field_descriptor),
           (Data.ProtoLens.Tag 4, description__field_descriptor),
           (Data.ProtoLens.Tag 5, uri__field_descriptor),
           (Data.ProtoLens.Tag 6, uriHash__field_descriptor),
           (Data.ProtoLens.Tag 7, data'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Class'_unknownFields
        (\ x__ y__ -> x__ {_Class'_unknownFields = y__})
  defMessage
    = Class'_constructor
        {_Class'id = Data.ProtoLens.fieldDefault,
         _Class'name = Data.ProtoLens.fieldDefault,
         _Class'symbol = Data.ProtoLens.fieldDefault,
         _Class'description = Data.ProtoLens.fieldDefault,
         _Class'uri = Data.ProtoLens.fieldDefault,
         _Class'uriHash = Data.ProtoLens.fieldDefault,
         _Class'data' = Prelude.Nothing, _Class'_unknownFields = []}
  parseMessage
    = let
        loop :: Class -> Data.ProtoLens.Encoding.Bytes.Parser Class
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
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
                                       "symbol"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"symbol") y x)
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "uri"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"uri") y x)
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
                                       "uri_hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"uriHash") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Class"
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"symbol") _x
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
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
                         (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"uri") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"uriHash") _x
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
                               (case
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'data'") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
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
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData Class where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Class'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Class'id x__)
                (Control.DeepSeq.deepseq
                   (_Class'name x__)
                   (Control.DeepSeq.deepseq
                      (_Class'symbol x__)
                      (Control.DeepSeq.deepseq
                         (_Class'description x__)
                         (Control.DeepSeq.deepseq
                            (_Class'uri x__)
                            (Control.DeepSeq.deepseq
                               (_Class'uriHash x__)
                               (Control.DeepSeq.deepseq (_Class'data' x__) ())))))))
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Nft_Fields.classId' @:: Lens' NFT Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Nft_Fields.id' @:: Lens' NFT Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Nft_Fields.uri' @:: Lens' NFT Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Nft_Fields.uriHash' @:: Lens' NFT Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Nft_Fields.data'' @:: Lens' NFT Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Nft.V1beta1.Nft_Fields.maybe'data'' @:: Lens' NFT (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data NFT
  = NFT'_constructor {_NFT'classId :: !Data.Text.Text,
                      _NFT'id :: !Data.Text.Text,
                      _NFT'uri :: !Data.Text.Text,
                      _NFT'uriHash :: !Data.Text.Text,
                      _NFT'data' :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                      _NFT'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NFT where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NFT "classId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NFT'classId (\ x__ y__ -> x__ {_NFT'classId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NFT "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NFT'id (\ x__ y__ -> x__ {_NFT'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NFT "uri" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NFT'uri (\ x__ y__ -> x__ {_NFT'uri = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NFT "uriHash" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NFT'uriHash (\ x__ y__ -> x__ {_NFT'uriHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NFT "data'" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NFT'data' (\ x__ y__ -> x__ {_NFT'data' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField NFT "maybe'data'" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NFT'data' (\ x__ y__ -> x__ {_NFT'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Message NFT where
  messageName _ = Data.Text.pack "cosmos.nft.v1beta1.NFT"
  packedMessageDescriptor _
    = "\n\
      \\ETXNFT\DC2\EM\n\
      \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\tR\STXid\DC2\DLE\n\
      \\ETXuri\CAN\ETX \SOH(\tR\ETXuri\DC2\EM\n\
      \\buri_hash\CAN\EOT \SOH(\tR\auriHash\DC2(\n\
      \\EOTdata\CAN\n\
      \ \SOH(\v2\DC4.google.protobuf.AnyR\EOTdata"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        classId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "class_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"classId")) ::
              Data.ProtoLens.FieldDescriptor NFT
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor NFT
        uri__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uri"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"uri")) ::
              Data.ProtoLens.FieldDescriptor NFT
        uriHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uri_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"uriHash")) ::
              Data.ProtoLens.FieldDescriptor NFT
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'data'")) ::
              Data.ProtoLens.FieldDescriptor NFT
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, classId__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, uri__field_descriptor),
           (Data.ProtoLens.Tag 4, uriHash__field_descriptor),
           (Data.ProtoLens.Tag 10, data'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NFT'_unknownFields (\ x__ y__ -> x__ {_NFT'_unknownFields = y__})
  defMessage
    = NFT'_constructor
        {_NFT'classId = Data.ProtoLens.fieldDefault,
         _NFT'id = Data.ProtoLens.fieldDefault,
         _NFT'uri = Data.ProtoLens.fieldDefault,
         _NFT'uriHash = Data.ProtoLens.fieldDefault,
         _NFT'data' = Prelude.Nothing, _NFT'_unknownFields = []}
  parseMessage
    = let
        loop :: NFT -> Data.ProtoLens.Encoding.Bytes.Parser NFT
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
                                       "class_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"classId") y x)
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
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
                                       "uri"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"uri") y x)
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
                                       "uri_hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"uriHash") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NFT"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"classId") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
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
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"uri") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"uriHash") _x
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
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'data'") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData NFT where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NFT'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NFT'classId x__)
                (Control.DeepSeq.deepseq
                   (_NFT'id x__)
                   (Control.DeepSeq.deepseq
                      (_NFT'uri x__)
                      (Control.DeepSeq.deepseq
                         (_NFT'uriHash x__)
                         (Control.DeepSeq.deepseq (_NFT'data' x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\FScosmos/nft/v1beta1/nft.proto\DC2\DC2cosmos.nft.v1beta1\SUB\EMgoogle/protobuf/any.proto\"\188\SOH\n\
    \\ENQClass\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\tR\STXid\DC2\DC2\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2\SYN\n\
    \\ACKsymbol\CAN\ETX \SOH(\tR\ACKsymbol\DC2 \n\
    \\vdescription\CAN\EOT \SOH(\tR\vdescription\DC2\DLE\n\
    \\ETXuri\CAN\ENQ \SOH(\tR\ETXuri\DC2\EM\n\
    \\buri_hash\CAN\ACK \SOH(\tR\auriHash\DC2(\n\
    \\EOTdata\CAN\a \SOH(\v2\DC4.google.protobuf.AnyR\EOTdata\"\135\SOH\n\
    \\ETXNFT\DC2\EM\n\
    \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\tR\STXid\DC2\DLE\n\
    \\ETXuri\CAN\ETX \SOH(\tR\ETXuri\DC2\EM\n\
    \\buri_hash\CAN\EOT \SOH(\tR\auriHash\DC2(\n\
    \\EOTdata\CAN\n\
    \ \SOH(\v2\DC4.google.protobuf.AnyR\EOTdataB\DC4Z\DC2cosmossdk.io/x/nftJ\129\r\n\
    \\ACK\DC2\EOT\NUL\NUL/\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ENQ\NUL)\n\
    \6\n\
    \\STX\EOT\NUL\DC2\EOT\b\NUL\GS\SOH\SUB* Class defines the class of the nft type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\b\b\r\n\
    \t\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\n\
    \\STX\DLE\SUBg id defines the unique identifier of the NFT classification, similar to the contract address of ERC721\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\n\
    \\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\n\
    \\t\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\n\
    \\SO\SI\n\
    \W\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\r\STX\DC2\SUBJ name defines the human-readable name of the NFT classification. Optional\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\r\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\r\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\r\DLE\DC1\n\
    \M\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DLE\STX\DC4\SUB@ symbol is an abbreviated name for nft classification. Optional\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\DLE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DLE\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DLE\DC2\DC3\n\
    \Q\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DC3\STX\EM\SUBD description is a brief description of nft classification. Optional\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\DC3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DC3\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DC3\ETB\CAN\n\
    \~\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\SYN\STX\DC1\SUBq uri for the class metadata stored off chain. It can define schema for Class and NFT `Data` attributes. Optional\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\SYN\t\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\SYN\SI\DLE\n\
    \J\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\EM\STX\SYN\SUB= uri_hash is a hash of the document pointed by uri. Optional\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\EM\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\EM\DC4\NAK\n\
    \K\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\FS\STX\US\SUB> data is the app specific metadata of the NFT class. Optional\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX\FS\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\FS\SYN\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\FS\GS\RS\n\
    \\"\n\
    \\STX\EOT\SOH\DC2\EOT \NUL/\SOH\SUB\SYN NFT defines the NFT.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX \b\v\n\
    \Z\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\"\STX\SYN\SUBM class_id associated with the NFT, similar to the contract address of ERC721\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\"\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\"\DC4\NAK\n\
    \3\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX%\STX\DLE\SUB& id is a unique identifier of the NFT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX%\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX%\t\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX%\SO\SI\n\
    \8\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX(\STX\DC1\SUB+ uri for the NFT metadata stored off chain\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX(\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX(\t\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX(\SI\DLE\n\
    \@\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX+\STX\SYN\SUB3 uri_hash is a hash of the document pointed by uri\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX+\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX+\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX+\DC4\NAK\n\
    \@\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX.\STX \SUB3 data is an app specific data of the NFT. Optional\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETX.\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX.\SYN\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX.\GS\USb\ACKproto3"