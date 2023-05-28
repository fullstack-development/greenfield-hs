{- This file was auto-generated from greenfield/challenge/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Challenge.Types (
        AttestedChallengeIds(), Challenge(), Slash(), VoteResult(..),
        VoteResult(), VoteResult'UnrecognizedValue
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Greenfield.Challenge.Types_Fields.size' @:: Lens' AttestedChallengeIds Data.Word.Word64@
         * 'Proto.Greenfield.Challenge.Types_Fields.ids' @:: Lens' AttestedChallengeIds [Data.Word.Word64]@
         * 'Proto.Greenfield.Challenge.Types_Fields.vec'ids' @:: Lens' AttestedChallengeIds (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Greenfield.Challenge.Types_Fields.cursor' @:: Lens' AttestedChallengeIds Data.Int.Int64@ -}
data AttestedChallengeIds
  = AttestedChallengeIds'_constructor {_AttestedChallengeIds'size :: !Data.Word.Word64,
                                       _AttestedChallengeIds'ids :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                       _AttestedChallengeIds'cursor :: !Data.Int.Int64,
                                       _AttestedChallengeIds'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AttestedChallengeIds where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AttestedChallengeIds "size" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttestedChallengeIds'size
           (\ x__ y__ -> x__ {_AttestedChallengeIds'size = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttestedChallengeIds "ids" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttestedChallengeIds'ids
           (\ x__ y__ -> x__ {_AttestedChallengeIds'ids = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AttestedChallengeIds "vec'ids" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttestedChallengeIds'ids
           (\ x__ y__ -> x__ {_AttestedChallengeIds'ids = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttestedChallengeIds "cursor" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttestedChallengeIds'cursor
           (\ x__ y__ -> x__ {_AttestedChallengeIds'cursor = y__}))
        Prelude.id
instance Data.ProtoLens.Message AttestedChallengeIds where
  messageName _
    = Data.Text.pack "greenfield.challenge.AttestedChallengeIds"
  packedMessageDescriptor _
    = "\n\
      \\DC4AttestedChallengeIds\DC2\DC2\n\
      \\EOTsize\CAN\SOH \SOH(\EOTR\EOTsize\DC2\DLE\n\
      \\ETXids\CAN\STX \ETX(\EOTR\ETXids\DC2\SYN\n\
      \\ACKcursor\CAN\ETX \SOH(\ETXR\ACKcursor"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"size")) ::
              Data.ProtoLens.FieldDescriptor AttestedChallengeIds
        ids__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed (Data.ProtoLens.Field.field @"ids")) ::
              Data.ProtoLens.FieldDescriptor AttestedChallengeIds
        cursor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cursor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"cursor")) ::
              Data.ProtoLens.FieldDescriptor AttestedChallengeIds
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, size__field_descriptor),
           (Data.ProtoLens.Tag 2, ids__field_descriptor),
           (Data.ProtoLens.Tag 3, cursor__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AttestedChallengeIds'_unknownFields
        (\ x__ y__ -> x__ {_AttestedChallengeIds'_unknownFields = y__})
  defMessage
    = AttestedChallengeIds'_constructor
        {_AttestedChallengeIds'size = Data.ProtoLens.fieldDefault,
         _AttestedChallengeIds'ids = Data.Vector.Generic.empty,
         _AttestedChallengeIds'cursor = Data.ProtoLens.fieldDefault,
         _AttestedChallengeIds'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AttestedChallengeIds
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
             -> Data.ProtoLens.Encoding.Bytes.Parser AttestedChallengeIds
        loop x mutable'ids
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'ids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'ids)
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
                              (Data.ProtoLens.Field.field @"vec'ids") frozen'ids x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"size") y x)
                                  mutable'ids
                        16
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "ids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'ids y)
                                loop x v
                        18
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "ids"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'ids)
                                loop x y
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cursor"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"cursor") y x)
                                  mutable'ids
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'ids
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'ids <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'ids)
          "AttestedChallengeIds"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"size") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   p = Lens.Family2.view (Data.ProtoLens.Field.field @"vec'ids") _x
                 in
                   if Data.Vector.Generic.null p then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            (Data.ProtoLens.Encoding.Bytes.runBuilder
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  Data.ProtoLens.Encoding.Bytes.putVarInt p))))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"cursor") _x
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
instance Control.DeepSeq.NFData AttestedChallengeIds where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AttestedChallengeIds'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AttestedChallengeIds'size x__)
                (Control.DeepSeq.deepseq
                   (_AttestedChallengeIds'ids x__)
                   (Control.DeepSeq.deepseq (_AttestedChallengeIds'cursor x__) ())))
{- | Fields :
     
         * 'Proto.Greenfield.Challenge.Types_Fields.id' @:: Lens' Challenge Data.Word.Word64@
         * 'Proto.Greenfield.Challenge.Types_Fields.expiredHeight' @:: Lens' Challenge Data.Word.Word64@ -}
data Challenge
  = Challenge'_constructor {_Challenge'id :: !Data.Word.Word64,
                            _Challenge'expiredHeight :: !Data.Word.Word64,
                            _Challenge'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Challenge where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Challenge "id" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Challenge'id (\ x__ y__ -> x__ {_Challenge'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Challenge "expiredHeight" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Challenge'expiredHeight
           (\ x__ y__ -> x__ {_Challenge'expiredHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Message Challenge where
  messageName _ = Data.Text.pack "greenfield.challenge.Challenge"
  packedMessageDescriptor _
    = "\n\
      \\tChallenge\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\EOTR\STXid\DC2%\n\
      \\SOexpired_height\CAN\STX \SOH(\EOTR\rexpiredHeight"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor Challenge
        expiredHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expired_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"expiredHeight")) ::
              Data.ProtoLens.FieldDescriptor Challenge
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, expiredHeight__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Challenge'_unknownFields
        (\ x__ y__ -> x__ {_Challenge'_unknownFields = y__})
  defMessage
    = Challenge'_constructor
        {_Challenge'id = Data.ProtoLens.fieldDefault,
         _Challenge'expiredHeight = Data.ProtoLens.fieldDefault,
         _Challenge'_unknownFields = []}
  parseMessage
    = let
        loop :: Challenge -> Data.ProtoLens.Encoding.Bytes.Parser Challenge
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "expired_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"expiredHeight") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Challenge"
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
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"expiredHeight") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Challenge where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Challenge'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Challenge'id x__)
                (Control.DeepSeq.deepseq (_Challenge'expiredHeight x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Challenge.Types_Fields.spOperatorAddress' @:: Lens' Slash Data.ByteString.ByteString@
         * 'Proto.Greenfield.Challenge.Types_Fields.objectId' @:: Lens' Slash Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Types_Fields.height' @:: Lens' Slash Data.Word.Word64@ -}
data Slash
  = Slash'_constructor {_Slash'spOperatorAddress :: !Data.ByteString.ByteString,
                        _Slash'objectId :: !Data.Text.Text,
                        _Slash'height :: !Data.Word.Word64,
                        _Slash'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Slash where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Slash "spOperatorAddress" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Slash'spOperatorAddress
           (\ x__ y__ -> x__ {_Slash'spOperatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Slash "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Slash'objectId (\ x__ y__ -> x__ {_Slash'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Slash "height" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Slash'height (\ x__ y__ -> x__ {_Slash'height = y__}))
        Prelude.id
instance Data.ProtoLens.Message Slash where
  messageName _ = Data.Text.pack "greenfield.challenge.Slash"
  packedMessageDescriptor _
    = "\n\
      \\ENQSlash\DC2.\n\
      \\DC3sp_operator_address\CAN\SOH \SOH(\fR\DC1spOperatorAddress\DC28\n\
      \\tobject_id\CAN\STX \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2\SYN\n\
      \\ACKheight\CAN\ETX \SOH(\EOTR\ACKheight"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        spOperatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sp_operator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"spOperatorAddress")) ::
              Data.ProtoLens.FieldDescriptor Slash
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor Slash
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor Slash
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spOperatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, objectId__field_descriptor),
           (Data.ProtoLens.Tag 3, height__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Slash'_unknownFields
        (\ x__ y__ -> x__ {_Slash'_unknownFields = y__})
  defMessage
    = Slash'_constructor
        {_Slash'spOperatorAddress = Data.ProtoLens.fieldDefault,
         _Slash'objectId = Data.ProtoLens.fieldDefault,
         _Slash'height = Data.ProtoLens.fieldDefault,
         _Slash'_unknownFields = []}
  parseMessage
    = let
        loop :: Slash -> Data.ProtoLens.Encoding.Bytes.Parser Slash
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
                                       "sp_operator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"spOperatorAddress") y x)
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
                                       "object_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectId") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Slash"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"spOperatorAddress") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"objectId") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Slash where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Slash'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Slash'spOperatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_Slash'objectId x__)
                   (Control.DeepSeq.deepseq (_Slash'height x__) ())))
newtype VoteResult'UnrecognizedValue
  = VoteResult'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data VoteResult
  = CHALLENGE_FAILED |
    CHALLENGE_SUCCEED |
    VoteResult'Unrecognized !VoteResult'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum VoteResult where
  maybeToEnum 0 = Prelude.Just CHALLENGE_FAILED
  maybeToEnum 1 = Prelude.Just CHALLENGE_SUCCEED
  maybeToEnum k
    = Prelude.Just
        (VoteResult'Unrecognized
           (VoteResult'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum CHALLENGE_FAILED = "CHALLENGE_FAILED"
  showEnum CHALLENGE_SUCCEED = "CHALLENGE_SUCCEED"
  showEnum (VoteResult'Unrecognized (VoteResult'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "CHALLENGE_FAILED" = Prelude.Just CHALLENGE_FAILED
    | (Prelude.==) k "CHALLENGE_SUCCEED"
    = Prelude.Just CHALLENGE_SUCCEED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded VoteResult where
  minBound = CHALLENGE_FAILED
  maxBound = CHALLENGE_SUCCEED
instance Prelude.Enum VoteResult where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum VoteResult: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum CHALLENGE_FAILED = 0
  fromEnum CHALLENGE_SUCCEED = 1
  fromEnum (VoteResult'Unrecognized (VoteResult'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ CHALLENGE_SUCCEED
    = Prelude.error
        "VoteResult.succ: bad argument CHALLENGE_SUCCEED. This value would be out of bounds."
  succ CHALLENGE_FAILED = CHALLENGE_SUCCEED
  succ (VoteResult'Unrecognized _)
    = Prelude.error "VoteResult.succ: bad argument: unrecognized value"
  pred CHALLENGE_FAILED
    = Prelude.error
        "VoteResult.pred: bad argument CHALLENGE_FAILED. This value would be out of bounds."
  pred CHALLENGE_SUCCEED = CHALLENGE_FAILED
  pred (VoteResult'Unrecognized _)
    = Prelude.error "VoteResult.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault VoteResult where
  fieldDefault = CHALLENGE_FAILED
instance Control.DeepSeq.NFData VoteResult where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ greenfield/challenge/types.proto\DC2\DC4greenfield.challenge\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\"\137\SOH\n\
    \\ENQSlash\DC2.\n\
    \\DC3sp_operator_address\CAN\SOH \SOH(\fR\DC1spOperatorAddress\DC28\n\
    \\tobject_id\CAN\STX \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2\SYN\n\
    \\ACKheight\CAN\ETX \SOH(\EOTR\ACKheight\"B\n\
    \\tChallenge\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\EOTR\STXid\DC2%\n\
    \\SOexpired_height\CAN\STX \SOH(\EOTR\rexpiredHeight\"T\n\
    \\DC4AttestedChallengeIds\DC2\DC2\n\
    \\EOTsize\CAN\SOH \SOH(\EOTR\EOTsize\DC2\DLE\n\
    \\ETXids\CAN\STX \ETX(\EOTR\ETXids\DC2\SYN\n\
    \\ACKcursor\CAN\ETX \SOH(\ETXR\ACKcursor*?\n\
    \\n\
    \VoteResult\DC2\DC4\n\
    \\DLECHALLENGE_FAILED\DLE\NUL\DC2\NAK\n\
    \\DC1CHALLENGE_SUCCEED\DLE\SOH\SUB\EOT\136\163\RS\NULB3Z1github.com/bnb-chain/greenfield/x/challenge/typesJ\175\f\n\
    \\ACK\DC2\EOT\NUL\NUL7\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NULH\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ACK\NULH\n\
    \H\n\
    \\STX\ENQ\NUL\DC2\EOT\t\NUL\DC1\SOH\SUB< VoteResult defines the result attestation for a challenge.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\t\ENQ\SI\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\ETX\DC2\ETX\n\
    \\STX1\n\
    \\r\n\
    \\ACK\ENQ\NUL\ETX\177\228\ETX\DC2\ETX\n\
    \\STX1\n\
    \$\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\r\STX\ETB\SUB\ETB The challenge failed.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\r\STX\DC2\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\r\NAK\SYN\n\
    \%\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\DLE\STX\CAN\SUB\CAN The challenge succeed.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\DLE\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\DLE\SYN\ETB\n\
    \\\\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL!\SOH\SUBP Slash records the storage provider slashes, which will be pruned periodically.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\r\n\
    \,\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SYN\STX \SUB\US The slashed storage provider.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SYN\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SYN\b\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SYN\RS\US\n\
    \(\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\EM\STX\GS\EOT\SUB\SUB The slashed object info.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\EM\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\EM\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\EOT\EM\ETB\GS\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\SUB\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\235\251\ETX\DC2\ETX\ESC\EOT#\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\FS\EOT \n\
    \S\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX \STX\DC4\SUBF The height when the slash happened, which is used for prune purpose.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX \STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX \t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX \DC2\DC3\n\
    \H\n\
    \\STX\EOT\SOH\DC2\EOT$\NUL*\SOH\SUB< Challenge records the challenge which are not expired yet.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX$\b\DC1\n\
    \'\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX&\STX\DLE\SUB\SUB The id of the challenge.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX&\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX&\t\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX&\SO\SI\n\
    \A\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX)\STX\FS\SUB4 The height at which the challenge will be expired.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX)\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX)\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX)\SUB\ESC\n\
    \\188\SOH\n\
    \\STX\EOT\STX\DC2\EOT.\NUL7\SOH\SUB\175\SOH AttestedChallengeIds stored fixed number of the latest attested challenge ids.\n\
    \ To use the storage more efficiently, a circular queue will be constructed using these fields.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX.\b\FS\n\
    \9\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX0\STX\DC2\SUB, The fixed number of challenge ids to save.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX0\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX0\t\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX0\DLE\DC1\n\
    \1\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX3\STX\SUB\SUB$ The latest attested challenge ids.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX3\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX3\CAN\EM\n\
    \>\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX6\STX\DC3\SUB1 The cursor to retrieve data from the ids field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX6\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX6\b\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX6\DC1\DC2b\ACKproto3"