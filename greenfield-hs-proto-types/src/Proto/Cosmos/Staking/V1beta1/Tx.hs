{- This file was auto-generated from cosmos/staking/v1beta1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Staking.V1beta1.Tx (
        Msg(..), MsgBeginRedelegate(), MsgBeginRedelegateResponse(),
        MsgCancelUnbondingDelegation(),
        MsgCancelUnbondingDelegationResponse(), MsgCreateValidator(),
        MsgCreateValidatorResponse(), MsgDelegate(), MsgDelegateResponse(),
        MsgEditValidator(), MsgEditValidatorResponse(), MsgUndelegate(),
        MsgUndelegateResponse(), MsgUpdateParams(),
        MsgUpdateParamsResponse()
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
import qualified Proto.Cosmos.Staking.V1beta1.Staking
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Timestamp
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.delegatorAddress' @:: Lens' MsgBeginRedelegate Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.validatorSrcAddress' @:: Lens' MsgBeginRedelegate Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.validatorDstAddress' @:: Lens' MsgBeginRedelegate Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.amount' @:: Lens' MsgBeginRedelegate Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.maybe'amount' @:: Lens' MsgBeginRedelegate (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data MsgBeginRedelegate
  = MsgBeginRedelegate'_constructor {_MsgBeginRedelegate'delegatorAddress :: !Data.Text.Text,
                                     _MsgBeginRedelegate'validatorSrcAddress :: !Data.Text.Text,
                                     _MsgBeginRedelegate'validatorDstAddress :: !Data.Text.Text,
                                     _MsgBeginRedelegate'amount :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                     _MsgBeginRedelegate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgBeginRedelegate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgBeginRedelegate "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgBeginRedelegate'delegatorAddress
           (\ x__ y__ -> x__ {_MsgBeginRedelegate'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgBeginRedelegate "validatorSrcAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgBeginRedelegate'validatorSrcAddress
           (\ x__ y__ -> x__ {_MsgBeginRedelegate'validatorSrcAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgBeginRedelegate "validatorDstAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgBeginRedelegate'validatorDstAddress
           (\ x__ y__ -> x__ {_MsgBeginRedelegate'validatorDstAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgBeginRedelegate "amount" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgBeginRedelegate'amount
           (\ x__ y__ -> x__ {_MsgBeginRedelegate'amount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgBeginRedelegate "maybe'amount" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgBeginRedelegate'amount
           (\ x__ y__ -> x__ {_MsgBeginRedelegate'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgBeginRedelegate where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.MsgBeginRedelegate"
  packedMessageDescriptor _
    = "\n\
      \\DC2MsgBeginRedelegate\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2U\n\
      \\NAKvalidator_src_address\CAN\STX \SOH(\tR\DC3validatorSrcAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2U\n\
      \\NAKvalidator_dst_address\CAN\ETX \SOH(\tR\DC3validatorDstAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2<\n\
      \\ACKamount\CAN\EOT \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH:@\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1delegator_address\138\231\176*\GScosmos-sdk/MsgBeginRedelegate"
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
              Data.ProtoLens.FieldDescriptor MsgBeginRedelegate
        validatorSrcAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_src_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorSrcAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgBeginRedelegate
        validatorDstAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_dst_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorDstAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgBeginRedelegate
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'amount")) ::
              Data.ProtoLens.FieldDescriptor MsgBeginRedelegate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorSrcAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, validatorDstAddress__field_descriptor),
           (Data.ProtoLens.Tag 4, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgBeginRedelegate'_unknownFields
        (\ x__ y__ -> x__ {_MsgBeginRedelegate'_unknownFields = y__})
  defMessage
    = MsgBeginRedelegate'_constructor
        {_MsgBeginRedelegate'delegatorAddress = Data.ProtoLens.fieldDefault,
         _MsgBeginRedelegate'validatorSrcAddress = Data.ProtoLens.fieldDefault,
         _MsgBeginRedelegate'validatorDstAddress = Data.ProtoLens.fieldDefault,
         _MsgBeginRedelegate'amount = Prelude.Nothing,
         _MsgBeginRedelegate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgBeginRedelegate
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgBeginRedelegate
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
                                       "validator_src_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorSrcAddress") y x)
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
                                       "validator_dst_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorDstAddress") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
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
          (do loop Data.ProtoLens.defMessage) "MsgBeginRedelegate"
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
                         (Data.ProtoLens.Field.field @"validatorSrcAddress") _x
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
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"validatorDstAddress") _x
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
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'amount") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MsgBeginRedelegate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgBeginRedelegate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgBeginRedelegate'delegatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_MsgBeginRedelegate'validatorSrcAddress x__)
                   (Control.DeepSeq.deepseq
                      (_MsgBeginRedelegate'validatorDstAddress x__)
                      (Control.DeepSeq.deepseq (_MsgBeginRedelegate'amount x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.completionTime' @:: Lens' MsgBeginRedelegateResponse Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.maybe'completionTime' @:: Lens' MsgBeginRedelegateResponse (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data MsgBeginRedelegateResponse
  = MsgBeginRedelegateResponse'_constructor {_MsgBeginRedelegateResponse'completionTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                             _MsgBeginRedelegateResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgBeginRedelegateResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgBeginRedelegateResponse "completionTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgBeginRedelegateResponse'completionTime
           (\ x__ y__
              -> x__ {_MsgBeginRedelegateResponse'completionTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgBeginRedelegateResponse "maybe'completionTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgBeginRedelegateResponse'completionTime
           (\ x__ y__
              -> x__ {_MsgBeginRedelegateResponse'completionTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgBeginRedelegateResponse where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.MsgBeginRedelegateResponse"
  packedMessageDescriptor _
    = "\n\
      \\SUBMsgBeginRedelegateResponse\DC2R\n\
      \\SIcompletion_time\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\SOcompletionTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        completionTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "completion_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'completionTime")) ::
              Data.ProtoLens.FieldDescriptor MsgBeginRedelegateResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, completionTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgBeginRedelegateResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgBeginRedelegateResponse'_unknownFields = y__})
  defMessage
    = MsgBeginRedelegateResponse'_constructor
        {_MsgBeginRedelegateResponse'completionTime = Prelude.Nothing,
         _MsgBeginRedelegateResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgBeginRedelegateResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgBeginRedelegateResponse
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
                                       "completion_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"completionTime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgBeginRedelegateResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'completionTime") _x
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
instance Control.DeepSeq.NFData MsgBeginRedelegateResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgBeginRedelegateResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgBeginRedelegateResponse'completionTime x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.delegatorAddress' @:: Lens' MsgCancelUnbondingDelegation Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.validatorAddress' @:: Lens' MsgCancelUnbondingDelegation Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.amount' @:: Lens' MsgCancelUnbondingDelegation Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.maybe'amount' @:: Lens' MsgCancelUnbondingDelegation (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.creationHeight' @:: Lens' MsgCancelUnbondingDelegation Data.Int.Int64@ -}
data MsgCancelUnbondingDelegation
  = MsgCancelUnbondingDelegation'_constructor {_MsgCancelUnbondingDelegation'delegatorAddress :: !Data.Text.Text,
                                               _MsgCancelUnbondingDelegation'validatorAddress :: !Data.Text.Text,
                                               _MsgCancelUnbondingDelegation'amount :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                               _MsgCancelUnbondingDelegation'creationHeight :: !Data.Int.Int64,
                                               _MsgCancelUnbondingDelegation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCancelUnbondingDelegation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCancelUnbondingDelegation "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCancelUnbondingDelegation'delegatorAddress
           (\ x__ y__
              -> x__ {_MsgCancelUnbondingDelegation'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCancelUnbondingDelegation "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCancelUnbondingDelegation'validatorAddress
           (\ x__ y__
              -> x__ {_MsgCancelUnbondingDelegation'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCancelUnbondingDelegation "amount" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCancelUnbondingDelegation'amount
           (\ x__ y__ -> x__ {_MsgCancelUnbondingDelegation'amount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgCancelUnbondingDelegation "maybe'amount" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCancelUnbondingDelegation'amount
           (\ x__ y__ -> x__ {_MsgCancelUnbondingDelegation'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCancelUnbondingDelegation "creationHeight" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCancelUnbondingDelegation'creationHeight
           (\ x__ y__
              -> x__ {_MsgCancelUnbondingDelegation'creationHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCancelUnbondingDelegation where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.MsgCancelUnbondingDelegation"
  packedMessageDescriptor _
    = "\n\
      \\FSMsgCancelUnbondingDelegation\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
      \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2<\n\
      \\ACKamount\CAN\ETX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH\DC2'\n\
      \\SIcreation_height\CAN\EOT \SOH(\ETXR\SOcreationHeight:J\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1delegator_address\138\231\176*'cosmos-sdk/MsgCancelUnbondingDelegation"
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
              Data.ProtoLens.FieldDescriptor MsgCancelUnbondingDelegation
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCancelUnbondingDelegation
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'amount")) ::
              Data.ProtoLens.FieldDescriptor MsgCancelUnbondingDelegation
        creationHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "creation_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"creationHeight")) ::
              Data.ProtoLens.FieldDescriptor MsgCancelUnbondingDelegation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor),
           (Data.ProtoLens.Tag 4, creationHeight__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCancelUnbondingDelegation'_unknownFields
        (\ x__ y__
           -> x__ {_MsgCancelUnbondingDelegation'_unknownFields = y__})
  defMessage
    = MsgCancelUnbondingDelegation'_constructor
        {_MsgCancelUnbondingDelegation'delegatorAddress = Data.ProtoLens.fieldDefault,
         _MsgCancelUnbondingDelegation'validatorAddress = Data.ProtoLens.fieldDefault,
         _MsgCancelUnbondingDelegation'amount = Prelude.Nothing,
         _MsgCancelUnbondingDelegation'creationHeight = Data.ProtoLens.fieldDefault,
         _MsgCancelUnbondingDelegation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCancelUnbondingDelegation
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCancelUnbondingDelegation
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
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "amount"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"amount") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "creation_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"creationHeight") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgCancelUnbondingDelegation"
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'amount") _x
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
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"creationHeight") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MsgCancelUnbondingDelegation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCancelUnbondingDelegation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCancelUnbondingDelegation'delegatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_MsgCancelUnbondingDelegation'validatorAddress x__)
                   (Control.DeepSeq.deepseq
                      (_MsgCancelUnbondingDelegation'amount x__)
                      (Control.DeepSeq.deepseq
                         (_MsgCancelUnbondingDelegation'creationHeight x__) ()))))
{- | Fields :
      -}
data MsgCancelUnbondingDelegationResponse
  = MsgCancelUnbondingDelegationResponse'_constructor {_MsgCancelUnbondingDelegationResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCancelUnbondingDelegationResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgCancelUnbondingDelegationResponse where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.MsgCancelUnbondingDelegationResponse"
  packedMessageDescriptor _
    = "\n\
      \$MsgCancelUnbondingDelegationResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCancelUnbondingDelegationResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_MsgCancelUnbondingDelegationResponse'_unknownFields = y__})
  defMessage
    = MsgCancelUnbondingDelegationResponse'_constructor
        {_MsgCancelUnbondingDelegationResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCancelUnbondingDelegationResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCancelUnbondingDelegationResponse
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
          "MsgCancelUnbondingDelegationResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgCancelUnbondingDelegationResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCancelUnbondingDelegationResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.description' @:: Lens' MsgCreateValidator Proto.Cosmos.Staking.V1beta1.Staking.Description@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.maybe'description' @:: Lens' MsgCreateValidator (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Description)@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.commission' @:: Lens' MsgCreateValidator Proto.Cosmos.Staking.V1beta1.Staking.CommissionRates@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.maybe'commission' @:: Lens' MsgCreateValidator (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.CommissionRates)@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.minSelfDelegation' @:: Lens' MsgCreateValidator Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.delegatorAddress' @:: Lens' MsgCreateValidator Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.validatorAddress' @:: Lens' MsgCreateValidator Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.pubkey' @:: Lens' MsgCreateValidator Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.maybe'pubkey' @:: Lens' MsgCreateValidator (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.value' @:: Lens' MsgCreateValidator Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.maybe'value' @:: Lens' MsgCreateValidator (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data MsgCreateValidator
  = MsgCreateValidator'_constructor {_MsgCreateValidator'description :: !(Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Description),
                                     _MsgCreateValidator'commission :: !(Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.CommissionRates),
                                     _MsgCreateValidator'minSelfDelegation :: !Data.Text.Text,
                                     _MsgCreateValidator'delegatorAddress :: !Data.Text.Text,
                                     _MsgCreateValidator'validatorAddress :: !Data.Text.Text,
                                     _MsgCreateValidator'pubkey :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                     _MsgCreateValidator'value :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                     _MsgCreateValidator'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateValidator where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreateValidator "description" Proto.Cosmos.Staking.V1beta1.Staking.Description where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateValidator'description
           (\ x__ y__ -> x__ {_MsgCreateValidator'description = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgCreateValidator "maybe'description" (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Description) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateValidator'description
           (\ x__ y__ -> x__ {_MsgCreateValidator'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateValidator "commission" Proto.Cosmos.Staking.V1beta1.Staking.CommissionRates where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateValidator'commission
           (\ x__ y__ -> x__ {_MsgCreateValidator'commission = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgCreateValidator "maybe'commission" (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.CommissionRates) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateValidator'commission
           (\ x__ y__ -> x__ {_MsgCreateValidator'commission = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateValidator "minSelfDelegation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateValidator'minSelfDelegation
           (\ x__ y__ -> x__ {_MsgCreateValidator'minSelfDelegation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateValidator "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateValidator'delegatorAddress
           (\ x__ y__ -> x__ {_MsgCreateValidator'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateValidator "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateValidator'validatorAddress
           (\ x__ y__ -> x__ {_MsgCreateValidator'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateValidator "pubkey" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateValidator'pubkey
           (\ x__ y__ -> x__ {_MsgCreateValidator'pubkey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgCreateValidator "maybe'pubkey" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateValidator'pubkey
           (\ x__ y__ -> x__ {_MsgCreateValidator'pubkey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateValidator "value" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateValidator'value
           (\ x__ y__ -> x__ {_MsgCreateValidator'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgCreateValidator "maybe'value" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateValidator'value
           (\ x__ y__ -> x__ {_MsgCreateValidator'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreateValidator where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.MsgCreateValidator"
  packedMessageDescriptor _
    = "\n\
      \\DC2MsgCreateValidator\DC2P\n\
      \\vdescription\CAN\SOH \SOH(\v2#.cosmos.staking.v1beta1.DescriptionR\vdescriptionB\t\200\222\US\NUL\168\231\176*\SOH\DC2R\n\
      \\n\
      \commission\CAN\STX \SOH(\v2'.cosmos.staking.v1beta1.CommissionRatesR\n\
      \commissionB\t\200\222\US\NUL\168\231\176*\SOH\DC2q\n\
      \\DC3min_self_delegation\CAN\ETX \SOH(\tR\DC1minSelfDelegationBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\168\231\176*\SOH\DC2G\n\
      \\DC1delegator_address\CAN\EOT \SOH(\tR\DLEdelegatorAddressB\SUB\CAN\SOH\210\180-\DC4cosmos.AddressString\DC2N\n\
      \\DC1validator_address\CAN\ENQ \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2F\n\
      \\ACKpubkey\CAN\ACK \SOH(\v2\DC4.google.protobuf.AnyR\ACKpubkeyB\CAN\202\180-\DC4cosmos.crypto.PubKey\DC2:\n\
      \\ENQvalue\CAN\a \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ENQvalueB\t\200\222\US\NUL\168\231\176*\SOH:@\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1validator_address\138\231\176*\GScosmos-sdk/MsgCreateValidator"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.Description)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'description")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateValidator
        commission__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commission"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.CommissionRates)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commission")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateValidator
        minSelfDelegation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_self_delegation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"minSelfDelegation")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateValidator
        delegatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegatorAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateValidator
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateValidator
        pubkey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pubkey"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pubkey")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateValidator
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateValidator
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, description__field_descriptor),
           (Data.ProtoLens.Tag 2, commission__field_descriptor),
           (Data.ProtoLens.Tag 3, minSelfDelegation__field_descriptor),
           (Data.ProtoLens.Tag 4, delegatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 5, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 6, pubkey__field_descriptor),
           (Data.ProtoLens.Tag 7, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateValidator'_unknownFields
        (\ x__ y__ -> x__ {_MsgCreateValidator'_unknownFields = y__})
  defMessage
    = MsgCreateValidator'_constructor
        {_MsgCreateValidator'description = Prelude.Nothing,
         _MsgCreateValidator'commission = Prelude.Nothing,
         _MsgCreateValidator'minSelfDelegation = Data.ProtoLens.fieldDefault,
         _MsgCreateValidator'delegatorAddress = Data.ProtoLens.fieldDefault,
         _MsgCreateValidator'validatorAddress = Data.ProtoLens.fieldDefault,
         _MsgCreateValidator'pubkey = Prelude.Nothing,
         _MsgCreateValidator'value = Prelude.Nothing,
         _MsgCreateValidator'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateValidator
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateValidator
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "commission"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"commission") y x)
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
                                       "min_self_delegation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minSelfDelegation") y x)
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
                                       "delegator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegatorAddress") y x)
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
                                       "validator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorAddress") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pubkey"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pubkey") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
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
          (do loop Data.ProtoLens.defMessage) "MsgCreateValidator"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'description") _x
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'commission") _x
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
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"minSelfDelegation") _x
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
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"delegatorAddress") _x
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
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"validatorAddress") _x
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
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pubkey") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData MsgCreateValidator where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateValidator'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCreateValidator'description x__)
                (Control.DeepSeq.deepseq
                   (_MsgCreateValidator'commission x__)
                   (Control.DeepSeq.deepseq
                      (_MsgCreateValidator'minSelfDelegation x__)
                      (Control.DeepSeq.deepseq
                         (_MsgCreateValidator'delegatorAddress x__)
                         (Control.DeepSeq.deepseq
                            (_MsgCreateValidator'validatorAddress x__)
                            (Control.DeepSeq.deepseq
                               (_MsgCreateValidator'pubkey x__)
                               (Control.DeepSeq.deepseq (_MsgCreateValidator'value x__) ())))))))
{- | Fields :
      -}
data MsgCreateValidatorResponse
  = MsgCreateValidatorResponse'_constructor {_MsgCreateValidatorResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateValidatorResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgCreateValidatorResponse where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.MsgCreateValidatorResponse"
  packedMessageDescriptor _
    = "\n\
      \\SUBMsgCreateValidatorResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateValidatorResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgCreateValidatorResponse'_unknownFields = y__})
  defMessage
    = MsgCreateValidatorResponse'_constructor
        {_MsgCreateValidatorResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateValidatorResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateValidatorResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgCreateValidatorResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgCreateValidatorResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateValidatorResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.delegatorAddress' @:: Lens' MsgDelegate Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.validatorAddress' @:: Lens' MsgDelegate Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.amount' @:: Lens' MsgDelegate Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.maybe'amount' @:: Lens' MsgDelegate (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data MsgDelegate
  = MsgDelegate'_constructor {_MsgDelegate'delegatorAddress :: !Data.Text.Text,
                              _MsgDelegate'validatorAddress :: !Data.Text.Text,
                              _MsgDelegate'amount :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                              _MsgDelegate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDelegate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgDelegate "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDelegate'delegatorAddress
           (\ x__ y__ -> x__ {_MsgDelegate'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDelegate "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDelegate'validatorAddress
           (\ x__ y__ -> x__ {_MsgDelegate'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDelegate "amount" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDelegate'amount (\ x__ y__ -> x__ {_MsgDelegate'amount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgDelegate "maybe'amount" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDelegate'amount (\ x__ y__ -> x__ {_MsgDelegate'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgDelegate where
  messageName _ = Data.Text.pack "cosmos.staking.v1beta1.MsgDelegate"
  packedMessageDescriptor _
    = "\n\
      \\vMsgDelegate\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
      \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2<\n\
      \\ACKamount\CAN\ETX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH:9\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1delegator_address\138\231\176*\SYNcosmos-sdk/MsgDelegate"
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
              Data.ProtoLens.FieldDescriptor MsgDelegate
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgDelegate
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'amount")) ::
              Data.ProtoLens.FieldDescriptor MsgDelegate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDelegate'_unknownFields
        (\ x__ y__ -> x__ {_MsgDelegate'_unknownFields = y__})
  defMessage
    = MsgDelegate'_constructor
        {_MsgDelegate'delegatorAddress = Data.ProtoLens.fieldDefault,
         _MsgDelegate'validatorAddress = Data.ProtoLens.fieldDefault,
         _MsgDelegate'amount = Prelude.Nothing,
         _MsgDelegate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDelegate -> Data.ProtoLens.Encoding.Bytes.Parser MsgDelegate
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
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
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
          (do loop Data.ProtoLens.defMessage) "MsgDelegate"
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'amount") _x
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
instance Control.DeepSeq.NFData MsgDelegate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDelegate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgDelegate'delegatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_MsgDelegate'validatorAddress x__)
                   (Control.DeepSeq.deepseq (_MsgDelegate'amount x__) ())))
{- | Fields :
      -}
data MsgDelegateResponse
  = MsgDelegateResponse'_constructor {_MsgDelegateResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDelegateResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgDelegateResponse where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.MsgDelegateResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3MsgDelegateResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDelegateResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgDelegateResponse'_unknownFields = y__})
  defMessage
    = MsgDelegateResponse'_constructor
        {_MsgDelegateResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDelegateResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDelegateResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgDelegateResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgDelegateResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDelegateResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.description' @:: Lens' MsgEditValidator Proto.Cosmos.Staking.V1beta1.Staking.Description@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.maybe'description' @:: Lens' MsgEditValidator (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Description)@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.validatorAddress' @:: Lens' MsgEditValidator Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.commissionRate' @:: Lens' MsgEditValidator Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.minSelfDelegation' @:: Lens' MsgEditValidator Data.Text.Text@ -}
data MsgEditValidator
  = MsgEditValidator'_constructor {_MsgEditValidator'description :: !(Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Description),
                                   _MsgEditValidator'validatorAddress :: !Data.Text.Text,
                                   _MsgEditValidator'commissionRate :: !Data.Text.Text,
                                   _MsgEditValidator'minSelfDelegation :: !Data.Text.Text,
                                   _MsgEditValidator'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgEditValidator where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgEditValidator "description" Proto.Cosmos.Staking.V1beta1.Staking.Description where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgEditValidator'description
           (\ x__ y__ -> x__ {_MsgEditValidator'description = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgEditValidator "maybe'description" (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Description) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgEditValidator'description
           (\ x__ y__ -> x__ {_MsgEditValidator'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgEditValidator "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgEditValidator'validatorAddress
           (\ x__ y__ -> x__ {_MsgEditValidator'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgEditValidator "commissionRate" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgEditValidator'commissionRate
           (\ x__ y__ -> x__ {_MsgEditValidator'commissionRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgEditValidator "minSelfDelegation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgEditValidator'minSelfDelegation
           (\ x__ y__ -> x__ {_MsgEditValidator'minSelfDelegation = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgEditValidator where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.MsgEditValidator"
  packedMessageDescriptor _
    = "\n\
      \\DLEMsgEditValidator\DC2P\n\
      \\vdescription\CAN\SOH \SOH(\v2#.cosmos.staking.v1beta1.DescriptionR\vdescriptionB\t\200\222\US\NUL\168\231\176*\SOH\DC2N\n\
      \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2a\n\
      \\SIcommission_rate\CAN\ETX \SOH(\tR\SOcommissionRateB8\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\DC2h\n\
      \\DC3min_self_delegation\CAN\EOT \SOH(\tR\DC1minSelfDelegationB8\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int:>\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1validator_address\138\231\176*\ESCcosmos-sdk/MsgEditValidator"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.Description)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'description")) ::
              Data.ProtoLens.FieldDescriptor MsgEditValidator
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgEditValidator
        commissionRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commission_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"commissionRate")) ::
              Data.ProtoLens.FieldDescriptor MsgEditValidator
        minSelfDelegation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_self_delegation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"minSelfDelegation")) ::
              Data.ProtoLens.FieldDescriptor MsgEditValidator
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, description__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, commissionRate__field_descriptor),
           (Data.ProtoLens.Tag 4, minSelfDelegation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgEditValidator'_unknownFields
        (\ x__ y__ -> x__ {_MsgEditValidator'_unknownFields = y__})
  defMessage
    = MsgEditValidator'_constructor
        {_MsgEditValidator'description = Prelude.Nothing,
         _MsgEditValidator'validatorAddress = Data.ProtoLens.fieldDefault,
         _MsgEditValidator'commissionRate = Data.ProtoLens.fieldDefault,
         _MsgEditValidator'minSelfDelegation = Data.ProtoLens.fieldDefault,
         _MsgEditValidator'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgEditValidator
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgEditValidator
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
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
                                       "commission_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commissionRate") y x)
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
                                       "min_self_delegation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minSelfDelegation") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgEditValidator"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'description") _x
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
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"commissionRate") _x
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
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"minSelfDelegation") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MsgEditValidator where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgEditValidator'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgEditValidator'description x__)
                (Control.DeepSeq.deepseq
                   (_MsgEditValidator'validatorAddress x__)
                   (Control.DeepSeq.deepseq
                      (_MsgEditValidator'commissionRate x__)
                      (Control.DeepSeq.deepseq
                         (_MsgEditValidator'minSelfDelegation x__) ()))))
{- | Fields :
      -}
data MsgEditValidatorResponse
  = MsgEditValidatorResponse'_constructor {_MsgEditValidatorResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgEditValidatorResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgEditValidatorResponse where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.MsgEditValidatorResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANMsgEditValidatorResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgEditValidatorResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgEditValidatorResponse'_unknownFields = y__})
  defMessage
    = MsgEditValidatorResponse'_constructor
        {_MsgEditValidatorResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgEditValidatorResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgEditValidatorResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgEditValidatorResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgEditValidatorResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgEditValidatorResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.delegatorAddress' @:: Lens' MsgUndelegate Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.validatorAddress' @:: Lens' MsgUndelegate Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.amount' @:: Lens' MsgUndelegate Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.maybe'amount' @:: Lens' MsgUndelegate (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data MsgUndelegate
  = MsgUndelegate'_constructor {_MsgUndelegate'delegatorAddress :: !Data.Text.Text,
                                _MsgUndelegate'validatorAddress :: !Data.Text.Text,
                                _MsgUndelegate'amount :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                _MsgUndelegate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUndelegate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUndelegate "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUndelegate'delegatorAddress
           (\ x__ y__ -> x__ {_MsgUndelegate'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUndelegate "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUndelegate'validatorAddress
           (\ x__ y__ -> x__ {_MsgUndelegate'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUndelegate "amount" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUndelegate'amount
           (\ x__ y__ -> x__ {_MsgUndelegate'amount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgUndelegate "maybe'amount" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUndelegate'amount
           (\ x__ y__ -> x__ {_MsgUndelegate'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUndelegate where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.MsgUndelegate"
  packedMessageDescriptor _
    = "\n\
      \\rMsgUndelegate\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
      \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2<\n\
      \\ACKamount\CAN\ETX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH:;\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1delegator_address\138\231\176*\CANcosmos-sdk/MsgUndelegate"
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
              Data.ProtoLens.FieldDescriptor MsgUndelegate
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgUndelegate
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'amount")) ::
              Data.ProtoLens.FieldDescriptor MsgUndelegate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUndelegate'_unknownFields
        (\ x__ y__ -> x__ {_MsgUndelegate'_unknownFields = y__})
  defMessage
    = MsgUndelegate'_constructor
        {_MsgUndelegate'delegatorAddress = Data.ProtoLens.fieldDefault,
         _MsgUndelegate'validatorAddress = Data.ProtoLens.fieldDefault,
         _MsgUndelegate'amount = Prelude.Nothing,
         _MsgUndelegate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUndelegate -> Data.ProtoLens.Encoding.Bytes.Parser MsgUndelegate
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
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
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
          (do loop Data.ProtoLens.defMessage) "MsgUndelegate"
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'amount") _x
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
instance Control.DeepSeq.NFData MsgUndelegate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUndelegate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUndelegate'delegatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_MsgUndelegate'validatorAddress x__)
                   (Control.DeepSeq.deepseq (_MsgUndelegate'amount x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.completionTime' @:: Lens' MsgUndelegateResponse Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.maybe'completionTime' @:: Lens' MsgUndelegateResponse (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.amount' @:: Lens' MsgUndelegateResponse Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.maybe'amount' @:: Lens' MsgUndelegateResponse (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data MsgUndelegateResponse
  = MsgUndelegateResponse'_constructor {_MsgUndelegateResponse'completionTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                        _MsgUndelegateResponse'amount :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                        _MsgUndelegateResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUndelegateResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUndelegateResponse "completionTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUndelegateResponse'completionTime
           (\ x__ y__ -> x__ {_MsgUndelegateResponse'completionTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgUndelegateResponse "maybe'completionTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUndelegateResponse'completionTime
           (\ x__ y__ -> x__ {_MsgUndelegateResponse'completionTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUndelegateResponse "amount" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUndelegateResponse'amount
           (\ x__ y__ -> x__ {_MsgUndelegateResponse'amount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgUndelegateResponse "maybe'amount" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUndelegateResponse'amount
           (\ x__ y__ -> x__ {_MsgUndelegateResponse'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUndelegateResponse where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.MsgUndelegateResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKMsgUndelegateResponse\DC2R\n\
      \\SIcompletion_time\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\SOcompletionTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2<\n\
      \\ACKamount\CAN\STX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        completionTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "completion_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'completionTime")) ::
              Data.ProtoLens.FieldDescriptor MsgUndelegateResponse
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'amount")) ::
              Data.ProtoLens.FieldDescriptor MsgUndelegateResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, completionTime__field_descriptor),
           (Data.ProtoLens.Tag 2, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUndelegateResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgUndelegateResponse'_unknownFields = y__})
  defMessage
    = MsgUndelegateResponse'_constructor
        {_MsgUndelegateResponse'completionTime = Prelude.Nothing,
         _MsgUndelegateResponse'amount = Prelude.Nothing,
         _MsgUndelegateResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUndelegateResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUndelegateResponse
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
                                       "completion_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"completionTime") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
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
          (do loop Data.ProtoLens.defMessage) "MsgUndelegateResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'completionTime") _x
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'amount") _x
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
instance Control.DeepSeq.NFData MsgUndelegateResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUndelegateResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUndelegateResponse'completionTime x__)
                (Control.DeepSeq.deepseq (_MsgUndelegateResponse'amount x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.authority' @:: Lens' MsgUpdateParams Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.params' @:: Lens' MsgUpdateParams Proto.Cosmos.Staking.V1beta1.Staking.Params@
         * 'Proto.Cosmos.Staking.V1beta1.Tx_Fields.maybe'params' @:: Lens' MsgUpdateParams (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Params)@ -}
data MsgUpdateParams
  = MsgUpdateParams'_constructor {_MsgUpdateParams'authority :: !Data.Text.Text,
                                  _MsgUpdateParams'params :: !(Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Params),
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
instance Data.ProtoLens.Field.HasField MsgUpdateParams "params" Proto.Cosmos.Staking.V1beta1.Staking.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgUpdateParams "maybe'params" (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateParams where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.MsgUpdateParams"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgUpdateParams\DC26\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2A\n\
      \\ACKparams\CAN\STX \SOH(\v2\RS.cosmos.staking.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH:7\130\231\176*\tauthority\138\231\176*$cosmos-sdk/x/staking/MsgUpdateParams"
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
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.Params)
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
    = Data.Text.pack "cosmos.staking.v1beta1.MsgUpdateParamsResponse"
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
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "cosmos.staking.v1beta1"
  type ServiceMethods Msg = '["beginRedelegate",
                              "cancelUnbondingDelegation",
                              "createValidator",
                              "delegate",
                              "editValidator",
                              "undelegate",
                              "updateParams"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2q\n\
      \\SICreateValidator\DC2*.cosmos.staking.v1beta1.MsgCreateValidator\SUB2.cosmos.staking.v1beta1.MsgCreateValidatorResponse\DC2k\n\
      \\rEditValidator\DC2(.cosmos.staking.v1beta1.MsgEditValidator\SUB0.cosmos.staking.v1beta1.MsgEditValidatorResponse\DC2\\\n\
      \\bDelegate\DC2#.cosmos.staking.v1beta1.MsgDelegate\SUB+.cosmos.staking.v1beta1.MsgDelegateResponse\DC2q\n\
      \\SIBeginRedelegate\DC2*.cosmos.staking.v1beta1.MsgBeginRedelegate\SUB2.cosmos.staking.v1beta1.MsgBeginRedelegateResponse\DC2b\n\
      \\n\
      \Undelegate\DC2%.cosmos.staking.v1beta1.MsgUndelegate\SUB-.cosmos.staking.v1beta1.MsgUndelegateResponse\DC2\143\SOH\n\
      \\EMCancelUnbondingDelegation\DC24.cosmos.staking.v1beta1.MsgCancelUnbondingDelegation\SUB<.cosmos.staking.v1beta1.MsgCancelUnbondingDelegationResponse\DC2h\n\
      \\fUpdateParams\DC2'.cosmos.staking.v1beta1.MsgUpdateParams\SUB/.cosmos.staking.v1beta1.MsgUpdateParamsResponse\SUB\ENQ\128\231\176*\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "createValidator" where
  type MethodName Msg "createValidator" = "CreateValidator"
  type MethodInput Msg "createValidator" = MsgCreateValidator
  type MethodOutput Msg "createValidator" = MsgCreateValidatorResponse
  type MethodStreamingType Msg "createValidator" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "editValidator" where
  type MethodName Msg "editValidator" = "EditValidator"
  type MethodInput Msg "editValidator" = MsgEditValidator
  type MethodOutput Msg "editValidator" = MsgEditValidatorResponse
  type MethodStreamingType Msg "editValidator" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "delegate" where
  type MethodName Msg "delegate" = "Delegate"
  type MethodInput Msg "delegate" = MsgDelegate
  type MethodOutput Msg "delegate" = MsgDelegateResponse
  type MethodStreamingType Msg "delegate" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "beginRedelegate" where
  type MethodName Msg "beginRedelegate" = "BeginRedelegate"
  type MethodInput Msg "beginRedelegate" = MsgBeginRedelegate
  type MethodOutput Msg "beginRedelegate" = MsgBeginRedelegateResponse
  type MethodStreamingType Msg "beginRedelegate" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "undelegate" where
  type MethodName Msg "undelegate" = "Undelegate"
  type MethodInput Msg "undelegate" = MsgUndelegate
  type MethodOutput Msg "undelegate" = MsgUndelegateResponse
  type MethodStreamingType Msg "undelegate" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "cancelUnbondingDelegation" where
  type MethodName Msg "cancelUnbondingDelegation" = "CancelUnbondingDelegation"
  type MethodInput Msg "cancelUnbondingDelegation" = MsgCancelUnbondingDelegation
  type MethodOutput Msg "cancelUnbondingDelegation" = MsgCancelUnbondingDelegationResponse
  type MethodStreamingType Msg "cancelUnbondingDelegation" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateParams" where
  type MethodName Msg "updateParams" = "UpdateParams"
  type MethodInput Msg "updateParams" = MsgUpdateParams
  type MethodOutput Msg "updateParams" = MsgUpdateParamsResponse
  type MethodStreamingType Msg "updateParams" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\UScosmos/staking/v1beta1/tx.proto\DC2\SYNcosmos.staking.v1beta1\SUB\EMgoogle/protobuf/any.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\DC4gogoproto/gogo.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\RScosmos/base/v1beta1/coin.proto\SUB$cosmos/staking/v1beta1/staking.proto\SUB\ETBcosmos/msg/v1/msg.proto\SUB\DC1amino/amino.proto\"\140\ENQ\n\
    \\DC2MsgCreateValidator\DC2P\n\
    \\vdescription\CAN\SOH \SOH(\v2#.cosmos.staking.v1beta1.DescriptionR\vdescriptionB\t\200\222\US\NUL\168\231\176*\SOH\DC2R\n\
    \\n\
    \commission\CAN\STX \SOH(\v2'.cosmos.staking.v1beta1.CommissionRatesR\n\
    \commissionB\t\200\222\US\NUL\168\231\176*\SOH\DC2q\n\
    \\DC3min_self_delegation\CAN\ETX \SOH(\tR\DC1minSelfDelegationBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\168\231\176*\SOH\DC2G\n\
    \\DC1delegator_address\CAN\EOT \SOH(\tR\DLEdelegatorAddressB\SUB\CAN\SOH\210\180-\DC4cosmos.AddressString\DC2N\n\
    \\DC1validator_address\CAN\ENQ \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2F\n\
    \\ACKpubkey\CAN\ACK \SOH(\v2\DC4.google.protobuf.AnyR\ACKpubkeyB\CAN\202\180-\DC4cosmos.crypto.PubKey\DC2:\n\
    \\ENQvalue\CAN\a \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ENQvalueB\t\200\222\US\NUL\168\231\176*\SOH:@\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1validator_address\138\231\176*\GScosmos-sdk/MsgCreateValidator\"\FS\n\
    \\SUBMsgCreateValidatorResponse\"\193\ETX\n\
    \\DLEMsgEditValidator\DC2P\n\
    \\vdescription\CAN\SOH \SOH(\v2#.cosmos.staking.v1beta1.DescriptionR\vdescriptionB\t\200\222\US\NUL\168\231\176*\SOH\DC2N\n\
    \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2a\n\
    \\SIcommission_rate\CAN\ETX \SOH(\tR\SOcommissionRateB8\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\DC2h\n\
    \\DC3min_self_delegation\CAN\EOT \SOH(\tR\DC1minSelfDelegationB8\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int:>\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1validator_address\138\231\176*\ESCcosmos-sdk/MsgEditValidator\"\SUB\n\
    \\CANMsgEditValidatorResponse\"\157\STX\n\
    \\vMsgDelegate\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
    \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2<\n\
    \\ACKamount\CAN\ETX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH:9\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1delegator_address\138\231\176*\SYNcosmos-sdk/MsgDelegate\"\NAK\n\
    \\DC3MsgDelegateResponse\"\137\ETX\n\
    \\DC2MsgBeginRedelegate\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2U\n\
    \\NAKvalidator_src_address\CAN\STX \SOH(\tR\DC3validatorSrcAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2U\n\
    \\NAKvalidator_dst_address\CAN\ETX \SOH(\tR\DC3validatorDstAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2<\n\
    \\ACKamount\CAN\EOT \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH:@\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1delegator_address\138\231\176*\GScosmos-sdk/MsgBeginRedelegate\"p\n\
    \\SUBMsgBeginRedelegateResponse\DC2R\n\
    \\SIcompletion_time\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\SOcompletionTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\"\161\STX\n\
    \\rMsgUndelegate\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
    \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2<\n\
    \\ACKamount\CAN\ETX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH:;\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1delegator_address\138\231\176*\CANcosmos-sdk/MsgUndelegate\"\169\SOH\n\
    \\NAKMsgUndelegateResponse\DC2R\n\
    \\SIcompletion_time\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\SOcompletionTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2<\n\
    \\ACKamount\CAN\STX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH\"\232\STX\n\
    \\FSMsgCancelUnbondingDelegation\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
    \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2<\n\
    \\ACKamount\CAN\ETX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH\DC2'\n\
    \\SIcreation_height\CAN\EOT \SOH(\ETXR\SOcreationHeight:J\136\160\US\NUL\232\160\US\NUL\130\231\176*\DC1delegator_address\138\231\176*'cosmos-sdk/MsgCancelUnbondingDelegation\"&\n\
    \$MsgCancelUnbondingDelegationResponse\"\197\SOH\n\
    \\SIMsgUpdateParams\DC26\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2A\n\
    \\ACKparams\CAN\STX \SOH(\v2\RS.cosmos.staking.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH:7\130\231\176*\tauthority\138\231\176*$cosmos-sdk/x/staking/MsgUpdateParams\"\EM\n\
    \\ETBMsgUpdateParamsResponse2\157\ACK\n\
    \\ETXMsg\DC2q\n\
    \\SICreateValidator\DC2*.cosmos.staking.v1beta1.MsgCreateValidator\SUB2.cosmos.staking.v1beta1.MsgCreateValidatorResponse\DC2k\n\
    \\rEditValidator\DC2(.cosmos.staking.v1beta1.MsgEditValidator\SUB0.cosmos.staking.v1beta1.MsgEditValidatorResponse\DC2\\\n\
    \\bDelegate\DC2#.cosmos.staking.v1beta1.MsgDelegate\SUB+.cosmos.staking.v1beta1.MsgDelegateResponse\DC2q\n\
    \\SIBeginRedelegate\DC2*.cosmos.staking.v1beta1.MsgBeginRedelegate\SUB2.cosmos.staking.v1beta1.MsgBeginRedelegateResponse\DC2b\n\
    \\n\
    \Undelegate\DC2%.cosmos.staking.v1beta1.MsgUndelegate\SUB-.cosmos.staking.v1beta1.MsgUndelegateResponse\DC2\143\SOH\n\
    \\EMCancelUnbondingDelegation\DC24.cosmos.staking.v1beta1.MsgCancelUnbondingDelegation\SUB<.cosmos.staking.v1beta1.MsgCancelUnbondingDelegationResponse\DC2h\n\
    \\fUpdateParams\DC2'.cosmos.staking.v1beta1.MsgUpdateParams\SUB/.cosmos.staking.v1beta1.MsgUpdateParamsResponse\SUB\ENQ\128\231\176*\SOHB.Z,github.com/cosmos/cosmos-sdk/x/staking/typesJ\179;\n\
    \\a\DC2\ENQ\NUL\NUL\205\SOH#\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\US\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL\RS\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL.\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\n\
    \\NUL!\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\v\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULC\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\r\NULC\n\
    \2\n\
    \\STX\ACK\NUL\DC2\EOT\DLE\NUL/\SOH\SUB& Msg defines the staking Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\DLE\b\v\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\DC1\STX(\n\
    \\SO\n\
    \\a\ACK\NUL\ETX\240\140\166\ENQ\DC2\ETX\DC1\STX(\n\
    \M\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DC4\STXO\SUB@ CreateValidator defines a method for creating a new validator.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC4\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC4\SYN(\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC43M\n\
    \P\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\ETB\STXI\SUBC EditValidator defines a method for editing an existing validator.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\ETB\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\ETB\DC4$\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\ETB/G\n\
    \o\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX\ESC\STX:\SUBb Delegate defines a method for performing a delegation of coins\n\
    \ from a delegator to a validator.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\ESC\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\ESC\SI\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\ESC%8\n\
    \\154\SOH\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\ETX\US\STXO\SUB\140\SOH BeginRedelegate defines a method for performing a redelegation\n\
    \ of coins from a delegator and source validator to a destination validator.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\US\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\US\SYN(\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\US3M\n\
    \k\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\ETX#\STX@\SUB^ Undelegate defines a method for performing an undelegation from a\n\
    \ delegate and a validator.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX#\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX#\DC1\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX#)>\n\
    \\175\SOH\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\ETX)\STXm\SUB\161\SOH CancelUnbondingDelegation defines a method for performing canceling the unbonding delegation\n\
    \ and delegate back to previous validator.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX)\ACK\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX) <\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX)Gk\n\
    \w\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\ETX.\STXF\SUBj UpdateParams defines an operation for updating the x/staking module\n\
    \ parameters.\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX.\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX.\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX.-D\n\
    \T\n\
    \\STX\EOT\NUL\DC2\EOT2\NULH\SOH\SUBH MsgCreateValidator defines a SDK message for creating a new validator.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX2\b\SUB\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX3\STX6\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX3\STX6\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX4\STXB\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX4\STXB\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX6\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETX6\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX7\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\129\244\ETX\DC2\ETX7\STX-\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX9\STXh\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX9\STX\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX9\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX9()\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX9*g\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX9+G\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\245\140\166\ENQ\DC2\ETX9If\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX:\STXh\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX:\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX:\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX:()\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX:*g\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX:+G\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX:If\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT;\STX@\EOT\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX;\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX;\DC2%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX;()\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\EOT;*@\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\202\214\ENQ\DC2\ETX<\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\235\251\ETX\DC2\ETX=\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX>\EOT\"\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\245\140\166\ENQ\DC2\ETX?\EOT!\n\
    \\231\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXD\STXu\SUB\217\SOH Deprecated: Use of Delegator Address in MsgCreateValidator is deprecated.\n\
    \ The validator address bytes and delegator address bytes refer to the same account while creating validator (defer\n\
    \ only in bech32 notation).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETXD\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXD\ESC,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXD/0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETXD1t\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\202\214\ENQ\DC2\ETXD2`\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\ETX\b\ETX\DC2\ETXDbs\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXE\STXk\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETXE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXE\ESC,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXE/0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETXE1j\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\202\214\ENQ\DC2\ETXE2i\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXF\STXm\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXF\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXF\ESC!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXF/0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\ETXF1l\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\201\214\ENQ\DC2\ETXF2k\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXG\STXo\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETXG\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXG\ESC \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXG/0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\b\DC2\ETXG1n\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ACK\b\233\251\ETX\DC2\ETXG2N\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\ACK\b\245\140\166\ENQ\DC2\ETXGPm\n\
    \V\n\
    \\STX\EOT\SOH\DC2\ETXK\NUL%\SUBK MsgCreateValidatorResponse defines the Msg/CreateValidator response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXK\b\"\n\
    \W\n\
    \\STX\EOT\STX\DC2\EOTN\NUL`\SOH\SUBK MsgEditValidator defines a SDK message for editing an existing validator.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXN\b\CAN\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXO\STX6\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETXO\STX6\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXP\STX@\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETXP\STX@\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXR\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\141\244\ETX\DC2\ETXR\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXS\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\129\244\ETX\DC2\ETXS\STX-\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXU\STXb\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXU\STX\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXU\SO\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXU\"#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETXU$a\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\233\251\ETX\DC2\ETXU%A\n\
    \\DLE\n\
    \\t\EOT\STX\STX\NUL\b\245\140\166\ENQ\DC2\ETXUC`\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXV\STX^\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXV\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXV\SO\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXV\"#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETXV$]\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\202\214\ENQ\DC2\ETXV%\\\n\
    \\239\SOH\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\\\STX]p\SUB\224\SOH We pass a reference to the new commission rate and min self delegation as\n\
    \ it's not mandatory to update. If not updated, the deserialized rate will be\n\
    \ zero with no way to distinguish if an update was intended.\n\
    \ REF: #2373\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\\\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\\\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\\\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\ETX]\ACKo\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\202\214\ENQ\DC2\ETX]\a+\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\235\251\ETX\DC2\ETX]-n\n\
    \\f\n\
    \\EOT\EOT\STX\STX\ETX\DC2\EOT^\STX_p\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX^\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX^\t\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX^\US \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\b\DC2\ETX_\ACKo\n\
    \\SI\n\
    \\b\EOT\STX\STX\ETX\b\202\214\ENQ\DC2\ETX_\a+\n\
    \\SI\n\
    \\b\EOT\STX\STX\ETX\b\235\251\ETX\DC2\ETX_-n\n\
    \R\n\
    \\STX\EOT\ETX\DC2\ETXc\NUL#\SUBG MsgEditValidatorResponse defines the Msg/EditValidator response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXc\b \n\
    \v\n\
    \\STX\EOT\EOT\DC2\EOTg\NULq\SOH\SUBj MsgDelegate defines a SDK message for performing a delegation of coins\n\
    \ from a delegator to a validator.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXg\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXh\STX6\n\
    \\SI\n\
    \\b\EOT\EOT\a\240\140\166\ENQ\NUL\DC2\ETXh\STX6\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXi\STX;\n\
    \\SO\n\
    \\a\EOT\EOT\a\241\140\166\ENQ\DC2\ETXi\STX;\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXk\STX-\n\
    \\r\n\
    \\ACK\EOT\EOT\a\141\244\ETX\DC2\ETXk\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXl\STX-\n\
    \\r\n\
    \\ACK\EOT\EOT\a\129\244\ETX\DC2\ETXl\STX-\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXn\STXb\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXn\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXn\ESC,\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXn/0\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXn1a\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETXn2`\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXo\STXk\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXo\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXo\ESC,\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXo/0\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ETXo1j\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\202\214\ENQ\DC2\ETXo2i\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXp\STXo\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\ETXp\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXp\ESC!\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXp/0\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\b\DC2\ETXp1n\n\
    \\SI\n\
    \\b\EOT\EOT\STX\STX\b\233\251\ETX\DC2\ETXp2N\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\STX\b\245\140\166\ENQ\DC2\ETXpPm\n\
    \H\n\
    \\STX\EOT\ENQ\DC2\ETXt\NUL\RS\SUB= MsgDelegateResponse defines the Msg/Delegate response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXt\b\ESC\n\
    \\162\SOH\n\
    \\STX\EOT\ACK\DC2\ENQx\NUL\131\SOH\SOH\SUB\148\SOH MsgBeginRedelegate defines a SDK message for performing a redelegation\n\
    \ of coins from a delegator and source validator to a destination validator.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXx\b\SUB\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETXy\STX6\n\
    \\SI\n\
    \\b\EOT\ACK\a\240\140\166\ENQ\NUL\DC2\ETXy\STX6\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETXz\STXB\n\
    \\SO\n\
    \\a\EOT\ACK\a\241\140\166\ENQ\DC2\ETXz\STXB\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETX|\STX-\n\
    \\r\n\
    \\ACK\EOT\ACK\a\141\244\ETX\DC2\ETX|\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETX}\STX-\n\
    \\r\n\
    \\ACK\EOT\ACK\a\129\244\ETX\DC2\ETX}\STX-\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX\DEL\STXf\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX\DEL\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX\DEL\ESC,\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX\DEL34\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\ETX\DEL5e\n\
    \\SI\n\
    \\b\EOT\ACK\STX\NUL\b\202\214\ENQ\DC2\ETX\DEL6d\n\
    \\f\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\128\SOH\STXo\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\128\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\128\SOH\ESC0\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\128\SOH34\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\b\DC2\EOT\128\SOH5n\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\SOH\b\202\214\ENQ\DC2\EOT\128\SOH6m\n\
    \\f\n\
    \\EOT\EOT\ACK\STX\STX\DC2\EOT\129\SOH\STXo\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\EOT\129\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\EOT\129\SOH\ESC0\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\EOT\129\SOH34\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\b\DC2\EOT\129\SOH5n\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\STX\b\202\214\ENQ\DC2\EOT\129\SOH6m\n\
    \\f\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\EOT\130\SOH\STXs\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ACK\DC2\EOT\130\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\EOT\130\SOH\ESC!\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\EOT\130\SOH34\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\b\DC2\EOT\130\SOH5r\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\ETX\b\233\251\ETX\DC2\EOT\130\SOH6R\n\
    \\DC1\n\
    \\t\EOT\ACK\STX\ETX\b\245\140\166\ENQ\DC2\EOT\130\SOHTq\n\
    \Y\n\
    \\STX\EOT\a\DC2\ACK\134\SOH\NUL\137\SOH\SOH\SUBK MsgBeginRedelegateResponse defines the Msg/BeginRedelegate response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\134\SOH\b\"\n\
    \\SO\n\
    \\EOT\EOT\a\STX\NUL\DC2\ACK\135\SOH\STX\136\SOH`\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\135\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\135\SOH\FS+\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\135\SOH./\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\EOT\136\SOH\ACK_\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\233\251\ETX\DC2\EOT\136\SOH\a#\n\
    \\DC1\n\
    \\t\EOT\a\STX\NUL\b\245\140\166\ENQ\DC2\EOT\136\SOH%B\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\242\251\ETX\DC2\EOT\136\SOHD^\n\
    \t\n\
    \\STX\EOT\b\DC2\ACK\141\SOH\NUL\151\SOH\SOH\SUBf MsgUndelegate defines a SDK message for performing an undelegation from a\n\
    \ delegate and a validator.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\141\SOH\b\NAK\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\142\SOH\STX6\n\
    \\DLE\n\
    \\b\EOT\b\a\240\140\166\ENQ\NUL\DC2\EOT\142\SOH\STX6\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\143\SOH\STX=\n\
    \\SI\n\
    \\a\EOT\b\a\241\140\166\ENQ\DC2\EOT\143\SOH\STX=\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\145\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\b\a\141\244\ETX\DC2\EOT\145\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\146\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\b\a\129\244\ETX\DC2\EOT\146\SOH\STX-\n\
    \\f\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\148\SOH\STXb\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\148\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\148\SOH\ESC,\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\148\SOH/0\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\148\SOH1a\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\202\214\ENQ\DC2\EOT\148\SOH2`\n\
    \\f\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\149\SOH\STXk\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\149\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\149\SOH\ESC,\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\149\SOH/0\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\b\DC2\EOT\149\SOH1j\n\
    \\DLE\n\
    \\b\EOT\b\STX\SOH\b\202\214\ENQ\DC2\EOT\149\SOH2i\n\
    \\f\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\150\SOH\STXo\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ACK\DC2\EOT\150\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\150\SOH\ESC!\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\150\SOH/0\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\b\DC2\EOT\150\SOH1n\n\
    \\DLE\n\
    \\b\EOT\b\STX\STX\b\233\251\ETX\DC2\EOT\150\SOH2N\n\
    \\DC1\n\
    \\t\EOT\b\STX\STX\b\245\140\166\ENQ\DC2\EOT\150\SOHPm\n\
    \O\n\
    \\STX\EOT\t\DC2\ACK\154\SOH\NUL\162\SOH\SOH\SUBA MsgUndelegateResponse defines the Msg/Undelegate response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\154\SOH\b\GS\n\
    \\SO\n\
    \\EOT\EOT\t\STX\NUL\DC2\ACK\155\SOH\STX\156\SOH`\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\155\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\155\SOH\FS+\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\155\SOH./\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\b\DC2\EOT\156\SOH\ACK_\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\233\251\ETX\DC2\EOT\156\SOH\a#\n\
    \\DC1\n\
    \\t\EOT\t\STX\NUL\b\245\140\166\ENQ\DC2\EOT\156\SOH%B\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\242\251\ETX\DC2\EOT\156\SOHD^\n\
    \W\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\161\SOH\STXo\SUBI amount returns the amount of undelegated coins\n\
    \\n\
    \ Since: cosmos-sdk 0.50\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\EOT\161\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\161\SOH\ESC!\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\161\SOH/0\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\b\DC2\EOT\161\SOH1n\n\
    \\DLE\n\
    \\b\EOT\t\STX\SOH\b\233\251\ETX\DC2\EOT\161\SOH2N\n\
    \\DC1\n\
    \\t\EOT\t\STX\SOH\b\245\140\166\ENQ\DC2\EOT\161\SOHPm\n\
    \\153\SOH\n\
    \\STX\EOT\n\
    \\DC2\ACK\167\SOH\NUL\179\SOH\SOH\SUB\138\SOH MsgCancelUnbondingDelegation defines the SDK message for performing a cancel unbonding delegation for delegator\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\167\SOH\b$\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\168\SOH\STX;\n\
    \\DLE\n\
    \\b\EOT\n\
    \\a\240\140\166\ENQ\NUL\DC2\EOT\168\SOH\STX;\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\169\SOH\STXQ\n\
    \\SI\n\
    \\a\EOT\n\
    \\a\241\140\166\ENQ\DC2\EOT\169\SOH\STXQ\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\170\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\n\
    \\a\141\244\ETX\DC2\EOT\170\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\171\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\n\
    \\a\129\244\ETX\DC2\EOT\171\SOH\STX-\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\173\SOH\STXP\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\173\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\173\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\173\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\b\DC2\EOT\173\SOH\USO\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\NUL\b\202\214\ENQ\DC2\EOT\173\SOH N\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\174\SOH\STXY\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\174\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\174\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\174\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\b\DC2\EOT\174\SOH\USX\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\SOH\b\202\214\ENQ\DC2\EOT\174\SOH W\n\
    \Y\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\EOT\176\SOH\STXd\SUBK amount is always less than or equal to unbonding delegation entry balance\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ACK\DC2\EOT\176\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\176\SOH\ESC!\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\176\SOH$%\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\b\DC2\EOT\176\SOH&c\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\STX\b\233\251\ETX\DC2\EOT\176\SOH'C\n\
    \\DC1\n\
    \\t\EOT\n\
    \\STX\STX\b\245\140\166\ENQ\DC2\EOT\176\SOHEb\n\
    \M\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\EOT\178\SOH\STX\FS\SUB? creation_height is the height which the unbonding took place.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ENQ\DC2\EOT\178\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\EOT\178\SOH\b\ETB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\EOT\178\SOH\SUB\ESC\n\
    \K\n\
    \\STX\EOT\v\DC2\EOT\184\SOH\NUL/\SUB? MsgCancelUnbondingDelegationResponse\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\184\SOH\b,\n\
    \^\n\
    \\STX\EOT\f\DC2\ACK\189\SOH\NUL\199\SOH\SOH\SUBP MsgUpdateParams is the Msg/UpdateParams request type.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\189\SOH\b\ETB\n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\190\SOH\STX.\n\
    \\DLE\n\
    \\b\EOT\f\a\240\140\166\ENQ\NUL\DC2\EOT\190\SOH\STX.\n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\191\SOH\STXI\n\
    \\SI\n\
    \\a\EOT\f\a\241\140\166\ENQ\DC2\EOT\191\SOH\STXI\n\
    \i\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\194\SOH\STXH\SUB[ authority is the address that controls the module (defaults to x/gov unless overwritten).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\194\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\194\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\194\SOH\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\b\DC2\EOT\194\SOH\ETBG\n\
    \\DLE\n\
    \\b\EOT\f\STX\NUL\b\202\214\ENQ\DC2\EOT\194\SOH\CANF\n\
    \k\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\198\SOH\STXR\SUB] params defines the x/staking parameters to update.\n\
    \\n\
    \ NOTE: All parameters must be supplied.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ACK\DC2\EOT\198\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\198\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\198\SOH\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\b\DC2\EOT\198\SOH\DC4Q\n\
    \\DLE\n\
    \\b\EOT\f\STX\SOH\b\233\251\ETX\DC2\EOT\198\SOH\NAK1\n\
    \\DC1\n\
    \\t\EOT\f\STX\SOH\b\245\140\166\ENQ\DC2\EOT\198\SOH3P\n\
    \\135\SOH\n\
    \\STX\EOT\r\DC2\EOT\205\SOH\NUL\"\SUB{ MsgUpdateParamsResponse defines the response structure for executing a\n\
    \ MsgUpdateParams message.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\205\SOH\b\USb\ACKproto3"