{- This file was auto-generated from cosmos/mint/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Mint.V1beta1.Query (
        Query(..), QueryAnnualProvisionsRequest(),
        QueryAnnualProvisionsResponse(), QueryInflationRequest(),
        QueryInflationResponse(), QueryParamsRequest(),
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
import qualified Proto.Amino.Amino
import qualified Proto.Cosmos.Mint.V1beta1.Mint
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
{- | Fields :
      -}
data QueryAnnualProvisionsRequest
  = QueryAnnualProvisionsRequest'_constructor {_QueryAnnualProvisionsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAnnualProvisionsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QueryAnnualProvisionsRequest where
  messageName _
    = Data.Text.pack "cosmos.mint.v1beta1.QueryAnnualProvisionsRequest"
  packedMessageDescriptor _
    = "\n\
      \\FSQueryAnnualProvisionsRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAnnualProvisionsRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryAnnualProvisionsRequest'_unknownFields = y__})
  defMessage
    = QueryAnnualProvisionsRequest'_constructor
        {_QueryAnnualProvisionsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAnnualProvisionsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAnnualProvisionsRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryAnnualProvisionsRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QueryAnnualProvisionsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAnnualProvisionsRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Mint.V1beta1.Query_Fields.annualProvisions' @:: Lens' QueryAnnualProvisionsResponse Data.ByteString.ByteString@ -}
data QueryAnnualProvisionsResponse
  = QueryAnnualProvisionsResponse'_constructor {_QueryAnnualProvisionsResponse'annualProvisions :: !Data.ByteString.ByteString,
                                                _QueryAnnualProvisionsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAnnualProvisionsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAnnualProvisionsResponse "annualProvisions" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAnnualProvisionsResponse'annualProvisions
           (\ x__ y__
              -> x__ {_QueryAnnualProvisionsResponse'annualProvisions = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAnnualProvisionsResponse where
  messageName _
    = Data.Text.pack
        "cosmos.mint.v1beta1.QueryAnnualProvisionsResponse"
  packedMessageDescriptor _
    = "\n\
      \\GSQueryAnnualProvisionsResponse\DC2`\n\
      \\DC1annual_provisions\CAN\SOH \SOH(\fR\DLEannualProvisionsB3\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        annualProvisions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "annual_provisions"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"annualProvisions")) ::
              Data.ProtoLens.FieldDescriptor QueryAnnualProvisionsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, annualProvisions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAnnualProvisionsResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryAnnualProvisionsResponse'_unknownFields = y__})
  defMessage
    = QueryAnnualProvisionsResponse'_constructor
        {_QueryAnnualProvisionsResponse'annualProvisions = Data.ProtoLens.fieldDefault,
         _QueryAnnualProvisionsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAnnualProvisionsResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAnnualProvisionsResponse
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
                                       "annual_provisions"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"annualProvisions") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryAnnualProvisionsResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"annualProvisions") _x
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
instance Control.DeepSeq.NFData QueryAnnualProvisionsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAnnualProvisionsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryAnnualProvisionsResponse'annualProvisions x__) ())
{- | Fields :
      -}
data QueryInflationRequest
  = QueryInflationRequest'_constructor {_QueryInflationRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryInflationRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QueryInflationRequest where
  messageName _
    = Data.Text.pack "cosmos.mint.v1beta1.QueryInflationRequest"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryInflationRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryInflationRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryInflationRequest'_unknownFields = y__})
  defMessage
    = QueryInflationRequest'_constructor
        {_QueryInflationRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryInflationRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryInflationRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryInflationRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QueryInflationRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryInflationRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Mint.V1beta1.Query_Fields.inflation' @:: Lens' QueryInflationResponse Data.ByteString.ByteString@ -}
data QueryInflationResponse
  = QueryInflationResponse'_constructor {_QueryInflationResponse'inflation :: !Data.ByteString.ByteString,
                                         _QueryInflationResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryInflationResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryInflationResponse "inflation" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryInflationResponse'inflation
           (\ x__ y__ -> x__ {_QueryInflationResponse'inflation = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryInflationResponse where
  messageName _
    = Data.Text.pack "cosmos.mint.v1beta1.QueryInflationResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryInflationResponse\DC2Q\n\
      \\tinflation\CAN\SOH \SOH(\fR\tinflationB3\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        inflation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inflation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"inflation")) ::
              Data.ProtoLens.FieldDescriptor QueryInflationResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, inflation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryInflationResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryInflationResponse'_unknownFields = y__})
  defMessage
    = QueryInflationResponse'_constructor
        {_QueryInflationResponse'inflation = Data.ProtoLens.fieldDefault,
         _QueryInflationResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryInflationResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryInflationResponse
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
                                       "inflation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"inflation") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryInflationResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"inflation") _x
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
instance Control.DeepSeq.NFData QueryInflationResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryInflationResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryInflationResponse'inflation x__) ())
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
    = Data.Text.pack "cosmos.mint.v1beta1.QueryParamsRequest"
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
     
         * 'Proto.Cosmos.Mint.V1beta1.Query_Fields.params' @:: Lens' QueryParamsResponse Proto.Cosmos.Mint.V1beta1.Mint.Params@
         * 'Proto.Cosmos.Mint.V1beta1.Query_Fields.maybe'params' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Cosmos.Mint.V1beta1.Mint.Params)@ -}
data QueryParamsResponse
  = QueryParamsResponse'_constructor {_QueryParamsResponse'params :: !(Prelude.Maybe Proto.Cosmos.Mint.V1beta1.Mint.Params),
                                      _QueryParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsResponse "params" Proto.Cosmos.Mint.V1beta1.Mint.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'params" (Prelude.Maybe Proto.Cosmos.Mint.V1beta1.Mint.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsResponse where
  messageName _
    = Data.Text.pack "cosmos.mint.v1beta1.QueryParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryParamsResponse\DC2>\n\
      \\ACKparams\CAN\SOH \SOH(\v2\ESC.cosmos.mint.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Mint.V1beta1.Mint.Params)
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
  type ServicePackage Query = "cosmos.mint.v1beta1"
  type ServiceMethods Query = '["annualProvisions",
                                "inflation",
                                "params"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\128\SOH\n\
      \\ACKParams\DC2'.cosmos.mint.v1beta1.QueryParamsRequest\SUB(.cosmos.mint.v1beta1.QueryParamsResponse\"#\130\211\228\147\STX\GS\DC2\ESC/cosmos/mint/v1beta1/params\DC2\140\SOH\n\
      \\tInflation\DC2*.cosmos.mint.v1beta1.QueryInflationRequest\SUB+.cosmos.mint.v1beta1.QueryInflationResponse\"&\130\211\228\147\STX \DC2\RS/cosmos/mint/v1beta1/inflation\DC2\169\SOH\n\
      \\DLEAnnualProvisions\DC21.cosmos.mint.v1beta1.QueryAnnualProvisionsRequest\SUB2.cosmos.mint.v1beta1.QueryAnnualProvisionsResponse\".\130\211\228\147\STX(\DC2&/cosmos/mint/v1beta1/annual_provisions"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "params" where
  type MethodName Query "params" = "Params"
  type MethodInput Query "params" = QueryParamsRequest
  type MethodOutput Query "params" = QueryParamsResponse
  type MethodStreamingType Query "params" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "inflation" where
  type MethodName Query "inflation" = "Inflation"
  type MethodInput Query "inflation" = QueryInflationRequest
  type MethodOutput Query "inflation" = QueryInflationResponse
  type MethodStreamingType Query "inflation" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "annualProvisions" where
  type MethodName Query "annualProvisions" = "AnnualProvisions"
  type MethodInput Query "annualProvisions" = QueryAnnualProvisionsRequest
  type MethodOutput Query "annualProvisions" = QueryAnnualProvisionsResponse
  type MethodStreamingType Query "annualProvisions" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\UScosmos/mint/v1beta1/query.proto\DC2\DC3cosmos.mint.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\FSgoogle/api/annotations.proto\SUB\RScosmos/mint/v1beta1/mint.proto\SUB\DC1amino/amino.proto\"\DC4\n\
    \\DC2QueryParamsRequest\"U\n\
    \\DC3QueryParamsResponse\DC2>\n\
    \\ACKparams\CAN\SOH \SOH(\v2\ESC.cosmos.mint.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH\"\ETB\n\
    \\NAKQueryInflationRequest\"k\n\
    \\SYNQueryInflationResponse\DC2Q\n\
    \\tinflation\CAN\SOH \SOH(\fR\tinflationB3\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\168\231\176*\SOH\"\RS\n\
    \\FSQueryAnnualProvisionsRequest\"\129\SOH\n\
    \\GSQueryAnnualProvisionsResponse\DC2`\n\
    \\DC1annual_provisions\CAN\SOH \SOH(\fR\DLEannualProvisionsB3\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\168\231\176*\SOH2\197\ETX\n\
    \\ENQQuery\DC2\128\SOH\n\
    \\ACKParams\DC2'.cosmos.mint.v1beta1.QueryParamsRequest\SUB(.cosmos.mint.v1beta1.QueryParamsResponse\"#\130\211\228\147\STX\GS\DC2\ESC/cosmos/mint/v1beta1/params\DC2\140\SOH\n\
    \\tInflation\DC2*.cosmos.mint.v1beta1.QueryInflationRequest\SUB+.cosmos.mint.v1beta1.QueryInflationResponse\"&\130\211\228\147\STX \DC2\RS/cosmos/mint/v1beta1/inflation\DC2\169\SOH\n\
    \\DLEAnnualProvisions\DC21.cosmos.mint.v1beta1.QueryAnnualProvisionsRequest\SUB2.cosmos.mint.v1beta1.QueryAnnualProvisionsResponse\".\130\211\228\147\STX(\DC2&/cosmos/mint/v1beta1/annual_provisionsB+Z)github.com/cosmos/cosmos-sdk/x/mint/typesJ\246\r\n\
    \\ACK\DC2\EOT\NUL\NUL@\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL@\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NUL@\n\
    \>\n\
    \\STX\ACK\NUL\DC2\EOT\v\NUL\SUB\SOH\SUB2 Query provides defines the gRPC querier service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\v\b\r\n\
    \C\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\r\STX\SI\ETX\SUB5 Params returns the total set of minting parameters.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\r\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\r\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\r*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\SO\EOTA\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\SO\EOTA\n\
    \F\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\DC2\STX\DC4\ETX\SUB8 Inflation returns the current minting inflation value.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DC2\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DC2\DLE%\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DC20F\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\DC3\EOTD\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\DC3\EOTD\n\
    \I\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\ETB\STX\EM\ETX\SUB; AnnualProvisions current minting annual provisions value.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\ETB\ACK\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\ETB\ETB3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\ETB>[\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\CAN\EOTL\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX\CAN\EOTL\n\
    \T\n\
    \\STX\EOT\NUL\DC2\ETX\GS\NUL\GS\SUBI QueryParamsRequest is the request type for the Query/Params RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\GS\b\SUB\n\
    \W\n\
    \\STX\EOT\SOH\DC2\EOT \NUL#\SOH\SUBK QueryParamsResponse is the response type for the Query/Params RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX \b\ESC\n\
    \;\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\"\STXR\SUB. params defines the parameters of the module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\"\t\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\"\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX\"\DC4Q\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\ETX\"\NAK1\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\NUL\b\245\140\166\ENQ\DC2\ETX\"3P\n\
    \Z\n\
    \\STX\EOT\STX\DC2\ETX&\NUL \SUBO QueryInflationRequest is the request type for the Query/Inflation RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX&\b\GS\n\
    \^\n\
    \\STX\EOT\ETX\DC2\EOT*\NUL1\SOH\SUBR QueryInflationResponse is the response type for the Query/Inflation RPC\n\
    \ method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX*\b\RS\n\
    \A\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT,\STX0\EOT\SUB3 inflation is the current minting inflation value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX,\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX,\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX,\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\EOT,\SYN0\ETX\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\235\251\ETX\DC2\ETX-\EOTE\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\233\251\ETX\DC2\ETX.\EOT\"\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\NUL\b\245\140\166\ENQ\DC2\ETX/\EOT!\n\
    \i\n\
    \\STX\EOT\EOT\DC2\ETX5\NUL'\SUB^ QueryAnnualProvisionsRequest is the request type for the\n\
    \ Query/AnnualProvisions RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX5\b$\n\
    \l\n\
    \\STX\EOT\ENQ\DC2\EOT9\NUL@\SOH\SUB` QueryAnnualProvisionsResponse is the response type for the\n\
    \ Query/AnnualProvisions RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX9\b%\n\
    \Q\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT;\STX?\EOT\SUBC annual_provisions is the current minting annual provisions value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX;\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX;\b\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX;\FS\GS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\EOT;\RS?\ETX\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\NUL\b\235\251\ETX\DC2\ETX<\EOTE\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\NUL\b\233\251\ETX\DC2\ETX=\EOT\"\n\
    \\DLE\n\
    \\t\EOT\ENQ\STX\NUL\b\245\140\166\ENQ\DC2\ETX>\EOT!b\ACKproto3"