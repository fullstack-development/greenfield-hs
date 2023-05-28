{- This file was auto-generated from cosmos/bank/v1beta1/bank.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Bank.V1beta1.Bank (
        DenomUnit(), Input(), Metadata(), Output(), Params(),
        SendEnabled(), Supply()
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
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.denom' @:: Lens' DenomUnit Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.exponent' @:: Lens' DenomUnit Data.Word.Word32@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.aliases' @:: Lens' DenomUnit [Data.Text.Text]@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.vec'aliases' @:: Lens' DenomUnit (Data.Vector.Vector Data.Text.Text)@ -}
data DenomUnit
  = DenomUnit'_constructor {_DenomUnit'denom :: !Data.Text.Text,
                            _DenomUnit'exponent :: !Data.Word.Word32,
                            _DenomUnit'aliases :: !(Data.Vector.Vector Data.Text.Text),
                            _DenomUnit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DenomUnit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DenomUnit "denom" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DenomUnit'denom (\ x__ y__ -> x__ {_DenomUnit'denom = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DenomUnit "exponent" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DenomUnit'exponent (\ x__ y__ -> x__ {_DenomUnit'exponent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DenomUnit "aliases" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DenomUnit'aliases (\ x__ y__ -> x__ {_DenomUnit'aliases = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DenomUnit "vec'aliases" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DenomUnit'aliases (\ x__ y__ -> x__ {_DenomUnit'aliases = y__}))
        Prelude.id
instance Data.ProtoLens.Message DenomUnit where
  messageName _ = Data.Text.pack "cosmos.bank.v1beta1.DenomUnit"
  packedMessageDescriptor _
    = "\n\
      \\tDenomUnit\DC2\DC4\n\
      \\ENQdenom\CAN\SOH \SOH(\tR\ENQdenom\DC2\SUB\n\
      \\bexponent\CAN\STX \SOH(\rR\bexponent\DC2\CAN\n\
      \\aaliases\CAN\ETX \ETX(\tR\aaliases"
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
              Data.ProtoLens.FieldDescriptor DenomUnit
        exponent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exponent"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"exponent")) ::
              Data.ProtoLens.FieldDescriptor DenomUnit
        aliases__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "aliases"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"aliases")) ::
              Data.ProtoLens.FieldDescriptor DenomUnit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, denom__field_descriptor),
           (Data.ProtoLens.Tag 2, exponent__field_descriptor),
           (Data.ProtoLens.Tag 3, aliases__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DenomUnit'_unknownFields
        (\ x__ y__ -> x__ {_DenomUnit'_unknownFields = y__})
  defMessage
    = DenomUnit'_constructor
        {_DenomUnit'denom = Data.ProtoLens.fieldDefault,
         _DenomUnit'exponent = Data.ProtoLens.fieldDefault,
         _DenomUnit'aliases = Data.Vector.Generic.empty,
         _DenomUnit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DenomUnit
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser DenomUnit
        loop x mutable'aliases
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'aliases <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'aliases)
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
                              (Data.ProtoLens.Field.field @"vec'aliases") frozen'aliases x))
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"denom") y x)
                                  mutable'aliases
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "exponent"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"exponent") y x)
                                  mutable'aliases
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "aliases"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'aliases y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'aliases
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'aliases <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'aliases)
          "DenomUnit"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"exponent") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.Text.Encoding.encodeUtf8 _v))
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'aliases") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData DenomUnit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DenomUnit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DenomUnit'denom x__)
                (Control.DeepSeq.deepseq
                   (_DenomUnit'exponent x__)
                   (Control.DeepSeq.deepseq (_DenomUnit'aliases x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.address' @:: Lens' Input Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.coins' @:: Lens' Input [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.vec'coins' @:: Lens' Input (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data Input
  = Input'_constructor {_Input'address :: !Data.Text.Text,
                        _Input'coins :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                        _Input'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Input where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Input "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Input'address (\ x__ y__ -> x__ {_Input'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Input "coins" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Input'coins (\ x__ y__ -> x__ {_Input'coins = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Input "vec'coins" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Input'coins (\ x__ y__ -> x__ {_Input'coins = y__}))
        Prelude.id
instance Data.ProtoLens.Message Input where
  messageName _ = Data.Text.pack "cosmos.bank.v1beta1.Input"
  packedMessageDescriptor _
    = "\n\
      \\ENQInput\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2w\n\
      \\ENQcoins\CAN\STX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ENQcoinsBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:\DC4\136\160\US\NUL\232\160\US\NUL\130\231\176*\aaddress"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor Input
        coins__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "coins"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"coins")) ::
              Data.ProtoLens.FieldDescriptor Input
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, coins__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Input'_unknownFields
        (\ x__ y__ -> x__ {_Input'_unknownFields = y__})
  defMessage
    = Input'_constructor
        {_Input'address = Data.ProtoLens.fieldDefault,
         _Input'coins = Data.Vector.Generic.empty,
         _Input'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Input
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser Input
        loop x mutable'coins
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'coins <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'coins)
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
                              (Data.ProtoLens.Field.field @"vec'coins") frozen'coins x))
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
                                       "address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                                  mutable'coins
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "coins"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'coins y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'coins
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'coins <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'coins)
          "Input"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'coins") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Input where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Input'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Input'address x__)
                (Control.DeepSeq.deepseq (_Input'coins x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.description' @:: Lens' Metadata Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.denomUnits' @:: Lens' Metadata [DenomUnit]@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.vec'denomUnits' @:: Lens' Metadata (Data.Vector.Vector DenomUnit)@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.base' @:: Lens' Metadata Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.display' @:: Lens' Metadata Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.name' @:: Lens' Metadata Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.symbol' @:: Lens' Metadata Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.uri' @:: Lens' Metadata Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.uriHash' @:: Lens' Metadata Data.Text.Text@ -}
data Metadata
  = Metadata'_constructor {_Metadata'description :: !Data.Text.Text,
                           _Metadata'denomUnits :: !(Data.Vector.Vector DenomUnit),
                           _Metadata'base :: !Data.Text.Text,
                           _Metadata'display :: !Data.Text.Text,
                           _Metadata'name :: !Data.Text.Text,
                           _Metadata'symbol :: !Data.Text.Text,
                           _Metadata'uri :: !Data.Text.Text,
                           _Metadata'uriHash :: !Data.Text.Text,
                           _Metadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Metadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Metadata "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'description
           (\ x__ y__ -> x__ {_Metadata'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metadata "denomUnits" [DenomUnit] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'denomUnits
           (\ x__ y__ -> x__ {_Metadata'denomUnits = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Metadata "vec'denomUnits" (Data.Vector.Vector DenomUnit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'denomUnits
           (\ x__ y__ -> x__ {_Metadata'denomUnits = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metadata "base" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'base (\ x__ y__ -> x__ {_Metadata'base = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metadata "display" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'display (\ x__ y__ -> x__ {_Metadata'display = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metadata "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'name (\ x__ y__ -> x__ {_Metadata'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metadata "symbol" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'symbol (\ x__ y__ -> x__ {_Metadata'symbol = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metadata "uri" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'uri (\ x__ y__ -> x__ {_Metadata'uri = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Metadata "uriHash" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Metadata'uriHash (\ x__ y__ -> x__ {_Metadata'uriHash = y__}))
        Prelude.id
instance Data.ProtoLens.Message Metadata where
  messageName _ = Data.Text.pack "cosmos.bank.v1beta1.Metadata"
  packedMessageDescriptor _
    = "\n\
      \\bMetadata\DC2 \n\
      \\vdescription\CAN\SOH \SOH(\tR\vdescription\DC2?\n\
      \\vdenom_units\CAN\STX \ETX(\v2\RS.cosmos.bank.v1beta1.DenomUnitR\n\
      \denomUnits\DC2\DC2\n\
      \\EOTbase\CAN\ETX \SOH(\tR\EOTbase\DC2\CAN\n\
      \\adisplay\CAN\EOT \SOH(\tR\adisplay\DC2\DC2\n\
      \\EOTname\CAN\ENQ \SOH(\tR\EOTname\DC2\SYN\n\
      \\ACKsymbol\CAN\ACK \SOH(\tR\ACKsymbol\DC2\EM\n\
      \\ETXuri\CAN\a \SOH(\tR\ETXuriB\a\226\222\US\ETXURI\DC2&\n\
      \\buri_hash\CAN\b \SOH(\tR\auriHashB\v\226\222\US\aURIHash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor Metadata
        denomUnits__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "denom_units"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DenomUnit)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"denomUnits")) ::
              Data.ProtoLens.FieldDescriptor Metadata
        base__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "base"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"base")) ::
              Data.ProtoLens.FieldDescriptor Metadata
        display__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "display"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"display")) ::
              Data.ProtoLens.FieldDescriptor Metadata
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor Metadata
        symbol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "symbol"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"symbol")) ::
              Data.ProtoLens.FieldDescriptor Metadata
        uri__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uri"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"uri")) ::
              Data.ProtoLens.FieldDescriptor Metadata
        uriHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uri_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"uriHash")) ::
              Data.ProtoLens.FieldDescriptor Metadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, description__field_descriptor),
           (Data.ProtoLens.Tag 2, denomUnits__field_descriptor),
           (Data.ProtoLens.Tag 3, base__field_descriptor),
           (Data.ProtoLens.Tag 4, display__field_descriptor),
           (Data.ProtoLens.Tag 5, name__field_descriptor),
           (Data.ProtoLens.Tag 6, symbol__field_descriptor),
           (Data.ProtoLens.Tag 7, uri__field_descriptor),
           (Data.ProtoLens.Tag 8, uriHash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Metadata'_unknownFields
        (\ x__ y__ -> x__ {_Metadata'_unknownFields = y__})
  defMessage
    = Metadata'_constructor
        {_Metadata'description = Data.ProtoLens.fieldDefault,
         _Metadata'denomUnits = Data.Vector.Generic.empty,
         _Metadata'base = Data.ProtoLens.fieldDefault,
         _Metadata'display = Data.ProtoLens.fieldDefault,
         _Metadata'name = Data.ProtoLens.fieldDefault,
         _Metadata'symbol = Data.ProtoLens.fieldDefault,
         _Metadata'uri = Data.ProtoLens.fieldDefault,
         _Metadata'uriHash = Data.ProtoLens.fieldDefault,
         _Metadata'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Metadata
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DenomUnit
             -> Data.ProtoLens.Encoding.Bytes.Parser Metadata
        loop x mutable'denomUnits
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'denomUnits <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'denomUnits)
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
                              (Data.ProtoLens.Field.field @"vec'denomUnits") frozen'denomUnits
                              x))
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                                  mutable'denomUnits
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "denom_units"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'denomUnits y)
                                loop x v
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
                                       "base"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"base") y x)
                                  mutable'denomUnits
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "display"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"display") y x)
                                  mutable'denomUnits
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'denomUnits
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "symbol"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"symbol") y x)
                                  mutable'denomUnits
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "uri"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uri") y x)
                                  mutable'denomUnits
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "uri_hash"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uriHash") y x)
                                  mutable'denomUnits
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'denomUnits
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'denomUnits <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'denomUnits)
          "Metadata"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'denomUnits") _x))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"base") _x
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
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"display") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"symbol") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8 _v))
                            ((Data.Monoid.<>)
                               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"uri") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((Prelude..)
                                           (\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8 _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"uriHash") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8 _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData Metadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Metadata'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Metadata'description x__)
                (Control.DeepSeq.deepseq
                   (_Metadata'denomUnits x__)
                   (Control.DeepSeq.deepseq
                      (_Metadata'base x__)
                      (Control.DeepSeq.deepseq
                         (_Metadata'display x__)
                         (Control.DeepSeq.deepseq
                            (_Metadata'name x__)
                            (Control.DeepSeq.deepseq
                               (_Metadata'symbol x__)
                               (Control.DeepSeq.deepseq
                                  (_Metadata'uri x__)
                                  (Control.DeepSeq.deepseq (_Metadata'uriHash x__) ()))))))))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.address' @:: Lens' Output Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.coins' @:: Lens' Output [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.vec'coins' @:: Lens' Output (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data Output
  = Output'_constructor {_Output'address :: !Data.Text.Text,
                         _Output'coins :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                         _Output'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Output where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Output "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Output'address (\ x__ y__ -> x__ {_Output'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Output "coins" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Output'coins (\ x__ y__ -> x__ {_Output'coins = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Output "vec'coins" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Output'coins (\ x__ y__ -> x__ {_Output'coins = y__}))
        Prelude.id
instance Data.ProtoLens.Message Output where
  messageName _ = Data.Text.pack "cosmos.bank.v1beta1.Output"
  packedMessageDescriptor _
    = "\n\
      \\ACKOutput\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2w\n\
      \\ENQcoins\CAN\STX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ENQcoinsBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor Output
        coins__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "coins"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"coins")) ::
              Data.ProtoLens.FieldDescriptor Output
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, coins__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Output'_unknownFields
        (\ x__ y__ -> x__ {_Output'_unknownFields = y__})
  defMessage
    = Output'_constructor
        {_Output'address = Data.ProtoLens.fieldDefault,
         _Output'coins = Data.Vector.Generic.empty,
         _Output'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Output
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser Output
        loop x mutable'coins
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'coins <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'coins)
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
                              (Data.ProtoLens.Field.field @"vec'coins") frozen'coins x))
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
                                       "address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                                  mutable'coins
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "coins"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'coins y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'coins
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'coins <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'coins)
          "Output"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'coins") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Output where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Output'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Output'address x__)
                (Control.DeepSeq.deepseq (_Output'coins x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.sendEnabled' @:: Lens' Params [SendEnabled]@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.vec'sendEnabled' @:: Lens' Params (Data.Vector.Vector SendEnabled)@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.defaultSendEnabled' @:: Lens' Params Prelude.Bool@ -}
data Params
  = Params'_constructor {_Params'sendEnabled :: !(Data.Vector.Vector SendEnabled),
                         _Params'defaultSendEnabled :: !Prelude.Bool,
                         _Params'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Params where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Params "sendEnabled" [SendEnabled] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'sendEnabled (\ x__ y__ -> x__ {_Params'sendEnabled = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Params "vec'sendEnabled" (Data.Vector.Vector SendEnabled) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'sendEnabled (\ x__ y__ -> x__ {_Params'sendEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "defaultSendEnabled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'defaultSendEnabled
           (\ x__ y__ -> x__ {_Params'defaultSendEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Message Params where
  messageName _ = Data.Text.pack "cosmos.bank.v1beta1.Params"
  packedMessageDescriptor _
    = "\n\
      \\ACKParams\DC2G\n\
      \\fsend_enabled\CAN\SOH \ETX(\v2 .cosmos.bank.v1beta1.SendEnabledR\vsendEnabledB\STX\CAN\SOH\DC20\n\
      \\DC4default_send_enabled\CAN\STX \SOH(\bR\DC2defaultSendEnabled:\GS\138\231\176*\CANcosmos-sdk/x/bank/Params"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sendEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "send_enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SendEnabled)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"sendEnabled")) ::
              Data.ProtoLens.FieldDescriptor Params
        defaultSendEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_send_enabled"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"defaultSendEnabled")) ::
              Data.ProtoLens.FieldDescriptor Params
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sendEnabled__field_descriptor),
           (Data.ProtoLens.Tag 2, defaultSendEnabled__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Params'_unknownFields
        (\ x__ y__ -> x__ {_Params'_unknownFields = y__})
  defMessage
    = Params'_constructor
        {_Params'sendEnabled = Data.Vector.Generic.empty,
         _Params'defaultSendEnabled = Data.ProtoLens.fieldDefault,
         _Params'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Params
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SendEnabled
             -> Data.ProtoLens.Encoding.Bytes.Parser Params
        loop x mutable'sendEnabled
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'sendEnabled <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'sendEnabled)
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
                              (Data.ProtoLens.Field.field @"vec'sendEnabled") frozen'sendEnabled
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "send_enabled"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'sendEnabled y)
                                loop x v
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "default_send_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultSendEnabled") y x)
                                  mutable'sendEnabled
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'sendEnabled
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'sendEnabled <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'sendEnabled)
          "Params"
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'sendEnabled") _x))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"defaultSendEnabled") _x
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
instance Control.DeepSeq.NFData Params where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Params'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Params'sendEnabled x__)
                (Control.DeepSeq.deepseq (_Params'defaultSendEnabled x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.denom' @:: Lens' SendEnabled Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.enabled' @:: Lens' SendEnabled Prelude.Bool@ -}
data SendEnabled
  = SendEnabled'_constructor {_SendEnabled'denom :: !Data.Text.Text,
                              _SendEnabled'enabled :: !Prelude.Bool,
                              _SendEnabled'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SendEnabled where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SendEnabled "denom" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SendEnabled'denom (\ x__ y__ -> x__ {_SendEnabled'denom = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SendEnabled "enabled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SendEnabled'enabled
           (\ x__ y__ -> x__ {_SendEnabled'enabled = y__}))
        Prelude.id
instance Data.ProtoLens.Message SendEnabled where
  messageName _ = Data.Text.pack "cosmos.bank.v1beta1.SendEnabled"
  packedMessageDescriptor _
    = "\n\
      \\vSendEnabled\DC2\DC4\n\
      \\ENQdenom\CAN\SOH \SOH(\tR\ENQdenom\DC2\CAN\n\
      \\aenabled\CAN\STX \SOH(\bR\aenabled:\EOT\232\160\US\SOH"
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
              Data.ProtoLens.FieldDescriptor SendEnabled
        enabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enabled"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"enabled")) ::
              Data.ProtoLens.FieldDescriptor SendEnabled
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, denom__field_descriptor),
           (Data.ProtoLens.Tag 2, enabled__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SendEnabled'_unknownFields
        (\ x__ y__ -> x__ {_SendEnabled'_unknownFields = y__})
  defMessage
    = SendEnabled'_constructor
        {_SendEnabled'denom = Data.ProtoLens.fieldDefault,
         _SendEnabled'enabled = Data.ProtoLens.fieldDefault,
         _SendEnabled'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SendEnabled -> Data.ProtoLens.Encoding.Bytes.Parser SendEnabled
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "enabled"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"enabled") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SendEnabled"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"enabled") _x
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
instance Control.DeepSeq.NFData SendEnabled where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SendEnabled'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SendEnabled'denom x__)
                (Control.DeepSeq.deepseq (_SendEnabled'enabled x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.total' @:: Lens' Supply [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Bank.V1beta1.Bank_Fields.vec'total' @:: Lens' Supply (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data Supply
  = Supply'_constructor {_Supply'total :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                         _Supply'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Supply where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Supply "total" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Supply'total (\ x__ y__ -> x__ {_Supply'total = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Supply "vec'total" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Supply'total (\ x__ y__ -> x__ {_Supply'total = y__}))
        Prelude.id
instance Data.ProtoLens.Message Supply where
  messageName _ = Data.Text.pack "cosmos.bank.v1beta1.Supply"
  packedMessageDescriptor _
    = "\n\
      \\ACKSupply\DC2w\n\
      \\ENQtotal\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ENQtotalBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:)\CAN\SOH\136\160\US\NUL\232\160\US\SOH\202\180-\ESCcosmos.bank.v1beta1.SupplyI"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        total__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"total")) ::
              Data.ProtoLens.FieldDescriptor Supply
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, total__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Supply'_unknownFields
        (\ x__ y__ -> x__ {_Supply'_unknownFields = y__})
  defMessage
    = Supply'_constructor
        {_Supply'total = Data.Vector.Generic.empty,
         _Supply'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Supply
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser Supply
        loop x mutable'total
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'total <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'total)
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
                              (Data.ProtoLens.Field.field @"vec'total") frozen'total x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "total"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'total y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'total
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'total <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'total)
          "Supply"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'total") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Supply where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Supply'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Supply'total x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RScosmos/bank/v1beta1/bank.proto\DC2\DC3cosmos.bank.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\RScosmos/base/v1beta1/coin.proto\SUB\ETBcosmos/msg/v1/msg.proto\SUB\DC1amino/amino.proto\"\162\SOH\n\
    \\ACKParams\DC2G\n\
    \\fsend_enabled\CAN\SOH \ETX(\v2 .cosmos.bank.v1beta1.SendEnabledR\vsendEnabledB\STX\CAN\SOH\DC20\n\
    \\DC4default_send_enabled\CAN\STX \SOH(\bR\DC2defaultSendEnabled:\GS\138\231\176*\CANcosmos-sdk/x/bank/Params\"C\n\
    \\vSendEnabled\DC2\DC4\n\
    \\ENQdenom\CAN\SOH \SOH(\tR\ENQdenom\DC2\CAN\n\
    \\aenabled\CAN\STX \SOH(\bR\aenabled:\EOT\232\160\US\SOH\"\202\SOH\n\
    \\ENQInput\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2w\n\
    \\ENQcoins\CAN\STX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ENQcoinsBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:\DC4\136\160\US\NUL\232\160\US\NUL\130\231\176*\aaddress\"\191\SOH\n\
    \\ACKOutput\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2w\n\
    \\ENQcoins\CAN\STX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ENQcoinsBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL\"\172\SOH\n\
    \\ACKSupply\DC2w\n\
    \\ENQtotal\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ENQtotalBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:)\CAN\SOH\136\160\US\NUL\232\160\US\SOH\202\180-\ESCcosmos.bank.v1beta1.SupplyI\"W\n\
    \\tDenomUnit\DC2\DC4\n\
    \\ENQdenom\CAN\SOH \SOH(\tR\ENQdenom\DC2\SUB\n\
    \\bexponent\CAN\STX \SOH(\rR\bexponent\DC2\CAN\n\
    \\aaliases\CAN\ETX \ETX(\tR\aaliases\"\138\STX\n\
    \\bMetadata\DC2 \n\
    \\vdescription\CAN\SOH \SOH(\tR\vdescription\DC2?\n\
    \\vdenom_units\CAN\STX \ETX(\v2\RS.cosmos.bank.v1beta1.DenomUnitR\n\
    \denomUnits\DC2\DC2\n\
    \\EOTbase\CAN\ETX \SOH(\tR\EOTbase\DC2\CAN\n\
    \\adisplay\CAN\EOT \SOH(\tR\adisplay\DC2\DC2\n\
    \\EOTname\CAN\ENQ \SOH(\tR\EOTname\DC2\SYN\n\
    \\ACKsymbol\CAN\ACK \SOH(\tR\ACKsymbol\DC2\EM\n\
    \\ETXuri\CAN\a \SOH(\tR\ETXuriB\a\226\222\US\ETXURI\DC2&\n\
    \\buri_hash\CAN\b \SOH(\tR\auriHashB\v\226\222\US\aURIHashB+Z)github.com/cosmos/cosmos-sdk/x/bank/typesJ\160 \n\
    \\ACK\DC2\EOT\NUL\NUL|\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL!\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL@\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\t\NUL@\n\
    \@\n\
    \\STX\EOT\NUL\DC2\EOT\f\NUL\NAK\SOH\SUB4 Params defines the parameters for the bank module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\f\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\r\STX3\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\r\STX3\n\
    \\184\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC3\STXD\SUB\170\STX Deprecated: Use of SendEnabled in params is deprecated.\n\
    \ For genesis, use the newly added send_enabled field in the genesis object.\n\
    \ Storage, lookup, and manipulation of this information is now in the keeper.\n\
    \\n\
    \ As of cosmos-sdk 0.47, this only exists for backwards compatibility of genesis files.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DC3\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC3\ETB#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC3./\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\DC30C\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\NUL\b\ETX\DC2\ETX\DC31B\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC4\STX0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC4\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC4\ETB+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC4./\n\
    \b\n\
    \\STX\EOT\SOH\DC2\EOT\EM\NUL\GS\SOH\SUBV SendEnabled maps coin denom to a send_enabled status (whether a denom is\n\
    \ sendable).\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\EM\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX\SUB\STX\"\n\
    \\r\n\
    \\ACK\EOT\SOH\a\141\244\ETX\DC2\ETX\SUB\STX\"\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\ESC\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\ESC\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\ESC\GS\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\FS\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\FS\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\FS\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\FS\GS\RS\n\
    \-\n\
    \\STX\EOT\STX\DC2\EOT \NUL-\SOH\SUB! Input models transaction input.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX \b\r\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX!\STX,\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETX!\STX,\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX#\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\141\244\ETX\DC2\ETX#\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX$\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\129\244\ETX\DC2\ETX$\STX-\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX&\STX_\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX&\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX&\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX&,-\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX&.^\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX&/]\n\
    \\f\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT'\STX,\EOT\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX'\v#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX'$)\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX',-\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\EOT'.,\ETX\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\233\251\ETX\DC2\ETX(\EOT$\n\
    \\DLE\n\
    \\t\EOT\STX\STX\SOH\b\245\140\166\ENQ\DC2\ETX)\EOT#\n\
    \\DLE\n\
    \\t\EOT\STX\STX\SOH\b\243\140\166\ENQ\DC2\ETX*\EOT-\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\245\251\ETX\DC2\ETX+\EOTI\n\
    \0\n\
    \\STX\EOT\ETX\DC2\EOT0\NUL;\SOH\SUB$ Output models transaction outputs.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX0\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\a\DC2\ETX1\STX-\n\
    \\r\n\
    \\ACK\EOT\ETX\a\141\244\ETX\DC2\ETX1\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\a\DC2\ETX2\STX-\n\
    \\r\n\
    \\ACK\EOT\ETX\a\129\244\ETX\DC2\ETX2\STX-\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX4\STX_\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX4\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX4,-\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETX4.^\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\202\214\ENQ\DC2\ETX4/]\n\
    \\f\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT5\STX:\EOT\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX5\v#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX5$)\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX5,-\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\EOT5.:\ETX\n\
    \\SI\n\
    \\b\EOT\ETX\STX\SOH\b\233\251\ETX\DC2\ETX6\EOT$\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\SOH\b\245\140\166\ENQ\DC2\ETX7\EOT#\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\SOH\b\243\140\166\ENQ\DC2\ETX8\EOT-\n\
    \\SI\n\
    \\b\EOT\ETX\STX\SOH\b\245\251\ETX\DC2\ETX9\EOTI\n\
    \\178\SOH\n\
    \\STX\EOT\EOT\DC2\EOT@\NULN\SOH\SUB\165\SOH Supply represents a struct that passively keeps track of the total supply\n\
    \ amounts in the network.\n\
    \ This message is deprecated now that supply is indexed by denom.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX@\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXA\STX\ESC\n\
    \\v\n\
    \\EOT\EOT\EOT\a\ETX\DC2\ETXA\STX\ESC\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXC\STX,\n\
    \\r\n\
    \\ACK\EOT\EOT\a\141\244\ETX\DC2\ETXC\STX,\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXD\STX-\n\
    \\r\n\
    \\ACK\EOT\EOT\a\129\244\ETX\DC2\ETXD\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXF\STXM\n\
    \\SO\n\
    \\a\EOT\EOT\a\201\214\ENQ\NUL\DC2\ETXF\STXM\n\
    \\f\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOTH\STXM\EOT\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETXH\v#\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXH$)\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXH,-\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\EOTH.M\ETX\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\233\251\ETX\DC2\ETXI\EOT$\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\NUL\b\245\140\166\ENQ\DC2\ETXJ\EOT#\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\NUL\b\243\140\166\ENQ\DC2\ETXK\EOT-\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\245\251\ETX\DC2\ETXL\EOTI\n\
    \i\n\
    \\STX\EOT\ENQ\DC2\EOTR\NUL]\SOH\SUB] DenomUnit represents a struct that describes a given\n\
    \ denomination unit of the basic token.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXR\b\DC1\n\
    \T\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXT\STX\DC3\SUBG denom represents the string name of the given denom unit (e.g uatom).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXT\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXT\t\SO\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXT\DC1\DC2\n\
    \\167\STX\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETXZ\STX\SYN\SUB\153\STX exponent represents power of 10 exponent that one must\n\
    \ raise the base_denom to in order to equal the given DenomUnit's denom\n\
    \ 1 denom = 10^exponent base_denom\n\
    \ (e.g. with a base_denom of uatom, one can create a DenomUnit of 'atom' with\n\
    \ exponent = 6, thus: 1 atom = 10^6 uatom).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETXZ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXZ\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXZ\DC4\NAK\n\
    \F\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX\\\STX\RS\SUB9 aliases is a list of string aliases for the given denom\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX\\\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX\\\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX\\\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX\\\FS\GS\n\
    \I\n\
    \\STX\EOT\ACK\DC2\EOTa\NUL|\SOH\SUB= Metadata represents a struct that describes\n\
    \ a basic token.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXa\b\DLE\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXb\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXb\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXb\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXb\ETB\CAN\n\
    \N\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXd\STX%\SUBA denom_units represents the list of DenomUnit's for a given coin\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETXd\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\ETXd\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXd\NAK \n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXd#$\n\
    \Z\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXf\STX\DC2\SUBM base represents the base denom (should be the DenomUnit with exponent = 0).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETXf\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXf\t\r\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXf\DLE\DC1\n\
    \Z\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETXi\STX\NAK\SUBM display indicates the suggested denom that should be\n\
    \ displayed in clients.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\ETXi\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETXi\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETXi\DC3\DC4\n\
    \\\\n\
    \\EOT\EOT\ACK\STX\EOT\DC2\ETXm\STX\DC2\SUBO name defines the name of the token (eg: Cosmos Atom)\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ENQ\DC2\ETXm\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\SOH\DC2\ETXm\t\r\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ETX\DC2\ETXm\DLE\DC1\n\
    \\144\SOH\n\
    \\EOT\EOT\ACK\STX\ENQ\DC2\ETXr\STX\DC4\SUB\130\SOH symbol is the token symbol usually shown on exchanges (eg: ATOM). This can\n\
    \ be the same as the display.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ENQ\DC2\ETXr\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\SOH\DC2\ETXr\t\SI\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ETX\DC2\ETXr\DC2\DC3\n\
    \{\n\
    \\EOT\EOT\ACK\STX\ACK\DC2\ETXv\STX2\SUBn URI to a document (on or off-chain) that contains additional information. Optional.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ACK\ENQ\DC2\ETXv\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ACK\SOH\DC2\ETXv\t\f\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ACK\ETX\DC2\ETXv\SI\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ACK\b\DC2\ETXv\DC11\n\
    \\SI\n\
    \\b\EOT\ACK\STX\ACK\b\236\251\ETX\DC2\ETXv\DC20\n\
    \\159\SOH\n\
    \\EOT\EOT\ACK\STX\a\DC2\ETX{\STX;\SUB\145\SOH URIHash is a sha256 hash of a document pointed by URI. It's used to verify that\n\
    \ the document didn't change. Optional.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\a\ENQ\DC2\ETX{\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\a\SOH\DC2\ETX{\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\a\ETX\DC2\ETX{\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\a\b\DC2\ETX{\SYN:\n\
    \\SI\n\
    \\b\EOT\ACK\STX\a\b\236\251\ETX\DC2\ETX{\ETB9b\ACKproto3"