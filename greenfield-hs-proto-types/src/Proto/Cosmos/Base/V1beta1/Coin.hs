{- This file was auto-generated from cosmos/base/v1beta1/coin.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Base.V1beta1.Coin (
        Coin(), DecCoin(), DecProto(), IntProto()
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Base.V1beta1.Coin_Fields.denom' @:: Lens' Coin Data.Text.Text@
         * 'Proto.Cosmos.Base.V1beta1.Coin_Fields.amount' @:: Lens' Coin Data.Text.Text@ -}
data Coin
  = Coin'_constructor {_Coin'denom :: !Data.Text.Text,
                       _Coin'amount :: !Data.Text.Text,
                       _Coin'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Coin where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Coin "denom" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Coin'denom (\ x__ y__ -> x__ {_Coin'denom = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Coin "amount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Coin'amount (\ x__ y__ -> x__ {_Coin'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message Coin where
  messageName _ = Data.Text.pack "cosmos.base.v1beta1.Coin"
  packedMessageDescriptor _
    = "\n\
      \\EOTCoin\DC2\DC4\n\
      \\ENQdenom\CAN\SOH \SOH(\tR\ENQdenom\DC26\n\
      \\ACKamount\CAN\STX \SOH(\tR\ACKamountB\RS\200\222\US\NUL\218\222\US\ETXInt\210\180-\n\
      \cosmos.Int\168\231\176*\SOH:\EOT\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        denom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "denom"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"denom")) ::
              Data.ProtoLens.FieldDescriptor Coin
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor Coin
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, denom__field_descriptor),
           (Data.ProtoLens.Tag 2, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Coin'_unknownFields
        (\ x__ y__ -> x__ {_Coin'_unknownFields = y__})
  defMessage
    = Coin'_constructor
        {_Coin'denom = Data.ProtoLens.fieldDefault,
         _Coin'amount = Data.ProtoLens.fieldDefault,
         _Coin'_unknownFields = []}
  parseMessage
    = let
        loop :: Coin -> Data.ProtoLens.Encoding.Bytes.Parser Coin
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
                                       "denom"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"denom") y x)
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
                                       "amount"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"amount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Coin"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"denom") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"amount") _x
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
instance Control.DeepSeq.NFData Coin where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Coin'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Coin'denom x__) (Control.DeepSeq.deepseq (_Coin'amount x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Base.V1beta1.Coin_Fields.denom' @:: Lens' DecCoin Data.Text.Text@
         * 'Proto.Cosmos.Base.V1beta1.Coin_Fields.amount' @:: Lens' DecCoin Data.Text.Text@ -}
data DecCoin
  = DecCoin'_constructor {_DecCoin'denom :: !Data.Text.Text,
                          _DecCoin'amount :: !Data.Text.Text,
                          _DecCoin'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DecCoin where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DecCoin "denom" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DecCoin'denom (\ x__ y__ -> x__ {_DecCoin'denom = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DecCoin "amount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DecCoin'amount (\ x__ y__ -> x__ {_DecCoin'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message DecCoin where
  messageName _ = Data.Text.pack "cosmos.base.v1beta1.DecCoin"
  packedMessageDescriptor _
    = "\n\
      \\aDecCoin\DC2\DC4\n\
      \\ENQdenom\CAN\SOH \SOH(\tR\ENQdenom\DC21\n\
      \\ACKamount\CAN\STX \SOH(\tR\ACKamountB\EM\200\222\US\NUL\218\222\US\ETXDec\210\180-\n\
      \cosmos.Dec:\EOT\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        denom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "denom"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"denom")) ::
              Data.ProtoLens.FieldDescriptor DecCoin
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor DecCoin
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, denom__field_descriptor),
           (Data.ProtoLens.Tag 2, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DecCoin'_unknownFields
        (\ x__ y__ -> x__ {_DecCoin'_unknownFields = y__})
  defMessage
    = DecCoin'_constructor
        {_DecCoin'denom = Data.ProtoLens.fieldDefault,
         _DecCoin'amount = Data.ProtoLens.fieldDefault,
         _DecCoin'_unknownFields = []}
  parseMessage
    = let
        loop :: DecCoin -> Data.ProtoLens.Encoding.Bytes.Parser DecCoin
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
                                       "denom"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"denom") y x)
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
                                       "amount"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"amount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DecCoin"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"denom") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"amount") _x
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
instance Control.DeepSeq.NFData DecCoin where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DecCoin'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DecCoin'denom x__)
                (Control.DeepSeq.deepseq (_DecCoin'amount x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Base.V1beta1.Coin_Fields.dec' @:: Lens' DecProto Data.Text.Text@ -}
data DecProto
  = DecProto'_constructor {_DecProto'dec :: !Data.Text.Text,
                           _DecProto'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DecProto where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DecProto "dec" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DecProto'dec (\ x__ y__ -> x__ {_DecProto'dec = y__}))
        Prelude.id
instance Data.ProtoLens.Message DecProto where
  messageName _ = Data.Text.pack "cosmos.base.v1beta1.DecProto"
  packedMessageDescriptor _
    = "\n\
      \\bDecProto\DC2+\n\
      \\ETXdec\CAN\SOH \SOH(\tR\ETXdecB\EM\200\222\US\NUL\218\222\US\ETXDec\210\180-\n\
      \cosmos.Dec"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dec"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"dec")) ::
              Data.ProtoLens.FieldDescriptor DecProto
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, dec__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DecProto'_unknownFields
        (\ x__ y__ -> x__ {_DecProto'_unknownFields = y__})
  defMessage
    = DecProto'_constructor
        {_DecProto'dec = Data.ProtoLens.fieldDefault,
         _DecProto'_unknownFields = []}
  parseMessage
    = let
        loop :: DecProto -> Data.ProtoLens.Encoding.Bytes.Parser DecProto
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
                                       "dec"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dec") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DecProto"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"dec") _x
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
instance Control.DeepSeq.NFData DecProto where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DecProto'_unknownFields x__)
             (Control.DeepSeq.deepseq (_DecProto'dec x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Base.V1beta1.Coin_Fields.int' @:: Lens' IntProto Data.Text.Text@ -}
data IntProto
  = IntProto'_constructor {_IntProto'int :: !Data.Text.Text,
                           _IntProto'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IntProto where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IntProto "int" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IntProto'int (\ x__ y__ -> x__ {_IntProto'int = y__}))
        Prelude.id
instance Data.ProtoLens.Message IntProto where
  messageName _ = Data.Text.pack "cosmos.base.v1beta1.IntProto"
  packedMessageDescriptor _
    = "\n\
      \\bIntProto\DC2+\n\
      \\ETXint\CAN\SOH \SOH(\tR\ETXintB\EM\200\222\US\NUL\218\222\US\ETXInt\210\180-\n\
      \cosmos.Int"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        int__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"int")) ::
              Data.ProtoLens.FieldDescriptor IntProto
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, int__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IntProto'_unknownFields
        (\ x__ y__ -> x__ {_IntProto'_unknownFields = y__})
  defMessage
    = IntProto'_constructor
        {_IntProto'int = Data.ProtoLens.fieldDefault,
         _IntProto'_unknownFields = []}
  parseMessage
    = let
        loop :: IntProto -> Data.ProtoLens.Encoding.Bytes.Parser IntProto
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
                                       "int"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"int") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IntProto"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"int") _x
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
instance Control.DeepSeq.NFData IntProto where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IntProto'_unknownFields x__)
             (Control.DeepSeq.deepseq (_IntProto'int x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RScosmos/base/v1beta1/coin.proto\DC2\DC3cosmos.base.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"Z\n\
    \\EOTCoin\DC2\DC4\n\
    \\ENQdenom\CAN\SOH \SOH(\tR\ENQdenom\DC26\n\
    \\ACKamount\CAN\STX \SOH(\tR\ACKamountB\RS\200\222\US\NUL\218\222\US\ETXInt\210\180-\n\
    \cosmos.Int\168\231\176*\SOH:\EOT\232\160\US\SOH\"X\n\
    \\aDecCoin\DC2\DC4\n\
    \\ENQdenom\CAN\SOH \SOH(\tR\ENQdenom\DC21\n\
    \\ACKamount\CAN\STX \SOH(\tR\ACKamountB\EM\200\222\US\NUL\218\222\US\ETXDec\210\180-\n\
    \cosmos.Dec:\EOT\232\160\US\SOH\"7\n\
    \\bIntProto\DC2+\n\
    \\ETXint\CAN\SOH \SOH(\tR\ETXintB\EM\200\222\US\NUL\218\222\US\ETXInt\210\180-\n\
    \cosmos.Int\"7\n\
    \\bDecProto\DC2+\n\
    \\ETXdec\CAN\SOH \SOH(\tR\ETXdecB\EM\200\222\US\NUL\218\222\US\ETXDec\210\180-\n\
    \cosmos.DecB,Z\"github.com/cosmos/cosmos-sdk/types\216\225\RS\NUL\128\226\RS\NULJ\200\n\
    \\n\
    \\ACK\DC2\EOT\NUL\NUL/\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULO\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\a\NULO\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL0\n\
    \\v\n\
    \\EOT\b\155\236\ETX\DC2\ETX\b\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL0\n\
    \\v\n\
    \\EOT\b\160\236\ETX\DC2\ETX\t\NUL0\n\
    \\175\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SI\NUL\EM\SOH\SUB\162\SOH Coin defines a token with a denomination and an amount.\n\
    \\n\
    \ NOTE: The amount field is an Int which implements the custom method\n\
    \ signatures required by gogoproto.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SI\b\f\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DLE\STX\"\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETX\DLE\STX\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC2\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC2\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC2\DC2\DC3\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\DC3\STX\CAN\EOT\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC3\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC3\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\EOT\DC3\DC4\CAN\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\DC4\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\235\251\ETX\DC2\ETX\NAK\EOT\"\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\SYN\EOT\"\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX\ETB\EOT!\n\
    \\185\SOH\n\
    \\STX\EOT\SOH\DC2\EOT\US\NUL%\SOH\SUB\172\SOH DecCoin defines a token with a denomination and a decimal amount.\n\
    \\n\
    \ NOTE: The amount field is an Dec which implements the custom method\n\
    \ signatures required by gogoproto.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\US\b\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX \STX\"\n\
    \\r\n\
    \\ACK\EOT\SOH\a\141\244\ETX\DC2\ETX \STX\"\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\"\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\"\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\"\DC2\DC3\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT#\STX$k\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX#\t\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX#\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX$\ACKj\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\202\214\ENQ\DC2\ETX$\a+\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\235\251\ETX\DC2\ETX$-K\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\233\251\ETX\DC2\ETX$Mi\n\
    \G\n\
    \\STX\EOT\STX\DC2\EOT(\NUL*\SOH\SUB; IntProto defines a Protobuf wrapper around an Int object.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX(\b\DLE\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX)\STXv\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX)\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX)\t\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX)\SI\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX)\DC1u\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX)\DC26\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\235\251\ETX\DC2\ETX)8V\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\233\251\ETX\DC2\ETX)Xt\n\
    \F\n\
    \\STX\EOT\ETX\DC2\EOT-\NUL/\SOH\SUB: DecProto defines a Protobuf wrapper around a Dec object.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX-\b\DLE\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX.\STXv\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX.\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX.\t\f\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX.\SI\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETX.\DC1u\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\202\214\ENQ\DC2\ETX.\DC26\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\235\251\ETX\DC2\ETX.8V\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\233\251\ETX\DC2\ETX.Xtb\ACKproto3"