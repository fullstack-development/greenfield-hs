{- This file was auto-generated from cosmos/base/query/v1beta1/pagination.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Base.Query.V1beta1.Pagination (
        PageRequest(), PageResponse()
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
{- | Fields :
     
         * 'Proto.Cosmos.Base.Query.V1beta1.Pagination_Fields.key' @:: Lens' PageRequest Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Query.V1beta1.Pagination_Fields.offset' @:: Lens' PageRequest Data.Word.Word64@
         * 'Proto.Cosmos.Base.Query.V1beta1.Pagination_Fields.limit' @:: Lens' PageRequest Data.Word.Word64@
         * 'Proto.Cosmos.Base.Query.V1beta1.Pagination_Fields.countTotal' @:: Lens' PageRequest Prelude.Bool@
         * 'Proto.Cosmos.Base.Query.V1beta1.Pagination_Fields.reverse' @:: Lens' PageRequest Prelude.Bool@ -}
data PageRequest
  = PageRequest'_constructor {_PageRequest'key :: !Data.ByteString.ByteString,
                              _PageRequest'offset :: !Data.Word.Word64,
                              _PageRequest'limit :: !Data.Word.Word64,
                              _PageRequest'countTotal :: !Prelude.Bool,
                              _PageRequest'reverse :: !Prelude.Bool,
                              _PageRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PageRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PageRequest "key" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PageRequest'key (\ x__ y__ -> x__ {_PageRequest'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PageRequest "offset" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PageRequest'offset (\ x__ y__ -> x__ {_PageRequest'offset = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PageRequest "limit" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PageRequest'limit (\ x__ y__ -> x__ {_PageRequest'limit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PageRequest "countTotal" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PageRequest'countTotal
           (\ x__ y__ -> x__ {_PageRequest'countTotal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PageRequest "reverse" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PageRequest'reverse
           (\ x__ y__ -> x__ {_PageRequest'reverse = y__}))
        Prelude.id
instance Data.ProtoLens.Message PageRequest where
  messageName _
    = Data.Text.pack "cosmos.base.query.v1beta1.PageRequest"
  packedMessageDescriptor _
    = "\n\
      \\vPageRequest\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\fR\ETXkey\DC2\SYN\n\
      \\ACKoffset\CAN\STX \SOH(\EOTR\ACKoffset\DC2\DC4\n\
      \\ENQlimit\CAN\ETX \SOH(\EOTR\ENQlimit\DC2\US\n\
      \\vcount_total\CAN\EOT \SOH(\bR\n\
      \countTotal\DC2\CAN\n\
      \\areverse\CAN\ENQ \SOH(\bR\areverse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor PageRequest
        offset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "offset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"offset")) ::
              Data.ProtoLens.FieldDescriptor PageRequest
        limit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "limit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"limit")) ::
              Data.ProtoLens.FieldDescriptor PageRequest
        countTotal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "count_total"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"countTotal")) ::
              Data.ProtoLens.FieldDescriptor PageRequest
        reverse__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reverse"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reverse")) ::
              Data.ProtoLens.FieldDescriptor PageRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, offset__field_descriptor),
           (Data.ProtoLens.Tag 3, limit__field_descriptor),
           (Data.ProtoLens.Tag 4, countTotal__field_descriptor),
           (Data.ProtoLens.Tag 5, reverse__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PageRequest'_unknownFields
        (\ x__ y__ -> x__ {_PageRequest'_unknownFields = y__})
  defMessage
    = PageRequest'_constructor
        {_PageRequest'key = Data.ProtoLens.fieldDefault,
         _PageRequest'offset = Data.ProtoLens.fieldDefault,
         _PageRequest'limit = Data.ProtoLens.fieldDefault,
         _PageRequest'countTotal = Data.ProtoLens.fieldDefault,
         _PageRequest'reverse = Data.ProtoLens.fieldDefault,
         _PageRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PageRequest -> Data.ProtoLens.Encoding.Bytes.Parser PageRequest
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "offset"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"offset") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "limit"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"limit") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "count_total"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"countTotal") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reverse"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reverse") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PageRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"offset") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"limit") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"countTotal") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0) _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reverse") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0) _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData PageRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PageRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PageRequest'key x__)
                (Control.DeepSeq.deepseq
                   (_PageRequest'offset x__)
                   (Control.DeepSeq.deepseq
                      (_PageRequest'limit x__)
                      (Control.DeepSeq.deepseq
                         (_PageRequest'countTotal x__)
                         (Control.DeepSeq.deepseq (_PageRequest'reverse x__) ())))))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Query.V1beta1.Pagination_Fields.nextKey' @:: Lens' PageResponse Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Query.V1beta1.Pagination_Fields.total' @:: Lens' PageResponse Data.Word.Word64@ -}
data PageResponse
  = PageResponse'_constructor {_PageResponse'nextKey :: !Data.ByteString.ByteString,
                               _PageResponse'total :: !Data.Word.Word64,
                               _PageResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PageResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PageResponse "nextKey" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PageResponse'nextKey
           (\ x__ y__ -> x__ {_PageResponse'nextKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PageResponse "total" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PageResponse'total (\ x__ y__ -> x__ {_PageResponse'total = y__}))
        Prelude.id
instance Data.ProtoLens.Message PageResponse where
  messageName _
    = Data.Text.pack "cosmos.base.query.v1beta1.PageResponse"
  packedMessageDescriptor _
    = "\n\
      \\fPageResponse\DC2\EM\n\
      \\bnext_key\CAN\SOH \SOH(\fR\anextKey\DC2\DC4\n\
      \\ENQtotal\CAN\STX \SOH(\EOTR\ENQtotal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nextKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "next_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"nextKey")) ::
              Data.ProtoLens.FieldDescriptor PageResponse
        total__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"total")) ::
              Data.ProtoLens.FieldDescriptor PageResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nextKey__field_descriptor),
           (Data.ProtoLens.Tag 2, total__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PageResponse'_unknownFields
        (\ x__ y__ -> x__ {_PageResponse'_unknownFields = y__})
  defMessage
    = PageResponse'_constructor
        {_PageResponse'nextKey = Data.ProtoLens.fieldDefault,
         _PageResponse'total = Data.ProtoLens.fieldDefault,
         _PageResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PageResponse -> Data.ProtoLens.Encoding.Bytes.Parser PageResponse
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
                                       "next_key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nextKey") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "total"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"total") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PageResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"nextKey") _x
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
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"total") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData PageResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PageResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PageResponse'nextKey x__)
                (Control.DeepSeq.deepseq (_PageResponse'total x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \*cosmos/base/query/v1beta1/pagination.proto\DC2\EMcosmos.base.query.v1beta1\"\136\SOH\n\
    \\vPageRequest\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\fR\ETXkey\DC2\SYN\n\
    \\ACKoffset\CAN\STX \SOH(\EOTR\ACKoffset\DC2\DC4\n\
    \\ENQlimit\CAN\ETX \SOH(\EOTR\ENQlimit\DC2\US\n\
    \\vcount_total\CAN\EOT \SOH(\bR\n\
    \countTotal\DC2\CAN\n\
    \\areverse\CAN\ENQ \SOH(\bR\areverse\"?\n\
    \\fPageResponse\DC2\EM\n\
    \\bnext_key\CAN\SOH \SOH(\fR\anextKey\DC2\DC4\n\
    \\ENQtotal\CAN\STX \SOH(\EOTR\ENQtotalB*Z(github.com/cosmos/cosmos-sdk/types/queryJ\153\SI\n\
    \\ACK\DC2\EOT\NUL\NUL7\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NUL?\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NUL?\n\
    \\201\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\f\NUL%\SOH\SUB\188\SOH PageRequest is to be embedded in gRPC request messages for efficient\n\
    \ pagination. Ex:\n\
    \\n\
    \  message SomeRequest {\n\
    \          Foo some_parameter = 1;\n\
    \          PageRequest pagination = 2;\n\
    \  }\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\f\b\DC3\n\
    \\157\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DLE\STX\DLE\SUB\143\SOH key is a value returned in PageResponse.next_key to begin\n\
    \ querying the next page most efficiently. Only one of offset or key\n\
    \ should be set.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DLE\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DLE\b\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DLE\SO\SI\n\
    \\164\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\NAK\STX\DC4\SUB\150\SOH offset is a numeric offset that can be used when key is unavailable.\n\
    \ It is less efficient than using key. Only one of offset or key should\n\
    \ be set.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\NAK\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\NAK\DC2\DC3\n\
    \\152\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\EM\STX\DC3\SUB\138\SOH limit is the total number of results to be returned in the result page.\n\
    \ If left empty it will default to a value to be set by each app.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\EM\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\EM\DC1\DC2\n\
    \\245\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\US\STX\ETB\SUB\231\SOH count_total is set to true  to indicate that the result set should include\n\
    \ a count of the total number of items available for pagination in UIs.\n\
    \ count_total is only respected when offset is used. It is ignored when key\n\
    \ is set.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\US\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\US\a\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\US\NAK\SYN\n\
    \u\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX$\STX\DC3\SUBh reverse is set to true if results are to be returned in the descending order.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX$\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX$\a\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX$\DC1\DC2\n\
    \\233\SOH\n\
    \\STX\EOT\SOH\DC2\EOT.\NUL7\SOH\SUB\220\SOH PageResponse is to be embedded in gRPC response messages where the\n\
    \ corresponding request message has used PageRequest.\n\
    \\n\
    \  message SomeResponse {\n\
    \          repeated Bar results = 1;\n\
    \          PageResponse page = 2;\n\
    \  }\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX.\b\DC4\n\
    \\157\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX2\STX\NAK\SUB\143\SOH next_key is the key to be passed to PageRequest.key to\n\
    \ query the next page most efficiently. It will be empty if\n\
    \ there are no more results.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX2\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX2\b\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX2\DC3\DC4\n\
    \\DEL\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX6\STX\DC3\SUBr total is total number of results available if PageRequest.count_total\n\
    \ was set, its value is undefined otherwise\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX6\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX6\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX6\DC1\DC2b\ACKproto3"