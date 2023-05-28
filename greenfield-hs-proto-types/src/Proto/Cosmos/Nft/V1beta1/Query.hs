{- This file was auto-generated from cosmos/nft/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Nft.V1beta1.Query (
        Query(..), QueryBalanceRequest(), QueryBalanceResponse(),
        QueryClassRequest(), QueryClassResponse(), QueryClassesRequest(),
        QueryClassesResponse(), QueryNFTRequest(), QueryNFTResponse(),
        QueryNFTsRequest(), QueryNFTsResponse(), QueryOwnerRequest(),
        QueryOwnerResponse(), QuerySupplyRequest(), QuerySupplyResponse()
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
import qualified Proto.Cosmos.Nft.V1beta1.Nft
import qualified Proto.Google.Api.Annotations
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.classId' @:: Lens' QueryBalanceRequest Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.owner' @:: Lens' QueryBalanceRequest Data.Text.Text@ -}
data QueryBalanceRequest
  = QueryBalanceRequest'_constructor {_QueryBalanceRequest'classId :: !Data.Text.Text,
                                      _QueryBalanceRequest'owner :: !Data.Text.Text,
                                      _QueryBalanceRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryBalanceRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryBalanceRequest "classId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryBalanceRequest'classId
           (\ x__ y__ -> x__ {_QueryBalanceRequest'classId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryBalanceRequest "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryBalanceRequest'owner
           (\ x__ y__ -> x__ {_QueryBalanceRequest'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryBalanceRequest where
  messageName _
    = Data.Text.pack "cosmos.nft.v1beta1.QueryBalanceRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryBalanceRequest\DC2\EM\n\
      \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\DC4\n\
      \\ENQowner\CAN\STX \SOH(\tR\ENQowner"
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
              Data.ProtoLens.FieldDescriptor QueryBalanceRequest
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor QueryBalanceRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, classId__field_descriptor),
           (Data.ProtoLens.Tag 2, owner__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryBalanceRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryBalanceRequest'_unknownFields = y__})
  defMessage
    = QueryBalanceRequest'_constructor
        {_QueryBalanceRequest'classId = Data.ProtoLens.fieldDefault,
         _QueryBalanceRequest'owner = Data.ProtoLens.fieldDefault,
         _QueryBalanceRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryBalanceRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryBalanceRequest
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
                                       "owner"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryBalanceRequest"
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
instance Control.DeepSeq.NFData QueryBalanceRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryBalanceRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryBalanceRequest'classId x__)
                (Control.DeepSeq.deepseq (_QueryBalanceRequest'owner x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.amount' @:: Lens' QueryBalanceResponse Data.Word.Word64@ -}
data QueryBalanceResponse
  = QueryBalanceResponse'_constructor {_QueryBalanceResponse'amount :: !Data.Word.Word64,
                                       _QueryBalanceResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryBalanceResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryBalanceResponse "amount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryBalanceResponse'amount
           (\ x__ y__ -> x__ {_QueryBalanceResponse'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryBalanceResponse where
  messageName _
    = Data.Text.pack "cosmos.nft.v1beta1.QueryBalanceResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4QueryBalanceResponse\DC2\SYN\n\
      \\ACKamount\CAN\SOH \SOH(\EOTR\ACKamount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor QueryBalanceResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryBalanceResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryBalanceResponse'_unknownFields = y__})
  defMessage
    = QueryBalanceResponse'_constructor
        {_QueryBalanceResponse'amount = Data.ProtoLens.fieldDefault,
         _QueryBalanceResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryBalanceResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryBalanceResponse
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "amount"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"amount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryBalanceResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"amount") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryBalanceResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryBalanceResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryBalanceResponse'amount x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.classId' @:: Lens' QueryClassRequest Data.Text.Text@ -}
data QueryClassRequest
  = QueryClassRequest'_constructor {_QueryClassRequest'classId :: !Data.Text.Text,
                                    _QueryClassRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryClassRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryClassRequest "classId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryClassRequest'classId
           (\ x__ y__ -> x__ {_QueryClassRequest'classId = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryClassRequest where
  messageName _
    = Data.Text.pack "cosmos.nft.v1beta1.QueryClassRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC1QueryClassRequest\DC2\EM\n\
      \\bclass_id\CAN\SOH \SOH(\tR\aclassId"
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
              Data.ProtoLens.FieldDescriptor QueryClassRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, classId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryClassRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryClassRequest'_unknownFields = y__})
  defMessage
    = QueryClassRequest'_constructor
        {_QueryClassRequest'classId = Data.ProtoLens.fieldDefault,
         _QueryClassRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryClassRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryClassRequest
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryClassRequest"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryClassRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryClassRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryClassRequest'classId x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.class'' @:: Lens' QueryClassResponse Proto.Cosmos.Nft.V1beta1.Nft.Class@
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.maybe'class'' @:: Lens' QueryClassResponse (Prelude.Maybe Proto.Cosmos.Nft.V1beta1.Nft.Class)@ -}
data QueryClassResponse
  = QueryClassResponse'_constructor {_QueryClassResponse'class' :: !(Prelude.Maybe Proto.Cosmos.Nft.V1beta1.Nft.Class),
                                     _QueryClassResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryClassResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryClassResponse "class'" Proto.Cosmos.Nft.V1beta1.Nft.Class where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryClassResponse'class'
           (\ x__ y__ -> x__ {_QueryClassResponse'class' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryClassResponse "maybe'class'" (Prelude.Maybe Proto.Cosmos.Nft.V1beta1.Nft.Class) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryClassResponse'class'
           (\ x__ y__ -> x__ {_QueryClassResponse'class' = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryClassResponse where
  messageName _
    = Data.Text.pack "cosmos.nft.v1beta1.QueryClassResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2QueryClassResponse\DC2/\n\
      \\ENQclass\CAN\SOH \SOH(\v2\EM.cosmos.nft.v1beta1.ClassR\ENQclass"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        class'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "class"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Nft.V1beta1.Nft.Class)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'class'")) ::
              Data.ProtoLens.FieldDescriptor QueryClassResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, class'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryClassResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryClassResponse'_unknownFields = y__})
  defMessage
    = QueryClassResponse'_constructor
        {_QueryClassResponse'class' = Prelude.Nothing,
         _QueryClassResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryClassResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryClassResponse
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
                                       "class"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"class'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryClassResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'class'") _x
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
instance Control.DeepSeq.NFData QueryClassResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryClassResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryClassResponse'class' x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.pagination' @:: Lens' QueryClassesRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryClassesRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryClassesRequest
  = QueryClassesRequest'_constructor {_QueryClassesRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                      _QueryClassesRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryClassesRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryClassesRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryClassesRequest'pagination
           (\ x__ y__ -> x__ {_QueryClassesRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryClassesRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryClassesRequest'pagination
           (\ x__ y__ -> x__ {_QueryClassesRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryClassesRequest where
  messageName _
    = Data.Text.pack "cosmos.nft.v1beta1.QueryClassesRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryClassesRequest\DC2F\n\
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
              Data.ProtoLens.FieldDescriptor QueryClassesRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryClassesRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryClassesRequest'_unknownFields = y__})
  defMessage
    = QueryClassesRequest'_constructor
        {_QueryClassesRequest'pagination = Prelude.Nothing,
         _QueryClassesRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryClassesRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryClassesRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryClassesRequest"
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
instance Control.DeepSeq.NFData QueryClassesRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryClassesRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryClassesRequest'pagination x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.classes' @:: Lens' QueryClassesResponse [Proto.Cosmos.Nft.V1beta1.Nft.Class]@
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.vec'classes' @:: Lens' QueryClassesResponse (Data.Vector.Vector Proto.Cosmos.Nft.V1beta1.Nft.Class)@
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.pagination' @:: Lens' QueryClassesResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryClassesResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryClassesResponse
  = QueryClassesResponse'_constructor {_QueryClassesResponse'classes :: !(Data.Vector.Vector Proto.Cosmos.Nft.V1beta1.Nft.Class),
                                       _QueryClassesResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                       _QueryClassesResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryClassesResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryClassesResponse "classes" [Proto.Cosmos.Nft.V1beta1.Nft.Class] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryClassesResponse'classes
           (\ x__ y__ -> x__ {_QueryClassesResponse'classes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryClassesResponse "vec'classes" (Data.Vector.Vector Proto.Cosmos.Nft.V1beta1.Nft.Class) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryClassesResponse'classes
           (\ x__ y__ -> x__ {_QueryClassesResponse'classes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryClassesResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryClassesResponse'pagination
           (\ x__ y__ -> x__ {_QueryClassesResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryClassesResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryClassesResponse'pagination
           (\ x__ y__ -> x__ {_QueryClassesResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryClassesResponse where
  messageName _
    = Data.Text.pack "cosmos.nft.v1beta1.QueryClassesResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4QueryClassesResponse\DC23\n\
      \\aclasses\CAN\SOH \ETX(\v2\EM.cosmos.nft.v1beta1.ClassR\aclasses\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        classes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "classes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Nft.V1beta1.Nft.Class)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"classes")) ::
              Data.ProtoLens.FieldDescriptor QueryClassesResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryClassesResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, classes__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryClassesResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryClassesResponse'_unknownFields = y__})
  defMessage
    = QueryClassesResponse'_constructor
        {_QueryClassesResponse'classes = Data.Vector.Generic.empty,
         _QueryClassesResponse'pagination = Prelude.Nothing,
         _QueryClassesResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryClassesResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Nft.V1beta1.Nft.Class
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryClassesResponse
        loop x mutable'classes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'classes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'classes)
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
                              (Data.ProtoLens.Field.field @"vec'classes") frozen'classes x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "classes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'classes y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'classes
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'classes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'classes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'classes)
          "QueryClassesResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'classes") _x))
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
instance Control.DeepSeq.NFData QueryClassesResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryClassesResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryClassesResponse'classes x__)
                (Control.DeepSeq.deepseq
                   (_QueryClassesResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.classId' @:: Lens' QueryNFTRequest Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.id' @:: Lens' QueryNFTRequest Data.Text.Text@ -}
data QueryNFTRequest
  = QueryNFTRequest'_constructor {_QueryNFTRequest'classId :: !Data.Text.Text,
                                  _QueryNFTRequest'id :: !Data.Text.Text,
                                  _QueryNFTRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryNFTRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryNFTRequest "classId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryNFTRequest'classId
           (\ x__ y__ -> x__ {_QueryNFTRequest'classId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryNFTRequest "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryNFTRequest'id (\ x__ y__ -> x__ {_QueryNFTRequest'id = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryNFTRequest where
  messageName _ = Data.Text.pack "cosmos.nft.v1beta1.QueryNFTRequest"
  packedMessageDescriptor _
    = "\n\
      \\SIQueryNFTRequest\DC2\EM\n\
      \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\tR\STXid"
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
              Data.ProtoLens.FieldDescriptor QueryNFTRequest
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor QueryNFTRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, classId__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryNFTRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryNFTRequest'_unknownFields = y__})
  defMessage
    = QueryNFTRequest'_constructor
        {_QueryNFTRequest'classId = Data.ProtoLens.fieldDefault,
         _QueryNFTRequest'id = Data.ProtoLens.fieldDefault,
         _QueryNFTRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryNFTRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryNFTRequest
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryNFTRequest"
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData QueryNFTRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryNFTRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryNFTRequest'classId x__)
                (Control.DeepSeq.deepseq (_QueryNFTRequest'id x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.nft' @:: Lens' QueryNFTResponse Proto.Cosmos.Nft.V1beta1.Nft.NFT@
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.maybe'nft' @:: Lens' QueryNFTResponse (Prelude.Maybe Proto.Cosmos.Nft.V1beta1.Nft.NFT)@ -}
data QueryNFTResponse
  = QueryNFTResponse'_constructor {_QueryNFTResponse'nft :: !(Prelude.Maybe Proto.Cosmos.Nft.V1beta1.Nft.NFT),
                                   _QueryNFTResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryNFTResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryNFTResponse "nft" Proto.Cosmos.Nft.V1beta1.Nft.NFT where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryNFTResponse'nft
           (\ x__ y__ -> x__ {_QueryNFTResponse'nft = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryNFTResponse "maybe'nft" (Prelude.Maybe Proto.Cosmos.Nft.V1beta1.Nft.NFT) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryNFTResponse'nft
           (\ x__ y__ -> x__ {_QueryNFTResponse'nft = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryNFTResponse where
  messageName _
    = Data.Text.pack "cosmos.nft.v1beta1.QueryNFTResponse"
  packedMessageDescriptor _
    = "\n\
      \\DLEQueryNFTResponse\DC2)\n\
      \\ETXnft\CAN\SOH \SOH(\v2\ETB.cosmos.nft.v1beta1.NFTR\ETXnft"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nft__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nft"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Nft.V1beta1.Nft.NFT)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nft")) ::
              Data.ProtoLens.FieldDescriptor QueryNFTResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, nft__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryNFTResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryNFTResponse'_unknownFields = y__})
  defMessage
    = QueryNFTResponse'_constructor
        {_QueryNFTResponse'nft = Prelude.Nothing,
         _QueryNFTResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryNFTResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryNFTResponse
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
                                       "nft"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nft") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryNFTResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nft") _x
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
instance Control.DeepSeq.NFData QueryNFTResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryNFTResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryNFTResponse'nft x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.classId' @:: Lens' QueryNFTsRequest Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.owner' @:: Lens' QueryNFTsRequest Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.pagination' @:: Lens' QueryNFTsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryNFTsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryNFTsRequest
  = QueryNFTsRequest'_constructor {_QueryNFTsRequest'classId :: !Data.Text.Text,
                                   _QueryNFTsRequest'owner :: !Data.Text.Text,
                                   _QueryNFTsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                   _QueryNFTsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryNFTsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryNFTsRequest "classId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryNFTsRequest'classId
           (\ x__ y__ -> x__ {_QueryNFTsRequest'classId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryNFTsRequest "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryNFTsRequest'owner
           (\ x__ y__ -> x__ {_QueryNFTsRequest'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryNFTsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryNFTsRequest'pagination
           (\ x__ y__ -> x__ {_QueryNFTsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryNFTsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryNFTsRequest'pagination
           (\ x__ y__ -> x__ {_QueryNFTsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryNFTsRequest where
  messageName _
    = Data.Text.pack "cosmos.nft.v1beta1.QueryNFTsRequest"
  packedMessageDescriptor _
    = "\n\
      \\DLEQueryNFTsRequest\DC2\EM\n\
      \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\DC4\n\
      \\ENQowner\CAN\STX \SOH(\tR\ENQowner\DC2F\n\
      \\n\
      \pagination\CAN\ETX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
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
              Data.ProtoLens.FieldDescriptor QueryNFTsRequest
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor QueryNFTsRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryNFTsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, classId__field_descriptor),
           (Data.ProtoLens.Tag 2, owner__field_descriptor),
           (Data.ProtoLens.Tag 3, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryNFTsRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryNFTsRequest'_unknownFields = y__})
  defMessage
    = QueryNFTsRequest'_constructor
        {_QueryNFTsRequest'classId = Data.ProtoLens.fieldDefault,
         _QueryNFTsRequest'owner = Data.ProtoLens.fieldDefault,
         _QueryNFTsRequest'pagination = Prelude.Nothing,
         _QueryNFTsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryNFTsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryNFTsRequest
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
                                       "owner"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
                        26
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
          (do loop Data.ProtoLens.defMessage) "QueryNFTsRequest"
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'pagination") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData QueryNFTsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryNFTsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryNFTsRequest'classId x__)
                (Control.DeepSeq.deepseq
                   (_QueryNFTsRequest'owner x__)
                   (Control.DeepSeq.deepseq (_QueryNFTsRequest'pagination x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.nfts' @:: Lens' QueryNFTsResponse [Proto.Cosmos.Nft.V1beta1.Nft.NFT]@
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.vec'nfts' @:: Lens' QueryNFTsResponse (Data.Vector.Vector Proto.Cosmos.Nft.V1beta1.Nft.NFT)@
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.pagination' @:: Lens' QueryNFTsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.maybe'pagination' @:: Lens' QueryNFTsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data QueryNFTsResponse
  = QueryNFTsResponse'_constructor {_QueryNFTsResponse'nfts :: !(Data.Vector.Vector Proto.Cosmos.Nft.V1beta1.Nft.NFT),
                                    _QueryNFTsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                    _QueryNFTsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryNFTsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryNFTsResponse "nfts" [Proto.Cosmos.Nft.V1beta1.Nft.NFT] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryNFTsResponse'nfts
           (\ x__ y__ -> x__ {_QueryNFTsResponse'nfts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryNFTsResponse "vec'nfts" (Data.Vector.Vector Proto.Cosmos.Nft.V1beta1.Nft.NFT) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryNFTsResponse'nfts
           (\ x__ y__ -> x__ {_QueryNFTsResponse'nfts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryNFTsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryNFTsResponse'pagination
           (\ x__ y__ -> x__ {_QueryNFTsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryNFTsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryNFTsResponse'pagination
           (\ x__ y__ -> x__ {_QueryNFTsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryNFTsResponse where
  messageName _
    = Data.Text.pack "cosmos.nft.v1beta1.QueryNFTsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1QueryNFTsResponse\DC2+\n\
      \\EOTnfts\CAN\SOH \ETX(\v2\ETB.cosmos.nft.v1beta1.NFTR\EOTnfts\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nfts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nfts"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Nft.V1beta1.Nft.NFT)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"nfts")) ::
              Data.ProtoLens.FieldDescriptor QueryNFTsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor QueryNFTsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nfts__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryNFTsResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryNFTsResponse'_unknownFields = y__})
  defMessage
    = QueryNFTsResponse'_constructor
        {_QueryNFTsResponse'nfts = Data.Vector.Generic.empty,
         _QueryNFTsResponse'pagination = Prelude.Nothing,
         _QueryNFTsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryNFTsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Nft.V1beta1.Nft.NFT
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryNFTsResponse
        loop x mutable'nfts
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'nfts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'nfts)
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
                              (Data.ProtoLens.Field.field @"vec'nfts") frozen'nfts x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "nfts"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'nfts y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'nfts
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'nfts
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'nfts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'nfts)
          "QueryNFTsResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'nfts") _x))
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
instance Control.DeepSeq.NFData QueryNFTsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryNFTsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryNFTsResponse'nfts x__)
                (Control.DeepSeq.deepseq (_QueryNFTsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.classId' @:: Lens' QueryOwnerRequest Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.id' @:: Lens' QueryOwnerRequest Data.Text.Text@ -}
data QueryOwnerRequest
  = QueryOwnerRequest'_constructor {_QueryOwnerRequest'classId :: !Data.Text.Text,
                                    _QueryOwnerRequest'id :: !Data.Text.Text,
                                    _QueryOwnerRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryOwnerRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryOwnerRequest "classId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryOwnerRequest'classId
           (\ x__ y__ -> x__ {_QueryOwnerRequest'classId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryOwnerRequest "id" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryOwnerRequest'id
           (\ x__ y__ -> x__ {_QueryOwnerRequest'id = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryOwnerRequest where
  messageName _
    = Data.Text.pack "cosmos.nft.v1beta1.QueryOwnerRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC1QueryOwnerRequest\DC2\EM\n\
      \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\tR\STXid"
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
              Data.ProtoLens.FieldDescriptor QueryOwnerRequest
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor QueryOwnerRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, classId__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryOwnerRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryOwnerRequest'_unknownFields = y__})
  defMessage
    = QueryOwnerRequest'_constructor
        {_QueryOwnerRequest'classId = Data.ProtoLens.fieldDefault,
         _QueryOwnerRequest'id = Data.ProtoLens.fieldDefault,
         _QueryOwnerRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryOwnerRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryOwnerRequest
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryOwnerRequest"
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData QueryOwnerRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryOwnerRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryOwnerRequest'classId x__)
                (Control.DeepSeq.deepseq (_QueryOwnerRequest'id x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.owner' @:: Lens' QueryOwnerResponse Data.Text.Text@ -}
data QueryOwnerResponse
  = QueryOwnerResponse'_constructor {_QueryOwnerResponse'owner :: !Data.Text.Text,
                                     _QueryOwnerResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryOwnerResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryOwnerResponse "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryOwnerResponse'owner
           (\ x__ y__ -> x__ {_QueryOwnerResponse'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryOwnerResponse where
  messageName _
    = Data.Text.pack "cosmos.nft.v1beta1.QueryOwnerResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2QueryOwnerResponse\DC2\DC4\n\
      \\ENQowner\CAN\SOH \SOH(\tR\ENQowner"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor QueryOwnerResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, owner__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryOwnerResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryOwnerResponse'_unknownFields = y__})
  defMessage
    = QueryOwnerResponse'_constructor
        {_QueryOwnerResponse'owner = Data.ProtoLens.fieldDefault,
         _QueryOwnerResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryOwnerResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryOwnerResponse
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
                                       "owner"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryOwnerResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
instance Control.DeepSeq.NFData QueryOwnerResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryOwnerResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryOwnerResponse'owner x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.classId' @:: Lens' QuerySupplyRequest Data.Text.Text@ -}
data QuerySupplyRequest
  = QuerySupplyRequest'_constructor {_QuerySupplyRequest'classId :: !Data.Text.Text,
                                     _QuerySupplyRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySupplyRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySupplyRequest "classId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySupplyRequest'classId
           (\ x__ y__ -> x__ {_QuerySupplyRequest'classId = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySupplyRequest where
  messageName _
    = Data.Text.pack "cosmos.nft.v1beta1.QuerySupplyRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2QuerySupplyRequest\DC2\EM\n\
      \\bclass_id\CAN\SOH \SOH(\tR\aclassId"
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
              Data.ProtoLens.FieldDescriptor QuerySupplyRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, classId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySupplyRequest'_unknownFields
        (\ x__ y__ -> x__ {_QuerySupplyRequest'_unknownFields = y__})
  defMessage
    = QuerySupplyRequest'_constructor
        {_QuerySupplyRequest'classId = Data.ProtoLens.fieldDefault,
         _QuerySupplyRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySupplyRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QuerySupplyRequest
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QuerySupplyRequest"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QuerySupplyRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySupplyRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QuerySupplyRequest'classId x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Query_Fields.amount' @:: Lens' QuerySupplyResponse Data.Word.Word64@ -}
data QuerySupplyResponse
  = QuerySupplyResponse'_constructor {_QuerySupplyResponse'amount :: !Data.Word.Word64,
                                      _QuerySupplyResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuerySupplyResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuerySupplyResponse "amount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuerySupplyResponse'amount
           (\ x__ y__ -> x__ {_QuerySupplyResponse'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuerySupplyResponse where
  messageName _
    = Data.Text.pack "cosmos.nft.v1beta1.QuerySupplyResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QuerySupplyResponse\DC2\SYN\n\
      \\ACKamount\CAN\SOH \SOH(\EOTR\ACKamount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor QuerySupplyResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuerySupplyResponse'_unknownFields
        (\ x__ y__ -> x__ {_QuerySupplyResponse'_unknownFields = y__})
  defMessage
    = QuerySupplyResponse'_constructor
        {_QuerySupplyResponse'amount = Data.ProtoLens.fieldDefault,
         _QuerySupplyResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuerySupplyResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QuerySupplyResponse
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "amount"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"amount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QuerySupplyResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"amount") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QuerySupplyResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuerySupplyResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QuerySupplyResponse'amount x__) ())
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.nft.v1beta1"
  type ServiceMethods Query = '["balance",
                                "class",
                                "classes",
                                "nft",
                                "nfts",
                                "owner",
                                "supply"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\148\SOH\n\
      \\aBalance\DC2'.cosmos.nft.v1beta1.QueryBalanceRequest\SUB(.cosmos.nft.v1beta1.QueryBalanceResponse\"6\130\211\228\147\STX0\DC2./cosmos/nft/v1beta1/balance/{owner}/{class_id}\DC2\137\SOH\n\
      \\ENQOwner\DC2%.cosmos.nft.v1beta1.QueryOwnerRequest\SUB&.cosmos.nft.v1beta1.QueryOwnerResponse\"1\130\211\228\147\STX+\DC2)/cosmos/nft/v1beta1/owner/{class_id}/{id}\DC2\136\SOH\n\
      \\ACKSupply\DC2&.cosmos.nft.v1beta1.QuerySupplyRequest\SUB'.cosmos.nft.v1beta1.QuerySupplyResponse\"-\130\211\228\147\STX'\DC2%/cosmos/nft/v1beta1/supply/{class_id}\DC2u\n\
      \\EOTNFTs\DC2$.cosmos.nft.v1beta1.QueryNFTsRequest\SUB%.cosmos.nft.v1beta1.QueryNFTsResponse\" \130\211\228\147\STX\SUB\DC2\CAN/cosmos/nft/v1beta1/nfts\DC2\130\SOH\n\
      \\ETXNFT\DC2#.cosmos.nft.v1beta1.QueryNFTRequest\SUB$.cosmos.nft.v1beta1.QueryNFTResponse\"0\130\211\228\147\STX*\DC2(/cosmos/nft/v1beta1/nfts/{class_id}/{id}\DC2\134\SOH\n\
      \\ENQClass\DC2%.cosmos.nft.v1beta1.QueryClassRequest\SUB&.cosmos.nft.v1beta1.QueryClassResponse\".\130\211\228\147\STX(\DC2&/cosmos/nft/v1beta1/classes/{class_id}\DC2\129\SOH\n\
      \\aClasses\DC2'.cosmos.nft.v1beta1.QueryClassesRequest\SUB(.cosmos.nft.v1beta1.QueryClassesResponse\"#\130\211\228\147\STX\GS\DC2\ESC/cosmos/nft/v1beta1/classes"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "balance" where
  type MethodName Query "balance" = "Balance"
  type MethodInput Query "balance" = QueryBalanceRequest
  type MethodOutput Query "balance" = QueryBalanceResponse
  type MethodStreamingType Query "balance" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "owner" where
  type MethodName Query "owner" = "Owner"
  type MethodInput Query "owner" = QueryOwnerRequest
  type MethodOutput Query "owner" = QueryOwnerResponse
  type MethodStreamingType Query "owner" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "supply" where
  type MethodName Query "supply" = "Supply"
  type MethodInput Query "supply" = QuerySupplyRequest
  type MethodOutput Query "supply" = QuerySupplyResponse
  type MethodStreamingType Query "supply" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "nfts" where
  type MethodName Query "nfts" = "NFTs"
  type MethodInput Query "nfts" = QueryNFTsRequest
  type MethodOutput Query "nfts" = QueryNFTsResponse
  type MethodStreamingType Query "nfts" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "nft" where
  type MethodName Query "nft" = "NFT"
  type MethodInput Query "nft" = QueryNFTRequest
  type MethodOutput Query "nft" = QueryNFTResponse
  type MethodStreamingType Query "nft" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "class" where
  type MethodName Query "class" = "Class"
  type MethodInput Query "class" = QueryClassRequest
  type MethodOutput Query "class" = QueryClassResponse
  type MethodStreamingType Query "class" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "classes" where
  type MethodName Query "classes" = "Classes"
  type MethodInput Query "classes" = QueryClassesRequest
  type MethodOutput Query "classes" = QueryClassesResponse
  type MethodStreamingType Query "classes" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RScosmos/nft/v1beta1/query.proto\DC2\DC2cosmos.nft.v1beta1\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\FSgoogle/api/annotations.proto\SUB\FScosmos/nft/v1beta1/nft.proto\"F\n\
    \\DC3QueryBalanceRequest\DC2\EM\n\
    \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\DC4\n\
    \\ENQowner\CAN\STX \SOH(\tR\ENQowner\".\n\
    \\DC4QueryBalanceResponse\DC2\SYN\n\
    \\ACKamount\CAN\SOH \SOH(\EOTR\ACKamount\">\n\
    \\DC1QueryOwnerRequest\DC2\EM\n\
    \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\tR\STXid\"*\n\
    \\DC2QueryOwnerResponse\DC2\DC4\n\
    \\ENQowner\CAN\SOH \SOH(\tR\ENQowner\"/\n\
    \\DC2QuerySupplyRequest\DC2\EM\n\
    \\bclass_id\CAN\SOH \SOH(\tR\aclassId\"-\n\
    \\DC3QuerySupplyResponse\DC2\SYN\n\
    \\ACKamount\CAN\SOH \SOH(\EOTR\ACKamount\"\139\SOH\n\
    \\DLEQueryNFTsRequest\DC2\EM\n\
    \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\DC4\n\
    \\ENQowner\CAN\STX \SOH(\tR\ENQowner\DC2F\n\
    \\n\
    \pagination\CAN\ETX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\137\SOH\n\
    \\DC1QueryNFTsResponse\DC2+\n\
    \\EOTnfts\CAN\SOH \ETX(\v2\ETB.cosmos.nft.v1beta1.NFTR\EOTnfts\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"<\n\
    \\SIQueryNFTRequest\DC2\EM\n\
    \\bclass_id\CAN\SOH \SOH(\tR\aclassId\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\tR\STXid\"=\n\
    \\DLEQueryNFTResponse\DC2)\n\
    \\ETXnft\CAN\SOH \SOH(\v2\ETB.cosmos.nft.v1beta1.NFTR\ETXnft\".\n\
    \\DC1QueryClassRequest\DC2\EM\n\
    \\bclass_id\CAN\SOH \SOH(\tR\aclassId\"E\n\
    \\DC2QueryClassResponse\DC2/\n\
    \\ENQclass\CAN\SOH \SOH(\v2\EM.cosmos.nft.v1beta1.ClassR\ENQclass\"]\n\
    \\DC3QueryClassesRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\148\SOH\n\
    \\DC4QueryClassesResponse\DC23\n\
    \\aclasses\CAN\SOH \ETX(\v2\EM.cosmos.nft.v1beta1.ClassR\aclasses\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination2\190\a\n\
    \\ENQQuery\DC2\148\SOH\n\
    \\aBalance\DC2'.cosmos.nft.v1beta1.QueryBalanceRequest\SUB(.cosmos.nft.v1beta1.QueryBalanceResponse\"6\130\211\228\147\STX0\DC2./cosmos/nft/v1beta1/balance/{owner}/{class_id}\DC2\137\SOH\n\
    \\ENQOwner\DC2%.cosmos.nft.v1beta1.QueryOwnerRequest\SUB&.cosmos.nft.v1beta1.QueryOwnerResponse\"1\130\211\228\147\STX+\DC2)/cosmos/nft/v1beta1/owner/{class_id}/{id}\DC2\136\SOH\n\
    \\ACKSupply\DC2&.cosmos.nft.v1beta1.QuerySupplyRequest\SUB'.cosmos.nft.v1beta1.QuerySupplyResponse\"-\130\211\228\147\STX'\DC2%/cosmos/nft/v1beta1/supply/{class_id}\DC2u\n\
    \\EOTNFTs\DC2$.cosmos.nft.v1beta1.QueryNFTsRequest\SUB%.cosmos.nft.v1beta1.QueryNFTsResponse\" \130\211\228\147\STX\SUB\DC2\CAN/cosmos/nft/v1beta1/nfts\DC2\130\SOH\n\
    \\ETXNFT\DC2#.cosmos.nft.v1beta1.QueryNFTRequest\SUB$.cosmos.nft.v1beta1.QueryNFTResponse\"0\130\211\228\147\STX*\DC2(/cosmos/nft/v1beta1/nfts/{class_id}/{id}\DC2\134\SOH\n\
    \\ENQClass\DC2%.cosmos.nft.v1beta1.QueryClassRequest\SUB&.cosmos.nft.v1beta1.QueryClassResponse\".\130\211\228\147\STX(\DC2&/cosmos/nft/v1beta1/classes/{class_id}\DC2\129\SOH\n\
    \\aClasses\DC2'.cosmos.nft.v1beta1.QueryClassesRequest\SUB(.cosmos.nft.v1beta1.QueryClassesResponse\"#\130\211\228\147\STX\GS\DC2\ESC/cosmos/nft/v1beta1/classesB\DC4Z\DC2cosmossdk.io/x/nftJ\222%\n\
    \\a\DC2\ENQ\NUL\NUL\151\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL&\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL)\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\a\NUL)\n\
    \5\n\
    \\STX\ACK\NUL\DC2\EOT\n\
    \\NUL.\SOH\SUB) Query defines the gRPC querier service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\n\
    \\b\r\n\
    \s\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\f\STX\SO\ETX\SUBe Balance queries the number of NFTs of a given class owned by the owner, same as balanceOf in ERC721\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\f\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\f\SO!\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\f,@\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\r\EOTT\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\r\EOTT\n\
    \g\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\DC1\STX\DC3\ETX\SUBY Owner queries the owner of the NFT based on its class and id, same as ownerOf in ERC721\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DC1\ACK\v\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DC1\f\GS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DC1(:\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\DC2\EOTO\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\DC2\EOTO\n\
    \f\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\SYN\STX\CAN\ETX\SUBX Supply queries the number of NFTs from the given class, same as totalSupply of ERC721.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\SYN\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\SYN\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\SYN*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\ETB\EOTK\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX\ETB\EOTK\n\
    \\140\SOH\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\EOT\FS\STX\RS\ETX\SUB~ NFTs queries all NFTs of a given class or owner,choose at least one of the two, similar to tokenByIndex in\n\
    \ ERC721Enumerable\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\FS\ACK\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\FS\v\ESC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\FS&7\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\ETX\GS\EOT>\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ETX\EOT\176\202\188\"\STX\DC2\ETX\GS\EOT>\n\
    \=\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\EOT!\STX#\ETX\SUB/ NFT queries an NFT based on its class and id.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX!\ACK\t\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX!\n\
    \\EM\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX!$4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX\"\EOTN\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\EOT\EOT\176\202\188\"\STX\DC2\ETX\"\EOTN\n\
    \:\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\EOT&\STX(\ETX\SUB, Class queries an NFT class based on its id\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX&\ACK\v\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX&\f\GS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX&(:\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\ETX'\EOTL\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ENQ\EOT\176\202\188\"\STX\DC2\ETX'\EOTL\n\
    \/\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\EOT+\STX-\ETX\SUB! Classes queries all NFT classes\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX+\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX+\SO!\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX+,@\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\EOT\DC2\ETX,\EOTA\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ACK\EOT\176\202\188\"\STX\DC2\ETX,\EOTA\n\
    \V\n\
    \\STX\EOT\NUL\DC2\EOT1\NUL7\SOH\SUBJ QueryBalanceRequest is the request type for the Query/Balance RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX1\b\ESC\n\
    \/\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX3\STX\SYN\SUB\" class_id associated with the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX3\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX3\DC4\NAK\n\
    \4\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX6\STX\DC3\SUB' owner is the owner address of the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX6\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX6\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX6\DC1\DC2\n\
    \X\n\
    \\STX\EOT\SOH\DC2\EOT:\NUL=\SOH\SUBL QueryBalanceResponse is the response type for the Query/Balance RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX:\b\FS\n\
    \S\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX<\STX\DC4\SUBF amount is the number of all NFTs of a given class owned by the owner\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX<\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX<\t\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX<\DC2\DC3\n\
    \R\n\
    \\STX\EOT\STX\DC2\EOT@\NULF\SOH\SUBF QueryOwnerRequest is the request type for the Query/Owner RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX@\b\EM\n\
    \/\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXB\STX\SYN\SUB\" class_id associated with the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXB\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXB\DC4\NAK\n\
    \3\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXE\STX\DLE\SUB& id is a unique identifier of the NFT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXE\t\v\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXE\SO\SI\n\
    \T\n\
    \\STX\EOT\ETX\DC2\EOTI\NULL\SOH\SUBH QueryOwnerResponse is the response type for the Query/Owner RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXI\b\SUB\n\
    \4\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXK\STX\DC3\SUB' owner is the owner address of the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXK\t\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXK\DC1\DC2\n\
    \T\n\
    \\STX\EOT\EOT\DC2\EOTO\NULR\SOH\SUBH QuerySupplyRequest is the request type for the Query/Supply RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXO\b\SUB\n\
    \/\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXQ\STX\SYN\SUB\" class_id associated with the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXQ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXQ\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXQ\DC4\NAK\n\
    \V\n\
    \\STX\EOT\ENQ\DC2\EOTU\NULX\SOH\SUBJ QuerySupplyResponse is the response type for the Query/Supply RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXU\b\ESC\n\
    \D\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXW\STX\DC4\SUB7 amount is the number of all NFTs from the given class\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXW\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXW\t\SI\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXW\DC2\DC3\n\
    \Q\n\
    \\STX\EOT\ACK\DC2\EOT[\NULd\SOH\SUBE QueryNFTstRequest is the request type for the Query/NFTs RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX[\b\CAN\n\
    \/\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX]\STX\SYN\SUB\" class_id associated with the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX]\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX]\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX]\DC4\NAK\n\
    \4\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX`\STX\DC3\SUB' owner is the owner address of the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETX`\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX`\t\SO\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX`\DC1\DC2\n\
    \I\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXc\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ACK\DC2\ETXc\STX'\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXc(2\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXc56\n\
    \S\n\
    \\STX\EOT\a\DC2\EOTg\NULm\SOH\SUBG QueryNFTsResponse is the response type for the Query/NFTs RPC methods\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXg\b\EM\n\
    \\"\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXi\STX+\SUB\NAK NFT defines the NFT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETXi\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETXi\v!\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXi\"&\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXi)*\n\
    \A\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXl\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\ETXl\STX(\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXl)3\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXl67\n\
    \N\n\
    \\STX\EOT\b\DC2\EOTp\NULv\SOH\SUBB QueryNFTRequest is the request type for the Query/NFT RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXp\b\ETB\n\
    \/\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXr\STX\SYN\SUB\" class_id associated with the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETXr\STX\b\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXr\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXr\DC4\NAK\n\
    \3\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETXu\STX\DLE\SUB& id is a unique identifier of the NFT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETXu\STX\b\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETXu\t\v\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETXu\SO\SI\n\
    \P\n\
    \\STX\EOT\t\DC2\EOTy\NUL|\SOH\SUBD QueryNFTResponse is the response type for the Query/NFT RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXy\b\CAN\n\
    \4\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETX{\STX!\SUB' owner is the owner address of the nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\ETX{\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETX{\EM\FS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETX{\US \n\
    \S\n\
    \\STX\EOT\n\
    \\DC2\ENQ\DEL\NUL\130\SOH\SOH\SUBF QueryClassRequest is the request type for the Query/Class RPC method\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETX\DEL\b\EM\n\
    \0\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\129\SOH\STX\SYN\SUB\" class_id associated with the nft\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\129\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\129\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\129\SOH\DC4\NAK\n\
    \V\n\
    \\STX\EOT\v\DC2\ACK\133\SOH\NUL\136\SOH\SOH\SUBH QueryClassResponse is the response type for the Query/Class RPC method\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\133\SOH\b\SUB\n\
    \8\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\135\SOH\STX%\SUB* class defines the class of the nft type.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ACK\DC2\EOT\135\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\135\SOH\ESC \n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\135\SOH#$\n\
    \X\n\
    \\STX\EOT\f\DC2\ACK\139\SOH\NUL\142\SOH\SOH\SUBJ QueryClassesRequest is the request type for the Query/Classes RPC method\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\139\SOH\b\ESC\n\
    \J\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\141\SOH\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\EOT\141\SOH\STX'\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\141\SOH(2\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\141\SOH56\n\
    \Z\n\
    \\STX\EOT\r\DC2\ACK\145\SOH\NUL\151\SOH\SOH\SUBL QueryClassesResponse is the response type for the Query/Classes RPC method\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\145\SOH\b\FS\n\
    \8\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\147\SOH\STX0\SUB* class defines the class of the nft type.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\EOT\147\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ACK\DC2\EOT\147\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\147\SOH$+\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\147\SOH./\n\
    \B\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\150\SOH\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ACK\DC2\EOT\150\SOH\STX(\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\150\SOH)3\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\150\SOH67b\ACKproto3"