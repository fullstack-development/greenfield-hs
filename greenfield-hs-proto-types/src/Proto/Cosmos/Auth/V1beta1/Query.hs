{- This file was auto-generated from cosmos/auth/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Auth.V1beta1.Query (
        Query(..), AddressBytesToStringRequest(),
        AddressBytesToStringResponse(), AddressStringToBytesRequest(),
        AddressStringToBytesResponse(), Bech32PrefixRequest(),
        Bech32PrefixResponse(), QueryAccountAddressByIDRequest(),
        QueryAccountAddressByIDResponse(), QueryAccountInfoRequest(),
        QueryAccountInfoResponse(), QueryAccountRequest(),
        QueryAccountResponse(), QueryAccountsRequest(),
        QueryAccountsResponse(), QueryModuleAccountByNameRequest(),
        QueryModuleAccountByNameResponse(), QueryModuleAccountsRequest(),
        QueryModuleAccountsResponse(), QueryParamsRequest(),
        QueryParamsResponse()
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
import qualified Proto.Cosmos.Auth.V1beta1.Auth
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.Cosmos.Query.V1.Query
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
import qualified Proto.Google.Protobuf.Any
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.addressBytes' @:: Lens' AddressBytesToStringRequest Data.ByteString.ByteString@ -}
data AddressBytesToStringRequest
  = AddressBytesToStringRequest'_constructor {_AddressBytesToStringRequest'addressBytes :: !Data.ByteString.ByteString,
                                              _AddressBytesToStringRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AddressBytesToStringRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AddressBytesToStringRequest "addressBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressBytesToStringRequest'addressBytes
           (\ x__ y__
              -> x__ {_AddressBytesToStringRequest'addressBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message AddressBytesToStringRequest where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.AddressBytesToStringRequest"
  packedMessageDescriptor _
    = "\n\
      \\ESCAddressBytesToStringRequest\DC2#\n\
      \\raddress_bytes\CAN\SOH \SOH(\fR\faddressBytes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        addressBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"addressBytes")) ::
              Data.ProtoLens.FieldDescriptor AddressBytesToStringRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, addressBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AddressBytesToStringRequest'_unknownFields
        (\ x__ y__
           -> x__ {_AddressBytesToStringRequest'_unknownFields = y__})
  defMessage
    = AddressBytesToStringRequest'_constructor
        {_AddressBytesToStringRequest'addressBytes = Data.ProtoLens.fieldDefault,
         _AddressBytesToStringRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AddressBytesToStringRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser AddressBytesToStringRequest
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "address_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"addressBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AddressBytesToStringRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"addressBytes") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AddressBytesToStringRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AddressBytesToStringRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AddressBytesToStringRequest'addressBytes x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.addressString' @:: Lens' AddressBytesToStringResponse Data.Text.Text@ -}
data AddressBytesToStringResponse
  = AddressBytesToStringResponse'_constructor {_AddressBytesToStringResponse'addressString :: !Data.Text.Text,
                                               _AddressBytesToStringResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AddressBytesToStringResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AddressBytesToStringResponse "addressString" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressBytesToStringResponse'addressString
           (\ x__ y__
              -> x__ {_AddressBytesToStringResponse'addressString = y__}))
        Prelude.id
instance Data.ProtoLens.Message AddressBytesToStringResponse where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.AddressBytesToStringResponse"
  packedMessageDescriptor _
    = "\n\
      \\FSAddressBytesToStringResponse\DC2%\n\
      \\SOaddress_string\CAN\SOH \SOH(\tR\raddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        addressString__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address_string"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"addressString")) ::
              Data.ProtoLens.FieldDescriptor AddressBytesToStringResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, addressString__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AddressBytesToStringResponse'_unknownFields
        (\ x__ y__
           -> x__ {_AddressBytesToStringResponse'_unknownFields = y__})
  defMessage
    = AddressBytesToStringResponse'_constructor
        {_AddressBytesToStringResponse'addressString = Data.ProtoLens.fieldDefault,
         _AddressBytesToStringResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AddressBytesToStringResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser AddressBytesToStringResponse
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
                                       "address_string"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"addressString") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AddressBytesToStringResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"addressString") _x
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
instance Control.DeepSeq.NFData AddressBytesToStringResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AddressBytesToStringResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AddressBytesToStringResponse'addressString x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.addressString' @:: Lens' AddressStringToBytesRequest Data.Text.Text@ -}
data AddressStringToBytesRequest
  = AddressStringToBytesRequest'_constructor {_AddressStringToBytesRequest'addressString :: !Data.Text.Text,
                                              _AddressStringToBytesRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AddressStringToBytesRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AddressStringToBytesRequest "addressString" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressStringToBytesRequest'addressString
           (\ x__ y__
              -> x__ {_AddressStringToBytesRequest'addressString = y__}))
        Prelude.id
instance Data.ProtoLens.Message AddressStringToBytesRequest where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.AddressStringToBytesRequest"
  packedMessageDescriptor _
    = "\n\
      \\ESCAddressStringToBytesRequest\DC2%\n\
      \\SOaddress_string\CAN\SOH \SOH(\tR\raddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        addressString__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address_string"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"addressString")) ::
              Data.ProtoLens.FieldDescriptor AddressStringToBytesRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, addressString__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AddressStringToBytesRequest'_unknownFields
        (\ x__ y__
           -> x__ {_AddressStringToBytesRequest'_unknownFields = y__})
  defMessage
    = AddressStringToBytesRequest'_constructor
        {_AddressStringToBytesRequest'addressString = Data.ProtoLens.fieldDefault,
         _AddressStringToBytesRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AddressStringToBytesRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser AddressStringToBytesRequest
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
                                       "address_string"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"addressString") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AddressStringToBytesRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"addressString") _x
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
instance Control.DeepSeq.NFData AddressStringToBytesRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AddressStringToBytesRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AddressStringToBytesRequest'addressString x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.addressBytes' @:: Lens' AddressStringToBytesResponse Data.ByteString.ByteString@ -}
data AddressStringToBytesResponse
  = AddressStringToBytesResponse'_constructor {_AddressStringToBytesResponse'addressBytes :: !Data.ByteString.ByteString,
                                               _AddressStringToBytesResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AddressStringToBytesResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AddressStringToBytesResponse "addressBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AddressStringToBytesResponse'addressBytes
           (\ x__ y__
              -> x__ {_AddressStringToBytesResponse'addressBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message AddressStringToBytesResponse where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.AddressStringToBytesResponse"
  packedMessageDescriptor _
    = "\n\
      \\FSAddressStringToBytesResponse\DC2#\n\
      \\raddress_bytes\CAN\SOH \SOH(\fR\faddressBytes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        addressBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"addressBytes")) ::
              Data.ProtoLens.FieldDescriptor AddressStringToBytesResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, addressBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AddressStringToBytesResponse'_unknownFields
        (\ x__ y__
           -> x__ {_AddressStringToBytesResponse'_unknownFields = y__})
  defMessage
    = AddressStringToBytesResponse'_constructor
        {_AddressStringToBytesResponse'addressBytes = Data.ProtoLens.fieldDefault,
         _AddressStringToBytesResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AddressStringToBytesResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser AddressStringToBytesResponse
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "address_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"addressBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AddressStringToBytesResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"addressBytes") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AddressStringToBytesResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AddressStringToBytesResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AddressStringToBytesResponse'addressBytes x__) ())
{- | Fields :
      -}
data Bech32PrefixRequest
  = Bech32PrefixRequest'_constructor {_Bech32PrefixRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Bech32PrefixRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message Bech32PrefixRequest where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.Bech32PrefixRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC3Bech32PrefixRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Bech32PrefixRequest'_unknownFields
        (\ x__ y__ -> x__ {_Bech32PrefixRequest'_unknownFields = y__})
  defMessage
    = Bech32PrefixRequest'_constructor
        {_Bech32PrefixRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Bech32PrefixRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser Bech32PrefixRequest
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
          (do loop Data.ProtoLens.defMessage) "Bech32PrefixRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData Bech32PrefixRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Bech32PrefixRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.bech32Prefix' @:: Lens' Bech32PrefixResponse Data.Text.Text@ -}
data Bech32PrefixResponse
  = Bech32PrefixResponse'_constructor {_Bech32PrefixResponse'bech32Prefix :: !Data.Text.Text,
                                       _Bech32PrefixResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Bech32PrefixResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Bech32PrefixResponse "bech32Prefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bech32PrefixResponse'bech32Prefix
           (\ x__ y__ -> x__ {_Bech32PrefixResponse'bech32Prefix = y__}))
        Prelude.id
instance Data.ProtoLens.Message Bech32PrefixResponse where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.Bech32PrefixResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4Bech32PrefixResponse\DC2#\n\
      \\rbech32_prefix\CAN\SOH \SOH(\tR\fbech32Prefix"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bech32Prefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bech32_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bech32Prefix")) ::
              Data.ProtoLens.FieldDescriptor Bech32PrefixResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bech32Prefix__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Bech32PrefixResponse'_unknownFields
        (\ x__ y__ -> x__ {_Bech32PrefixResponse'_unknownFields = y__})
  defMessage
    = Bech32PrefixResponse'_constructor
        {_Bech32PrefixResponse'bech32Prefix = Data.ProtoLens.fieldDefault,
         _Bech32PrefixResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Bech32PrefixResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser Bech32PrefixResponse
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
                                       "bech32_prefix"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bech32Prefix") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Bech32PrefixResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"bech32Prefix") _x
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
instance Control.DeepSeq.NFData Bech32PrefixResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Bech32PrefixResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Bech32PrefixResponse'bech32Prefix x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.id' @:: Lens' QueryAccountAddressByIDRequest Data.Int.Int64@
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.accountId' @:: Lens' QueryAccountAddressByIDRequest Data.Word.Word64@ -}
data QueryAccountAddressByIDRequest
  = QueryAccountAddressByIDRequest'_constructor {_QueryAccountAddressByIDRequest'id :: !Data.Int.Int64,
                                                 _QueryAccountAddressByIDRequest'accountId :: !Data.Word.Word64,
                                                 _QueryAccountAddressByIDRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAccountAddressByIDRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAccountAddressByIDRequest "id" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountAddressByIDRequest'id
           (\ x__ y__ -> x__ {_QueryAccountAddressByIDRequest'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryAccountAddressByIDRequest "accountId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountAddressByIDRequest'accountId
           (\ x__ y__
              -> x__ {_QueryAccountAddressByIDRequest'accountId = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAccountAddressByIDRequest where
  messageName _
    = Data.Text.pack
        "cosmos.auth.v1beta1.QueryAccountAddressByIDRequest"
  packedMessageDescriptor _
    = "\n\
      \\RSQueryAccountAddressByIDRequest\DC2\DC2\n\
      \\STXid\CAN\SOH \SOH(\ETXR\STXidB\STX\CAN\SOH\DC2\GS\n\
      \\n\
      \account_id\CAN\STX \SOH(\EOTR\taccountId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor QueryAccountAddressByIDRequest
        accountId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "account_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"accountId")) ::
              Data.ProtoLens.FieldDescriptor QueryAccountAddressByIDRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, accountId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAccountAddressByIDRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryAccountAddressByIDRequest'_unknownFields = y__})
  defMessage
    = QueryAccountAddressByIDRequest'_constructor
        {_QueryAccountAddressByIDRequest'id = Data.ProtoLens.fieldDefault,
         _QueryAccountAddressByIDRequest'accountId = Data.ProtoLens.fieldDefault,
         _QueryAccountAddressByIDRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAccountAddressByIDRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAccountAddressByIDRequest
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
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "account_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"accountId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryAccountAddressByIDRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"accountId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData QueryAccountAddressByIDRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAccountAddressByIDRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAccountAddressByIDRequest'id x__)
                (Control.DeepSeq.deepseq
                   (_QueryAccountAddressByIDRequest'accountId x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.accountAddress' @:: Lens' QueryAccountAddressByIDResponse Data.Text.Text@ -}
data QueryAccountAddressByIDResponse
  = QueryAccountAddressByIDResponse'_constructor {_QueryAccountAddressByIDResponse'accountAddress :: !Data.Text.Text,
                                                  _QueryAccountAddressByIDResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAccountAddressByIDResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAccountAddressByIDResponse "accountAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountAddressByIDResponse'accountAddress
           (\ x__ y__
              -> x__ {_QueryAccountAddressByIDResponse'accountAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAccountAddressByIDResponse where
  messageName _
    = Data.Text.pack
        "cosmos.auth.v1beta1.QueryAccountAddressByIDResponse"
  packedMessageDescriptor _
    = "\n\
      \\USQueryAccountAddressByIDResponse\DC2A\n\
      \\SIaccount_address\CAN\SOH \SOH(\tR\SOaccountAddressB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        accountAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "account_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"accountAddress")) ::
              Data.ProtoLens.FieldDescriptor QueryAccountAddressByIDResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, accountAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAccountAddressByIDResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryAccountAddressByIDResponse'_unknownFields = y__})
  defMessage
    = QueryAccountAddressByIDResponse'_constructor
        {_QueryAccountAddressByIDResponse'accountAddress = Data.ProtoLens.fieldDefault,
         _QueryAccountAddressByIDResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAccountAddressByIDResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAccountAddressByIDResponse
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
                                       "account_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"accountAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryAccountAddressByIDResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"accountAddress") _x
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
instance Control.DeepSeq.NFData QueryAccountAddressByIDResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAccountAddressByIDResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAccountAddressByIDResponse'accountAddress x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.address' @:: Lens' QueryAccountInfoRequest Data.Text.Text@ -}
data QueryAccountInfoRequest
  = QueryAccountInfoRequest'_constructor {_QueryAccountInfoRequest'address :: !Data.Text.Text,
                                          _QueryAccountInfoRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAccountInfoRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAccountInfoRequest "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountInfoRequest'address
           (\ x__ y__ -> x__ {_QueryAccountInfoRequest'address = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAccountInfoRequest where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.QueryAccountInfoRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryAccountInfoRequest\DC22\n\
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
              Data.ProtoLens.FieldDescriptor QueryAccountInfoRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAccountInfoRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryAccountInfoRequest'_unknownFields = y__})
  defMessage
    = QueryAccountInfoRequest'_constructor
        {_QueryAccountInfoRequest'address = Data.ProtoLens.fieldDefault,
         _QueryAccountInfoRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAccountInfoRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAccountInfoRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryAccountInfoRequest"
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
instance Control.DeepSeq.NFData QueryAccountInfoRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAccountInfoRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryAccountInfoRequest'address x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.info' @:: Lens' QueryAccountInfoResponse Proto.Cosmos.Auth.V1beta1.Auth.BaseAccount@
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.maybe'info' @:: Lens' QueryAccountInfoResponse (Prelude.Maybe Proto.Cosmos.Auth.V1beta1.Auth.BaseAccount)@ -}
data QueryAccountInfoResponse
  = QueryAccountInfoResponse'_constructor {_QueryAccountInfoResponse'info :: !(Prelude.Maybe Proto.Cosmos.Auth.V1beta1.Auth.BaseAccount),
                                           _QueryAccountInfoResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAccountInfoResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAccountInfoResponse "info" Proto.Cosmos.Auth.V1beta1.Auth.BaseAccount where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountInfoResponse'info
           (\ x__ y__ -> x__ {_QueryAccountInfoResponse'info = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAccountInfoResponse "maybe'info" (Prelude.Maybe Proto.Cosmos.Auth.V1beta1.Auth.BaseAccount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountInfoResponse'info
           (\ x__ y__ -> x__ {_QueryAccountInfoResponse'info = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAccountInfoResponse where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.QueryAccountInfoResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryAccountInfoResponse\DC24\n\
      \\EOTinfo\CAN\SOH \SOH(\v2 .cosmos.auth.v1beta1.BaseAccountR\EOTinfo"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        info__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Auth.V1beta1.Auth.BaseAccount)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'info")) ::
              Data.ProtoLens.FieldDescriptor QueryAccountInfoResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, info__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAccountInfoResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryAccountInfoResponse'_unknownFields = y__})
  defMessage
    = QueryAccountInfoResponse'_constructor
        {_QueryAccountInfoResponse'info = Prelude.Nothing,
         _QueryAccountInfoResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAccountInfoResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAccountInfoResponse
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
          (do loop Data.ProtoLens.defMessage) "QueryAccountInfoResponse"
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
instance Control.DeepSeq.NFData QueryAccountInfoResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAccountInfoResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryAccountInfoResponse'info x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.address' @:: Lens' QueryAccountRequest Data.Text.Text@ -}
data QueryAccountRequest
  = QueryAccountRequest'_constructor {_QueryAccountRequest'address :: !Data.Text.Text,
                                      _QueryAccountRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAccountRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAccountRequest "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountRequest'address
           (\ x__ y__ -> x__ {_QueryAccountRequest'address = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAccountRequest where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.QueryAccountRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryAccountRequest\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL"
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
              Data.ProtoLens.FieldDescriptor QueryAccountRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAccountRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryAccountRequest'_unknownFields = y__})
  defMessage
    = QueryAccountRequest'_constructor
        {_QueryAccountRequest'address = Data.ProtoLens.fieldDefault,
         _QueryAccountRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAccountRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAccountRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryAccountRequest"
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
instance Control.DeepSeq.NFData QueryAccountRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAccountRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryAccountRequest'address x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.account' @:: Lens' QueryAccountResponse Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.maybe'account' @:: Lens' QueryAccountResponse (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data QueryAccountResponse
  = QueryAccountResponse'_constructor {_QueryAccountResponse'account :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                       _QueryAccountResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAccountResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAccountResponse "account" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountResponse'account
           (\ x__ y__ -> x__ {_QueryAccountResponse'account = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAccountResponse "maybe'account" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountResponse'account
           (\ x__ y__ -> x__ {_QueryAccountResponse'account = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAccountResponse where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.QueryAccountResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4QueryAccountResponse\DC2P\n\
      \\aaccount\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\aaccountB \202\180-\FScosmos.auth.v1beta1.AccountI"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        account__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "account"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'account")) ::
              Data.ProtoLens.FieldDescriptor QueryAccountResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, account__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAccountResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryAccountResponse'_unknownFields = y__})
  defMessage
    = QueryAccountResponse'_constructor
        {_QueryAccountResponse'account = Prelude.Nothing,
         _QueryAccountResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAccountResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAccountResponse
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
                                       "account"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"account") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryAccountResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'account") _x
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
instance Control.DeepSeq.NFData QueryAccountResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAccountResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryAccountResponse'account x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.pagination' @:: Lens' QueryAccountsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryAccountsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryAccountsRequest
  = QueryAccountsRequest'_constructor {_QueryAccountsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                       _QueryAccountsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAccountsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAccountsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountsRequest'pagination
           (\ x__ y__ -> x__ {_QueryAccountsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAccountsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountsRequest'pagination
           (\ x__ y__ -> x__ {_QueryAccountsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAccountsRequest where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.QueryAccountsRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC4QueryAccountsRequest\DC2F\n\
      \\n\
      \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
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
              Data.ProtoLens.FieldDescriptor QueryAccountsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAccountsRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryAccountsRequest'_unknownFields = y__})
  defMessage
    = QueryAccountsRequest'_constructor
        {_QueryAccountsRequest'pagination = Prelude.Nothing,
         _QueryAccountsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAccountsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAccountsRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryAccountsRequest"
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
instance Control.DeepSeq.NFData QueryAccountsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAccountsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryAccountsRequest'pagination x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.accounts' @:: Lens' QueryAccountsResponse [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.vec'accounts' @:: Lens' QueryAccountsResponse (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.pagination' @:: Lens' QueryAccountsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryAccountsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryAccountsResponse
  = QueryAccountsResponse'_constructor {_QueryAccountsResponse'accounts :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                                        _QueryAccountsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                        _QueryAccountsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAccountsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAccountsResponse "accounts" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountsResponse'accounts
           (\ x__ y__ -> x__ {_QueryAccountsResponse'accounts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryAccountsResponse "vec'accounts" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountsResponse'accounts
           (\ x__ y__ -> x__ {_QueryAccountsResponse'accounts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryAccountsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountsResponse'pagination
           (\ x__ y__ -> x__ {_QueryAccountsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAccountsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountsResponse'pagination
           (\ x__ y__ -> x__ {_QueryAccountsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAccountsResponse where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.QueryAccountsResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryAccountsResponse\DC2R\n\
      \\baccounts\CAN\SOH \ETX(\v2\DC4.google.protobuf.AnyR\baccountsB \202\180-\FScosmos.auth.v1beta1.AccountI\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        accounts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "accounts"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"accounts")) ::
              Data.ProtoLens.FieldDescriptor QueryAccountsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryAccountsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, accounts__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAccountsResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryAccountsResponse'_unknownFields = y__})
  defMessage
    = QueryAccountsResponse'_constructor
        {_QueryAccountsResponse'accounts = Data.Vector.Generic.empty,
         _QueryAccountsResponse'pagination = Prelude.Nothing,
         _QueryAccountsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAccountsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryAccountsResponse
        loop x mutable'accounts
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'accounts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'accounts)
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
                              (Data.ProtoLens.Field.field @"vec'accounts") frozen'accounts x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "accounts"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'accounts y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'accounts
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'accounts
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'accounts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'accounts)
          "QueryAccountsResponse"
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
                   (Data.ProtoLens.Field.field @"vec'accounts") _x))
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
instance Control.DeepSeq.NFData QueryAccountsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAccountsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAccountsResponse'accounts x__)
                (Control.DeepSeq.deepseq
                   (_QueryAccountsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.name' @:: Lens' QueryModuleAccountByNameRequest Data.Text.Text@ -}
data QueryModuleAccountByNameRequest
  = QueryModuleAccountByNameRequest'_constructor {_QueryModuleAccountByNameRequest'name :: !Data.Text.Text,
                                                  _QueryModuleAccountByNameRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryModuleAccountByNameRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryModuleAccountByNameRequest "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryModuleAccountByNameRequest'name
           (\ x__ y__ -> x__ {_QueryModuleAccountByNameRequest'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryModuleAccountByNameRequest where
  messageName _
    = Data.Text.pack
        "cosmos.auth.v1beta1.QueryModuleAccountByNameRequest"
  packedMessageDescriptor _
    = "\n\
      \\USQueryModuleAccountByNameRequest\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname"
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
              Data.ProtoLens.FieldDescriptor QueryModuleAccountByNameRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryModuleAccountByNameRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryModuleAccountByNameRequest'_unknownFields = y__})
  defMessage
    = QueryModuleAccountByNameRequest'_constructor
        {_QueryModuleAccountByNameRequest'name = Data.ProtoLens.fieldDefault,
         _QueryModuleAccountByNameRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryModuleAccountByNameRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryModuleAccountByNameRequest
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryModuleAccountByNameRequest"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryModuleAccountByNameRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryModuleAccountByNameRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryModuleAccountByNameRequest'name x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.account' @:: Lens' QueryModuleAccountByNameResponse Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.maybe'account' @:: Lens' QueryModuleAccountByNameResponse (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data QueryModuleAccountByNameResponse
  = QueryModuleAccountByNameResponse'_constructor {_QueryModuleAccountByNameResponse'account :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                   _QueryModuleAccountByNameResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryModuleAccountByNameResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryModuleAccountByNameResponse "account" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryModuleAccountByNameResponse'account
           (\ x__ y__
              -> x__ {_QueryModuleAccountByNameResponse'account = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryModuleAccountByNameResponse "maybe'account" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryModuleAccountByNameResponse'account
           (\ x__ y__
              -> x__ {_QueryModuleAccountByNameResponse'account = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryModuleAccountByNameResponse where
  messageName _
    = Data.Text.pack
        "cosmos.auth.v1beta1.QueryModuleAccountByNameResponse"
  packedMessageDescriptor _
    = "\n\
      \ QueryModuleAccountByNameResponse\DC2V\n\
      \\aaccount\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\aaccountB&\202\180-\"cosmos.auth.v1beta1.ModuleAccountI"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        account__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "account"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'account")) ::
              Data.ProtoLens.FieldDescriptor QueryModuleAccountByNameResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, account__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryModuleAccountByNameResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryModuleAccountByNameResponse'_unknownFields = y__})
  defMessage
    = QueryModuleAccountByNameResponse'_constructor
        {_QueryModuleAccountByNameResponse'account = Prelude.Nothing,
         _QueryModuleAccountByNameResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryModuleAccountByNameResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryModuleAccountByNameResponse
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
                                       "account"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"account") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryModuleAccountByNameResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'account") _x
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
instance Control.DeepSeq.NFData QueryModuleAccountByNameResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryModuleAccountByNameResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryModuleAccountByNameResponse'account x__) ())
{- | Fields :
      -}
data QueryModuleAccountsRequest
  = QueryModuleAccountsRequest'_constructor {_QueryModuleAccountsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryModuleAccountsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QueryModuleAccountsRequest where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.QueryModuleAccountsRequest"
  packedMessageDescriptor _
    = "\n\
      \\SUBQueryModuleAccountsRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryModuleAccountsRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryModuleAccountsRequest'_unknownFields = y__})
  defMessage
    = QueryModuleAccountsRequest'_constructor
        {_QueryModuleAccountsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryModuleAccountsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryModuleAccountsRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryModuleAccountsRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QueryModuleAccountsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryModuleAccountsRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.accounts' @:: Lens' QueryModuleAccountsResponse [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.vec'accounts' @:: Lens' QueryModuleAccountsResponse (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@ -}
data QueryModuleAccountsResponse
  = QueryModuleAccountsResponse'_constructor {_QueryModuleAccountsResponse'accounts :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                                              _QueryModuleAccountsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryModuleAccountsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryModuleAccountsResponse "accounts" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryModuleAccountsResponse'accounts
           (\ x__ y__ -> x__ {_QueryModuleAccountsResponse'accounts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryModuleAccountsResponse "vec'accounts" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryModuleAccountsResponse'accounts
           (\ x__ y__ -> x__ {_QueryModuleAccountsResponse'accounts = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryModuleAccountsResponse where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.QueryModuleAccountsResponse"
  packedMessageDescriptor _
    = "\n\
      \\ESCQueryModuleAccountsResponse\DC2X\n\
      \\baccounts\CAN\SOH \ETX(\v2\DC4.google.protobuf.AnyR\baccountsB&\202\180-\"cosmos.auth.v1beta1.ModuleAccountI"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        accounts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "accounts"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"accounts")) ::
              Data.ProtoLens.FieldDescriptor QueryModuleAccountsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, accounts__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryModuleAccountsResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryModuleAccountsResponse'_unknownFields = y__})
  defMessage
    = QueryModuleAccountsResponse'_constructor
        {_QueryModuleAccountsResponse'accounts = Data.Vector.Generic.empty,
         _QueryModuleAccountsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryModuleAccountsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryModuleAccountsResponse
        loop x mutable'accounts
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'accounts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'accounts)
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
                              (Data.ProtoLens.Field.field @"vec'accounts") frozen'accounts x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "accounts"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'accounts y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'accounts
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'accounts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'accounts)
          "QueryModuleAccountsResponse"
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
                   (Data.ProtoLens.Field.field @"vec'accounts") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryModuleAccountsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryModuleAccountsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryModuleAccountsResponse'accounts x__) ())
{- | Fields :
      -}
data QueryParamsRequest
  = QueryParamsRequest'_constructor {_QueryParamsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QueryParamsRequest where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.QueryParamsRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2QueryParamsRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryParamsRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryParamsRequest'_unknownFields = y__})
  defMessage
    = QueryParamsRequest'_constructor
        {_QueryParamsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryParamsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryParamsRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryParamsRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QueryParamsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryParamsRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.params' @:: Lens' QueryParamsResponse Proto.Cosmos.Auth.V1beta1.Auth.Params@
         * 'Proto.Cosmos.Auth.V1beta1.Query_Fields.maybe'params' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Cosmos.Auth.V1beta1.Auth.Params)@ -}
data QueryParamsResponse
  = QueryParamsResponse'_constructor {_QueryParamsResponse'params :: !(Prelude.Maybe Proto.Cosmos.Auth.V1beta1.Auth.Params),
                                      _QueryParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsResponse "params" Proto.Cosmos.Auth.V1beta1.Auth.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'params" (Prelude.Maybe Proto.Cosmos.Auth.V1beta1.Auth.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsResponse where
  messageName _
    = Data.Text.pack "cosmos.auth.v1beta1.QueryParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryParamsResponse\DC29\n\
      \\ACKparams\CAN\SOH \SOH(\v2\ESC.cosmos.auth.v1beta1.ParamsR\ACKparamsB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Auth.V1beta1.Auth.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor QueryParamsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, params__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryParamsResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryParamsResponse'_unknownFields = y__})
  defMessage
    = QueryParamsResponse'_constructor
        {_QueryParamsResponse'params = Prelude.Nothing,
         _QueryParamsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryParamsResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryParamsResponse
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
                                       "params"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"params") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryParamsResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'params") _x
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
instance Control.DeepSeq.NFData QueryParamsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryParamsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryParamsResponse'params x__) ())
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.auth.v1beta1"
  type ServiceMethods Query = '["account",
                                "accountAddressByID",
                                "accountInfo",
                                "accounts",
                                "addressBytesToString",
                                "addressStringToBytes",
                                "bech32Prefix",
                                "moduleAccountByName",
                                "moduleAccounts",
                                "params"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\141\SOH\n\
      \\bAccounts\DC2).cosmos.auth.v1beta1.QueryAccountsRequest\SUB*.cosmos.auth.v1beta1.QueryAccountsResponse\"*\136\231\176*\SOH\130\211\228\147\STX\US\DC2\GS/cosmos/auth/v1beta1/accounts\DC2\148\SOH\n\
      \\aAccount\DC2(.cosmos.auth.v1beta1.QueryAccountRequest\SUB).cosmos.auth.v1beta1.QueryAccountResponse\"4\136\231\176*\SOH\130\211\228\147\STX)\DC2'/cosmos/auth/v1beta1/accounts/{address}\DC2\181\SOH\n\
      \\DC2AccountAddressByID\DC23.cosmos.auth.v1beta1.QueryAccountAddressByIDRequest\SUB4.cosmos.auth.v1beta1.QueryAccountAddressByIDResponse\"4\136\231\176*\SOH\130\211\228\147\STX)\DC2'/cosmos/auth/v1beta1/address_by_id/{id}\DC2\133\SOH\n\
      \\ACKParams\DC2'.cosmos.auth.v1beta1.QueryParamsRequest\SUB(.cosmos.auth.v1beta1.QueryParamsResponse\"(\136\231\176*\SOH\130\211\228\147\STX\GS\DC2\ESC/cosmos/auth/v1beta1/params\DC2\166\SOH\n\
      \\SOModuleAccounts\DC2/.cosmos.auth.v1beta1.QueryModuleAccountsRequest\SUB0.cosmos.auth.v1beta1.QueryModuleAccountsResponse\"1\136\231\176*\SOH\130\211\228\147\STX&\DC2$/cosmos/auth/v1beta1/module_accounts\DC2\188\SOH\n\
      \\DC3ModuleAccountByName\DC24.cosmos.auth.v1beta1.QueryModuleAccountByNameRequest\SUB5.cosmos.auth.v1beta1.QueryModuleAccountByNameResponse\"8\136\231\176*\SOH\130\211\228\147\STX-\DC2+/cosmos/auth/v1beta1/module_accounts/{name}\DC2\136\SOH\n\
      \\fBech32Prefix\DC2(.cosmos.auth.v1beta1.Bech32PrefixRequest\SUB).cosmos.auth.v1beta1.Bech32PrefixResponse\"#\130\211\228\147\STX\GS\DC2\ESC/cosmos/auth/v1beta1/bech32\DC2\176\SOH\n\
      \\DC4AddressBytesToString\DC20.cosmos.auth.v1beta1.AddressBytesToStringRequest\SUB1.cosmos.auth.v1beta1.AddressBytesToStringResponse\"3\130\211\228\147\STX-\DC2+/cosmos/auth/v1beta1/bech32/{address_bytes}\DC2\177\SOH\n\
      \\DC4AddressStringToBytes\DC20.cosmos.auth.v1beta1.AddressStringToBytesRequest\SUB1.cosmos.auth.v1beta1.AddressStringToBytesResponse\"4\130\211\228\147\STX.\DC2,/cosmos/auth/v1beta1/bech32/{address_string}\DC2\164\SOH\n\
      \\vAccountInfo\DC2,.cosmos.auth.v1beta1.QueryAccountInfoRequest\SUB-.cosmos.auth.v1beta1.QueryAccountInfoResponse\"8\136\231\176*\SOH\130\211\228\147\STX-\DC2+/cosmos/auth/v1beta1/account_info/{address}"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "accounts" where
  type MethodName Query "accounts" = "Accounts"
  type MethodInput Query "accounts" = QueryAccountsRequest
  type MethodOutput Query "accounts" = QueryAccountsResponse
  type MethodStreamingType Query "accounts" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "account" where
  type MethodName Query "account" = "Account"
  type MethodInput Query "account" = QueryAccountRequest
  type MethodOutput Query "account" = QueryAccountResponse
  type MethodStreamingType Query "account" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "accountAddressByID" where
  type MethodName Query "accountAddressByID" = "AccountAddressByID"
  type MethodInput Query "accountAddressByID" = QueryAccountAddressByIDRequest
  type MethodOutput Query "accountAddressByID" = QueryAccountAddressByIDResponse
  type MethodStreamingType Query "accountAddressByID" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "params" where
  type MethodName Query "params" = "Params"
  type MethodInput Query "params" = QueryParamsRequest
  type MethodOutput Query "params" = QueryParamsResponse
  type MethodStreamingType Query "params" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "moduleAccounts" where
  type MethodName Query "moduleAccounts" = "ModuleAccounts"
  type MethodInput Query "moduleAccounts" = QueryModuleAccountsRequest
  type MethodOutput Query "moduleAccounts" = QueryModuleAccountsResponse
  type MethodStreamingType Query "moduleAccounts" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "moduleAccountByName" where
  type MethodName Query "moduleAccountByName" = "ModuleAccountByName"
  type MethodInput Query "moduleAccountByName" = QueryModuleAccountByNameRequest
  type MethodOutput Query "moduleAccountByName" = QueryModuleAccountByNameResponse
  type MethodStreamingType Query "moduleAccountByName" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "bech32Prefix" where
  type MethodName Query "bech32Prefix" = "Bech32Prefix"
  type MethodInput Query "bech32Prefix" = Bech32PrefixRequest
  type MethodOutput Query "bech32Prefix" = Bech32PrefixResponse
  type MethodStreamingType Query "bech32Prefix" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "addressBytesToString" where
  type MethodName Query "addressBytesToString" = "AddressBytesToString"
  type MethodInput Query "addressBytesToString" = AddressBytesToStringRequest
  type MethodOutput Query "addressBytesToString" = AddressBytesToStringResponse
  type MethodStreamingType Query "addressBytesToString" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "addressStringToBytes" where
  type MethodName Query "addressStringToBytes" = "AddressStringToBytes"
  type MethodInput Query "addressStringToBytes" = AddressStringToBytesRequest
  type MethodOutput Query "addressStringToBytes" = AddressStringToBytesResponse
  type MethodStreamingType Query "addressStringToBytes" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "accountInfo" where
  type MethodName Query "accountInfo" = "AccountInfo"
  type MethodInput Query "accountInfo" = QueryAccountInfoRequest
  type MethodOutput Query "accountInfo" = QueryAccountInfoResponse
  type MethodStreamingType Query "accountInfo" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\UScosmos/auth/v1beta1/query.proto\DC2\DC3cosmos.auth.v1beta1\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\DC4gogoproto/gogo.proto\SUB\EMgoogle/protobuf/any.proto\SUB\FSgoogle/api/annotations.proto\SUB\RScosmos/auth/v1beta1/auth.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\ESCcosmos/query/v1/query.proto\"^\n\
    \\DC4QueryAccountsRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\180\SOH\n\
    \\NAKQueryAccountsResponse\DC2R\n\
    \\baccounts\CAN\SOH \ETX(\v2\DC4.google.protobuf.AnyR\baccountsB \202\180-\FScosmos.auth.v1beta1.AccountI\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"S\n\
    \\DC3QueryAccountRequest\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL\"h\n\
    \\DC4QueryAccountResponse\DC2P\n\
    \\aaccount\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\aaccountB \202\180-\FScosmos.auth.v1beta1.AccountI\"\DC4\n\
    \\DC2QueryParamsRequest\"P\n\
    \\DC3QueryParamsResponse\DC29\n\
    \\ACKparams\CAN\SOH \SOH(\v2\ESC.cosmos.auth.v1beta1.ParamsR\ACKparamsB\EOT\200\222\US\NUL\"\FS\n\
    \\SUBQueryModuleAccountsRequest\"w\n\
    \\ESCQueryModuleAccountsResponse\DC2X\n\
    \\baccounts\CAN\SOH \ETX(\v2\DC4.google.protobuf.AnyR\baccountsB&\202\180-\"cosmos.auth.v1beta1.ModuleAccountI\"5\n\
    \\USQueryModuleAccountByNameRequest\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\"z\n\
    \ QueryModuleAccountByNameResponse\DC2V\n\
    \\aaccount\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\aaccountB&\202\180-\"cosmos.auth.v1beta1.ModuleAccountI\"\NAK\n\
    \\DC3Bech32PrefixRequest\";\n\
    \\DC4Bech32PrefixResponse\DC2#\n\
    \\rbech32_prefix\CAN\SOH \SOH(\tR\fbech32Prefix\"B\n\
    \\ESCAddressBytesToStringRequest\DC2#\n\
    \\raddress_bytes\CAN\SOH \SOH(\fR\faddressBytes\"E\n\
    \\FSAddressBytesToStringResponse\DC2%\n\
    \\SOaddress_string\CAN\SOH \SOH(\tR\raddressString\"D\n\
    \\ESCAddressStringToBytesRequest\DC2%\n\
    \\SOaddress_string\CAN\SOH \SOH(\tR\raddressString\"C\n\
    \\FSAddressStringToBytesResponse\DC2#\n\
    \\raddress_bytes\CAN\SOH \SOH(\fR\faddressBytes\"S\n\
    \\RSQueryAccountAddressByIDRequest\DC2\DC2\n\
    \\STXid\CAN\SOH \SOH(\ETXR\STXidB\STX\CAN\SOH\DC2\GS\n\
    \\n\
    \account_id\CAN\STX \SOH(\EOTR\taccountId\"d\n\
    \\USQueryAccountAddressByIDResponse\DC2A\n\
    \\SIaccount_address\CAN\SOH \SOH(\tR\SOaccountAddressB\CAN\210\180-\DC4cosmos.AddressString\"M\n\
    \\ETBQueryAccountInfoRequest\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\"P\n\
    \\CANQueryAccountInfoResponse\DC24\n\
    \\EOTinfo\CAN\SOH \SOH(\v2 .cosmos.auth.v1beta1.BaseAccountR\EOTinfo2\239\f\n\
    \\ENQQuery\DC2\141\SOH\n\
    \\bAccounts\DC2).cosmos.auth.v1beta1.QueryAccountsRequest\SUB*.cosmos.auth.v1beta1.QueryAccountsResponse\"*\136\231\176*\SOH\130\211\228\147\STX\US\DC2\GS/cosmos/auth/v1beta1/accounts\DC2\148\SOH\n\
    \\aAccount\DC2(.cosmos.auth.v1beta1.QueryAccountRequest\SUB).cosmos.auth.v1beta1.QueryAccountResponse\"4\136\231\176*\SOH\130\211\228\147\STX)\DC2'/cosmos/auth/v1beta1/accounts/{address}\DC2\181\SOH\n\
    \\DC2AccountAddressByID\DC23.cosmos.auth.v1beta1.QueryAccountAddressByIDRequest\SUB4.cosmos.auth.v1beta1.QueryAccountAddressByIDResponse\"4\136\231\176*\SOH\130\211\228\147\STX)\DC2'/cosmos/auth/v1beta1/address_by_id/{id}\DC2\133\SOH\n\
    \\ACKParams\DC2'.cosmos.auth.v1beta1.QueryParamsRequest\SUB(.cosmos.auth.v1beta1.QueryParamsResponse\"(\136\231\176*\SOH\130\211\228\147\STX\GS\DC2\ESC/cosmos/auth/v1beta1/params\DC2\166\SOH\n\
    \\SOModuleAccounts\DC2/.cosmos.auth.v1beta1.QueryModuleAccountsRequest\SUB0.cosmos.auth.v1beta1.QueryModuleAccountsResponse\"1\136\231\176*\SOH\130\211\228\147\STX&\DC2$/cosmos/auth/v1beta1/module_accounts\DC2\188\SOH\n\
    \\DC3ModuleAccountByName\DC24.cosmos.auth.v1beta1.QueryModuleAccountByNameRequest\SUB5.cosmos.auth.v1beta1.QueryModuleAccountByNameResponse\"8\136\231\176*\SOH\130\211\228\147\STX-\DC2+/cosmos/auth/v1beta1/module_accounts/{name}\DC2\136\SOH\n\
    \\fBech32Prefix\DC2(.cosmos.auth.v1beta1.Bech32PrefixRequest\SUB).cosmos.auth.v1beta1.Bech32PrefixResponse\"#\130\211\228\147\STX\GS\DC2\ESC/cosmos/auth/v1beta1/bech32\DC2\176\SOH\n\
    \\DC4AddressBytesToString\DC20.cosmos.auth.v1beta1.AddressBytesToStringRequest\SUB1.cosmos.auth.v1beta1.AddressBytesToStringResponse\"3\130\211\228\147\STX-\DC2+/cosmos/auth/v1beta1/bech32/{address_bytes}\DC2\177\SOH\n\
    \\DC4AddressStringToBytes\DC20.cosmos.auth.v1beta1.AddressStringToBytesRequest\SUB1.cosmos.auth.v1beta1.AddressStringToBytesResponse\"4\130\211\228\147\STX.\DC2,/cosmos/auth/v1beta1/bech32/{address_string}\DC2\164\SOH\n\
    \\vAccountInfo\DC2,.cosmos.auth.v1beta1.QueryAccountInfoRequest\SUB-.cosmos.auth.v1beta1.QueryAccountInfoResponse\"8\136\231\176*\SOH\130\211\228\147\STX-\DC2+/cosmos/auth/v1beta1/account_info/{address}B+Z)github.com/cosmos/cosmos-sdk/x/auth/typesJ\254\&5\n\
    \\a\DC2\ENQ\NUL\NUL\235\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL&\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL#\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\t\NUL%\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL@\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\v\NUL@\n\
    \5\n\
    \\STX\ACK\NUL\DC2\EOT\SO\NULX\SOH\SUB) Query defines the gRPC querier service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\SO\b\r\n\
    \\211\SOH\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\NAK\STX\CAN\ETX\SUB\196\SOH Accounts returns all the existing accounts.\n\
    \\n\
    \ When called from another module, this query might consume a high amount of\n\
    \ gas if the pagination field is incorrectly set.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\NAK\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\NAK\SI#\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\NAK.C\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\SYN\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\NUL\EOT\241\140\166\ENQ\DC2\ETX\SYN\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\ETB\EOTQ\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\ETB\EOTQ\n\
    \A\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\ESC\STX\RS\ETX\SUB3 Account returns account details based on address.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\ESC\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\ESC\SO!\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\ESC,@\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\FS\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\SOH\EOT\241\140\166\ENQ\DC2\ETX\FS\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\GS\EOT[\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\GS\EOT[\n\
    \n\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT#\STX&\ETX\SUB` AccountAddressByID returns account address based on account number.\n\
    \\n\
    \ Since: cosmos-sdk 0.46.2\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX#\ACK\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX#\EM7\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX#Ba\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX$\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\STX\EOT\241\140\166\ENQ\DC2\ETX$\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX%\EOT[\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX%\EOT[\n\
    \.\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\EOT)\STX,\ETX\SUB  Params queries all parameters.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX)\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX)\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX)*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\ETX*\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\ETX\EOT\241\140\166\ENQ\DC2\ETX*\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\ETX+\EOTO\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ETX\EOT\176\202\188\"\STX\DC2\ETX+\EOTO\n\
    \a\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\EOT1\STX4\ETX\SUBS ModuleAccounts returns all the existing module accounts.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX1\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX1\NAK/\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX1:U\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX2\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\EOT\EOT\241\140\166\ENQ\DC2\ETX2\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX3\EOTX\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\EOT\EOT\176\202\188\"\STX\DC2\ETX3\EOTX\n\
    \R\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\EOT7\STX:\ETX\SUBD ModuleAccountByName returns the module account info by module name\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX7\ACK\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX7\SUB9\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX7Dd\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\ETX8\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\ENQ\EOT\241\140\166\ENQ\DC2\ETX8\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\ETX9\EOT_\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ENQ\EOT\176\202\188\"\STX\DC2\ETX9\EOT_\n\
    \J\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\EOT?\STXA\ETX\SUB< Bech32Prefix queries bech32Prefix\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX?\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX?\DC3&\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX?1E\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\EOT\DC2\ETX@\EOTA\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ACK\EOT\176\202\188\"\STX\DC2\ETX@\EOTA\n\
    \f\n\
    \\EOT\ACK\NUL\STX\a\DC2\EOTF\STXH\ETX\SUBX AddressBytesToString converts Account Address bytes to string\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\SOH\DC2\ETXF\ACK\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\STX\DC2\ETXF\ESC6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\ETX\DC2\ETXFA]\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\EOT\DC2\ETXG\EOTQ\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\a\EOT\176\202\188\"\STX\DC2\ETXG\EOTQ\n\
    \^\n\
    \\EOT\ACK\NUL\STX\b\DC2\EOTM\STXO\ETX\SUBP AddressStringToBytes converts Address string to bytes\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\SOH\DC2\ETXM\ACK\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\STX\DC2\ETXM\ESC6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\ETX\DC2\ETXMA]\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\EOT\DC2\ETXN\EOTR\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\b\EOT\176\202\188\"\STX\DC2\ETXN\EOTR\n\
    \o\n\
    \\EOT\ACK\NUL\STX\t\DC2\EOTT\STXW\ETX\SUBa AccountInfo queries account info which is common to all account types.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\SOH\DC2\ETXT\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\STX\DC2\ETXT\DC2)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\ETX\DC2\ETXT4L\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\EOT\DC2\ETXU\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\t\EOT\241\140\166\ENQ\DC2\ETXU\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\EOT\DC2\ETXV\EOT_\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\t\EOT\176\202\188\"\STX\DC2\ETXV\EOT_\n\
    \r\n\
    \\STX\EOT\NUL\DC2\EOT]\NUL`\SOH\SUBf QueryAccountsRequest is the request type for the Query/Accounts RPC method.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX]\b\FS\n\
    \I\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX_\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX_\STX'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX_(2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX_56\n\
    \t\n\
    \\STX\EOT\SOH\DC2\EOTe\NULk\SOH\SUBh QueryAccountsResponse is the response type for the Query/Accounts RPC method.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXe\b\GS\n\
    \1\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXg\STXp\SUB$ accounts are the existing accounts\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETXg\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXg\v\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXg\US'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXg*+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETXg,o\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\201\214\ENQ\DC2\ETXg-n\n\
    \A\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXj\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXj\STX(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXj)3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXj67\n\
    \W\n\
    \\STX\EOT\STX\DC2\EOTn\NULt\SOH\SUBK QueryAccountRequest is the request type for the Query/Account RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXn\b\ESC\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXo\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\141\244\ETX\DC2\ETXo\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXp\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\129\244\ETX\DC2\ETXp\STX-\n\
    \8\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXs\STXF\SUB+ address defines the address to query for.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXs\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXs\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXs\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETXs\NAKE\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETXs\SYND\n\
    \Y\n\
    \\STX\EOT\ETX\DC2\EOTw\NULz\SOH\SUBM QueryAccountResponse is the response type for the Query/Account RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXw\b\FS\n\
    \H\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXy\STXf\SUB; account defines the account of the corresponding address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXy\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXy\SYN\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXy !\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETXy\"e\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\201\214\ENQ\DC2\ETXy#d\n\
    \T\n\
    \\STX\EOT\EOT\DC2\ETX}\NUL\GS\SUBI QueryParamsRequest is the request type for the Query/Params RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX}\b\SUB\n\
    \Y\n\
    \\STX\EOT\ENQ\DC2\ACK\128\SOH\NUL\131\SOH\SOH\SUBK QueryParamsResponse is the response type for the Query/Params RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\128\SOH\b\ESC\n\
    \<\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\130\SOH\STX3\SUB. params defines the parameters of the module.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\130\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\130\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\130\SOH\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\EOT\130\SOH\DC42\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\NUL\b\233\251\ETX\DC2\EOT\130\SOH\NAK1\n\
    \~\n\
    \\STX\EOT\ACK\DC2\EOT\136\SOH\NUL%\SUBr QueryModuleAccountsRequest is the request type for the Query/ModuleAccounts RPC method.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\136\SOH\b\"\n\
    \\130\SOH\n\
    \\STX\EOT\a\DC2\ACK\141\SOH\NUL\143\SOH\SOH\SUBt QueryModuleAccountsResponse is the response type for the Query/ModuleAccounts RPC method.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\141\SOH\b#\n\
    \\f\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\142\SOH\STXv\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\EOT\142\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\142\SOH\v\RS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\142\SOH\US'\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\142\SOH*+\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\EOT\142\SOH,u\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\201\214\ENQ\DC2\EOT\142\SOH-t\n\
    \q\n\
    \\STX\EOT\b\DC2\ACK\146\SOH\NUL\148\SOH\SOH\SUBc QueryModuleAccountByNameRequest is the request type for the Query/ModuleAccountByName RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\146\SOH\b'\n\
    \\f\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\147\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\147\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\147\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\147\SOH\DLE\DC1\n\
    \s\n\
    \\STX\EOT\t\DC2\ACK\151\SOH\NUL\153\SOH\SOH\SUBe QueryModuleAccountByNameResponse is the response type for the Query/ModuleAccountByName RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\151\SOH\b(\n\
    \\f\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\152\SOH\STXl\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\152\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\152\SOH\SYN\GS\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\152\SOH !\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\b\DC2\EOT\152\SOH\"k\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\201\214\ENQ\DC2\EOT\152\SOH#j\n\
    \k\n\
    \\STX\EOT\n\
    \\DC2\EOT\158\SOH\NUL\RS\SUB_ Bech32PrefixRequest is the request type for Bech32Prefix rpc method.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\158\SOH\b\ESC\n\
    \o\n\
    \\STX\EOT\v\DC2\ACK\163\SOH\NUL\165\SOH\SOH\SUBa Bech32PrefixResponse is the response type for Bech32Prefix rpc method.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\163\SOH\b\FS\n\
    \\f\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\164\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\EOT\164\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\164\SOH\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\164\SOH\EM\SUB\n\
    \v\n\
    \\STX\EOT\f\DC2\ACK\170\SOH\NUL\172\SOH\SOH\SUBh AddressBytesToStringRequest is the request type for AddressString rpc method.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\170\SOH\b#\n\
    \\f\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\171\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\171\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\171\SOH\b\NAK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\171\SOH\CAN\EM\n\
    \x\n\
    \\STX\EOT\r\DC2\ACK\177\SOH\NUL\179\SOH\SOH\SUBj AddressBytesToStringResponse is the response type for AddressString rpc method.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\177\SOH\b$\n\
    \\f\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\178\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\178\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\178\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\178\SOH\SUB\ESC\n\
    \u\n\
    \\STX\EOT\SO\DC2\ACK\184\SOH\NUL\186\SOH\SOH\SUBg AddressStringToBytesRequest is the request type for AccountBytes rpc method.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\184\SOH\b#\n\
    \\f\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\185\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\185\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\185\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\185\SOH\SUB\ESC\n\
    \w\n\
    \\STX\EOT\SI\DC2\ACK\191\SOH\NUL\193\SOH\SOH\SUBi AddressStringToBytesResponse is the response type for AddressBytes rpc method.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\191\SOH\b$\n\
    \\f\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\192\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\EOT\192\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\192\SOH\b\NAK\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\192\SOH\CAN\EM\n\
    \\DEL\n\
    \\STX\EOT\DLE\DC2\ACK\198\SOH\NUL\210\SOH\SOH\SUBq QueryAccountAddressByIDRequest is the request type for AccountAddressByID rpc method\n\
    \\n\
    \ Since: cosmos-sdk 0.46.2\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\198\SOH\b&\n\
    \\245\SOH\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\204\SOH\STX#\SUB\230\SOH Deprecated, use account_id instead\n\
    \\n\
    \ id is the account number of the address to be queried. This field\n\
    \ should have been an uint64 (like all account numbers), and will be\n\
    \ updated to uint64 in a future version of the auth query.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\204\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\204\SOH\b\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\204\SOH\r\SO\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\b\DC2\EOT\204\SOH\SI\"\n\
    \\SO\n\
    \\ACK\EOT\DLE\STX\NUL\b\ETX\DC2\EOT\204\SOH\DLE!\n\
    \g\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\209\SOH\STX\CAN\SUBY account_id is the account number of the address to be queried.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ENQ\DC2\EOT\209\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\209\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\209\SOH\SYN\ETB\n\
    \\129\SOH\n\
    \\STX\EOT\DC1\DC2\ACK\215\SOH\NUL\217\SOH\SOH\SUBs QueryAccountAddressByIDResponse is the response type for AccountAddressByID rpc method\n\
    \\n\
    \ Since: cosmos-sdk 0.46.2\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\215\SOH\b'\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\216\SOH\STXN\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\216\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\216\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\216\SOH\ESC\FS\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\b\DC2\EOT\216\SOH\GSM\n\
    \\DLE\n\
    \\b\EOT\DC1\STX\NUL\b\202\214\ENQ\DC2\EOT\216\SOH\RSL\n\
    \g\n\
    \\STX\EOT\DC2\DC2\ACK\222\SOH\NUL\226\SOH\SOH\SUBY QueryAccountInfoRequest is the Query/AccountInfo request type.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\222\SOH\b\US\n\
    \6\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\225\SOH\STXF\SUB( address is the account address string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\225\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\225\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\225\SOH\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\b\DC2\EOT\225\SOH\NAKE\n\
    \\DLE\n\
    \\b\EOT\DC2\STX\NUL\b\202\214\ENQ\DC2\EOT\225\SOH\SYND\n\
    \i\n\
    \\STX\EOT\DC3\DC2\ACK\231\SOH\NUL\235\SOH\SOH\SUB[ QueryAccountInfoResponse is the Query/AccountInfo response type.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\231\SOH\b \n\
    \M\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\234\SOH\STX\ETB\SUB? info is the account info which is represented by BaseAccount.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ACK\DC2\EOT\234\SOH\STX\r\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\234\SOH\SO\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\234\SOH\NAK\SYNb\ACKproto3"