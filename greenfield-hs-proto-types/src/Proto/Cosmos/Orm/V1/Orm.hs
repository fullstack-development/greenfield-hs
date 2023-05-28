{- This file was auto-generated from cosmos/orm/v1/orm.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Orm.V1.Orm (
        PrimaryKeyDescriptor(), SecondaryIndexDescriptor(),
        SingletonDescriptor(), TableDescriptor()
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
import qualified Proto.Google.Protobuf.Descriptor
{- | Fields :
     
         * 'Proto.Cosmos.Orm.V1.Orm_Fields.fields' @:: Lens' PrimaryKeyDescriptor Data.Text.Text@
         * 'Proto.Cosmos.Orm.V1.Orm_Fields.autoIncrement' @:: Lens' PrimaryKeyDescriptor Prelude.Bool@ -}
data PrimaryKeyDescriptor
  = PrimaryKeyDescriptor'_constructor {_PrimaryKeyDescriptor'fields :: !Data.Text.Text,
                                       _PrimaryKeyDescriptor'autoIncrement :: !Prelude.Bool,
                                       _PrimaryKeyDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PrimaryKeyDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PrimaryKeyDescriptor "fields" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PrimaryKeyDescriptor'fields
           (\ x__ y__ -> x__ {_PrimaryKeyDescriptor'fields = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PrimaryKeyDescriptor "autoIncrement" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PrimaryKeyDescriptor'autoIncrement
           (\ x__ y__ -> x__ {_PrimaryKeyDescriptor'autoIncrement = y__}))
        Prelude.id
instance Data.ProtoLens.Message PrimaryKeyDescriptor where
  messageName _ = Data.Text.pack "cosmos.orm.v1.PrimaryKeyDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\DC4PrimaryKeyDescriptor\DC2\SYN\n\
      \\ACKfields\CAN\SOH \SOH(\tR\ACKfields\DC2%\n\
      \\SOauto_increment\CAN\STX \SOH(\bR\rautoIncrement"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fields__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fields"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"fields")) ::
              Data.ProtoLens.FieldDescriptor PrimaryKeyDescriptor
        autoIncrement__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "auto_increment"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"autoIncrement")) ::
              Data.ProtoLens.FieldDescriptor PrimaryKeyDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fields__field_descriptor),
           (Data.ProtoLens.Tag 2, autoIncrement__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PrimaryKeyDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_PrimaryKeyDescriptor'_unknownFields = y__})
  defMessage
    = PrimaryKeyDescriptor'_constructor
        {_PrimaryKeyDescriptor'fields = Data.ProtoLens.fieldDefault,
         _PrimaryKeyDescriptor'autoIncrement = Data.ProtoLens.fieldDefault,
         _PrimaryKeyDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PrimaryKeyDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser PrimaryKeyDescriptor
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
                                       "fields"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fields") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "auto_increment"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"autoIncrement") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PrimaryKeyDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"fields") _x
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"autoIncrement") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData PrimaryKeyDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PrimaryKeyDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PrimaryKeyDescriptor'fields x__)
                (Control.DeepSeq.deepseq
                   (_PrimaryKeyDescriptor'autoIncrement x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Orm.V1.Orm_Fields.fields' @:: Lens' SecondaryIndexDescriptor Data.Text.Text@
         * 'Proto.Cosmos.Orm.V1.Orm_Fields.id' @:: Lens' SecondaryIndexDescriptor Data.Word.Word32@
         * 'Proto.Cosmos.Orm.V1.Orm_Fields.unique' @:: Lens' SecondaryIndexDescriptor Prelude.Bool@ -}
data SecondaryIndexDescriptor
  = SecondaryIndexDescriptor'_constructor {_SecondaryIndexDescriptor'fields :: !Data.Text.Text,
                                           _SecondaryIndexDescriptor'id :: !Data.Word.Word32,
                                           _SecondaryIndexDescriptor'unique :: !Prelude.Bool,
                                           _SecondaryIndexDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SecondaryIndexDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SecondaryIndexDescriptor "fields" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecondaryIndexDescriptor'fields
           (\ x__ y__ -> x__ {_SecondaryIndexDescriptor'fields = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SecondaryIndexDescriptor "id" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecondaryIndexDescriptor'id
           (\ x__ y__ -> x__ {_SecondaryIndexDescriptor'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SecondaryIndexDescriptor "unique" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecondaryIndexDescriptor'unique
           (\ x__ y__ -> x__ {_SecondaryIndexDescriptor'unique = y__}))
        Prelude.id
instance Data.ProtoLens.Message SecondaryIndexDescriptor where
  messageName _
    = Data.Text.pack "cosmos.orm.v1.SecondaryIndexDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\CANSecondaryIndexDescriptor\DC2\SYN\n\
      \\ACKfields\CAN\SOH \SOH(\tR\ACKfields\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\rR\STXid\DC2\SYN\n\
      \\ACKunique\CAN\ETX \SOH(\bR\ACKunique"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fields__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fields"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"fields")) ::
              Data.ProtoLens.FieldDescriptor SecondaryIndexDescriptor
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor SecondaryIndexDescriptor
        unique__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unique"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"unique")) ::
              Data.ProtoLens.FieldDescriptor SecondaryIndexDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fields__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, unique__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SecondaryIndexDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_SecondaryIndexDescriptor'_unknownFields = y__})
  defMessage
    = SecondaryIndexDescriptor'_constructor
        {_SecondaryIndexDescriptor'fields = Data.ProtoLens.fieldDefault,
         _SecondaryIndexDescriptor'id = Data.ProtoLens.fieldDefault,
         _SecondaryIndexDescriptor'unique = Data.ProtoLens.fieldDefault,
         _SecondaryIndexDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SecondaryIndexDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser SecondaryIndexDescriptor
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
                                       "fields"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fields") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "unique"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"unique") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SecondaryIndexDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"fields") _x
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
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"unique") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SecondaryIndexDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SecondaryIndexDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SecondaryIndexDescriptor'fields x__)
                (Control.DeepSeq.deepseq
                   (_SecondaryIndexDescriptor'id x__)
                   (Control.DeepSeq.deepseq
                      (_SecondaryIndexDescriptor'unique x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Orm.V1.Orm_Fields.id' @:: Lens' SingletonDescriptor Data.Word.Word32@ -}
data SingletonDescriptor
  = SingletonDescriptor'_constructor {_SingletonDescriptor'id :: !Data.Word.Word32,
                                      _SingletonDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SingletonDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SingletonDescriptor "id" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SingletonDescriptor'id
           (\ x__ y__ -> x__ {_SingletonDescriptor'id = y__}))
        Prelude.id
instance Data.ProtoLens.Message SingletonDescriptor where
  messageName _ = Data.Text.pack "cosmos.orm.v1.SingletonDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\DC3SingletonDescriptor\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\rR\STXid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor SingletonDescriptor
      in Data.Map.fromList [(Data.ProtoLens.Tag 1, id__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SingletonDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_SingletonDescriptor'_unknownFields = y__})
  defMessage
    = SingletonDescriptor'_constructor
        {_SingletonDescriptor'id = Data.ProtoLens.fieldDefault,
         _SingletonDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SingletonDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser SingletonDescriptor
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SingletonDescriptor"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SingletonDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SingletonDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq (_SingletonDescriptor'id x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Orm.V1.Orm_Fields.primaryKey' @:: Lens' TableDescriptor PrimaryKeyDescriptor@
         * 'Proto.Cosmos.Orm.V1.Orm_Fields.maybe'primaryKey' @:: Lens' TableDescriptor (Prelude.Maybe PrimaryKeyDescriptor)@
         * 'Proto.Cosmos.Orm.V1.Orm_Fields.index' @:: Lens' TableDescriptor [SecondaryIndexDescriptor]@
         * 'Proto.Cosmos.Orm.V1.Orm_Fields.vec'index' @:: Lens' TableDescriptor (Data.Vector.Vector SecondaryIndexDescriptor)@
         * 'Proto.Cosmos.Orm.V1.Orm_Fields.id' @:: Lens' TableDescriptor Data.Word.Word32@ -}
data TableDescriptor
  = TableDescriptor'_constructor {_TableDescriptor'primaryKey :: !(Prelude.Maybe PrimaryKeyDescriptor),
                                  _TableDescriptor'index :: !(Data.Vector.Vector SecondaryIndexDescriptor),
                                  _TableDescriptor'id :: !Data.Word.Word32,
                                  _TableDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TableDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TableDescriptor "primaryKey" PrimaryKeyDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TableDescriptor'primaryKey
           (\ x__ y__ -> x__ {_TableDescriptor'primaryKey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TableDescriptor "maybe'primaryKey" (Prelude.Maybe PrimaryKeyDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TableDescriptor'primaryKey
           (\ x__ y__ -> x__ {_TableDescriptor'primaryKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TableDescriptor "index" [SecondaryIndexDescriptor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TableDescriptor'index
           (\ x__ y__ -> x__ {_TableDescriptor'index = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TableDescriptor "vec'index" (Data.Vector.Vector SecondaryIndexDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TableDescriptor'index
           (\ x__ y__ -> x__ {_TableDescriptor'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TableDescriptor "id" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TableDescriptor'id (\ x__ y__ -> x__ {_TableDescriptor'id = y__}))
        Prelude.id
instance Data.ProtoLens.Message TableDescriptor where
  messageName _ = Data.Text.pack "cosmos.orm.v1.TableDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\SITableDescriptor\DC2D\n\
      \\vprimary_key\CAN\SOH \SOH(\v2#.cosmos.orm.v1.PrimaryKeyDescriptorR\n\
      \primaryKey\DC2=\n\
      \\ENQindex\CAN\STX \ETX(\v2'.cosmos.orm.v1.SecondaryIndexDescriptorR\ENQindex\DC2\SO\n\
      \\STXid\CAN\ETX \SOH(\rR\STXid"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        primaryKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "primary_key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PrimaryKeyDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'primaryKey")) ::
              Data.ProtoLens.FieldDescriptor TableDescriptor
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SecondaryIndexDescriptor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor TableDescriptor
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor TableDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, primaryKey__field_descriptor),
           (Data.ProtoLens.Tag 2, index__field_descriptor),
           (Data.ProtoLens.Tag 3, id__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TableDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_TableDescriptor'_unknownFields = y__})
  defMessage
    = TableDescriptor'_constructor
        {_TableDescriptor'primaryKey = Prelude.Nothing,
         _TableDescriptor'index = Data.Vector.Generic.empty,
         _TableDescriptor'id = Data.ProtoLens.fieldDefault,
         _TableDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TableDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SecondaryIndexDescriptor
             -> Data.ProtoLens.Encoding.Bytes.Parser TableDescriptor
        loop x mutable'index
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'index <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'index)
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
                              (Data.ProtoLens.Field.field @"vec'index") frozen'index x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "primary_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"primaryKey") y x)
                                  mutable'index
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "index"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'index y)
                                loop x v
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                                  mutable'index
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'index
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'index <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'index)
          "TableDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'primaryKey") _x
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
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'index") _x))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TableDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TableDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TableDescriptor'primaryKey x__)
                (Control.DeepSeq.deepseq
                   (_TableDescriptor'index x__)
                   (Control.DeepSeq.deepseq (_TableDescriptor'id x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\ETBcosmos/orm/v1/orm.proto\DC2\rcosmos.orm.v1\SUB google/protobuf/descriptor.proto\"\166\SOH\n\
    \\SITableDescriptor\DC2D\n\
    \\vprimary_key\CAN\SOH \SOH(\v2#.cosmos.orm.v1.PrimaryKeyDescriptorR\n\
    \primaryKey\DC2=\n\
    \\ENQindex\CAN\STX \ETX(\v2'.cosmos.orm.v1.SecondaryIndexDescriptorR\ENQindex\DC2\SO\n\
    \\STXid\CAN\ETX \SOH(\rR\STXid\"U\n\
    \\DC4PrimaryKeyDescriptor\DC2\SYN\n\
    \\ACKfields\CAN\SOH \SOH(\tR\ACKfields\DC2%\n\
    \\SOauto_increment\CAN\STX \SOH(\bR\rautoIncrement\"Z\n\
    \\CANSecondaryIndexDescriptor\DC2\SYN\n\
    \\ACKfields\CAN\SOH \SOH(\tR\ACKfields\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\rR\STXid\DC2\SYN\n\
    \\ACKunique\CAN\ETX \SOH(\bR\ACKunique\"%\n\
    \\DC3SingletonDescriptor\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\rR\STXid:X\n\
    \\ENQtable\CAN\238\179\234\&1 \SOH(\v2\RS.cosmos.orm.v1.TableDescriptor\DC2\US.google.protobuf.MessageOptionsR\ENQtable:d\n\
    \\tsingleton\CAN\239\179\234\&1 \SOH(\v2\".cosmos.orm.v1.SingletonDescriptor\DC2\US.google.protobuf.MessageOptionsR\tsingletonJ\167%\n\
    \\ACK\DC2\EOT\NUL\NULj\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \\t\n\
    \\SOH\a\DC2\EOT\ACK\NUL\SI\SOH\n\
    \\131\SOH\n\
    \\STX\a\NUL\DC2\ETX\n\
    \\STX$\SUBx table specifies that this message will be used as an ORM table. It cannot\n\
    \ be used together with the singleton option.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\NUL\STX\DC2\ETX\ACK\a%\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ACK\DC2\ETX\n\
    \\STX\DC1\n\
    \\n\
    \\n\
    \\ETX\a\NUL\SOH\DC2\ETX\n\
    \\DC2\ETB\n\
    \\n\
    \\n\
    \\ETX\a\NUL\ETX\DC2\ETX\n\
    \\SUB#\n\
    \\135\SOH\n\
    \\STX\a\SOH\DC2\ETX\SO\STX,\SUB| singleton specifies that this message will be used as an ORM singleton. It cannot\n\
    \ be used together with the table option.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\a\SOH\STX\DC2\ETX\ACK\a%\n\
    \\n\
    \\n\
    \\ETX\a\SOH\ACK\DC2\ETX\SO\STX\NAK\n\
    \\n\
    \\n\
    \\ETX\a\SOH\SOH\DC2\ETX\SO\SYN\US\n\
    \\n\
    \\n\
    \\ETX\a\SOH\ETX\DC2\ETX\SO\"+\n\
    \5\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL\RS\SOH\SUB) TableDescriptor describes an ORM table.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\ETB\n\
    \A\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\NAK\STX'\SUB4 primary_key defines the primary key for the table.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\NAK\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\NAK\ETB\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\NAK%&\n\
    \;\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\CAN\STX.\SUB. index defines one or more secondary indexes.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\CAN\v#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\CAN$)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\CAN,-\n\
    \\180\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\GS\STX\DLE\SUB\166\SOH id is a non-zero integer ID that must be unique within the\n\
    \ tables and singletons in this file. It may be deprecated in the future when this\n\
    \ can be auto-generated.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\GS\t\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\GS\SO\SI\n\
    \A\n\
    \\STX\EOT\SOH\DC2\EOT!\NULJ\SOH\SUB5 PrimaryKeyDescriptor describes a table primary key.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX!\b\FS\n\
    \\181\DLE\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXD\STX\DC4\SUB\167\DLE fields is a comma-separated list of fields in the primary key. Spaces are\n\
    \ not allowed. Supported field types, their encodings, and any applicable constraints\n\
    \ are described below.\n\
    \   - uint32 are encoded as 2,3,4 or 5 bytes using a compact encoding that\n\
    \     is suitable for sorted iteration (not varint encoding). This type is\n\
    \     well-suited for small integers.\n\
    \   - uint64 are encoded as 2,4,6 or 9 bytes using a compact encoding that\n\
    \     is suitable for sorted iteration (not varint encoding). This type is\n\
    \     well-suited for small integers such as auto-incrementing sequences.\n\
    \   - fixed32, fixed64 are encoded as big-endian fixed width bytes and support\n\
    \   sorted iteration. These types are well-suited for encoding fixed with\n\
    \   decimals as integers.\n\
    \   - string's are encoded as raw bytes in terminal key segments and null-terminated\n\
    \   in non-terminal segments. Null characters are thus forbidden in strings.\n\
    \   string fields support sorted iteration.\n\
    \   - bytes are encoded as raw bytes in terminal segments and length-prefixed\n\
    \   with a 32-bit unsigned varint in non-terminal segments.\n\
    \   - int32, sint32, int64, sint64, sfixed32, sfixed64 are encoded as fixed width bytes with\n\
    \   an encoding that enables sorted iteration.\n\
    \   - google.protobuf.Timestamp is encoded such that values with only seconds occupy 6 bytes,\n\
    \   values including nanos occupy 9 bytes, and nil values occupy 1 byte. When iterating, nil\n\
    \   values will always be ordered last. Seconds and nanos values must conform to the officially\n\
    \   specified ranges of 0001-01-01T00:00:00Z to 9999-12-31T23:59:59Z and 0 to 999,999,999 respectively.\n\
    \   - google.protobuf.Duration is encoded as 12 bytes using an encoding that enables sorted iteration.\n\
    \   - enum fields are encoded using varint encoding and do not support sorted\n\
    \   iteration.\n\
    \   - bool fields are encoded as a single byte 0 or 1.\n\
    \\n\
    \ All other fields types are unsupported in keys including repeated and\n\
    \ oneof fields.\n\
    \\n\
    \ Primary keys are prefixed by the varint encoded table id and the byte 0x0\n\
    \ plus any additional prefix specified by the schema.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXD\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXD\t\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXD\DC2\DC3\n\
    \\194\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXI\STX\SUB\SUB\180\SOH auto_increment specifies that the primary key is generated by an\n\
    \ auto-incrementing integer. If this is set to true fields must only\n\
    \ contain one field of that is of type uint64.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETXI\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXI\a\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXI\CAN\EM\n\
    \E\n\
    \\STX\EOT\STX\DC2\EOTM\NULa\SOH\SUB9 PrimaryKeyDescriptor describes a table secondary index.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXM\b \n\
    \\195\EOT\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXX\STX\DC4\SUB\181\EOT fields is a comma-separated list of fields in the index. The supported\n\
    \ field types are the same as those for PrimaryKeyDescriptor.fields.\n\
    \ Index keys are prefixed by the varint encoded table id and the varint\n\
    \ encoded index id plus any additional prefix specified by the schema.\n\
    \\n\
    \ In addition the field segments, non-unique index keys are suffixed with\n\
    \ any additional primary key fields not present in the index fields so that the\n\
    \ primary key can be reconstructed. Unique indexes instead of being suffixed\n\
    \ store the remaining primary key fields in the value..\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXX\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXX\t\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXX\DC2\DC3\n\
    \\188\SOH\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX]\STX\DLE\SUB\174\SOH id is a non-zero integer ID that must be unique within the indexes for this\n\
    \ table and less than 32768. It may be deprecated in the future when this can\n\
    \ be auto-generated.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX]\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX]\t\v\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX]\SO\SI\n\
    \:\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX`\STX\DC2\SUB- unique specifies that this an unique index.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX`\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX`\a\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX`\DLE\DC1\n\
    \^\n\
    \\STX\EOT\ETX\DC2\EOTd\NULj\SOH\SUBR TableDescriptor describes an ORM singleton table which has at most one instance.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXd\b\ESC\n\
    \\180\SOH\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXi\STX\DLE\SUB\166\SOH id is a non-zero integer ID that must be unique within the\n\
    \ tables and singletons in this file. It may be deprecated in the future when this\n\
    \ can be auto-generated.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXi\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXi\t\v\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXi\SO\SIb\ACKproto3"