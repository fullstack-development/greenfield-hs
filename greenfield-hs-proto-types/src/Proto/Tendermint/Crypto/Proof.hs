{- This file was auto-generated from tendermint/crypto/proof.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Tendermint.Crypto.Proof (
        DominoOp(), Proof(), ProofOp(), ProofOps(), ValueOp()
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
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Tendermint.Crypto.Proof_Fields.key' @:: Lens' DominoOp Data.Text.Text@
         * 'Proto.Tendermint.Crypto.Proof_Fields.input' @:: Lens' DominoOp Data.Text.Text@
         * 'Proto.Tendermint.Crypto.Proof_Fields.output' @:: Lens' DominoOp Data.Text.Text@ -}
data DominoOp
  = DominoOp'_constructor {_DominoOp'key :: !Data.Text.Text,
                           _DominoOp'input :: !Data.Text.Text,
                           _DominoOp'output :: !Data.Text.Text,
                           _DominoOp'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DominoOp where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DominoOp "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DominoOp'key (\ x__ y__ -> x__ {_DominoOp'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DominoOp "input" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DominoOp'input (\ x__ y__ -> x__ {_DominoOp'input = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DominoOp "output" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DominoOp'output (\ x__ y__ -> x__ {_DominoOp'output = y__}))
        Prelude.id
instance Data.ProtoLens.Message DominoOp where
  messageName _ = Data.Text.pack "tendermint.crypto.DominoOp"
  packedMessageDescriptor _
    = "\n\
      \\bDominoOp\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQinput\CAN\STX \SOH(\tR\ENQinput\DC2\SYN\n\
      \\ACKoutput\CAN\ETX \SOH(\tR\ACKoutput"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor DominoOp
        input__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"input")) ::
              Data.ProtoLens.FieldDescriptor DominoOp
        output__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "output"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"output")) ::
              Data.ProtoLens.FieldDescriptor DominoOp
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, input__field_descriptor),
           (Data.ProtoLens.Tag 3, output__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DominoOp'_unknownFields
        (\ x__ y__ -> x__ {_DominoOp'_unknownFields = y__})
  defMessage
    = DominoOp'_constructor
        {_DominoOp'key = Data.ProtoLens.fieldDefault,
         _DominoOp'input = Data.ProtoLens.fieldDefault,
         _DominoOp'output = Data.ProtoLens.fieldDefault,
         _DominoOp'_unknownFields = []}
  parseMessage
    = let
        loop :: DominoOp -> Data.ProtoLens.Encoding.Bytes.Parser DominoOp
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
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
                                       "input"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"input") y x)
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
                                       "output"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"output") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DominoOp"
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
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"input") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"output") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData DominoOp where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DominoOp'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DominoOp'key x__)
                (Control.DeepSeq.deepseq
                   (_DominoOp'input x__)
                   (Control.DeepSeq.deepseq (_DominoOp'output x__) ())))
{- | Fields :
     
         * 'Proto.Tendermint.Crypto.Proof_Fields.total' @:: Lens' Proof Data.Int.Int64@
         * 'Proto.Tendermint.Crypto.Proof_Fields.index' @:: Lens' Proof Data.Int.Int64@
         * 'Proto.Tendermint.Crypto.Proof_Fields.leafHash' @:: Lens' Proof Data.ByteString.ByteString@
         * 'Proto.Tendermint.Crypto.Proof_Fields.aunts' @:: Lens' Proof [Data.ByteString.ByteString]@
         * 'Proto.Tendermint.Crypto.Proof_Fields.vec'aunts' @:: Lens' Proof (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data Proof
  = Proof'_constructor {_Proof'total :: !Data.Int.Int64,
                        _Proof'index :: !Data.Int.Int64,
                        _Proof'leafHash :: !Data.ByteString.ByteString,
                        _Proof'aunts :: !(Data.Vector.Vector Data.ByteString.ByteString),
                        _Proof'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Proof where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Proof "total" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proof'total (\ x__ y__ -> x__ {_Proof'total = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proof "index" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proof'index (\ x__ y__ -> x__ {_Proof'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proof "leafHash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proof'leafHash (\ x__ y__ -> x__ {_Proof'leafHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proof "aunts" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proof'aunts (\ x__ y__ -> x__ {_Proof'aunts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Proof "vec'aunts" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proof'aunts (\ x__ y__ -> x__ {_Proof'aunts = y__}))
        Prelude.id
instance Data.ProtoLens.Message Proof where
  messageName _ = Data.Text.pack "tendermint.crypto.Proof"
  packedMessageDescriptor _
    = "\n\
      \\ENQProof\DC2\DC4\n\
      \\ENQtotal\CAN\SOH \SOH(\ETXR\ENQtotal\DC2\DC4\n\
      \\ENQindex\CAN\STX \SOH(\ETXR\ENQindex\DC2\ESC\n\
      \\tleaf_hash\CAN\ETX \SOH(\fR\bleafHash\DC2\DC4\n\
      \\ENQaunts\CAN\EOT \ETX(\fR\ENQaunts"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        total__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"total")) ::
              Data.ProtoLens.FieldDescriptor Proof
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor Proof
        leafHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "leaf_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"leafHash")) ::
              Data.ProtoLens.FieldDescriptor Proof
        aunts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "aunts"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"aunts")) ::
              Data.ProtoLens.FieldDescriptor Proof
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, total__field_descriptor),
           (Data.ProtoLens.Tag 2, index__field_descriptor),
           (Data.ProtoLens.Tag 3, leafHash__field_descriptor),
           (Data.ProtoLens.Tag 4, aunts__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Proof'_unknownFields
        (\ x__ y__ -> x__ {_Proof'_unknownFields = y__})
  defMessage
    = Proof'_constructor
        {_Proof'total = Data.ProtoLens.fieldDefault,
         _Proof'index = Data.ProtoLens.fieldDefault,
         _Proof'leafHash = Data.ProtoLens.fieldDefault,
         _Proof'aunts = Data.Vector.Generic.empty,
         _Proof'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Proof
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser Proof
        loop x mutable'aunts
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'aunts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'aunts)
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
                              (Data.ProtoLens.Field.field @"vec'aunts") frozen'aunts x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "total"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"total") y x)
                                  mutable'aunts
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "index"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                                  mutable'aunts
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "leaf_hash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"leafHash") y x)
                                  mutable'aunts
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "aunts"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'aunts y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'aunts
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'aunts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'aunts)
          "Proof"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"total") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"leafHash") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               _v))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    _v))
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'aunts") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Proof where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Proof'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Proof'total x__)
                (Control.DeepSeq.deepseq
                   (_Proof'index x__)
                   (Control.DeepSeq.deepseq
                      (_Proof'leafHash x__)
                      (Control.DeepSeq.deepseq (_Proof'aunts x__) ()))))
{- | Fields :
     
         * 'Proto.Tendermint.Crypto.Proof_Fields.type'' @:: Lens' ProofOp Data.Text.Text@
         * 'Proto.Tendermint.Crypto.Proof_Fields.key' @:: Lens' ProofOp Data.ByteString.ByteString@
         * 'Proto.Tendermint.Crypto.Proof_Fields.data'' @:: Lens' ProofOp Data.ByteString.ByteString@ -}
data ProofOp
  = ProofOp'_constructor {_ProofOp'type' :: !Data.Text.Text,
                          _ProofOp'key :: !Data.ByteString.ByteString,
                          _ProofOp'data' :: !Data.ByteString.ByteString,
                          _ProofOp'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProofOp where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProofOp "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProofOp'type' (\ x__ y__ -> x__ {_ProofOp'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProofOp "key" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProofOp'key (\ x__ y__ -> x__ {_ProofOp'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProofOp "data'" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProofOp'data' (\ x__ y__ -> x__ {_ProofOp'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProofOp where
  messageName _ = Data.Text.pack "tendermint.crypto.ProofOp"
  packedMessageDescriptor _
    = "\n\
      \\aProofOp\DC2\DC2\n\
      \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2\DLE\n\
      \\ETXkey\CAN\STX \SOH(\fR\ETXkey\DC2\DC2\n\
      \\EOTdata\CAN\ETX \SOH(\fR\EOTdata"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor ProofOp
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor ProofOp
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor ProofOp
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, key__field_descriptor),
           (Data.ProtoLens.Tag 3, data'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProofOp'_unknownFields
        (\ x__ y__ -> x__ {_ProofOp'_unknownFields = y__})
  defMessage
    = ProofOp'_constructor
        {_ProofOp'type' = Data.ProtoLens.fieldDefault,
         _ProofOp'key = Data.ProtoLens.fieldDefault,
         _ProofOp'data' = Data.ProtoLens.fieldDefault,
         _ProofOp'_unknownFields = []}
  parseMessage
    = let
        loop :: ProofOp -> Data.ProtoLens.Encoding.Bytes.Parser ProofOp
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
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
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
          (do loop Data.ProtoLens.defMessage) "ProofOp"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ProofOp where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProofOp'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProofOp'type' x__)
                (Control.DeepSeq.deepseq
                   (_ProofOp'key x__)
                   (Control.DeepSeq.deepseq (_ProofOp'data' x__) ())))
{- | Fields :
     
         * 'Proto.Tendermint.Crypto.Proof_Fields.ops' @:: Lens' ProofOps [ProofOp]@
         * 'Proto.Tendermint.Crypto.Proof_Fields.vec'ops' @:: Lens' ProofOps (Data.Vector.Vector ProofOp)@ -}
data ProofOps
  = ProofOps'_constructor {_ProofOps'ops :: !(Data.Vector.Vector ProofOp),
                           _ProofOps'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProofOps where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProofOps "ops" [ProofOp] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProofOps'ops (\ x__ y__ -> x__ {_ProofOps'ops = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProofOps "vec'ops" (Data.Vector.Vector ProofOp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProofOps'ops (\ x__ y__ -> x__ {_ProofOps'ops = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProofOps where
  messageName _ = Data.Text.pack "tendermint.crypto.ProofOps"
  packedMessageDescriptor _
    = "\n\
      \\bProofOps\DC22\n\
      \\ETXops\CAN\SOH \ETX(\v2\SUB.tendermint.crypto.ProofOpR\ETXopsB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ops__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ops"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProofOp)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"ops")) ::
              Data.ProtoLens.FieldDescriptor ProofOps
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, ops__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProofOps'_unknownFields
        (\ x__ y__ -> x__ {_ProofOps'_unknownFields = y__})
  defMessage
    = ProofOps'_constructor
        {_ProofOps'ops = Data.Vector.Generic.empty,
         _ProofOps'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProofOps
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ProofOp
             -> Data.ProtoLens.Encoding.Bytes.Parser ProofOps
        loop x mutable'ops
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'ops <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'ops)
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
                              (Data.ProtoLens.Field.field @"vec'ops") frozen'ops x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "ops"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'ops y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'ops
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'ops <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'ops)
          "ProofOps"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'ops") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ProofOps where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProofOps'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ProofOps'ops x__) ())
{- | Fields :
     
         * 'Proto.Tendermint.Crypto.Proof_Fields.key' @:: Lens' ValueOp Data.ByteString.ByteString@
         * 'Proto.Tendermint.Crypto.Proof_Fields.proof' @:: Lens' ValueOp Proof@
         * 'Proto.Tendermint.Crypto.Proof_Fields.maybe'proof' @:: Lens' ValueOp (Prelude.Maybe Proof)@ -}
data ValueOp
  = ValueOp'_constructor {_ValueOp'key :: !Data.ByteString.ByteString,
                          _ValueOp'proof :: !(Prelude.Maybe Proof),
                          _ValueOp'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValueOp where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValueOp "key" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueOp'key (\ x__ y__ -> x__ {_ValueOp'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValueOp "proof" Proof where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueOp'proof (\ x__ y__ -> x__ {_ValueOp'proof = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ValueOp "maybe'proof" (Prelude.Maybe Proof) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValueOp'proof (\ x__ y__ -> x__ {_ValueOp'proof = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValueOp where
  messageName _ = Data.Text.pack "tendermint.crypto.ValueOp"
  packedMessageDescriptor _
    = "\n\
      \\aValueOp\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\fR\ETXkey\DC2.\n\
      \\ENQproof\CAN\STX \SOH(\v2\CAN.tendermint.crypto.ProofR\ENQproof"
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
              Data.ProtoLens.FieldDescriptor ValueOp
        proof__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proof"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proof)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'proof")) ::
              Data.ProtoLens.FieldDescriptor ValueOp
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, proof__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValueOp'_unknownFields
        (\ x__ y__ -> x__ {_ValueOp'_unknownFields = y__})
  defMessage
    = ValueOp'_constructor
        {_ValueOp'key = Data.ProtoLens.fieldDefault,
         _ValueOp'proof = Prelude.Nothing, _ValueOp'_unknownFields = []}
  parseMessage
    = let
        loop :: ValueOp -> Data.ProtoLens.Encoding.Bytes.Parser ValueOp
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "proof"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"proof") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ValueOp"
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'proof") _x
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
instance Control.DeepSeq.NFData ValueOp where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValueOp'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValueOp'key x__)
                (Control.DeepSeq.deepseq (_ValueOp'proof x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\GStendermint/crypto/proof.proto\DC2\DC1tendermint.crypto\SUB\DC4gogoproto/gogo.proto\"f\n\
    \\ENQProof\DC2\DC4\n\
    \\ENQtotal\CAN\SOH \SOH(\ETXR\ENQtotal\DC2\DC4\n\
    \\ENQindex\CAN\STX \SOH(\ETXR\ENQindex\DC2\ESC\n\
    \\tleaf_hash\CAN\ETX \SOH(\fR\bleafHash\DC2\DC4\n\
    \\ENQaunts\CAN\EOT \ETX(\fR\ENQaunts\"K\n\
    \\aValueOp\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\fR\ETXkey\DC2.\n\
    \\ENQproof\CAN\STX \SOH(\v2\CAN.tendermint.crypto.ProofR\ENQproof\"J\n\
    \\bDominoOp\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQinput\CAN\STX \SOH(\tR\ENQinput\DC2\SYN\n\
    \\ACKoutput\CAN\ETX \SOH(\tR\ACKoutput\"C\n\
    \\aProofOp\DC2\DC2\n\
    \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2\DLE\n\
    \\ETXkey\CAN\STX \SOH(\fR\ETXkey\DC2\DC2\n\
    \\EOTdata\CAN\ETX \SOH(\fR\EOTdata\">\n\
    \\bProofOps\DC22\n\
    \\ETXops\CAN\SOH \ETX(\v2\SUB.tendermint.crypto.ProofOpR\ETXopsB\EOT\200\222\US\NULB6Z4github.com/cometbft/cometbft/proto/tendermint/cryptoJ\211\t\n\
    \\ACK\DC2\EOT\NUL\NUL(\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\SUB\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULK\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NULK\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL\RS\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\f\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\r\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\SO\NUL\DC4\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SO\b\SI\n\
    \&\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DLE\STX\DLE\SUB\EM Encoded in ProofOp.Key.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\DLE\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DLE\b\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DLE\SO\SI\n\
    \(\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DC3\STX\DC2\SUB\ESC To encode in ProofOp.Data\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\DC3\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DC3\b\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DC3\DLE\DC1\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\SYN\NUL\SUB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\SYN\b\DLE\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\ETB\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\ETB\t\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\ETB\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\CAN\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\CAN\t\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\CAN\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\EM\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\EM\t\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\EM\DC2\DC3\n\
    \\174\SOH\n\
    \\STX\EOT\ETX\DC2\EOT\US\NUL#\SOH\SUB\161\SOH ProofOp defines an operation used for calculating Merkle root\n\
    \ The data could be arbitrary format, providing nessecary data\n\
    \ for example neighbouring node hash\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\US\b\SI\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX \STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX \STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX \t\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX \DLE\DC1\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX!\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX!\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX!\t\f\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX!\DLE\DC1\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX\"\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX\"\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX\"\t\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX\"\DLE\DC1\n\
    \F\n\
    \\STX\EOT\EOT\DC2\EOT&\NUL(\SOH\SUB: ProofOps is Merkle proof defined by the list of ProofOps\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX&\b\DLE\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX'\STX:\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETX'\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX'\DC3\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX'\EM\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETX'\ESC9\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\233\251\ETX\DC2\ETX'\FS8b\ACKproto3"