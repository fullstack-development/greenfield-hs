{- This file was auto-generated from cosmos/bank/v1beta1/genesis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Bank.V1beta1.Genesis (
        Balance(), GenesisState()
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
import qualified Proto.Cosmos.Bank.V1beta1.Bank
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Genesis_Fields.address' @:: Lens' Balance Data.Text.Text@
         * 'Proto.Cosmos.Bank.V1beta1.Genesis_Fields.coins' @:: Lens' Balance [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Bank.V1beta1.Genesis_Fields.vec'coins' @:: Lens' Balance (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data Balance
  = Balance'_constructor {_Balance'address :: !Data.Text.Text,
                          _Balance'coins :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                          _Balance'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Balance where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Balance "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Balance'address (\ x__ y__ -> x__ {_Balance'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Balance "coins" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Balance'coins (\ x__ y__ -> x__ {_Balance'coins = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Balance "vec'coins" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Balance'coins (\ x__ y__ -> x__ {_Balance'coins = y__}))
        Prelude.id
instance Data.ProtoLens.Message Balance where
  messageName _ = Data.Text.pack "cosmos.bank.v1beta1.Balance"
  packedMessageDescriptor _
    = "\n\
      \\aBalance\DC22\n\
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
              Data.ProtoLens.FieldDescriptor Balance
        coins__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "coins"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"coins")) ::
              Data.ProtoLens.FieldDescriptor Balance
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, coins__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Balance'_unknownFields
        (\ x__ y__ -> x__ {_Balance'_unknownFields = y__})
  defMessage
    = Balance'_constructor
        {_Balance'address = Data.ProtoLens.fieldDefault,
         _Balance'coins = Data.Vector.Generic.empty,
         _Balance'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Balance
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser Balance
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
          "Balance"
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
instance Control.DeepSeq.NFData Balance where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Balance'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Balance'address x__)
                (Control.DeepSeq.deepseq (_Balance'coins x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Genesis_Fields.params' @:: Lens' GenesisState Proto.Cosmos.Bank.V1beta1.Bank.Params@
         * 'Proto.Cosmos.Bank.V1beta1.Genesis_Fields.maybe'params' @:: Lens' GenesisState (Prelude.Maybe Proto.Cosmos.Bank.V1beta1.Bank.Params)@
         * 'Proto.Cosmos.Bank.V1beta1.Genesis_Fields.balances' @:: Lens' GenesisState [Balance]@
         * 'Proto.Cosmos.Bank.V1beta1.Genesis_Fields.vec'balances' @:: Lens' GenesisState (Data.Vector.Vector Balance)@
         * 'Proto.Cosmos.Bank.V1beta1.Genesis_Fields.supply' @:: Lens' GenesisState [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Bank.V1beta1.Genesis_Fields.vec'supply' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Bank.V1beta1.Genesis_Fields.denomMetadata' @:: Lens' GenesisState [Proto.Cosmos.Bank.V1beta1.Bank.Metadata]@
         * 'Proto.Cosmos.Bank.V1beta1.Genesis_Fields.vec'denomMetadata' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.Metadata)@
         * 'Proto.Cosmos.Bank.V1beta1.Genesis_Fields.sendEnabled' @:: Lens' GenesisState [Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled]@
         * 'Proto.Cosmos.Bank.V1beta1.Genesis_Fields.vec'sendEnabled' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled)@ -}
data GenesisState
  = GenesisState'_constructor {_GenesisState'params :: !(Prelude.Maybe Proto.Cosmos.Bank.V1beta1.Bank.Params),
                               _GenesisState'balances :: !(Data.Vector.Vector Balance),
                               _GenesisState'supply :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                               _GenesisState'denomMetadata :: !(Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.Metadata),
                               _GenesisState'sendEnabled :: !(Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled),
                               _GenesisState'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenesisState where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenesisState "params" Proto.Cosmos.Bank.V1beta1.Bank.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'params
           (\ x__ y__ -> x__ {_GenesisState'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenesisState "maybe'params" (Prelude.Maybe Proto.Cosmos.Bank.V1beta1.Bank.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'params
           (\ x__ y__ -> x__ {_GenesisState'params = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "balances" [Balance] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'balances
           (\ x__ y__ -> x__ {_GenesisState'balances = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'balances" (Data.Vector.Vector Balance) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'balances
           (\ x__ y__ -> x__ {_GenesisState'balances = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "supply" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'supply
           (\ x__ y__ -> x__ {_GenesisState'supply = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'supply" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'supply
           (\ x__ y__ -> x__ {_GenesisState'supply = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "denomMetadata" [Proto.Cosmos.Bank.V1beta1.Bank.Metadata] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'denomMetadata
           (\ x__ y__ -> x__ {_GenesisState'denomMetadata = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'denomMetadata" (Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'denomMetadata
           (\ x__ y__ -> x__ {_GenesisState'denomMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "sendEnabled" [Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'sendEnabled
           (\ x__ y__ -> x__ {_GenesisState'sendEnabled = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'sendEnabled" (Data.Vector.Vector Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'sendEnabled
           (\ x__ y__ -> x__ {_GenesisState'sendEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenesisState where
  messageName _ = Data.Text.pack "cosmos.bank.v1beta1.GenesisState"
  packedMessageDescriptor _
    = "\n\
      \\fGenesisState\DC2>\n\
      \\ACKparams\CAN\SOH \SOH(\v2\ESC.cosmos.bank.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2C\n\
      \\bbalances\CAN\STX \ETX(\v2\FS.cosmos.bank.v1beta1.BalanceR\bbalancesB\t\200\222\US\NUL\168\231\176*\SOH\DC2y\n\
      \\ACKsupply\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKsupplyBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2O\n\
      \\SOdenom_metadata\CAN\EOT \ETX(\v2\GS.cosmos.bank.v1beta1.MetadataR\rdenomMetadataB\t\200\222\US\NUL\168\231\176*\SOH\DC2N\n\
      \\fsend_enabled\CAN\ENQ \ETX(\v2 .cosmos.bank.v1beta1.SendEnabledR\vsendEnabledB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Bank.V1beta1.Bank.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        balances__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "balances"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Balance)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"balances")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        supply__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "supply"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"supply")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        denomMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "denom_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Bank.V1beta1.Bank.Metadata)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"denomMetadata")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        sendEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "send_enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"sendEnabled")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, params__field_descriptor),
           (Data.ProtoLens.Tag 2, balances__field_descriptor),
           (Data.ProtoLens.Tag 3, supply__field_descriptor),
           (Data.ProtoLens.Tag 4, denomMetadata__field_descriptor),
           (Data.ProtoLens.Tag 5, sendEnabled__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenesisState'_unknownFields
        (\ x__ y__ -> x__ {_GenesisState'_unknownFields = y__})
  defMessage
    = GenesisState'_constructor
        {_GenesisState'params = Prelude.Nothing,
         _GenesisState'balances = Data.Vector.Generic.empty,
         _GenesisState'supply = Data.Vector.Generic.empty,
         _GenesisState'denomMetadata = Data.Vector.Generic.empty,
         _GenesisState'sendEnabled = Data.Vector.Generic.empty,
         _GenesisState'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenesisState
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Balance
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Bank.V1beta1.Bank.Metadata
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Bank.V1beta1.Bank.SendEnabled
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
                      -> Data.ProtoLens.Encoding.Bytes.Parser GenesisState
        loop
          x
          mutable'balances
          mutable'denomMetadata
          mutable'sendEnabled
          mutable'supply
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'balances <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'balances)
                      frozen'denomMetadata <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'denomMetadata)
                      frozen'sendEnabled <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'sendEnabled)
                      frozen'supply <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'supply)
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
                              (Data.ProtoLens.Field.field @"vec'balances") frozen'balances
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'denomMetadata")
                                 frozen'denomMetadata
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'sendEnabled")
                                    frozen'sendEnabled
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'supply") frozen'supply
                                       x)))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "params"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"params") y x)
                                  mutable'balances mutable'denomMetadata mutable'sendEnabled
                                  mutable'supply
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "balances"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'balances y)
                                loop x v mutable'denomMetadata mutable'sendEnabled mutable'supply
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "supply"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'supply y)
                                loop x mutable'balances mutable'denomMetadata mutable'sendEnabled v
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "denom_metadata"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'denomMetadata y)
                                loop x mutable'balances v mutable'sendEnabled mutable'supply
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "send_enabled"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'sendEnabled y)
                                loop x mutable'balances mutable'denomMetadata v mutable'supply
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'balances mutable'denomMetadata mutable'sendEnabled
                                  mutable'supply
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'balances <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'denomMetadata <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              mutable'sendEnabled <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'supply <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'balances mutable'denomMetadata
                mutable'sendEnabled mutable'supply)
          "GenesisState"
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
                      (Data.ProtoLens.Field.field @"vec'balances") _x))
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
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'supply") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'denomMetadata") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'sendEnabled") _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData GenesisState where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenesisState'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GenesisState'params x__)
                (Control.DeepSeq.deepseq
                   (_GenesisState'balances x__)
                   (Control.DeepSeq.deepseq
                      (_GenesisState'supply x__)
                      (Control.DeepSeq.deepseq
                         (_GenesisState'denomMetadata x__)
                         (Control.DeepSeq.deepseq (_GenesisState'sendEnabled x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!cosmos/bank/v1beta1/genesis.proto\DC2\DC3cosmos.bank.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\RScosmos/base/v1beta1/coin.proto\SUB\RScosmos/bank/v1beta1/bank.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"\175\ETX\n\
    \\fGenesisState\DC2>\n\
    \\ACKparams\CAN\SOH \SOH(\v2\ESC.cosmos.bank.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2C\n\
    \\bbalances\CAN\STX \ETX(\v2\FS.cosmos.bank.v1beta1.BalanceR\bbalancesB\t\200\222\US\NUL\168\231\176*\SOH\DC2y\n\
    \\ACKsupply\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKsupplyBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2O\n\
    \\SOdenom_metadata\CAN\EOT \ETX(\v2\GS.cosmos.bank.v1beta1.MetadataR\rdenomMetadataB\t\200\222\US\NUL\168\231\176*\SOH\DC2N\n\
    \\fsend_enabled\CAN\ENQ \ETX(\v2 .cosmos.bank.v1beta1.SendEnabledR\vsendEnabledB\t\200\222\US\NUL\168\231\176*\SOH\"\192\SOH\n\
    \\aBalance\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2w\n\
    \\ENQcoins\CAN\STX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ENQcoinsBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NULB+Z)github.com/cosmos/cosmos-sdk/x/bank/typesJ\149\SO\n\
    \\ACK\DC2\EOT\NUL\NUL5\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL@\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\t\NUL@\n\
    \C\n\
    \\STX\EOT\NUL\DC2\EOT\f\NUL#\SOH\SUB7 GenesisState defines the bank module's genesis state.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\f\b\DC4\n\
    \?\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SO\STXR\SUB2 params defines all the parameters of the module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SO\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SO\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SO\DC4Q\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\SO\NAK1\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\245\140\166\ENQ\DC2\ETX\SO3P\n\
    \P\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC1\STX^\SUBC balances is an array containing the balances of all the accounts.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DC1\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC1\DC3\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC1\RS\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\DC1 ]\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\DC1!=\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX\DC1?\\\n\
    \\225\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\NAK\STX\SUB\EOT\SUB\210\SOH supply represents the total supply. If it is left empty, then supply will be calculated based on the provided\n\
    \ balances. Otherwise, it will be used to validate that the sum of the balances equals this amount.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\NAK\v#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\NAK$*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\NAK-.\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\EOT\NAK/\SUB\ETX\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\243\140\166\ENQ\DC2\ETX\SYN\EOT-\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\245\251\ETX\DC2\ETX\ETB\EOTI\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX\CAN\EOT$\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\245\140\166\ENQ\DC2\ETX\EM\EOT#\n\
    \J\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\GS\STXe\SUB= denom_metadata defines the metadata of the different coins.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\GS\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\GS\DC4\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\GS%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX\GS'd\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\233\251\ETX\DC2\ETX\GS(D\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\ETX\b\245\140\166\ENQ\DC2\ETX\GSFc\n\
    \j\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\"\STXf\SUB] send_enabled defines the denoms where send is enabled or disabled.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\"\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\"\ETB#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\"&'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX\"(e\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\233\251\ETX\DC2\ETX\")E\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\EOT\b\245\140\166\ENQ\DC2\ETX\"Gd\n\
    \k\n\
    \\STX\EOT\SOH\DC2\EOT'\NUL5\SOH\SUB_ Balance defines an account address and balance pair used in the bank module's\n\
    \ genesis state.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX'\b\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX(\STX-\n\
    \\r\n\
    \\ACK\EOT\SOH\a\141\244\ETX\DC2\ETX(\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX)\STX-\n\
    \\r\n\
    \\ACK\EOT\SOH\a\129\244\ETX\DC2\ETX)\STX-\n\
    \<\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX,\STXF\SUB/ address is the address of the balance holder.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX,\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX,\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX,\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX,\NAKE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\202\214\ENQ\DC2\ETX,\SYND\n\
    \E\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT/\STX4\EOT\SUB7 coins defines the different coins this balance holds.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX/\v#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX/$)\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX/,-\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\EOT/.4\ETX\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\SOH\b\243\140\166\ENQ\DC2\ETX0\EOT-\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\245\251\ETX\DC2\ETX1\EOTI\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\233\251\ETX\DC2\ETX2\EOT$\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\SOH\b\245\140\166\ENQ\DC2\ETX3\EOT#b\ACKproto3"