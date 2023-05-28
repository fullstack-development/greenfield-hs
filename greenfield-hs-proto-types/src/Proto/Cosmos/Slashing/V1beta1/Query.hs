{- This file was auto-generated from cosmos/slashing/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Slashing.V1beta1.Query (
        Query(..), QueryParamsRequest(), QueryParamsResponse(),
        QuerySigningInfoRequest(), QuerySigningInfoResponse(),
        QuerySigningInfosRequest(), QuerySigningInfosResponse()
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
import qualified Proto.Cosmos.Slashing.V1beta1.Slashing
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
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
    = Data.Text.pack "cosmos.slashing.v1beta1.QueryParamsRequest"
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
     
         * 'Proto.Cosmos.Slashing.V1beta1.Query_Fields.params' @:: Lens' QueryParamsResponse Proto.Cosmos.Slashing.V1beta1.Slashing.Params@
         * 'Proto.Cosmos.Slashing.V1beta1.Query_Fields.maybe'params' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Cosmos.Slashing.V1beta1.Slashing.Params)@ -}
data QueryParamsResponse
  = QueryParamsResponse'_constructor {_QueryParamsResponse'params :: !(Prelude.Maybe Proto.Cosmos.Slashing.V1beta1.Slashing.Params),
                                      _QueryParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsResponse "params" Proto.Cosmos.Slashing.V1beta1.Slashing.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'params" (Prelude.Maybe Proto.Cosmos.Slashing.V1beta1.Slashing.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsResponse where
  messageName _
    = Data.Text.pack "cosmos.slashing.v1beta1.QueryParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryParamsResponse\DC2B\n\
      \\ACKparams\CAN\SOH \SOH(\v2\US.cosmos.slashing.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Slashing.V1beta1.Slashing.Params)
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
     
         * 'Proto.Cosmos.Slashing.V1beta1.Query_Fields.consAddress' @:: Lens' QuerySigningInfoRequest Data.Text.Text@ -}
data QuerySigningInfoRequest
  = QuerySigningInfoRequest'_constructor {_QuerySigningInfoRequest'consAddress :: !Data.Text.Text,
                                          _QuerySigningInfoRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySigningInfoRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySigningInfoRequest "consAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySigningInfoRequest'consAddress
           (\ x__ y__ -> x__ {_QuerySigningInfoRequest'consAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySigningInfoRequest where
  messageName _
    = Data.Text.pack "cosmos.slashing.v1beta1.QuerySigningInfoRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBQuerySigningInfoRequest\DC2;\n\
      \\fcons_address\CAN\SOH \SOH(\tR\vconsAddressB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        consAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cons_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"consAddress")) ::
              Data.ProtoLens.FieldDescriptor QuerySigningInfoRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, consAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySigningInfoRequest'_unknownFields
        (\ x__ y__ -> x__ {_QuerySigningInfoRequest'_unknownFields = y__})
  defMessage
    = QuerySigningInfoRequest'_constructor
        {_QuerySigningInfoRequest'consAddress = Data.ProtoLens.fieldDefault,
         _QuerySigningInfoRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySigningInfoRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QuerySigningInfoRequest
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
                                       "cons_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"consAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QuerySigningInfoRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"consAddress") _x
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
instance Control.DeepSeq.NFData QuerySigningInfoRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySigningInfoRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QuerySigningInfoRequest'consAddress x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Slashing.V1beta1.Query_Fields.valSigningInfo' @:: Lens' QuerySigningInfoResponse Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo@
         * 'Proto.Cosmos.Slashing.V1beta1.Query_Fields.maybe'valSigningInfo' @:: Lens' QuerySigningInfoResponse (Prelude.Maybe Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo)@ -}
data QuerySigningInfoResponse
  = QuerySigningInfoResponse'_constructor {_QuerySigningInfoResponse'valSigningInfo :: !(Prelude.Maybe Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo),
                                           _QuerySigningInfoResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySigningInfoResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySigningInfoResponse "valSigningInfo" Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySigningInfoResponse'valSigningInfo
           (\ x__ y__
              -> x__ {_QuerySigningInfoResponse'valSigningInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuerySigningInfoResponse "maybe'valSigningInfo" (Prelude.Maybe Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySigningInfoResponse'valSigningInfo
           (\ x__ y__
              -> x__ {_QuerySigningInfoResponse'valSigningInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySigningInfoResponse where
  messageName _
    = Data.Text.pack "cosmos.slashing.v1beta1.QuerySigningInfoResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANQuerySigningInfoResponse\DC2b\n\
      \\DLEval_signing_info\CAN\SOH \SOH(\v2-.cosmos.slashing.v1beta1.ValidatorSigningInfoR\SOvalSigningInfoB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        valSigningInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "val_signing_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'valSigningInfo")) ::
              Data.ProtoLens.FieldDescriptor QuerySigningInfoResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, valSigningInfo__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySigningInfoResponse'_unknownFields
        (\ x__ y__ -> x__ {_QuerySigningInfoResponse'_unknownFields = y__})
  defMessage
    = QuerySigningInfoResponse'_constructor
        {_QuerySigningInfoResponse'valSigningInfo = Prelude.Nothing,
         _QuerySigningInfoResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySigningInfoResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QuerySigningInfoResponse
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
                                       "val_signing_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"valSigningInfo") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QuerySigningInfoResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'valSigningInfo") _x
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
instance Control.DeepSeq.NFData QuerySigningInfoResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySigningInfoResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QuerySigningInfoResponse'valSigningInfo x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Slashing.V1beta1.Query_Fields.pagination' @:: Lens' QuerySigningInfosRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Slashing.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QuerySigningInfosRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QuerySigningInfosRequest
  = QuerySigningInfosRequest'_constructor {_QuerySigningInfosRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                           _QuerySigningInfosRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySigningInfosRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySigningInfosRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySigningInfosRequest'pagination
           (\ x__ y__ -> x__ {_QuerySigningInfosRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuerySigningInfosRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySigningInfosRequest'pagination
           (\ x__ y__ -> x__ {_QuerySigningInfosRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySigningInfosRequest where
  messageName _
    = Data.Text.pack "cosmos.slashing.v1beta1.QuerySigningInfosRequest"
  packedMessageDescriptor _
    = "\n\
      \\CANQuerySigningInfosRequest\DC2F\n\
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
              Data.ProtoLens.FieldDescriptor QuerySigningInfosRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySigningInfosRequest'_unknownFields
        (\ x__ y__ -> x__ {_QuerySigningInfosRequest'_unknownFields = y__})
  defMessage
    = QuerySigningInfosRequest'_constructor
        {_QuerySigningInfosRequest'pagination = Prelude.Nothing,
         _QuerySigningInfosRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySigningInfosRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QuerySigningInfosRequest
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
          (do loop Data.ProtoLens.defMessage) "QuerySigningInfosRequest"
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
instance Control.DeepSeq.NFData QuerySigningInfosRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySigningInfosRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QuerySigningInfosRequest'pagination x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Slashing.V1beta1.Query_Fields.info' @:: Lens' QuerySigningInfosResponse [Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo]@
         * 'Proto.Cosmos.Slashing.V1beta1.Query_Fields.vec'info' @:: Lens' QuerySigningInfosResponse (Data.Vector.Vector Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo)@
         * 'Proto.Cosmos.Slashing.V1beta1.Query_Fields.pagination' @:: Lens' QuerySigningInfosResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Slashing.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QuerySigningInfosResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QuerySigningInfosResponse
  = QuerySigningInfosResponse'_constructor {_QuerySigningInfosResponse'info :: !(Data.Vector.Vector Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo),
                                            _QuerySigningInfosResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                            _QuerySigningInfosResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySigningInfosResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySigningInfosResponse "info" [Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySigningInfosResponse'info
           (\ x__ y__ -> x__ {_QuerySigningInfosResponse'info = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QuerySigningInfosResponse "vec'info" (Data.Vector.Vector Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySigningInfosResponse'info
           (\ x__ y__ -> x__ {_QuerySigningInfosResponse'info = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QuerySigningInfosResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySigningInfosResponse'pagination
           (\ x__ y__ -> x__ {_QuerySigningInfosResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuerySigningInfosResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySigningInfosResponse'pagination
           (\ x__ y__ -> x__ {_QuerySigningInfosResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySigningInfosResponse where
  messageName _
    = Data.Text.pack
        "cosmos.slashing.v1beta1.QuerySigningInfosResponse"
  packedMessageDescriptor _
    = "\n\
      \\EMQuerySigningInfosResponse\DC2L\n\
      \\EOTinfo\CAN\SOH \ETX(\v2-.cosmos.slashing.v1beta1.ValidatorSigningInfoR\EOTinfoB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        info__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"info")) ::
              Data.ProtoLens.FieldDescriptor QuerySigningInfosResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QuerySigningInfosResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, info__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySigningInfosResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QuerySigningInfosResponse'_unknownFields = y__})
  defMessage
    = QuerySigningInfosResponse'_constructor
        {_QuerySigningInfosResponse'info = Data.Vector.Generic.empty,
         _QuerySigningInfosResponse'pagination = Prelude.Nothing,
         _QuerySigningInfosResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySigningInfosResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser QuerySigningInfosResponse
        loop x mutable'info
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'info <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'info)
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
                              (Data.ProtoLens.Field.field @"vec'info") frozen'info x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "info"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'info y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'info
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'info
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'info <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'info)
          "QuerySigningInfosResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'info") _x))
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
instance Control.DeepSeq.NFData QuerySigningInfosResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySigningInfosResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QuerySigningInfosResponse'info x__)
                (Control.DeepSeq.deepseq
                   (_QuerySigningInfosResponse'pagination x__) ()))
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.slashing.v1beta1"
  type ServiceMethods Query = '["params",
                                "signingInfo",
                                "signingInfos"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\140\SOH\n\
      \\ACKParams\DC2+.cosmos.slashing.v1beta1.QueryParamsRequest\SUB,.cosmos.slashing.v1beta1.QueryParamsResponse\"'\130\211\228\147\STX!\DC2\US/cosmos/slashing/v1beta1/params\DC2\177\SOH\n\
      \\vSigningInfo\DC20.cosmos.slashing.v1beta1.QuerySigningInfoRequest\SUB1.cosmos.slashing.v1beta1.QuerySigningInfoResponse\"=\130\211\228\147\STX7\DC25/cosmos/slashing/v1beta1/signing_infos/{cons_address}\DC2\165\SOH\n\
      \\fSigningInfos\DC21.cosmos.slashing.v1beta1.QuerySigningInfosRequest\SUB2.cosmos.slashing.v1beta1.QuerySigningInfosResponse\".\130\211\228\147\STX(\DC2&/cosmos/slashing/v1beta1/signing_infos"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "params" where
  type MethodName Query "params" = "Params"
  type MethodInput Query "params" = QueryParamsRequest
  type MethodOutput Query "params" = QueryParamsResponse
  type MethodStreamingType Query "params" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "signingInfo" where
  type MethodName Query "signingInfo" = "SigningInfo"
  type MethodInput Query "signingInfo" = QuerySigningInfoRequest
  type MethodOutput Query "signingInfo" = QuerySigningInfoResponse
  type MethodStreamingType Query "signingInfo" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "signingInfos" where
  type MethodName Query "signingInfos" = "SigningInfos"
  type MethodInput Query "signingInfos" = QuerySigningInfosRequest
  type MethodOutput Query "signingInfos" = QuerySigningInfosResponse
  type MethodStreamingType Query "signingInfos" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#cosmos/slashing/v1beta1/query.proto\DC2\ETBcosmos.slashing.v1beta1\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\DC4gogoproto/gogo.proto\SUB\FSgoogle/api/annotations.proto\SUB&cosmos/slashing/v1beta1/slashing.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"\DC4\n\
    \\DC2QueryParamsRequest\"Y\n\
    \\DC3QueryParamsResponse\DC2B\n\
    \\ACKparams\CAN\SOH \SOH(\v2\US.cosmos.slashing.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH\"V\n\
    \\ETBQuerySigningInfoRequest\DC2;\n\
    \\fcons_address\CAN\SOH \SOH(\tR\vconsAddressB\CAN\210\180-\DC4cosmos.AddressString\"~\n\
    \\CANQuerySigningInfoResponse\DC2b\n\
    \\DLEval_signing_info\CAN\SOH \SOH(\v2-.cosmos.slashing.v1beta1.ValidatorSigningInfoR\SOvalSigningInfoB\t\200\222\US\NUL\168\231\176*\SOH\"b\n\
    \\CANQuerySigningInfosRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\178\SOH\n\
    \\EMQuerySigningInfosResponse\DC2L\n\
    \\EOTinfo\CAN\SOH \ETX(\v2-.cosmos.slashing.v1beta1.ValidatorSigningInfoR\EOTinfoB\t\200\222\US\NUL\168\231\176*\SOH\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination2\242\ETX\n\
    \\ENQQuery\DC2\140\SOH\n\
    \\ACKParams\DC2+.cosmos.slashing.v1beta1.QueryParamsRequest\SUB,.cosmos.slashing.v1beta1.QueryParamsResponse\"'\130\211\228\147\STX!\DC2\US/cosmos/slashing/v1beta1/params\DC2\177\SOH\n\
    \\vSigningInfo\DC20.cosmos.slashing.v1beta1.QuerySigningInfoRequest\SUB1.cosmos.slashing.v1beta1.QuerySigningInfoResponse\"=\130\211\228\147\STX7\DC25/cosmos/slashing/v1beta1/signing_infos/{cons_address}\DC2\165\SOH\n\
    \\fSigningInfos\DC21.cosmos.slashing.v1beta1.QuerySigningInfosRequest\SUB2.cosmos.slashing.v1beta1.QuerySigningInfosResponse\".\130\211\228\147\STX(\DC2&/cosmos/slashing/v1beta1/signing_infosB/Z-github.com/cosmos/cosmos-sdk/x/slashing/typesJ\170\SI\n\
    \\ACK\DC2\EOT\NUL\NULA\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL \n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL&\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL0\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULD\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\n\
    \\NULD\n\
    \=\n\
    \\STX\ACK\NUL\DC2\EOT\r\NUL\FS\SOH\SUB1 Query provides defines the gRPC querier service\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\r\b\r\n\
    \@\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\SI\STX\DC1\ETX\SUB2 Params queries the parameters of slashing module\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\SI\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\SI\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\SI*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\DLE\EOTE\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\DLE\EOTE\n\
    \J\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\DC4\STX\SYN\ETX\SUB< SigningInfo queries the signing info of given cons address\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DC4\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DC4\DC2)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DC44L\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\NAK\EOT[\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\NAK\EOT[\n\
    \C\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\EM\STX\ESC\ETX\SUB5 SigningInfos queries signing info of all validators\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\EM\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\EM\DC3+\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\EM6O\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\SUB\EOTL\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX\SUB\EOTL\n\
    \S\n\
    \\STX\EOT\NUL\DC2\ETX\US\NUL\GS\SUBH QueryParamsRequest is the request type for the Query/Params RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\US\b\SUB\n\
    \V\n\
    \\STX\EOT\SOH\DC2\EOT\"\NUL$\SOH\SUBJ QueryParamsResponse is the response type for the Query/Params RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\"\b\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX#\STXR\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX#\t\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX#\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX#\DC4Q\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\ETX#\NAK1\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\NUL\b\245\140\166\ENQ\DC2\ETX#3P\n\
    \_\n\
    \\STX\EOT\STX\DC2\EOT(\NUL+\SOH\SUBS QuerySigningInfoRequest is the request type for the Query/SigningInfo RPC\n\
    \ method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX(\b\US\n\
    \C\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX*\STXK\SUB6 cons_address is the address to query signing info of\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX*\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX*\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX*\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX*\SUBJ\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX*\ESCI\n\
    \a\n\
    \\STX\EOT\ETX\DC2\EOT/\NUL2\SOH\SUBU QuerySigningInfoResponse is the response type for the Query/SigningInfo RPC\n\
    \ method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX/\b \n\
    \Q\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX1\STXj\SUBD val_signing_info is the signing info of requested val cons address\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX1\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX1\ETB'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX1*+\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETX1,i\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\233\251\ETX\DC2\ETX1-I\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\NUL\b\245\140\166\ENQ\DC2\ETX1Kh\n\
    \a\n\
    \\STX\EOT\EOT\DC2\EOT6\NUL8\SOH\SUBU QuerySigningInfosRequest is the request type for the Query/SigningInfos RPC\n\
    \ method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX6\b \n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX7\STX7\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETX7\STX'\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX7(2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX756\n\
    \c\n\
    \\STX\EOT\ENQ\DC2\EOT<\NULA\SOH\SUBW QuerySigningInfosResponse is the response type for the Query/SigningInfos RPC\n\
    \ method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX<\b!\n\
    \:\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT>\STX?D\SUB, info is the signing info of all validators\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX>\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETX>\v7\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX>8<\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX>?@\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\ETX?\ACKC\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\NUL\b\233\251\ETX\DC2\ETX?\a#\n\
    \\DLE\n\
    \\t\EOT\ENQ\STX\NUL\b\245\140\166\ENQ\DC2\ETX?%B\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX@\STX8\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\ETX@\STX(\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX@)3\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX@67b\ACKproto3"