{- This file was auto-generated from greenfield/common/wrapper.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Common.Wrapper (
        BoolValue(), BytesValue(), DoubleValue(), FloatValue(),
        Int32Value(), Int64Value(), StringValue(), UInt32Value(),
        UInt64Value()
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
     
         * 'Proto.Greenfield.Common.Wrapper_Fields.value' @:: Lens' BoolValue Prelude.Bool@ -}
data BoolValue
  = BoolValue'_constructor {_BoolValue'value :: !Prelude.Bool,
                            _BoolValue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BoolValue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BoolValue "value" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BoolValue'value (\ x__ y__ -> x__ {_BoolValue'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message BoolValue where
  messageName _ = Data.Text.pack "greenfield.common.BoolValue"
  packedMessageDescriptor _
    = "\n\
      \\tBoolValue\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\bR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor BoolValue
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BoolValue'_unknownFields
        (\ x__ y__ -> x__ {_BoolValue'_unknownFields = y__})
  defMessage
    = BoolValue'_constructor
        {_BoolValue'value = Data.ProtoLens.fieldDefault,
         _BoolValue'_unknownFields = []}
  parseMessage
    = let
        loop :: BoolValue -> Data.ProtoLens.Encoding.Bytes.Parser BoolValue
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
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BoolValue"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData BoolValue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BoolValue'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BoolValue'value x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Common.Wrapper_Fields.value' @:: Lens' BytesValue Data.ByteString.ByteString@ -}
data BytesValue
  = BytesValue'_constructor {_BytesValue'value :: !Data.ByteString.ByteString,
                             _BytesValue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BytesValue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BytesValue "value" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BytesValue'value (\ x__ y__ -> x__ {_BytesValue'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message BytesValue where
  messageName _ = Data.Text.pack "greenfield.common.BytesValue"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \BytesValue\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\fR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor BytesValue
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BytesValue'_unknownFields
        (\ x__ y__ -> x__ {_BytesValue'_unknownFields = y__})
  defMessage
    = BytesValue'_constructor
        {_BytesValue'value = Data.ProtoLens.fieldDefault,
         _BytesValue'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BytesValue -> Data.ProtoLens.Encoding.Bytes.Parser BytesValue
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BytesValue"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData BytesValue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BytesValue'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BytesValue'value x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Common.Wrapper_Fields.value' @:: Lens' DoubleValue Prelude.Double@ -}
data DoubleValue
  = DoubleValue'_constructor {_DoubleValue'value :: !Prelude.Double,
                              _DoubleValue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DoubleValue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DoubleValue "value" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleValue'value (\ x__ y__ -> x__ {_DoubleValue'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message DoubleValue where
  messageName _ = Data.Text.pack "greenfield.common.DoubleValue"
  packedMessageDescriptor _
    = "\n\
      \\vDoubleValue\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\SOHR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor DoubleValue
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DoubleValue'_unknownFields
        (\ x__ y__ -> x__ {_DoubleValue'_unknownFields = y__})
  defMessage
    = DoubleValue'_constructor
        {_DoubleValue'value = Data.ProtoLens.fieldDefault,
         _DoubleValue'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DoubleValue -> Data.ProtoLens.Encoding.Bytes.Parser DoubleValue
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
                        9 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DoubleValue"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 9)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putFixed64
                         Data.ProtoLens.Encoding.Bytes.doubleToWord _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DoubleValue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DoubleValue'_unknownFields x__)
             (Control.DeepSeq.deepseq (_DoubleValue'value x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Common.Wrapper_Fields.value' @:: Lens' FloatValue Prelude.Float@ -}
data FloatValue
  = FloatValue'_constructor {_FloatValue'value :: !Prelude.Float,
                             _FloatValue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FloatValue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FloatValue "value" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FloatValue'value (\ x__ y__ -> x__ {_FloatValue'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message FloatValue where
  messageName _ = Data.Text.pack "greenfield.common.FloatValue"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \FloatValue\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\STXR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor FloatValue
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FloatValue'_unknownFields
        (\ x__ y__ -> x__ {_FloatValue'_unknownFields = y__})
  defMessage
    = FloatValue'_constructor
        {_FloatValue'value = Data.ProtoLens.fieldDefault,
         _FloatValue'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FloatValue -> Data.ProtoLens.Encoding.Bytes.Parser FloatValue
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
                        13
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FloatValue"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 13)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putFixed32
                         Data.ProtoLens.Encoding.Bytes.floatToWord _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FloatValue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FloatValue'_unknownFields x__)
             (Control.DeepSeq.deepseq (_FloatValue'value x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Common.Wrapper_Fields.value' @:: Lens' Int32Value Data.Int.Int32@ -}
data Int32Value
  = Int32Value'_constructor {_Int32Value'value :: !Data.Int.Int32,
                             _Int32Value'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Int32Value where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Int32Value "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Value'value (\ x__ y__ -> x__ {_Int32Value'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Int32Value where
  messageName _ = Data.Text.pack "greenfield.common.Int32Value"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Int32Value\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\ENQR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor Int32Value
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Int32Value'_unknownFields
        (\ x__ y__ -> x__ {_Int32Value'_unknownFields = y__})
  defMessage
    = Int32Value'_constructor
        {_Int32Value'value = Data.ProtoLens.fieldDefault,
         _Int32Value'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Int32Value -> Data.ProtoLens.Encoding.Bytes.Parser Int32Value
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Int32Value"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData Int32Value where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Int32Value'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Int32Value'value x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Common.Wrapper_Fields.value' @:: Lens' Int64Value Data.Int.Int64@ -}
data Int64Value
  = Int64Value'_constructor {_Int64Value'value :: !Data.Int.Int64,
                             _Int64Value'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Int64Value where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Int64Value "value" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Value'value (\ x__ y__ -> x__ {_Int64Value'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Int64Value where
  messageName _ = Data.Text.pack "greenfield.common.Int64Value"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Int64Value\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\ETXR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor Int64Value
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Int64Value'_unknownFields
        (\ x__ y__ -> x__ {_Int64Value'_unknownFields = y__})
  defMessage
    = Int64Value'_constructor
        {_Int64Value'value = Data.ProtoLens.fieldDefault,
         _Int64Value'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Int64Value -> Data.ProtoLens.Encoding.Bytes.Parser Int64Value
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Int64Value"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData Int64Value where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Int64Value'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Int64Value'value x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Common.Wrapper_Fields.value' @:: Lens' StringValue Data.Text.Text@ -}
data StringValue
  = StringValue'_constructor {_StringValue'value :: !Data.Text.Text,
                              _StringValue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StringValue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StringValue "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StringValue'value (\ x__ y__ -> x__ {_StringValue'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message StringValue where
  messageName _ = Data.Text.pack "greenfield.common.StringValue"
  packedMessageDescriptor _
    = "\n\
      \\vStringValue\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor StringValue
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StringValue'_unknownFields
        (\ x__ y__ -> x__ {_StringValue'_unknownFields = y__})
  defMessage
    = StringValue'_constructor
        {_StringValue'value = Data.ProtoLens.fieldDefault,
         _StringValue'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StringValue -> Data.ProtoLens.Encoding.Bytes.Parser StringValue
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StringValue"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData StringValue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StringValue'_unknownFields x__)
             (Control.DeepSeq.deepseq (_StringValue'value x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Common.Wrapper_Fields.value' @:: Lens' UInt32Value Data.Word.Word32@ -}
data UInt32Value
  = UInt32Value'_constructor {_UInt32Value'value :: !Data.Word.Word32,
                              _UInt32Value'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UInt32Value where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UInt32Value "value" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt32Value'value (\ x__ y__ -> x__ {_UInt32Value'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message UInt32Value where
  messageName _ = Data.Text.pack "greenfield.common.UInt32Value"
  packedMessageDescriptor _
    = "\n\
      \\vUInt32Value\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\rR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor UInt32Value
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UInt32Value'_unknownFields
        (\ x__ y__ -> x__ {_UInt32Value'_unknownFields = y__})
  defMessage
    = UInt32Value'_constructor
        {_UInt32Value'value = Data.ProtoLens.fieldDefault,
         _UInt32Value'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UInt32Value -> Data.ProtoLens.Encoding.Bytes.Parser UInt32Value
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UInt32Value"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
instance Control.DeepSeq.NFData UInt32Value where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UInt32Value'_unknownFields x__)
             (Control.DeepSeq.deepseq (_UInt32Value'value x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Common.Wrapper_Fields.value' @:: Lens' UInt64Value Data.Word.Word64@ -}
data UInt64Value
  = UInt64Value'_constructor {_UInt64Value'value :: !Data.Word.Word64,
                              _UInt64Value'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UInt64Value where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UInt64Value "value" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UInt64Value'value (\ x__ y__ -> x__ {_UInt64Value'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message UInt64Value where
  messageName _ = Data.Text.pack "greenfield.common.UInt64Value"
  packedMessageDescriptor _
    = "\n\
      \\vUInt64Value\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\EOTR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor UInt64Value
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UInt64Value'_unknownFields
        (\ x__ y__ -> x__ {_UInt64Value'_unknownFields = y__})
  defMessage
    = UInt64Value'_constructor
        {_UInt64Value'value = Data.ProtoLens.fieldDefault,
         _UInt64Value'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UInt64Value -> Data.ProtoLens.Encoding.Bytes.Parser UInt64Value
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UInt64Value"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData UInt64Value where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UInt64Value'_unknownFields x__)
             (Control.DeepSeq.deepseq (_UInt64Value'value x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\USgreenfield/common/wrapper.proto\DC2\DC1greenfield.common\"#\n\
    \\vDoubleValue\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\SOHR\ENQvalue\"\"\n\
    \\n\
    \FloatValue\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\STXR\ENQvalue\"\"\n\
    \\n\
    \Int64Value\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\ETXR\ENQvalue\"#\n\
    \\vUInt64Value\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\EOTR\ENQvalue\"\"\n\
    \\n\
    \Int32Value\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\ENQR\ENQvalue\"#\n\
    \\vUInt32Value\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\rR\ENQvalue\"!\n\
    \\tBoolValue\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\bR\ENQvalue\"#\n\
    \\vStringValue\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue\"\"\n\
    \\n\
    \BytesValue\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\fR\ENQvalueB.Z,github.com/bnb-chain/greenfield/types/commonJ\244\r\n\
    \\ACK\DC2\EOT\NUL\NULL\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SUB\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NULC\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NULC\n\
    \g\n\
    \\STX\EOT\NUL\DC2\EOT\t\NUL\f\SOH\SUB[ Wrapper message for `double`.\n\
    \\n\
    \ The JSON representation for `DoubleValue` is JSON number.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\t\b\DC3\n\
    \ \n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\v\STX\DC3\SUB\DC3 The double value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\v\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\v\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\v\DC1\DC2\n\
    \e\n\
    \\STX\EOT\SOH\DC2\EOT\DC1\NUL\DC4\SOH\SUBY Wrapper message for `float`.\n\
    \\n\
    \ The JSON representation for `FloatValue` is JSON number.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC1\b\DC2\n\
    \\US\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DC3\STX\DC2\SUB\DC2 The float value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\DC3\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DC3\b\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DC3\DLE\DC1\n\
    \e\n\
    \\STX\EOT\STX\DC2\EOT\EM\NUL\FS\SOH\SUBY Wrapper message for `int64`.\n\
    \\n\
    \ The JSON representation for `Int64Value` is JSON string.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\EM\b\DC2\n\
    \\US\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\ESC\STX\DC2\SUB\DC2 The int64 value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\ESC\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\ESC\b\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\ESC\DLE\DC1\n\
    \g\n\
    \\STX\EOT\ETX\DC2\EOT!\NUL$\SOH\SUB[ Wrapper message for `uint64`.\n\
    \\n\
    \ The JSON representation for `UInt64Value` is JSON string.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX!\b\DC3\n\
    \ \n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX#\STX\DC3\SUB\DC3 The uint64 value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX#\t\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX#\DC1\DC2\n\
    \e\n\
    \\STX\EOT\EOT\DC2\EOT)\NUL,\SOH\SUBY Wrapper message for `int32`.\n\
    \\n\
    \ The JSON representation for `Int32Value` is JSON number.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX)\b\DC2\n\
    \\US\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX+\STX\DC2\SUB\DC2 The int32 value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX+\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX+\b\r\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX+\DLE\DC1\n\
    \g\n\
    \\STX\EOT\ENQ\DC2\EOT1\NUL4\SOH\SUB[ Wrapper message for `uint32`.\n\
    \\n\
    \ The JSON representation for `UInt32Value` is JSON number.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX1\b\DC3\n\
    \ \n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX3\STX\DC3\SUB\DC3 The uint32 value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX3\t\SO\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX3\DC1\DC2\n\
    \o\n\
    \\STX\EOT\ACK\DC2\EOT9\NUL<\SOH\SUBc Wrapper message for `bool`.\n\
    \\n\
    \ The JSON representation for `BoolValue` is JSON `true` and `false`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX9\b\DC1\n\
    \\RS\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX;\STX\DC1\SUB\DC1 The bool value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX;\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX;\a\f\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX;\SI\DLE\n\
    \g\n\
    \\STX\EOT\a\DC2\EOTA\NULD\SOH\SUB[ Wrapper message for `string`.\n\
    \\n\
    \ The JSON representation for `StringValue` is JSON string.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXA\b\DC3\n\
    \ \n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXC\STX\DC3\SUB\DC3 The string value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETXC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXC\t\SO\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXC\DC1\DC2\n\
    \e\n\
    \\STX\EOT\b\DC2\EOTI\NULL\SOH\SUBY Wrapper message for `bytes`.\n\
    \\n\
    \ The JSON representation for `BytesValue` is JSON string.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXI\b\DC2\n\
    \\US\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXK\STX\DC2\SUB\DC2 The bytes value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETXK\STX\a\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXK\b\r\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXK\DLE\DC1b\ACKproto3"