{- This file was auto-generated from greenfield/sp/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Sp.Query (
        Query(..), QueryGetSecondarySpStorePriceByTimeRequest(),
        QueryGetSecondarySpStorePriceByTimeResponse(),
        QueryGetSpStoragePriceByTimeRequest(),
        QueryGetSpStoragePriceByTimeResponse(), QueryParamsRequest(),
        QueryParamsResponse(), QueryStorageProviderRequest(),
        QueryStorageProviderResponse(), QueryStorageProvidersRequest(),
        QueryStorageProvidersResponse()
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
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
import qualified Proto.Greenfield.Sp.Params
import qualified Proto.Greenfield.Sp.Types
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Query_Fields.timestamp' @:: Lens' QueryGetSecondarySpStorePriceByTimeRequest Data.Int.Int64@ -}
data QueryGetSecondarySpStorePriceByTimeRequest
  = QueryGetSecondarySpStorePriceByTimeRequest'_constructor {_QueryGetSecondarySpStorePriceByTimeRequest'timestamp :: !Data.Int.Int64,
                                                             _QueryGetSecondarySpStorePriceByTimeRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGetSecondarySpStorePriceByTimeRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGetSecondarySpStorePriceByTimeRequest "timestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetSecondarySpStorePriceByTimeRequest'timestamp
           (\ x__ y__
              -> x__
                   {_QueryGetSecondarySpStorePriceByTimeRequest'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGetSecondarySpStorePriceByTimeRequest where
  messageName _
    = Data.Text.pack
        "greenfield.sp.QueryGetSecondarySpStorePriceByTimeRequest"
  packedMessageDescriptor _
    = "\n\
      \*QueryGetSecondarySpStorePriceByTimeRequest\DC2\FS\n\
      \\ttimestamp\CAN\SOH \SOH(\ETXR\ttimestamp"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"timestamp")) ::
              Data.ProtoLens.FieldDescriptor QueryGetSecondarySpStorePriceByTimeRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, timestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGetSecondarySpStorePriceByTimeRequest'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryGetSecondarySpStorePriceByTimeRequest'_unknownFields = y__})
  defMessage
    = QueryGetSecondarySpStorePriceByTimeRequest'_constructor
        {_QueryGetSecondarySpStorePriceByTimeRequest'timestamp = Data.ProtoLens.fieldDefault,
         _QueryGetSecondarySpStorePriceByTimeRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGetSecondarySpStorePriceByTimeRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGetSecondarySpStorePriceByTimeRequest
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
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryGetSecondarySpStorePriceByTimeRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"timestamp") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryGetSecondarySpStorePriceByTimeRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGetSecondarySpStorePriceByTimeRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGetSecondarySpStorePriceByTimeRequest'timestamp x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Query_Fields.secondarySpStorePrice' @:: Lens' QueryGetSecondarySpStorePriceByTimeResponse Proto.Greenfield.Sp.Types.SecondarySpStorePrice@
         * 'Proto.Greenfield.Sp.Query_Fields.maybe'secondarySpStorePrice' @:: Lens' QueryGetSecondarySpStorePriceByTimeResponse (Prelude.Maybe Proto.Greenfield.Sp.Types.SecondarySpStorePrice)@ -}
data QueryGetSecondarySpStorePriceByTimeResponse
  = QueryGetSecondarySpStorePriceByTimeResponse'_constructor {_QueryGetSecondarySpStorePriceByTimeResponse'secondarySpStorePrice :: !(Prelude.Maybe Proto.Greenfield.Sp.Types.SecondarySpStorePrice),
                                                              _QueryGetSecondarySpStorePriceByTimeResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGetSecondarySpStorePriceByTimeResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGetSecondarySpStorePriceByTimeResponse "secondarySpStorePrice" Proto.Greenfield.Sp.Types.SecondarySpStorePrice where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetSecondarySpStorePriceByTimeResponse'secondarySpStorePrice
           (\ x__ y__
              -> x__
                   {_QueryGetSecondarySpStorePriceByTimeResponse'secondarySpStorePrice = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGetSecondarySpStorePriceByTimeResponse "maybe'secondarySpStorePrice" (Prelude.Maybe Proto.Greenfield.Sp.Types.SecondarySpStorePrice) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetSecondarySpStorePriceByTimeResponse'secondarySpStorePrice
           (\ x__ y__
              -> x__
                   {_QueryGetSecondarySpStorePriceByTimeResponse'secondarySpStorePrice = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGetSecondarySpStorePriceByTimeResponse where
  messageName _
    = Data.Text.pack
        "greenfield.sp.QueryGetSecondarySpStorePriceByTimeResponse"
  packedMessageDescriptor _
    = "\n\
      \+QueryGetSecondarySpStorePriceByTimeResponse\DC2c\n\
      \\CANsecondary_sp_store_price\CAN\SOH \SOH(\v2$.greenfield.sp.SecondarySpStorePriceR\NAKsecondarySpStorePriceB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        secondarySpStorePrice__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secondary_sp_store_price"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Sp.Types.SecondarySpStorePrice)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'secondarySpStorePrice")) ::
              Data.ProtoLens.FieldDescriptor QueryGetSecondarySpStorePriceByTimeResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, secondarySpStorePrice__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGetSecondarySpStorePriceByTimeResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryGetSecondarySpStorePriceByTimeResponse'_unknownFields = y__})
  defMessage
    = QueryGetSecondarySpStorePriceByTimeResponse'_constructor
        {_QueryGetSecondarySpStorePriceByTimeResponse'secondarySpStorePrice = Prelude.Nothing,
         _QueryGetSecondarySpStorePriceByTimeResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGetSecondarySpStorePriceByTimeResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGetSecondarySpStorePriceByTimeResponse
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
                                       "secondary_sp_store_price"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"secondarySpStorePrice") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryGetSecondarySpStorePriceByTimeResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'secondarySpStorePrice") _x
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
instance Control.DeepSeq.NFData QueryGetSecondarySpStorePriceByTimeResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGetSecondarySpStorePriceByTimeResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGetSecondarySpStorePriceByTimeResponse'secondarySpStorePrice
                   x__)
                ())
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Query_Fields.spAddr' @:: Lens' QueryGetSpStoragePriceByTimeRequest Data.Text.Text@
         * 'Proto.Greenfield.Sp.Query_Fields.timestamp' @:: Lens' QueryGetSpStoragePriceByTimeRequest Data.Int.Int64@ -}
data QueryGetSpStoragePriceByTimeRequest
  = QueryGetSpStoragePriceByTimeRequest'_constructor {_QueryGetSpStoragePriceByTimeRequest'spAddr :: !Data.Text.Text,
                                                      _QueryGetSpStoragePriceByTimeRequest'timestamp :: !Data.Int.Int64,
                                                      _QueryGetSpStoragePriceByTimeRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGetSpStoragePriceByTimeRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGetSpStoragePriceByTimeRequest "spAddr" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetSpStoragePriceByTimeRequest'spAddr
           (\ x__ y__
              -> x__ {_QueryGetSpStoragePriceByTimeRequest'spAddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryGetSpStoragePriceByTimeRequest "timestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetSpStoragePriceByTimeRequest'timestamp
           (\ x__ y__
              -> x__ {_QueryGetSpStoragePriceByTimeRequest'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGetSpStoragePriceByTimeRequest where
  messageName _
    = Data.Text.pack
        "greenfield.sp.QueryGetSpStoragePriceByTimeRequest"
  packedMessageDescriptor _
    = "\n\
      \#QueryGetSpStoragePriceByTimeRequest\DC2\ETB\n\
      \\asp_addr\CAN\SOH \SOH(\tR\ACKspAddr\DC2\FS\n\
      \\ttimestamp\CAN\STX \SOH(\ETXR\ttimestamp"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        spAddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sp_addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"spAddr")) ::
              Data.ProtoLens.FieldDescriptor QueryGetSpStoragePriceByTimeRequest
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"timestamp")) ::
              Data.ProtoLens.FieldDescriptor QueryGetSpStoragePriceByTimeRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spAddr__field_descriptor),
           (Data.ProtoLens.Tag 2, timestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGetSpStoragePriceByTimeRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryGetSpStoragePriceByTimeRequest'_unknownFields = y__})
  defMessage
    = QueryGetSpStoragePriceByTimeRequest'_constructor
        {_QueryGetSpStoragePriceByTimeRequest'spAddr = Data.ProtoLens.fieldDefault,
         _QueryGetSpStoragePriceByTimeRequest'timestamp = Data.ProtoLens.fieldDefault,
         _QueryGetSpStoragePriceByTimeRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGetSpStoragePriceByTimeRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGetSpStoragePriceByTimeRequest
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
                                       "sp_addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"spAddr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryGetSpStoragePriceByTimeRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"spAddr") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"timestamp") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData QueryGetSpStoragePriceByTimeRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGetSpStoragePriceByTimeRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGetSpStoragePriceByTimeRequest'spAddr x__)
                (Control.DeepSeq.deepseq
                   (_QueryGetSpStoragePriceByTimeRequest'timestamp x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Query_Fields.spStoragePrice' @:: Lens' QueryGetSpStoragePriceByTimeResponse Proto.Greenfield.Sp.Types.SpStoragePrice@
         * 'Proto.Greenfield.Sp.Query_Fields.maybe'spStoragePrice' @:: Lens' QueryGetSpStoragePriceByTimeResponse (Prelude.Maybe Proto.Greenfield.Sp.Types.SpStoragePrice)@ -}
data QueryGetSpStoragePriceByTimeResponse
  = QueryGetSpStoragePriceByTimeResponse'_constructor {_QueryGetSpStoragePriceByTimeResponse'spStoragePrice :: !(Prelude.Maybe Proto.Greenfield.Sp.Types.SpStoragePrice),
                                                       _QueryGetSpStoragePriceByTimeResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryGetSpStoragePriceByTimeResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryGetSpStoragePriceByTimeResponse "spStoragePrice" Proto.Greenfield.Sp.Types.SpStoragePrice where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetSpStoragePriceByTimeResponse'spStoragePrice
           (\ x__ y__
              -> x__
                   {_QueryGetSpStoragePriceByTimeResponse'spStoragePrice = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryGetSpStoragePriceByTimeResponse "maybe'spStoragePrice" (Prelude.Maybe Proto.Greenfield.Sp.Types.SpStoragePrice) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryGetSpStoragePriceByTimeResponse'spStoragePrice
           (\ x__ y__
              -> x__
                   {_QueryGetSpStoragePriceByTimeResponse'spStoragePrice = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryGetSpStoragePriceByTimeResponse where
  messageName _
    = Data.Text.pack
        "greenfield.sp.QueryGetSpStoragePriceByTimeResponse"
  packedMessageDescriptor _
    = "\n\
      \$QueryGetSpStoragePriceByTimeResponse\DC2M\n\
      \\DLEsp_storage_price\CAN\SOH \SOH(\v2\GS.greenfield.sp.SpStoragePriceR\SOspStoragePriceB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        spStoragePrice__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sp_storage_price"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Sp.Types.SpStoragePrice)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'spStoragePrice")) ::
              Data.ProtoLens.FieldDescriptor QueryGetSpStoragePriceByTimeResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spStoragePrice__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryGetSpStoragePriceByTimeResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryGetSpStoragePriceByTimeResponse'_unknownFields = y__})
  defMessage
    = QueryGetSpStoragePriceByTimeResponse'_constructor
        {_QueryGetSpStoragePriceByTimeResponse'spStoragePrice = Prelude.Nothing,
         _QueryGetSpStoragePriceByTimeResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryGetSpStoragePriceByTimeResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryGetSpStoragePriceByTimeResponse
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
                                       "sp_storage_price"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"spStoragePrice") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryGetSpStoragePriceByTimeResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'spStoragePrice") _x
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
instance Control.DeepSeq.NFData QueryGetSpStoragePriceByTimeResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryGetSpStoragePriceByTimeResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryGetSpStoragePriceByTimeResponse'spStoragePrice x__) ())
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
  messageName _ = Data.Text.pack "greenfield.sp.QueryParamsRequest"
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
     
         * 'Proto.Greenfield.Sp.Query_Fields.params' @:: Lens' QueryParamsResponse Proto.Greenfield.Sp.Params.Params@
         * 'Proto.Greenfield.Sp.Query_Fields.maybe'params' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Greenfield.Sp.Params.Params)@ -}
data QueryParamsResponse
  = QueryParamsResponse'_constructor {_QueryParamsResponse'params :: !(Prelude.Maybe Proto.Greenfield.Sp.Params.Params),
                                      _QueryParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsResponse "params" Proto.Greenfield.Sp.Params.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'params" (Prelude.Maybe Proto.Greenfield.Sp.Params.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsResponse where
  messageName _ = Data.Text.pack "greenfield.sp.QueryParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryParamsResponse\DC23\n\
      \\ACKparams\CAN\SOH \SOH(\v2\NAK.greenfield.sp.ParamsR\ACKparamsB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Sp.Params.Params)
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
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Query_Fields.spAddress' @:: Lens' QueryStorageProviderRequest Data.Text.Text@ -}
data QueryStorageProviderRequest
  = QueryStorageProviderRequest'_constructor {_QueryStorageProviderRequest'spAddress :: !Data.Text.Text,
                                              _QueryStorageProviderRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryStorageProviderRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryStorageProviderRequest "spAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryStorageProviderRequest'spAddress
           (\ x__ y__ -> x__ {_QueryStorageProviderRequest'spAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryStorageProviderRequest where
  messageName _
    = Data.Text.pack "greenfield.sp.QueryStorageProviderRequest"
  packedMessageDescriptor _
    = "\n\
      \\ESCQueryStorageProviderRequest\DC2\FS\n\
      \\tspAddress\CAN\SOH \SOH(\tR\tspAddress"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        spAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "spAddress"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"spAddress")) ::
              Data.ProtoLens.FieldDescriptor QueryStorageProviderRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryStorageProviderRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryStorageProviderRequest'_unknownFields = y__})
  defMessage
    = QueryStorageProviderRequest'_constructor
        {_QueryStorageProviderRequest'spAddress = Data.ProtoLens.fieldDefault,
         _QueryStorageProviderRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryStorageProviderRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryStorageProviderRequest
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
                                       "spAddress"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"spAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryStorageProviderRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"spAddress") _x
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
instance Control.DeepSeq.NFData QueryStorageProviderRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryStorageProviderRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryStorageProviderRequest'spAddress x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Query_Fields.storageProvider' @:: Lens' QueryStorageProviderResponse Proto.Greenfield.Sp.Types.StorageProvider@
         * 'Proto.Greenfield.Sp.Query_Fields.maybe'storageProvider' @:: Lens' QueryStorageProviderResponse (Prelude.Maybe Proto.Greenfield.Sp.Types.StorageProvider)@ -}
data QueryStorageProviderResponse
  = QueryStorageProviderResponse'_constructor {_QueryStorageProviderResponse'storageProvider :: !(Prelude.Maybe Proto.Greenfield.Sp.Types.StorageProvider),
                                               _QueryStorageProviderResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryStorageProviderResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryStorageProviderResponse "storageProvider" Proto.Greenfield.Sp.Types.StorageProvider where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryStorageProviderResponse'storageProvider
           (\ x__ y__
              -> x__ {_QueryStorageProviderResponse'storageProvider = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryStorageProviderResponse "maybe'storageProvider" (Prelude.Maybe Proto.Greenfield.Sp.Types.StorageProvider) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryStorageProviderResponse'storageProvider
           (\ x__ y__
              -> x__ {_QueryStorageProviderResponse'storageProvider = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryStorageProviderResponse where
  messageName _
    = Data.Text.pack "greenfield.sp.QueryStorageProviderResponse"
  packedMessageDescriptor _
    = "\n\
      \\FSQueryStorageProviderResponse\DC2H\n\
      \\SIstorageProvider\CAN\SOH \SOH(\v2\RS.greenfield.sp.StorageProviderR\SIstorageProvider"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        storageProvider__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "storageProvider"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Sp.Types.StorageProvider)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'storageProvider")) ::
              Data.ProtoLens.FieldDescriptor QueryStorageProviderResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, storageProvider__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryStorageProviderResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryStorageProviderResponse'_unknownFields = y__})
  defMessage
    = QueryStorageProviderResponse'_constructor
        {_QueryStorageProviderResponse'storageProvider = Prelude.Nothing,
         _QueryStorageProviderResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryStorageProviderResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryStorageProviderResponse
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
                                       "storageProvider"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"storageProvider") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryStorageProviderResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'storageProvider") _x
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
instance Control.DeepSeq.NFData QueryStorageProviderResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryStorageProviderResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryStorageProviderResponse'storageProvider x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Query_Fields.pagination' @:: Lens' QueryStorageProvidersRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Greenfield.Sp.Query_Fields.maybe'pagination' @:: Lens' QueryStorageProvidersRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryStorageProvidersRequest
  = QueryStorageProvidersRequest'_constructor {_QueryStorageProvidersRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                               _QueryStorageProvidersRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryStorageProvidersRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryStorageProvidersRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryStorageProvidersRequest'pagination
           (\ x__ y__
              -> x__ {_QueryStorageProvidersRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryStorageProvidersRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryStorageProvidersRequest'pagination
           (\ x__ y__
              -> x__ {_QueryStorageProvidersRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryStorageProvidersRequest where
  messageName _
    = Data.Text.pack "greenfield.sp.QueryStorageProvidersRequest"
  packedMessageDescriptor _
    = "\n\
      \\FSQueryStorageProvidersRequest\DC2F\n\
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
              Data.ProtoLens.FieldDescriptor QueryStorageProvidersRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryStorageProvidersRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryStorageProvidersRequest'_unknownFields = y__})
  defMessage
    = QueryStorageProvidersRequest'_constructor
        {_QueryStorageProvidersRequest'pagination = Prelude.Nothing,
         _QueryStorageProvidersRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryStorageProvidersRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryStorageProvidersRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryStorageProvidersRequest"
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
instance Control.DeepSeq.NFData QueryStorageProvidersRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryStorageProvidersRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryStorageProvidersRequest'pagination x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Query_Fields.sps' @:: Lens' QueryStorageProvidersResponse [Proto.Greenfield.Sp.Types.StorageProvider]@
         * 'Proto.Greenfield.Sp.Query_Fields.vec'sps' @:: Lens' QueryStorageProvidersResponse (Data.Vector.Vector Proto.Greenfield.Sp.Types.StorageProvider)@
         * 'Proto.Greenfield.Sp.Query_Fields.pagination' @:: Lens' QueryStorageProvidersResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Greenfield.Sp.Query_Fields.maybe'pagination' @:: Lens' QueryStorageProvidersResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryStorageProvidersResponse
  = QueryStorageProvidersResponse'_constructor {_QueryStorageProvidersResponse'sps :: !(Data.Vector.Vector Proto.Greenfield.Sp.Types.StorageProvider),
                                                _QueryStorageProvidersResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                _QueryStorageProvidersResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryStorageProvidersResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryStorageProvidersResponse "sps" [Proto.Greenfield.Sp.Types.StorageProvider] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryStorageProvidersResponse'sps
           (\ x__ y__ -> x__ {_QueryStorageProvidersResponse'sps = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryStorageProvidersResponse "vec'sps" (Data.Vector.Vector Proto.Greenfield.Sp.Types.StorageProvider) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryStorageProvidersResponse'sps
           (\ x__ y__ -> x__ {_QueryStorageProvidersResponse'sps = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryStorageProvidersResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryStorageProvidersResponse'pagination
           (\ x__ y__
              -> x__ {_QueryStorageProvidersResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryStorageProvidersResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryStorageProvidersResponse'pagination
           (\ x__ y__
              -> x__ {_QueryStorageProvidersResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryStorageProvidersResponse where
  messageName _
    = Data.Text.pack "greenfield.sp.QueryStorageProvidersResponse"
  packedMessageDescriptor _
    = "\n\
      \\GSQueryStorageProvidersResponse\DC20\n\
      \\ETXsps\CAN\SOH \ETX(\v2\RS.greenfield.sp.StorageProviderR\ETXsps\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sps__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sps"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Sp.Types.StorageProvider)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"sps")) ::
              Data.ProtoLens.FieldDescriptor QueryStorageProvidersResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryStorageProvidersResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sps__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryStorageProvidersResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryStorageProvidersResponse'_unknownFields = y__})
  defMessage
    = QueryStorageProvidersResponse'_constructor
        {_QueryStorageProvidersResponse'sps = Data.Vector.Generic.empty,
         _QueryStorageProvidersResponse'pagination = Prelude.Nothing,
         _QueryStorageProvidersResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryStorageProvidersResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Greenfield.Sp.Types.StorageProvider
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryStorageProvidersResponse
        loop x mutable'sps
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'sps <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'sps)
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
                              (Data.ProtoLens.Field.field @"vec'sps") frozen'sps x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "sps"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'sps y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'sps
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'sps
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'sps <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'sps)
          "QueryStorageProvidersResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'sps") _x))
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
instance Control.DeepSeq.NFData QueryStorageProvidersResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryStorageProvidersResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryStorageProvidersResponse'sps x__)
                (Control.DeepSeq.deepseq
                   (_QueryStorageProvidersResponse'pagination x__) ()))
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "greenfield.sp"
  type ServiceMethods Query = '["params",
                                "queryGetSecondarySpStorePriceByTime",
                                "queryGetSpStoragePriceByTime",
                                "storageProvider",
                                "storageProviders"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2n\n\
      \\ACKParams\DC2!.greenfield.sp.QueryParamsRequest\SUB\".greenfield.sp.QueryParamsResponse\"\GS\130\211\228\147\STX\ETB\DC2\NAK/greenfield/sp/params\DC2\148\SOH\n\
      \\DLEStorageProviders\DC2+.greenfield.sp.QueryStorageProvidersRequest\SUB,.greenfield.sp.QueryStorageProvidersResponse\"%\130\211\228\147\STX\US\DC2\GS/greenfield/storage_providers\DC2\210\SOH\n\
      \\FSQueryGetSpStoragePriceByTime\DC22.greenfield.sp.QueryGetSpStoragePriceByTimeRequest\SUB3.greenfield.sp.QueryGetSpStoragePriceByTimeResponse\"I\130\211\228\147\STXC\DC2A/greenfield/sp/get_sp_storage_price_by_time/{sp_addr}/{timestamp}\DC2\229\SOH\n\
      \#QueryGetSecondarySpStorePriceByTime\DC29.greenfield.sp.QueryGetSecondarySpStorePriceByTimeRequest\SUB:.greenfield.sp.QueryGetSecondarySpStorePriceByTimeResponse\"G\130\211\228\147\STXA\DC2?/greenfield/sp/get_secondary_sp_store_price_by_time/{timestamp}\DC2\156\SOH\n\
      \\SIStorageProvider\DC2*.greenfield.sp.QueryStorageProviderRequest\SUB+.greenfield.sp.QueryStorageProviderResponse\"0\130\211\228\147\STX*\DC2(/greenfield/storage_provider/{spAddress}"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "params" where
  type MethodName Query "params" = "Params"
  type MethodInput Query "params" = QueryParamsRequest
  type MethodOutput Query "params" = QueryParamsResponse
  type MethodStreamingType Query "params" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "storageProviders" where
  type MethodName Query "storageProviders" = "StorageProviders"
  type MethodInput Query "storageProviders" = QueryStorageProvidersRequest
  type MethodOutput Query "storageProviders" = QueryStorageProvidersResponse
  type MethodStreamingType Query "storageProviders" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "queryGetSpStoragePriceByTime" where
  type MethodName Query "queryGetSpStoragePriceByTime" = "QueryGetSpStoragePriceByTime"
  type MethodInput Query "queryGetSpStoragePriceByTime" = QueryGetSpStoragePriceByTimeRequest
  type MethodOutput Query "queryGetSpStoragePriceByTime" = QueryGetSpStoragePriceByTimeResponse
  type MethodStreamingType Query "queryGetSpStoragePriceByTime" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "queryGetSecondarySpStorePriceByTime" where
  type MethodName Query "queryGetSecondarySpStorePriceByTime" = "QueryGetSecondarySpStorePriceByTime"
  type MethodInput Query "queryGetSecondarySpStorePriceByTime" = QueryGetSecondarySpStorePriceByTimeRequest
  type MethodOutput Query "queryGetSecondarySpStorePriceByTime" = QueryGetSecondarySpStorePriceByTimeResponse
  type MethodStreamingType Query "queryGetSecondarySpStorePriceByTime" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "storageProvider" where
  type MethodName Query "storageProvider" = "StorageProvider"
  type MethodInput Query "storageProvider" = QueryStorageProviderRequest
  type MethodOutput Query "storageProvider" = QueryStorageProviderResponse
  type MethodStreamingType Query "storageProvider" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\EMgreenfield/sp/query.proto\DC2\rgreenfield.sp\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\FSgoogle/api/annotations.proto\SUB\SUBgreenfield/sp/params.proto\SUB\EMgreenfield/sp/types.proto\"\DC4\n\
    \\DC2QueryParamsRequest\"J\n\
    \\DC3QueryParamsResponse\DC23\n\
    \\ACKparams\CAN\SOH \SOH(\v2\NAK.greenfield.sp.ParamsR\ACKparamsB\EOT\200\222\US\NUL\"f\n\
    \\FSQueryStorageProvidersRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\154\SOH\n\
    \\GSQueryStorageProvidersResponse\DC20\n\
    \\ETXsps\CAN\SOH \ETX(\v2\RS.greenfield.sp.StorageProviderR\ETXsps\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\\\n\
    \#QueryGetSpStoragePriceByTimeRequest\DC2\ETB\n\
    \\asp_addr\CAN\SOH \SOH(\tR\ACKspAddr\DC2\FS\n\
    \\ttimestamp\CAN\STX \SOH(\ETXR\ttimestamp\"u\n\
    \$QueryGetSpStoragePriceByTimeResponse\DC2M\n\
    \\DLEsp_storage_price\CAN\SOH \SOH(\v2\GS.greenfield.sp.SpStoragePriceR\SOspStoragePriceB\EOT\200\222\US\NUL\"J\n\
    \*QueryGetSecondarySpStorePriceByTimeRequest\DC2\FS\n\
    \\ttimestamp\CAN\SOH \SOH(\ETXR\ttimestamp\"\146\SOH\n\
    \+QueryGetSecondarySpStorePriceByTimeResponse\DC2c\n\
    \\CANsecondary_sp_store_price\CAN\SOH \SOH(\v2$.greenfield.sp.SecondarySpStorePriceR\NAKsecondarySpStorePriceB\EOT\200\222\US\NUL\";\n\
    \\ESCQueryStorageProviderRequest\DC2\FS\n\
    \\tspAddress\CAN\SOH \SOH(\tR\tspAddress\"h\n\
    \\FSQueryStorageProviderResponse\DC2H\n\
    \\SIstorageProvider\CAN\SOH \SOH(\v2\RS.greenfield.sp.StorageProviderR\SIstorageProvider2\234\ACK\n\
    \\ENQQuery\DC2n\n\
    \\ACKParams\DC2!.greenfield.sp.QueryParamsRequest\SUB\".greenfield.sp.QueryParamsResponse\"\GS\130\211\228\147\STX\ETB\DC2\NAK/greenfield/sp/params\DC2\148\SOH\n\
    \\DLEStorageProviders\DC2+.greenfield.sp.QueryStorageProvidersRequest\SUB,.greenfield.sp.QueryStorageProvidersResponse\"%\130\211\228\147\STX\US\DC2\GS/greenfield/storage_providers\DC2\210\SOH\n\
    \\FSQueryGetSpStoragePriceByTime\DC22.greenfield.sp.QueryGetSpStoragePriceByTimeRequest\SUB3.greenfield.sp.QueryGetSpStoragePriceByTimeResponse\"I\130\211\228\147\STXC\DC2A/greenfield/sp/get_sp_storage_price_by_time/{sp_addr}/{timestamp}\DC2\229\SOH\n\
    \#QueryGetSecondarySpStorePriceByTime\DC29.greenfield.sp.QueryGetSecondarySpStorePriceByTimeRequest\SUB:.greenfield.sp.QueryGetSecondarySpStorePriceByTimeResponse\"G\130\211\228\147\STXA\DC2?/greenfield/sp/get_secondary_sp_store_price_by_time/{timestamp}\DC2\156\SOH\n\
    \\SIStorageProvider\DC2*.greenfield.sp.QueryStorageProviderRequest\SUB+.greenfield.sp.QueryStorageProviderResponse\"0\130\211\228\147\STX*\DC2(/greenfield/storage_provider/{spAddress}B,Z*github.com/bnb-chain/greenfield/x/sp/typesJ\140\DC3\n\
    \\ACK\DC2\EOT\NUL\NUL]\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL\RS\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL&\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL$\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL#\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULA\n\
    \:\n\
    \\STX\b\v\DC2\ETX\r\NULA2/ this line is used by starport scaffolding # 1\n\
    \\n\
    \5\n\
    \\STX\ACK\NUL\DC2\EOT\DLE\NUL+\SOH\SUB) Query defines the gRPC querier service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\DLE\b\r\n\
    \@\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\DC2\STX\DC4\ETX\SUB2 Parameters queries the parameters of the module.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC2\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC2\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC2*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\DC3\EOT;\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\DC3\EOT;\n\
    \m\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\EM\STX\ESC\ETX\SUB. Queries a list of GetStorageProviders items.\n\
    \2/ this line is used by starport scaffolding # 2\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\EM\ACK\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\EM\ETB3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\EM>[\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\SUB\EOTC\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\SUB\EOTC\n\
    \9\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\RS\STX \ETX\SUB+ get storage price of specific sp and time\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\RS\ACK\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\RS#F\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\RSQu\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\US\EOTg\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX\US\EOTg\n\
    \1\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\EOT#\STX%\ETX\SUB# get secondary store price by time\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX#\ACK)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX#*T\n\
    \\r\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\EOT#_\138\SOH\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\ETX$\EOTe\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ETX\EOT\176\202\188\"\STX\DC2\ETX$\EOTe\n\
    \?\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\EOT(\STX*\ETX\SUB1 Queries a storage provider with specify address\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX(\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX(\SYN1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX(<X\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX)\EOTN\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\EOT\EOT\176\202\188\"\STX\DC2\ETX)\EOTN\n\
    \P\n\
    \\STX\EOT\NUL\DC2\ETX.\NUL\GS\SUBE QueryParamsRequest is request type for the Query/Params RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX.\b\SUB\n\
    \S\n\
    \\STX\EOT\SOH\DC2\EOT1\NUL4\SOH\SUBG QueryParamsResponse is response type for the Query/Params RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX1\b\ESC\n\
    \>\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX3\STX3\SUB1 params holds all the parameters of this module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX3\t\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX3\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX3\DC42\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\ETX3\NAK1\n\
    \;\n\
    \\STX\EOT\STX\DC2\EOT7\NUL:\SOH\SUB/ this line is used by starport scaffolding # 3\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX7\b$\n\
    \I\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX9\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX9\STX'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX9(2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX956\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT<\NULA\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX<\b%\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX=\STX#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX=\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX=\v\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX=\ESC\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX=!\"\n\
    \A\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX@\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX@\STX(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX@)3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX@67\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOTC\NULH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXC\b+\n\
    \%\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXE\STX\NAK\SUB\CAN operator address of sp\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXE\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXE\DC3\DC4\n\
    \U\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXG\STX\SYN\SUBH unix timestamp in seconds. If it's 0, it will return the latest price.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXG\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXG\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXG\DC4\NAK\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOTJ\NULL\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXJ\b,\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXK\STXE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETXK\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXK\DC1!\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXK$%\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\ETXK&D\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\NUL\b\233\251\ETX\DC2\ETXK'C\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOTN\NULQ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXN\b2\n\
    \U\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXP\STX\SYN\SUBH unix timestamp in seconds. If it's 0, it will return the latest price.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXP\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXP\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXP\DC4\NAK\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOTS\NULU\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXS\b3\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXT\STXT\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETXT\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXT\CAN0\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXT34\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\ETXT5S\n\
    \\SI\n\
    \\b\EOT\a\STX\NUL\b\233\251\ETX\DC2\ETXT6R\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOTW\NULY\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXW\b#\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXX\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETXX\STX\b\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXX\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXX\NAK\SYN\n\
    \\n\
    \\n\
    \\STX\EOT\t\DC2\EOT[\NUL]\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETX[\b$\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETX\\\STX&\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\ETX\\\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETX\\\DC2!\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETX\\$%b\ACKproto3"