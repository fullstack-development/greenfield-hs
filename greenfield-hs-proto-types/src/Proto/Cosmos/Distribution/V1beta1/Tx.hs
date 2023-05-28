{- This file was auto-generated from cosmos/distribution/v1beta1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Distribution.V1beta1.Tx (
        Msg(..), MsgCommunityPoolSpend(), MsgCommunityPoolSpendResponse(),
        MsgDepositValidatorRewardsPool(),
        MsgDepositValidatorRewardsPoolResponse(), MsgFundCommunityPool(),
        MsgFundCommunityPoolResponse(), MsgSetWithdrawAddress(),
        MsgSetWithdrawAddressResponse(), MsgUpdateParams(),
        MsgUpdateParamsResponse(), MsgWithdrawDelegatorReward(),
        MsgWithdrawDelegatorRewardResponse(),
        MsgWithdrawValidatorCommission(),
        MsgWithdrawValidatorCommissionResponse()
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
import qualified Proto.Cosmos.Distribution.V1beta1.Distribution
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.authority' @:: Lens' MsgCommunityPoolSpend Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.recipient' @:: Lens' MsgCommunityPoolSpend Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.amount' @:: Lens' MsgCommunityPoolSpend [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.vec'amount' @:: Lens' MsgCommunityPoolSpend (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data MsgCommunityPoolSpend
  = MsgCommunityPoolSpend'_constructor {_MsgCommunityPoolSpend'authority :: !Data.Text.Text,
                                        _MsgCommunityPoolSpend'recipient :: !Data.Text.Text,
                                        _MsgCommunityPoolSpend'amount :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                        _MsgCommunityPoolSpend'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCommunityPoolSpend where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCommunityPoolSpend "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCommunityPoolSpend'authority
           (\ x__ y__ -> x__ {_MsgCommunityPoolSpend'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCommunityPoolSpend "recipient" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCommunityPoolSpend'recipient
           (\ x__ y__ -> x__ {_MsgCommunityPoolSpend'recipient = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCommunityPoolSpend "amount" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCommunityPoolSpend'amount
           (\ x__ y__ -> x__ {_MsgCommunityPoolSpend'amount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgCommunityPoolSpend "vec'amount" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCommunityPoolSpend'amount
           (\ x__ y__ -> x__ {_MsgCommunityPoolSpend'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCommunityPoolSpend where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.MsgCommunityPoolSpend"
  packedMessageDescriptor _
    = "\n\
      \\NAKMsgCommunityPoolSpend\DC26\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2\FS\n\
      \\trecipient\CAN\STX \SOH(\tR\trecipient\DC2y\n\
      \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:9\130\231\176*\tauthority\138\231\176*&cosmos-sdk/distr/MsgCommunityPoolSpend"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        authority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authority")) ::
              Data.ProtoLens.FieldDescriptor MsgCommunityPoolSpend
        recipient__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "recipient"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"recipient")) ::
              Data.ProtoLens.FieldDescriptor MsgCommunityPoolSpend
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor MsgCommunityPoolSpend
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authority__field_descriptor),
           (Data.ProtoLens.Tag 2, recipient__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCommunityPoolSpend'_unknownFields
        (\ x__ y__ -> x__ {_MsgCommunityPoolSpend'_unknownFields = y__})
  defMessage
    = MsgCommunityPoolSpend'_constructor
        {_MsgCommunityPoolSpend'authority = Data.ProtoLens.fieldDefault,
         _MsgCommunityPoolSpend'recipient = Data.ProtoLens.fieldDefault,
         _MsgCommunityPoolSpend'amount = Data.Vector.Generic.empty,
         _MsgCommunityPoolSpend'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCommunityPoolSpend
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgCommunityPoolSpend
        loop x mutable'amount
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'amount)
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
                              (Data.ProtoLens.Field.field @"vec'amount") frozen'amount x))
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
                                       "authority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"authority") y x)
                                  mutable'amount
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
                                       "recipient"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"recipient") y x)
                                  mutable'amount
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "amount"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'amount y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'amount
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'amount)
          "MsgCommunityPoolSpend"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"authority") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"recipient") _x
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'amount") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgCommunityPoolSpend where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCommunityPoolSpend'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCommunityPoolSpend'authority x__)
                (Control.DeepSeq.deepseq
                   (_MsgCommunityPoolSpend'recipient x__)
                   (Control.DeepSeq.deepseq (_MsgCommunityPoolSpend'amount x__) ())))
{- | Fields :
      -}
data MsgCommunityPoolSpendResponse
  = MsgCommunityPoolSpendResponse'_constructor {_MsgCommunityPoolSpendResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCommunityPoolSpendResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgCommunityPoolSpendResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.MsgCommunityPoolSpendResponse"
  packedMessageDescriptor _
    = "\n\
      \\GSMsgCommunityPoolSpendResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCommunityPoolSpendResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgCommunityPoolSpendResponse'_unknownFields = y__})
  defMessage
    = MsgCommunityPoolSpendResponse'_constructor
        {_MsgCommunityPoolSpendResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCommunityPoolSpendResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCommunityPoolSpendResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgCommunityPoolSpendResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgCommunityPoolSpendResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCommunityPoolSpendResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.depositor' @:: Lens' MsgDepositValidatorRewardsPool Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.validatorAddress' @:: Lens' MsgDepositValidatorRewardsPool Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.amount' @:: Lens' MsgDepositValidatorRewardsPool [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.vec'amount' @:: Lens' MsgDepositValidatorRewardsPool (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data MsgDepositValidatorRewardsPool
  = MsgDepositValidatorRewardsPool'_constructor {_MsgDepositValidatorRewardsPool'depositor :: !Data.Text.Text,
                                                 _MsgDepositValidatorRewardsPool'validatorAddress :: !Data.Text.Text,
                                                 _MsgDepositValidatorRewardsPool'amount :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                                 _MsgDepositValidatorRewardsPool'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDepositValidatorRewardsPool where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgDepositValidatorRewardsPool "depositor" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDepositValidatorRewardsPool'depositor
           (\ x__ y__
              -> x__ {_MsgDepositValidatorRewardsPool'depositor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDepositValidatorRewardsPool "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDepositValidatorRewardsPool'validatorAddress
           (\ x__ y__
              -> x__ {_MsgDepositValidatorRewardsPool'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDepositValidatorRewardsPool "amount" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDepositValidatorRewardsPool'amount
           (\ x__ y__ -> x__ {_MsgDepositValidatorRewardsPool'amount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgDepositValidatorRewardsPool "vec'amount" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDepositValidatorRewardsPool'amount
           (\ x__ y__ -> x__ {_MsgDepositValidatorRewardsPool'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgDepositValidatorRewardsPool where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.MsgDepositValidatorRewardsPool"
  packedMessageDescriptor _
    = "\n\
      \\RSMsgDepositValidatorRewardsPool\DC26\n\
      \\tdepositor\CAN\SOH \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
      \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2y\n\
      \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:@\136\160\US\NUL\232\160\US\NUL\130\231\176*\tdepositor\138\231\176*%cosmos-sdk/distr/MsgDepositValRewards"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        depositor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "depositor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"depositor")) ::
              Data.ProtoLens.FieldDescriptor MsgDepositValidatorRewardsPool
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgDepositValidatorRewardsPool
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor MsgDepositValidatorRewardsPool
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, depositor__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDepositValidatorRewardsPool'_unknownFields
        (\ x__ y__
           -> x__ {_MsgDepositValidatorRewardsPool'_unknownFields = y__})
  defMessage
    = MsgDepositValidatorRewardsPool'_constructor
        {_MsgDepositValidatorRewardsPool'depositor = Data.ProtoLens.fieldDefault,
         _MsgDepositValidatorRewardsPool'validatorAddress = Data.ProtoLens.fieldDefault,
         _MsgDepositValidatorRewardsPool'amount = Data.Vector.Generic.empty,
         _MsgDepositValidatorRewardsPool'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDepositValidatorRewardsPool
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgDepositValidatorRewardsPool
        loop x mutable'amount
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'amount)
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
                              (Data.ProtoLens.Field.field @"vec'amount") frozen'amount x))
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
                                       "depositor"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"depositor") y x)
                                  mutable'amount
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
                                       "validator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddress") y x)
                                  mutable'amount
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "amount"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'amount y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'amount
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'amount)
          "MsgDepositValidatorRewardsPool"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"depositor") _x
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
                         (Data.ProtoLens.Field.field @"validatorAddress") _x
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'amount") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgDepositValidatorRewardsPool where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDepositValidatorRewardsPool'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgDepositValidatorRewardsPool'depositor x__)
                (Control.DeepSeq.deepseq
                   (_MsgDepositValidatorRewardsPool'validatorAddress x__)
                   (Control.DeepSeq.deepseq
                      (_MsgDepositValidatorRewardsPool'amount x__) ())))
{- | Fields :
      -}
data MsgDepositValidatorRewardsPoolResponse
  = MsgDepositValidatorRewardsPoolResponse'_constructor {_MsgDepositValidatorRewardsPoolResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDepositValidatorRewardsPoolResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgDepositValidatorRewardsPoolResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.MsgDepositValidatorRewardsPoolResponse"
  packedMessageDescriptor _
    = "\n\
      \&MsgDepositValidatorRewardsPoolResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDepositValidatorRewardsPoolResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_MsgDepositValidatorRewardsPoolResponse'_unknownFields = y__})
  defMessage
    = MsgDepositValidatorRewardsPoolResponse'_constructor
        {_MsgDepositValidatorRewardsPoolResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDepositValidatorRewardsPoolResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDepositValidatorRewardsPoolResponse
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
          (do loop Data.ProtoLens.defMessage)
          "MsgDepositValidatorRewardsPoolResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgDepositValidatorRewardsPoolResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDepositValidatorRewardsPoolResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.amount' @:: Lens' MsgFundCommunityPool [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.vec'amount' @:: Lens' MsgFundCommunityPool (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.depositor' @:: Lens' MsgFundCommunityPool Data.Text.Text@ -}
data MsgFundCommunityPool
  = MsgFundCommunityPool'_constructor {_MsgFundCommunityPool'amount :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                       _MsgFundCommunityPool'depositor :: !Data.Text.Text,
                                       _MsgFundCommunityPool'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgFundCommunityPool where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgFundCommunityPool "amount" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgFundCommunityPool'amount
           (\ x__ y__ -> x__ {_MsgFundCommunityPool'amount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgFundCommunityPool "vec'amount" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgFundCommunityPool'amount
           (\ x__ y__ -> x__ {_MsgFundCommunityPool'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgFundCommunityPool "depositor" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgFundCommunityPool'depositor
           (\ x__ y__ -> x__ {_MsgFundCommunityPool'depositor = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgFundCommunityPool where
  messageName _
    = Data.Text.pack "cosmos.distribution.v1beta1.MsgFundCommunityPool"
  packedMessageDescriptor _
    = "\n\
      \\DC4MsgFundCommunityPool\DC2y\n\
      \\ACKamount\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC26\n\
      \\tdepositor\CAN\STX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString::\136\160\US\NUL\232\160\US\NUL\130\231\176*\tdepositor\138\231\176*\UScosmos-sdk/MsgFundCommunityPool"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor MsgFundCommunityPool
        depositor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "depositor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"depositor")) ::
              Data.ProtoLens.FieldDescriptor MsgFundCommunityPool
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, amount__field_descriptor),
           (Data.ProtoLens.Tag 2, depositor__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgFundCommunityPool'_unknownFields
        (\ x__ y__ -> x__ {_MsgFundCommunityPool'_unknownFields = y__})
  defMessage
    = MsgFundCommunityPool'_constructor
        {_MsgFundCommunityPool'amount = Data.Vector.Generic.empty,
         _MsgFundCommunityPool'depositor = Data.ProtoLens.fieldDefault,
         _MsgFundCommunityPool'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgFundCommunityPool
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgFundCommunityPool
        loop x mutable'amount
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'amount)
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
                              (Data.ProtoLens.Field.field @"vec'amount") frozen'amount x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "amount"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'amount y)
                                loop x v
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
                                       "depositor"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"depositor") y x)
                                  mutable'amount
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'amount
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'amount)
          "MsgFundCommunityPool"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'amount") _x))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"depositor") _x
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
instance Control.DeepSeq.NFData MsgFundCommunityPool where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgFundCommunityPool'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgFundCommunityPool'amount x__)
                (Control.DeepSeq.deepseq (_MsgFundCommunityPool'depositor x__) ()))
{- | Fields :
      -}
data MsgFundCommunityPoolResponse
  = MsgFundCommunityPoolResponse'_constructor {_MsgFundCommunityPoolResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgFundCommunityPoolResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgFundCommunityPoolResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.MsgFundCommunityPoolResponse"
  packedMessageDescriptor _
    = "\n\
      \\FSMsgFundCommunityPoolResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgFundCommunityPoolResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgFundCommunityPoolResponse'_unknownFields = y__})
  defMessage
    = MsgFundCommunityPoolResponse'_constructor
        {_MsgFundCommunityPoolResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgFundCommunityPoolResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgFundCommunityPoolResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgFundCommunityPoolResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgFundCommunityPoolResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgFundCommunityPoolResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.delegatorAddress' @:: Lens' MsgSetWithdrawAddress Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.withdrawAddress' @:: Lens' MsgSetWithdrawAddress Data.Text.Text@ -}
data MsgSetWithdrawAddress
  = MsgSetWithdrawAddress'_constructor {_MsgSetWithdrawAddress'delegatorAddress :: !Data.Text.Text,
                                        _MsgSetWithdrawAddress'withdrawAddress :: !Data.Text.Text,
                                        _MsgSetWithdrawAddress'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSetWithdrawAddress where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgSetWithdrawAddress "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSetWithdrawAddress'delegatorAddress
           (\ x__ y__ -> x__ {_MsgSetWithdrawAddress'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSetWithdrawAddress "withdrawAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSetWithdrawAddress'withdrawAddress
           (\ x__ y__ -> x__ {_MsgSetWithdrawAddress'withdrawAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgSetWithdrawAddress where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.MsgSetWithdrawAddress"
  packedMessageDescriptor _
    = "\n\
      \\NAKMsgSetWithdrawAddress\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
      \\DLEwithdraw_address\CAN\STX \SOH(\tR\SIwithdrawAddressB\CAN\210\180-\DC4cosmos.AddressString:F\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1delegator_address\138\231\176*#cosmos-sdk/MsgModifyWithdrawAddress"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegatorAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgSetWithdrawAddress
        withdrawAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "withdraw_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"withdrawAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgSetWithdrawAddress
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, withdrawAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSetWithdrawAddress'_unknownFields
        (\ x__ y__ -> x__ {_MsgSetWithdrawAddress'_unknownFields = y__})
  defMessage
    = MsgSetWithdrawAddress'_constructor
        {_MsgSetWithdrawAddress'delegatorAddress = Data.ProtoLens.fieldDefault,
         _MsgSetWithdrawAddress'withdrawAddress = Data.ProtoLens.fieldDefault,
         _MsgSetWithdrawAddress'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSetWithdrawAddress
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgSetWithdrawAddress
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
                                       "delegator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegatorAddress") y x)
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
                                       "withdraw_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"withdrawAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgSetWithdrawAddress"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"delegatorAddress") _x
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
                         (Data.ProtoLens.Field.field @"withdrawAddress") _x
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
instance Control.DeepSeq.NFData MsgSetWithdrawAddress where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSetWithdrawAddress'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgSetWithdrawAddress'delegatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_MsgSetWithdrawAddress'withdrawAddress x__) ()))
{- | Fields :
      -}
data MsgSetWithdrawAddressResponse
  = MsgSetWithdrawAddressResponse'_constructor {_MsgSetWithdrawAddressResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSetWithdrawAddressResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgSetWithdrawAddressResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.MsgSetWithdrawAddressResponse"
  packedMessageDescriptor _
    = "\n\
      \\GSMsgSetWithdrawAddressResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSetWithdrawAddressResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgSetWithdrawAddressResponse'_unknownFields = y__})
  defMessage
    = MsgSetWithdrawAddressResponse'_constructor
        {_MsgSetWithdrawAddressResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSetWithdrawAddressResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgSetWithdrawAddressResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgSetWithdrawAddressResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgSetWithdrawAddressResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSetWithdrawAddressResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.authority' @:: Lens' MsgUpdateParams Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.params' @:: Lens' MsgUpdateParams Proto.Cosmos.Distribution.V1beta1.Distribution.Params@
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.maybe'params' @:: Lens' MsgUpdateParams (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.Params)@ -}
data MsgUpdateParams
  = MsgUpdateParams'_constructor {_MsgUpdateParams'authority :: !Data.Text.Text,
                                  _MsgUpdateParams'params :: !(Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.Params),
                                  _MsgUpdateParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUpdateParams "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'authority
           (\ x__ y__ -> x__ {_MsgUpdateParams'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateParams "params" Proto.Cosmos.Distribution.V1beta1.Distribution.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgUpdateParams "maybe'params" (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateParams where
  messageName _
    = Data.Text.pack "cosmos.distribution.v1beta1.MsgUpdateParams"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgUpdateParams\DC26\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
      \\ACKparams\CAN\STX \SOH(\v2#.cosmos.distribution.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH::\130\231\176*\tauthority\138\231\176*'cosmos-sdk/distribution/MsgUpdateParams"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        authority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authority")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateParams
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Distribution.V1beta1.Distribution.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authority__field_descriptor),
           (Data.ProtoLens.Tag 2, params__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateParams'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateParams'_unknownFields = y__})
  defMessage
    = MsgUpdateParams'_constructor
        {_MsgUpdateParams'authority = Data.ProtoLens.fieldDefault,
         _MsgUpdateParams'params = Prelude.Nothing,
         _MsgUpdateParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateParams
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateParams
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
                                       "authority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"authority") y x)
                        18
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
          (do loop Data.ProtoLens.defMessage) "MsgUpdateParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"authority") _x
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'params") _x
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
instance Control.DeepSeq.NFData MsgUpdateParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateParams'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUpdateParams'authority x__)
                (Control.DeepSeq.deepseq (_MsgUpdateParams'params x__) ()))
{- | Fields :
      -}
data MsgUpdateParamsResponse
  = MsgUpdateParamsResponse'_constructor {_MsgUpdateParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUpdateParamsResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.MsgUpdateParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgUpdateParamsResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateParamsResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateParamsResponse'_unknownFields = y__})
  defMessage
    = MsgUpdateParamsResponse'_constructor
        {_MsgUpdateParamsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateParamsResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateParamsResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgUpdateParamsResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUpdateParamsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateParamsResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.delegatorAddress' @:: Lens' MsgWithdrawDelegatorReward Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.validatorAddress' @:: Lens' MsgWithdrawDelegatorReward Data.Text.Text@ -}
data MsgWithdrawDelegatorReward
  = MsgWithdrawDelegatorReward'_constructor {_MsgWithdrawDelegatorReward'delegatorAddress :: !Data.Text.Text,
                                             _MsgWithdrawDelegatorReward'validatorAddress :: !Data.Text.Text,
                                             _MsgWithdrawDelegatorReward'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgWithdrawDelegatorReward where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgWithdrawDelegatorReward "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgWithdrawDelegatorReward'delegatorAddress
           (\ x__ y__
              -> x__ {_MsgWithdrawDelegatorReward'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgWithdrawDelegatorReward "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgWithdrawDelegatorReward'validatorAddress
           (\ x__ y__
              -> x__ {_MsgWithdrawDelegatorReward'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgWithdrawDelegatorReward where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.MsgWithdrawDelegatorReward"
  packedMessageDescriptor _
    = "\n\
      \\SUBMsgWithdrawDelegatorReward\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
      \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString:I\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1delegator_address\138\231\176*&cosmos-sdk/MsgWithdrawDelegationReward"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegatorAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgWithdrawDelegatorReward
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgWithdrawDelegatorReward
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgWithdrawDelegatorReward'_unknownFields
        (\ x__ y__
           -> x__ {_MsgWithdrawDelegatorReward'_unknownFields = y__})
  defMessage
    = MsgWithdrawDelegatorReward'_constructor
        {_MsgWithdrawDelegatorReward'delegatorAddress = Data.ProtoLens.fieldDefault,
         _MsgWithdrawDelegatorReward'validatorAddress = Data.ProtoLens.fieldDefault,
         _MsgWithdrawDelegatorReward'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgWithdrawDelegatorReward
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgWithdrawDelegatorReward
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
                                       "delegator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegatorAddress") y x)
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
                                       "validator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgWithdrawDelegatorReward"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"delegatorAddress") _x
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
                         (Data.ProtoLens.Field.field @"validatorAddress") _x
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
instance Control.DeepSeq.NFData MsgWithdrawDelegatorReward where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgWithdrawDelegatorReward'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgWithdrawDelegatorReward'delegatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_MsgWithdrawDelegatorReward'validatorAddress x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.amount' @:: Lens' MsgWithdrawDelegatorRewardResponse [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.vec'amount' @:: Lens' MsgWithdrawDelegatorRewardResponse (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data MsgWithdrawDelegatorRewardResponse
  = MsgWithdrawDelegatorRewardResponse'_constructor {_MsgWithdrawDelegatorRewardResponse'amount :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                                     _MsgWithdrawDelegatorRewardResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgWithdrawDelegatorRewardResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgWithdrawDelegatorRewardResponse "amount" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgWithdrawDelegatorRewardResponse'amount
           (\ x__ y__
              -> x__ {_MsgWithdrawDelegatorRewardResponse'amount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgWithdrawDelegatorRewardResponse "vec'amount" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgWithdrawDelegatorRewardResponse'amount
           (\ x__ y__
              -> x__ {_MsgWithdrawDelegatorRewardResponse'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgWithdrawDelegatorRewardResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.MsgWithdrawDelegatorRewardResponse"
  packedMessageDescriptor _
    = "\n\
      \\"MsgWithdrawDelegatorRewardResponse\DC2y\n\
      \\ACKamount\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor MsgWithdrawDelegatorRewardResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgWithdrawDelegatorRewardResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgWithdrawDelegatorRewardResponse'_unknownFields = y__})
  defMessage
    = MsgWithdrawDelegatorRewardResponse'_constructor
        {_MsgWithdrawDelegatorRewardResponse'amount = Data.Vector.Generic.empty,
         _MsgWithdrawDelegatorRewardResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgWithdrawDelegatorRewardResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgWithdrawDelegatorRewardResponse
        loop x mutable'amount
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'amount)
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
                              (Data.ProtoLens.Field.field @"vec'amount") frozen'amount x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "amount"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'amount y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'amount
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'amount)
          "MsgWithdrawDelegatorRewardResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'amount") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgWithdrawDelegatorRewardResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgWithdrawDelegatorRewardResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgWithdrawDelegatorRewardResponse'amount x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.validatorAddress' @:: Lens' MsgWithdrawValidatorCommission Data.Text.Text@ -}
data MsgWithdrawValidatorCommission
  = MsgWithdrawValidatorCommission'_constructor {_MsgWithdrawValidatorCommission'validatorAddress :: !Data.Text.Text,
                                                 _MsgWithdrawValidatorCommission'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgWithdrawValidatorCommission where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgWithdrawValidatorCommission "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgWithdrawValidatorCommission'validatorAddress
           (\ x__ y__
              -> x__ {_MsgWithdrawValidatorCommission'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgWithdrawValidatorCommission where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.MsgWithdrawValidatorCommission"
  packedMessageDescriptor _
    = "\n\
      \\RSMsgWithdrawValidatorCommission\DC2N\n\
      \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString:F\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1validator_address\138\231\176*#cosmos-sdk/MsgWithdrawValCommission"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgWithdrawValidatorCommission
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgWithdrawValidatorCommission'_unknownFields
        (\ x__ y__
           -> x__ {_MsgWithdrawValidatorCommission'_unknownFields = y__})
  defMessage
    = MsgWithdrawValidatorCommission'_constructor
        {_MsgWithdrawValidatorCommission'validatorAddress = Data.ProtoLens.fieldDefault,
         _MsgWithdrawValidatorCommission'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgWithdrawValidatorCommission
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgWithdrawValidatorCommission
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
                                       "validator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MsgWithdrawValidatorCommission"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"validatorAddress") _x
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
instance Control.DeepSeq.NFData MsgWithdrawValidatorCommission where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgWithdrawValidatorCommission'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgWithdrawValidatorCommission'validatorAddress x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.amount' @:: Lens' MsgWithdrawValidatorCommissionResponse [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Tx_Fields.vec'amount' @:: Lens' MsgWithdrawValidatorCommissionResponse (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data MsgWithdrawValidatorCommissionResponse
  = MsgWithdrawValidatorCommissionResponse'_constructor {_MsgWithdrawValidatorCommissionResponse'amount :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                                         _MsgWithdrawValidatorCommissionResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgWithdrawValidatorCommissionResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgWithdrawValidatorCommissionResponse "amount" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgWithdrawValidatorCommissionResponse'amount
           (\ x__ y__
              -> x__ {_MsgWithdrawValidatorCommissionResponse'amount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgWithdrawValidatorCommissionResponse "vec'amount" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgWithdrawValidatorCommissionResponse'amount
           (\ x__ y__
              -> x__ {_MsgWithdrawValidatorCommissionResponse'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgWithdrawValidatorCommissionResponse where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.MsgWithdrawValidatorCommissionResponse"
  packedMessageDescriptor _
    = "\n\
      \&MsgWithdrawValidatorCommissionResponse\DC2y\n\
      \\ACKamount\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor MsgWithdrawValidatorCommissionResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgWithdrawValidatorCommissionResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_MsgWithdrawValidatorCommissionResponse'_unknownFields = y__})
  defMessage
    = MsgWithdrawValidatorCommissionResponse'_constructor
        {_MsgWithdrawValidatorCommissionResponse'amount = Data.Vector.Generic.empty,
         _MsgWithdrawValidatorCommissionResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgWithdrawValidatorCommissionResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgWithdrawValidatorCommissionResponse
        loop x mutable'amount
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'amount)
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
                              (Data.ProtoLens.Field.field @"vec'amount") frozen'amount x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "amount"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'amount y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'amount
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'amount)
          "MsgWithdrawValidatorCommissionResponse"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'amount") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgWithdrawValidatorCommissionResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgWithdrawValidatorCommissionResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgWithdrawValidatorCommissionResponse'amount x__) ())
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "cosmos.distribution.v1beta1"
  type ServiceMethods Msg = '["communityPoolSpend",
                              "depositValidatorRewardsPool",
                              "fundCommunityPool",
                              "setWithdrawAddress",
                              "updateParams",
                              "withdrawDelegatorReward",
                              "withdrawValidatorCommission"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2\132\SOH\n\
      \\DC2SetWithdrawAddress\DC22.cosmos.distribution.v1beta1.MsgSetWithdrawAddress\SUB:.cosmos.distribution.v1beta1.MsgSetWithdrawAddressResponse\DC2\147\SOH\n\
      \\ETBWithdrawDelegatorReward\DC27.cosmos.distribution.v1beta1.MsgWithdrawDelegatorReward\SUB?.cosmos.distribution.v1beta1.MsgWithdrawDelegatorRewardResponse\DC2\159\SOH\n\
      \\ESCWithdrawValidatorCommission\DC2;.cosmos.distribution.v1beta1.MsgWithdrawValidatorCommission\SUBC.cosmos.distribution.v1beta1.MsgWithdrawValidatorCommissionResponse\DC2\129\SOH\n\
      \\DC1FundCommunityPool\DC21.cosmos.distribution.v1beta1.MsgFundCommunityPool\SUB9.cosmos.distribution.v1beta1.MsgFundCommunityPoolResponse\DC2r\n\
      \\fUpdateParams\DC2,.cosmos.distribution.v1beta1.MsgUpdateParams\SUB4.cosmos.distribution.v1beta1.MsgUpdateParamsResponse\DC2\132\SOH\n\
      \\DC2CommunityPoolSpend\DC22.cosmos.distribution.v1beta1.MsgCommunityPoolSpend\SUB:.cosmos.distribution.v1beta1.MsgCommunityPoolSpendResponse\DC2\159\SOH\n\
      \\ESCDepositValidatorRewardsPool\DC2;.cosmos.distribution.v1beta1.MsgDepositValidatorRewardsPool\SUBC.cosmos.distribution.v1beta1.MsgDepositValidatorRewardsPoolResponse\SUB\ENQ\128\231\176*\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "setWithdrawAddress" where
  type MethodName Msg "setWithdrawAddress" = "SetWithdrawAddress"
  type MethodInput Msg "setWithdrawAddress" = MsgSetWithdrawAddress
  type MethodOutput Msg "setWithdrawAddress" = MsgSetWithdrawAddressResponse
  type MethodStreamingType Msg "setWithdrawAddress" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "withdrawDelegatorReward" where
  type MethodName Msg "withdrawDelegatorReward" = "WithdrawDelegatorReward"
  type MethodInput Msg "withdrawDelegatorReward" = MsgWithdrawDelegatorReward
  type MethodOutput Msg "withdrawDelegatorReward" = MsgWithdrawDelegatorRewardResponse
  type MethodStreamingType Msg "withdrawDelegatorReward" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "withdrawValidatorCommission" where
  type MethodName Msg "withdrawValidatorCommission" = "WithdrawValidatorCommission"
  type MethodInput Msg "withdrawValidatorCommission" = MsgWithdrawValidatorCommission
  type MethodOutput Msg "withdrawValidatorCommission" = MsgWithdrawValidatorCommissionResponse
  type MethodStreamingType Msg "withdrawValidatorCommission" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "fundCommunityPool" where
  type MethodName Msg "fundCommunityPool" = "FundCommunityPool"
  type MethodInput Msg "fundCommunityPool" = MsgFundCommunityPool
  type MethodOutput Msg "fundCommunityPool" = MsgFundCommunityPoolResponse
  type MethodStreamingType Msg "fundCommunityPool" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateParams" where
  type MethodName Msg "updateParams" = "UpdateParams"
  type MethodInput Msg "updateParams" = MsgUpdateParams
  type MethodOutput Msg "updateParams" = MsgUpdateParamsResponse
  type MethodStreamingType Msg "updateParams" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "communityPoolSpend" where
  type MethodName Msg "communityPoolSpend" = "CommunityPoolSpend"
  type MethodInput Msg "communityPoolSpend" = MsgCommunityPoolSpend
  type MethodOutput Msg "communityPoolSpend" = MsgCommunityPoolSpendResponse
  type MethodStreamingType Msg "communityPoolSpend" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "depositValidatorRewardsPool" where
  type MethodName Msg "depositValidatorRewardsPool" = "DepositValidatorRewardsPool"
  type MethodInput Msg "depositValidatorRewardsPool" = MsgDepositValidatorRewardsPool
  type MethodOutput Msg "depositValidatorRewardsPool" = MsgDepositValidatorRewardsPoolResponse
  type MethodStreamingType Msg "depositValidatorRewardsPool" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$cosmos/distribution/v1beta1/tx.proto\DC2\ESCcosmos.distribution.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\RScosmos/base/v1beta1/coin.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\ETBcosmos/msg/v1/msg.proto\SUB\DC1amino/amino.proto\SUB.cosmos/distribution/v1beta1/distribution.proto\"\235\SOH\n\
    \\NAKMsgSetWithdrawAddress\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
    \\DLEwithdraw_address\CAN\STX \SOH(\tR\SIwithdrawAddressB\CAN\210\180-\DC4cosmos.AddressString:F\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1delegator_address\138\231\176*#cosmos-sdk/MsgModifyWithdrawAddress\"\US\n\
    \\GSMsgSetWithdrawAddressResponse\"\254\SOH\n\
    \\SUBMsgWithdrawDelegatorReward\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
    \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString:I\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1delegator_address\138\231\176*&cosmos-sdk/MsgWithdrawDelegationReward\"\159\SOH\n\
    \\"MsgWithdrawDelegatorRewardResponse\DC2y\n\
    \\ACKamount\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\"\184\SOH\n\
    \\RSMsgWithdrawValidatorCommission\DC2N\n\
    \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString:F\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1validator_address\138\231\176*#cosmos-sdk/MsgWithdrawValCommission\"\163\SOH\n\
    \&MsgWithdrawValidatorCommissionResponse\DC2y\n\
    \\ACKamount\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\"\133\STX\n\
    \\DC4MsgFundCommunityPool\DC2y\n\
    \\ACKamount\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC26\n\
    \\tdepositor\CAN\STX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString::\136\160\US\NUL\232\160\US\NUL\130\231\176*\tdepositor\138\231\176*\UScosmos-sdk/MsgFundCommunityPool\"\RS\n\
    \\FSMsgFundCommunityPoolResponse\"\205\SOH\n\
    \\SIMsgUpdateParams\DC26\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2F\n\
    \\ACKparams\CAN\STX \SOH(\v2#.cosmos.distribution.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH::\130\231\176*\tauthority\138\231\176*'cosmos-sdk/distribution/MsgUpdateParams\"\EM\n\
    \\ETBMsgUpdateParamsResponse\"\163\STX\n\
    \\NAKMsgCommunityPoolSpend\DC26\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2\FS\n\
    \\trecipient\CAN\STX \SOH(\tR\trecipient\DC2y\n\
    \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:9\130\231\176*\tauthority\138\231\176*&cosmos-sdk/distr/MsgCommunityPoolSpend\"\US\n\
    \\GSMsgCommunityPoolSpendResponse\"\229\STX\n\
    \\RSMsgDepositValidatorRewardsPool\DC26\n\
    \\tdepositor\CAN\SOH \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
    \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2y\n\
    \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:@\136\160\US\NUL\232\160\US\NUL\130\231\176*\tdepositor\138\231\176*%cosmos-sdk/distr/MsgDepositValRewards\"(\n\
    \&MsgDepositValidatorRewardsPoolResponse2\236\a\n\
    \\ETXMsg\DC2\132\SOH\n\
    \\DC2SetWithdrawAddress\DC22.cosmos.distribution.v1beta1.MsgSetWithdrawAddress\SUB:.cosmos.distribution.v1beta1.MsgSetWithdrawAddressResponse\DC2\147\SOH\n\
    \\ETBWithdrawDelegatorReward\DC27.cosmos.distribution.v1beta1.MsgWithdrawDelegatorReward\SUB?.cosmos.distribution.v1beta1.MsgWithdrawDelegatorRewardResponse\DC2\159\SOH\n\
    \\ESCWithdrawValidatorCommission\DC2;.cosmos.distribution.v1beta1.MsgWithdrawValidatorCommission\SUBC.cosmos.distribution.v1beta1.MsgWithdrawValidatorCommissionResponse\DC2\129\SOH\n\
    \\DC1FundCommunityPool\DC21.cosmos.distribution.v1beta1.MsgFundCommunityPool\SUB9.cosmos.distribution.v1beta1.MsgFundCommunityPoolResponse\DC2r\n\
    \\fUpdateParams\DC2,.cosmos.distribution.v1beta1.MsgUpdateParams\SUB4.cosmos.distribution.v1beta1.MsgUpdateParamsResponse\DC2\132\SOH\n\
    \\DC2CommunityPoolSpend\DC22.cosmos.distribution.v1beta1.MsgCommunityPoolSpend\SUB:.cosmos.distribution.v1beta1.MsgCommunityPoolSpendResponse\DC2\159\SOH\n\
    \\ESCDepositValidatorRewardsPool\DC2;.cosmos.distribution.v1beta1.MsgDepositValidatorRewardsPool\SUBC.cosmos.distribution.v1beta1.MsgDepositValidatorRewardsPoolResponse\SUB\ENQ\128\231\176*\SOHB7Z1github.com/cosmos/cosmos-sdk/x/distribution/types\168\226\RS\SOHJ\220\&2\n\
    \\a\DC2\ENQ\NUL\NUL\214\SOH1\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL$\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULS\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NULS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL$\n\
    \\v\n\
    \\EOT\b\165\236\ETX\DC2\ETX\EOT\NUL$\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ACK\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL!\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL8\n\
    \7\n\
    \\STX\ACK\NUL\DC2\EOT\SO\NUL4\SOH\SUB+ Msg defines the distribution Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\SO\b\v\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\SI\STX(\n\
    \\SO\n\
    \\a\ACK\NUL\ETX\240\140\166\ENQ\DC2\ETX\SI\STX(\n\
    \\130\SOH\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DC3\STXX\SUBu SetWithdrawAddress defines a method to change the withdraw address\n\
    \ for a delegator (or validator self-delegation).\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC3\ACK\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC3\EM.\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC39V\n\
    \r\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\ETB\STXg\SUBe WithdrawDelegatorReward defines a method to withdraw rewards of delegator\n\
    \ from a single validator.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\ETB\ACK\GS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\ETB\RS8\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\ETBCe\n\
    \v\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX\ESC\STXs\SUBi WithdrawValidatorCommission defines a method to withdraw the\n\
    \ full commission to the validator address.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\ESC\ACK!\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\ESC\"@\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\ESCKq\n\
    \k\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\ETX\US\STXU\SUB^ FundCommunityPool defines a method to allow an account to directly\n\
    \ fund the community pool.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\US\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\US\CAN,\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\US7S\n\
    \\176\SOH\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\ETX%\STXF\SUB\162\SOH UpdateParams defines a governance operation for updating the x/distribution\n\
    \ module parameters. The authority is defined in the keeper.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX%\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX%\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX%-D\n\
    \\142\STX\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\ETX-\STXX\SUB\128\STX CommunityPoolSpend defines a governance operation for sending tokens from\n\
    \ the community pool in the x/distribution module to another account, which\n\
    \ could be the governance module itself. The authority is defined in the\n\
    \ keeper.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX-\ACK\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX-\EM.\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX-9V\n\
    \\155\SOH\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\ETX3\STXs\SUB\141\SOH DepositValidatorRewardsPool defines a method to provide additional rewards\n\
    \ to delegators to a specific validator.\n\
    \\n\
    \ Since: cosmos-sdk 0.50\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX3\ACK!\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX3\"@\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX3Kq\n\
    \n\n\
    \\STX\EOT\NUL\DC2\EOT8\NULA\SOH\SUBb MsgSetWithdrawAddress sets the withdraw address for\n\
    \ a delegator (or validator self-delegation).\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX8\b\GS\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX9\STX6\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX9\STX6\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX:\STXH\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX:\STXH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX<\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETX<\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX=\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\129\244\ETX\DC2\ETX=\STX-\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX?\STXP\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX?\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX?\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX?\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX?\USO\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX? N\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX@\STXP\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX@\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX@\t\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX@\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX@\USO\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX@ N\n\
    \]\n\
    \\STX\EOT\SOH\DC2\ETXE\NUL(\SUBR MsgSetWithdrawAddressResponse defines the Msg/SetWithdrawAddress response\n\
    \ type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXE\b%\n\
    \r\n\
    \\STX\EOT\STX\DC2\EOTI\NULR\SOH\SUBf MsgWithdrawDelegatorReward represents delegation withdrawal to a delegator\n\
    \ from a single validator.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXI\b\"\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXJ\STX6\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETXJ\STX6\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXK\STXK\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETXK\STXK\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXM\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\141\244\ETX\DC2\ETXM\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXN\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\129\244\ETX\DC2\ETXN\STX-\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXP\STXP\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXP\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXP\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXP\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETXP\USO\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETXP N\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXQ\STXY\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXQ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXQ\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXQ\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETXQ\USX\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\202\214\ENQ\DC2\ETXQ W\n\
    \h\n\
    \\STX\EOT\ETX\DC2\EOTV\NUL^\SOH\SUB\\ MsgWithdrawDelegatorRewardResponse defines the Msg/WithdrawDelegatorReward\n\
    \ response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXV\b*\n\
    \&\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOTX\STX]\EOT\SUB\CAN Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETXX\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXX\v#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXX$*\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXX-.\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\EOTX/]\ETX\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\233\251\ETX\DC2\ETXY\EOT$\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\NUL\b\245\140\166\ENQ\DC2\ETXZ\EOT#\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\NUL\b\243\140\166\ENQ\DC2\ETX[\EOT-\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\245\251\ETX\DC2\ETX\\\EOTI\n\
    \e\n\
    \\STX\EOT\EOT\DC2\EOTb\NULj\SOH\SUBY MsgWithdrawValidatorCommission withdraws the full commission to the validator\n\
    \ address.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXb\b&\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXc\STX6\n\
    \\SI\n\
    \\b\EOT\EOT\a\240\140\166\ENQ\NUL\DC2\ETXc\STX6\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXd\STXH\n\
    \\SO\n\
    \\a\EOT\EOT\a\241\140\166\ENQ\DC2\ETXd\STXH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXf\STX-\n\
    \\r\n\
    \\ACK\EOT\EOT\a\141\244\ETX\DC2\ETXf\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXg\STX-\n\
    \\r\n\
    \\ACK\EOT\EOT\a\129\244\ETX\DC2\ETXg\STX-\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXi\STXY\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXi\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXi\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXi\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXi\USX\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETXi W\n\
    \p\n\
    \\STX\EOT\ENQ\DC2\EOTn\NULv\SOH\SUBd MsgWithdrawValidatorCommissionResponse defines the\n\
    \ Msg/WithdrawValidatorCommission response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXn\b.\n\
    \&\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOTp\STXu\EOT\SUB\CAN Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETXp\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETXp\v#\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXp$*\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXp-.\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\EOTp/u\ETX\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\NUL\b\233\251\ETX\DC2\ETXq\EOT$\n\
    \\DLE\n\
    \\t\EOT\ENQ\STX\NUL\b\245\140\166\ENQ\DC2\ETXr\EOT#\n\
    \\DLE\n\
    \\t\EOT\ENQ\STX\NUL\b\243\140\166\ENQ\DC2\ETXs\EOT-\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\NUL\b\245\251\ETX\DC2\ETXt\EOTI\n\
    \[\n\
    \\STX\EOT\ACK\DC2\ENQz\NUL\136\SOH\SOH\SUBN MsgFundCommunityPool allows an account to directly\n\
    \ fund the community pool.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXz\b\FS\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETX{\STX.\n\
    \\SI\n\
    \\b\EOT\ACK\a\240\140\166\ENQ\NUL\DC2\ETX{\STX.\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETX|\STXD\n\
    \\SO\n\
    \\a\EOT\ACK\a\241\140\166\ENQ\DC2\ETX|\STXD\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETX~\STX-\n\
    \\r\n\
    \\ACK\EOT\ACK\a\141\244\ETX\DC2\ETX~\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETX\DEL\STX-\n\
    \\r\n\
    \\ACK\EOT\ACK\a\129\244\ETX\DC2\ETX\DEL\STX-\n\
    \\SO\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ACK\129\SOH\STX\134\SOH\EOT\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\EOT\129\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\129\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\129\SOH$*\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\129\SOH-.\n\
    \\SI\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\ACK\129\SOH/\134\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\233\251\ETX\DC2\EOT\130\SOH\EOT$\n\
    \\DC1\n\
    \\t\EOT\ACK\STX\NUL\b\245\140\166\ENQ\DC2\EOT\131\SOH\EOT#\n\
    \\DC1\n\
    \\t\EOT\ACK\STX\NUL\b\243\140\166\ENQ\DC2\EOT\132\SOH\EOT-\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\245\251\ETX\DC2\EOT\133\SOH\EOTI\n\
    \\f\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\135\SOH\STXH\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\135\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\135\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\135\SOH\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\b\DC2\EOT\135\SOH\ETBG\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\SOH\b\202\214\ENQ\DC2\EOT\135\SOH\CANF\n\
    \[\n\
    \\STX\EOT\a\DC2\EOT\139\SOH\NUL'\SUBO MsgFundCommunityPoolResponse defines the Msg/FundCommunityPool response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\139\SOH\b$\n\
    \^\n\
    \\STX\EOT\b\DC2\ACK\144\SOH\NUL\155\SOH\SOH\SUBP MsgUpdateParams is the Msg/UpdateParams request type.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\144\SOH\b\ETB\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\145\SOH\STX.\n\
    \\DLE\n\
    \\b\EOT\b\a\240\140\166\ENQ\NUL\DC2\EOT\145\SOH\STX.\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\146\SOH\STXL\n\
    \\SI\n\
    \\a\EOT\b\a\241\140\166\ENQ\DC2\EOT\146\SOH\STXL\n\
    \i\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\149\SOH\STXH\SUB[ authority is the address that controls the module (defaults to x/gov unless overwritten).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\149\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\149\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\149\SOH\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\149\SOH\ETBG\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\202\214\ENQ\DC2\EOT\149\SOH\CANF\n\
    \p\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\154\SOH\STXR\SUBb params defines the x/distribution parameters to update.\n\
    \\n\
    \ NOTE: All parameters must be supplied.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\EOT\154\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\154\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\154\SOH\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\b\DC2\EOT\154\SOH\DC4Q\n\
    \\DLE\n\
    \\b\EOT\b\STX\SOH\b\233\251\ETX\DC2\EOT\154\SOH\NAK1\n\
    \\DC1\n\
    \\t\EOT\b\STX\SOH\b\245\140\166\ENQ\DC2\EOT\154\SOH3P\n\
    \\135\SOH\n\
    \\STX\EOT\t\DC2\EOT\161\SOH\NUL\"\SUB{ MsgUpdateParamsResponse defines the response structure for executing a\n\
    \ MsgUpdateParams message.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\161\SOH\b\US\n\
    \\137\STX\n\
    \\STX\EOT\n\
    \\DC2\ACK\168\SOH\NUL\181\SOH\SOH\SUB\250\SOH MsgCommunityPoolSpend defines a message for sending tokens from the community\n\
    \ pool to another account. This message is typically executed via a governance\n\
    \ proposal with the governance module being the executing authority.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\168\SOH\b\GS\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\169\SOH\STX.\n\
    \\DLE\n\
    \\b\EOT\n\
    \\a\240\140\166\ENQ\NUL\DC2\EOT\169\SOH\STX.\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\170\SOH\STXK\n\
    \\SI\n\
    \\a\EOT\n\
    \\a\241\140\166\ENQ\DC2\EOT\170\SOH\STXK\n\
    \i\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\173\SOH\STX`\SUB[ authority is the address that controls the module (defaults to x/gov unless overwritten).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\173\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\173\SOH\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\173\SOH-.\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\b\DC2\EOT\173\SOH/_\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\NUL\b\202\214\ENQ\DC2\EOT\173\SOH0^\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\174\SOH\STX/\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\174\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\174\SOH\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\174\SOH-.\n\
    \\SO\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\ACK\175\SOH\STX\180\SOH\EOT\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\EOT\DC2\EOT\175\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ACK\DC2\EOT\175\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\175\SOH$*\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\175\SOH-.\n\
    \\SI\n\
    \\ENQ\EOT\n\
    \\STX\STX\b\DC2\ACK\175\SOH/\180\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\STX\b\233\251\ETX\DC2\EOT\176\SOH\EOT$\n\
    \\DC1\n\
    \\t\EOT\n\
    \\STX\STX\b\245\140\166\ENQ\DC2\EOT\177\SOH\EOT#\n\
    \\DC1\n\
    \\t\EOT\n\
    \\STX\STX\b\243\140\166\ENQ\DC2\EOT\178\SOH\EOT-\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\STX\b\245\251\ETX\DC2\EOT\179\SOH\EOTI\n\
    \\136\SOH\n\
    \\STX\EOT\v\DC2\EOT\187\SOH\NUL(\SUB| MsgCommunityPoolSpendResponse defines the response to executing a\n\
    \ MsgCommunityPoolSpend message.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\187\SOH\b%\n\
    \\171\SOH\n\
    \\STX\EOT\f\DC2\ACK\193\SOH\NUL\208\SOH\SOH\SUB\156\SOH DepositValidatorRewardsPool defines the request structure to provide\n\
    \ additional rewards to delegators from a specific validator.\n\
    \\n\
    \ Since: cosmos-sdk 0.50\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\193\SOH\b&\n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\194\SOH\STX@\n\
    \\SI\n\
    \\a\EOT\f\a\241\140\166\ENQ\DC2\EOT\194\SOH\STX@\n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\195\SOH\STX.\n\
    \\DLE\n\
    \\b\EOT\f\a\240\140\166\ENQ\NUL\DC2\EOT\195\SOH\STX.\n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\197\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\f\a\141\244\ETX\DC2\EOT\197\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\198\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\f\a\129\244\ETX\DC2\EOT\198\SOH\STX-\n\
    \\f\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\200\SOH\STXP\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\200\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\200\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\200\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\b\DC2\EOT\200\SOH\USO\n\
    \\DLE\n\
    \\b\EOT\f\STX\NUL\b\202\214\ENQ\DC2\EOT\200\SOH N\n\
    \\f\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\201\SOH\STXY\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\EOT\201\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\201\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\201\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\b\DC2\EOT\201\SOH\USX\n\
    \\DLE\n\
    \\b\EOT\f\STX\SOH\b\202\214\ENQ\DC2\EOT\201\SOH W\n\
    \\SO\n\
    \\EOT\EOT\f\STX\STX\DC2\ACK\202\SOH\STX\207\SOH\EOT\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\EOT\DC2\EOT\202\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ACK\DC2\EOT\202\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\EOT\202\SOH$*\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\EOT\202\SOH-.\n\
    \\SI\n\
    \\ENQ\EOT\f\STX\STX\b\DC2\ACK\202\SOH/\207\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\f\STX\STX\b\233\251\ETX\DC2\EOT\203\SOH\EOT$\n\
    \\DC1\n\
    \\t\EOT\f\STX\STX\b\243\140\166\ENQ\DC2\EOT\204\SOH\EOT-\n\
    \\DC1\n\
    \\t\EOT\f\STX\STX\b\245\140\166\ENQ\DC2\EOT\205\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\f\STX\STX\b\245\251\ETX\DC2\EOT\206\SOH\EOTI\n\
    \\155\SOH\n\
    \\STX\EOT\r\DC2\EOT\214\SOH\NUL1\SUB\142\SOH MsgDepositValidatorRewardsPoolResponse defines the response to executing a\n\
    \ MsgDepositValidatorRewardsPool message.\n\
    \\n\
    \ Since: cosmos-sdk 0.50\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\214\SOH\b.b\ACKproto3"