{- This file was auto-generated from cosmos/distribution/v1beta1/genesis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Distribution.V1beta1.Genesis (
        DelegatorStartingInfoRecord(), DelegatorWithdrawInfo(),
        GenesisState(), ValidatorAccumulatedCommissionRecord(),
        ValidatorCurrentRewardsRecord(),
        ValidatorHistoricalRewardsRecord(),
        ValidatorOutstandingRewardsRecord(), ValidatorSlashEventRecord()
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.delegatorAddress' @:: Lens' DelegatorStartingInfoRecord Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.validatorAddress' @:: Lens' DelegatorStartingInfoRecord Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.startingInfo' @:: Lens' DelegatorStartingInfoRecord Proto.Cosmos.Distribution.V1beta1.Distribution.DelegatorStartingInfo@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.maybe'startingInfo' @:: Lens' DelegatorStartingInfoRecord (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.DelegatorStartingInfo)@ -}
data DelegatorStartingInfoRecord
  = DelegatorStartingInfoRecord'_constructor {_DelegatorStartingInfoRecord'delegatorAddress :: !Data.Text.Text,
                                              _DelegatorStartingInfoRecord'validatorAddress :: !Data.Text.Text,
                                              _DelegatorStartingInfoRecord'startingInfo :: !(Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.DelegatorStartingInfo),
                                              _DelegatorStartingInfoRecord'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DelegatorStartingInfoRecord where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DelegatorStartingInfoRecord "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegatorStartingInfoRecord'delegatorAddress
           (\ x__ y__
              -> x__ {_DelegatorStartingInfoRecord'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DelegatorStartingInfoRecord "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegatorStartingInfoRecord'validatorAddress
           (\ x__ y__
              -> x__ {_DelegatorStartingInfoRecord'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DelegatorStartingInfoRecord "startingInfo" Proto.Cosmos.Distribution.V1beta1.Distribution.DelegatorStartingInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegatorStartingInfoRecord'startingInfo
           (\ x__ y__
              -> x__ {_DelegatorStartingInfoRecord'startingInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DelegatorStartingInfoRecord "maybe'startingInfo" (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.DelegatorStartingInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegatorStartingInfoRecord'startingInfo
           (\ x__ y__
              -> x__ {_DelegatorStartingInfoRecord'startingInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Message DelegatorStartingInfoRecord where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.DelegatorStartingInfoRecord"
  packedMessageDescriptor _
    = "\n\
      \\ESCDelegatorStartingInfoRecord\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
      \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2b\n\
      \\rstarting_info\CAN\ETX \SOH(\v22.cosmos.distribution.v1beta1.DelegatorStartingInfoR\fstartingInfoB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL"
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
              Data.ProtoLens.FieldDescriptor DelegatorStartingInfoRecord
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor DelegatorStartingInfoRecord
        startingInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "starting_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Distribution.V1beta1.Distribution.DelegatorStartingInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startingInfo")) ::
              Data.ProtoLens.FieldDescriptor DelegatorStartingInfoRecord
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, startingInfo__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DelegatorStartingInfoRecord'_unknownFields
        (\ x__ y__
           -> x__ {_DelegatorStartingInfoRecord'_unknownFields = y__})
  defMessage
    = DelegatorStartingInfoRecord'_constructor
        {_DelegatorStartingInfoRecord'delegatorAddress = Data.ProtoLens.fieldDefault,
         _DelegatorStartingInfoRecord'validatorAddress = Data.ProtoLens.fieldDefault,
         _DelegatorStartingInfoRecord'startingInfo = Prelude.Nothing,
         _DelegatorStartingInfoRecord'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DelegatorStartingInfoRecord
          -> Data.ProtoLens.Encoding.Bytes.Parser DelegatorStartingInfoRecord
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
                                       "starting_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startingInfo") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DelegatorStartingInfoRecord"
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
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'startingInfo") _x
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
instance Control.DeepSeq.NFData DelegatorStartingInfoRecord where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DelegatorStartingInfoRecord'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DelegatorStartingInfoRecord'delegatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_DelegatorStartingInfoRecord'validatorAddress x__)
                   (Control.DeepSeq.deepseq
                      (_DelegatorStartingInfoRecord'startingInfo x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.delegatorAddress' @:: Lens' DelegatorWithdrawInfo Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.withdrawAddress' @:: Lens' DelegatorWithdrawInfo Data.Text.Text@ -}
data DelegatorWithdrawInfo
  = DelegatorWithdrawInfo'_constructor {_DelegatorWithdrawInfo'delegatorAddress :: !Data.Text.Text,
                                        _DelegatorWithdrawInfo'withdrawAddress :: !Data.Text.Text,
                                        _DelegatorWithdrawInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DelegatorWithdrawInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DelegatorWithdrawInfo "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegatorWithdrawInfo'delegatorAddress
           (\ x__ y__ -> x__ {_DelegatorWithdrawInfo'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DelegatorWithdrawInfo "withdrawAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegatorWithdrawInfo'withdrawAddress
           (\ x__ y__ -> x__ {_DelegatorWithdrawInfo'withdrawAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message DelegatorWithdrawInfo where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.DelegatorWithdrawInfo"
  packedMessageDescriptor _
    = "\n\
      \\NAKDelegatorWithdrawInfo\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
      \\DLEwithdraw_address\CAN\STX \SOH(\tR\SIwithdrawAddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL"
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
              Data.ProtoLens.FieldDescriptor DelegatorWithdrawInfo
        withdrawAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "withdraw_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"withdrawAddress")) ::
              Data.ProtoLens.FieldDescriptor DelegatorWithdrawInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, withdrawAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DelegatorWithdrawInfo'_unknownFields
        (\ x__ y__ -> x__ {_DelegatorWithdrawInfo'_unknownFields = y__})
  defMessage
    = DelegatorWithdrawInfo'_constructor
        {_DelegatorWithdrawInfo'delegatorAddress = Data.ProtoLens.fieldDefault,
         _DelegatorWithdrawInfo'withdrawAddress = Data.ProtoLens.fieldDefault,
         _DelegatorWithdrawInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DelegatorWithdrawInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser DelegatorWithdrawInfo
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
          (do loop Data.ProtoLens.defMessage) "DelegatorWithdrawInfo"
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
instance Control.DeepSeq.NFData DelegatorWithdrawInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DelegatorWithdrawInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DelegatorWithdrawInfo'delegatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_DelegatorWithdrawInfo'withdrawAddress x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.params' @:: Lens' GenesisState Proto.Cosmos.Distribution.V1beta1.Distribution.Params@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.maybe'params' @:: Lens' GenesisState (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.Params)@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.feePool' @:: Lens' GenesisState Proto.Cosmos.Distribution.V1beta1.Distribution.FeePool@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.maybe'feePool' @:: Lens' GenesisState (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.FeePool)@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.delegatorWithdrawInfos' @:: Lens' GenesisState [DelegatorWithdrawInfo]@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.vec'delegatorWithdrawInfos' @:: Lens' GenesisState (Data.Vector.Vector DelegatorWithdrawInfo)@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.previousProposer' @:: Lens' GenesisState Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.outstandingRewards' @:: Lens' GenesisState [ValidatorOutstandingRewardsRecord]@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.vec'outstandingRewards' @:: Lens' GenesisState (Data.Vector.Vector ValidatorOutstandingRewardsRecord)@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.validatorAccumulatedCommissions' @:: Lens' GenesisState [ValidatorAccumulatedCommissionRecord]@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.vec'validatorAccumulatedCommissions' @:: Lens' GenesisState (Data.Vector.Vector ValidatorAccumulatedCommissionRecord)@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.validatorHistoricalRewards' @:: Lens' GenesisState [ValidatorHistoricalRewardsRecord]@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.vec'validatorHistoricalRewards' @:: Lens' GenesisState (Data.Vector.Vector ValidatorHistoricalRewardsRecord)@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.validatorCurrentRewards' @:: Lens' GenesisState [ValidatorCurrentRewardsRecord]@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.vec'validatorCurrentRewards' @:: Lens' GenesisState (Data.Vector.Vector ValidatorCurrentRewardsRecord)@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.delegatorStartingInfos' @:: Lens' GenesisState [DelegatorStartingInfoRecord]@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.vec'delegatorStartingInfos' @:: Lens' GenesisState (Data.Vector.Vector DelegatorStartingInfoRecord)@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.validatorSlashEvents' @:: Lens' GenesisState [ValidatorSlashEventRecord]@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.vec'validatorSlashEvents' @:: Lens' GenesisState (Data.Vector.Vector ValidatorSlashEventRecord)@ -}
data GenesisState
  = GenesisState'_constructor {_GenesisState'params :: !(Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.Params),
                               _GenesisState'feePool :: !(Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.FeePool),
                               _GenesisState'delegatorWithdrawInfos :: !(Data.Vector.Vector DelegatorWithdrawInfo),
                               _GenesisState'previousProposer :: !Data.Text.Text,
                               _GenesisState'outstandingRewards :: !(Data.Vector.Vector ValidatorOutstandingRewardsRecord),
                               _GenesisState'validatorAccumulatedCommissions :: !(Data.Vector.Vector ValidatorAccumulatedCommissionRecord),
                               _GenesisState'validatorHistoricalRewards :: !(Data.Vector.Vector ValidatorHistoricalRewardsRecord),
                               _GenesisState'validatorCurrentRewards :: !(Data.Vector.Vector ValidatorCurrentRewardsRecord),
                               _GenesisState'delegatorStartingInfos :: !(Data.Vector.Vector DelegatorStartingInfoRecord),
                               _GenesisState'validatorSlashEvents :: !(Data.Vector.Vector ValidatorSlashEventRecord),
                               _GenesisState'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenesisState where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenesisState "params" Proto.Cosmos.Distribution.V1beta1.Distribution.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'params
           (\ x__ y__ -> x__ {_GenesisState'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenesisState "maybe'params" (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'params
           (\ x__ y__ -> x__ {_GenesisState'params = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "feePool" Proto.Cosmos.Distribution.V1beta1.Distribution.FeePool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'feePool
           (\ x__ y__ -> x__ {_GenesisState'feePool = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenesisState "maybe'feePool" (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.FeePool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'feePool
           (\ x__ y__ -> x__ {_GenesisState'feePool = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "delegatorWithdrawInfos" [DelegatorWithdrawInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'delegatorWithdrawInfos
           (\ x__ y__ -> x__ {_GenesisState'delegatorWithdrawInfos = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'delegatorWithdrawInfos" (Data.Vector.Vector DelegatorWithdrawInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'delegatorWithdrawInfos
           (\ x__ y__ -> x__ {_GenesisState'delegatorWithdrawInfos = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "previousProposer" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'previousProposer
           (\ x__ y__ -> x__ {_GenesisState'previousProposer = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "outstandingRewards" [ValidatorOutstandingRewardsRecord] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'outstandingRewards
           (\ x__ y__ -> x__ {_GenesisState'outstandingRewards = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'outstandingRewards" (Data.Vector.Vector ValidatorOutstandingRewardsRecord) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'outstandingRewards
           (\ x__ y__ -> x__ {_GenesisState'outstandingRewards = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "validatorAccumulatedCommissions" [ValidatorAccumulatedCommissionRecord] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'validatorAccumulatedCommissions
           (\ x__ y__
              -> x__ {_GenesisState'validatorAccumulatedCommissions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'validatorAccumulatedCommissions" (Data.Vector.Vector ValidatorAccumulatedCommissionRecord) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'validatorAccumulatedCommissions
           (\ x__ y__
              -> x__ {_GenesisState'validatorAccumulatedCommissions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "validatorHistoricalRewards" [ValidatorHistoricalRewardsRecord] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'validatorHistoricalRewards
           (\ x__ y__
              -> x__ {_GenesisState'validatorHistoricalRewards = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'validatorHistoricalRewards" (Data.Vector.Vector ValidatorHistoricalRewardsRecord) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'validatorHistoricalRewards
           (\ x__ y__
              -> x__ {_GenesisState'validatorHistoricalRewards = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "validatorCurrentRewards" [ValidatorCurrentRewardsRecord] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'validatorCurrentRewards
           (\ x__ y__ -> x__ {_GenesisState'validatorCurrentRewards = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'validatorCurrentRewards" (Data.Vector.Vector ValidatorCurrentRewardsRecord) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'validatorCurrentRewards
           (\ x__ y__ -> x__ {_GenesisState'validatorCurrentRewards = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "delegatorStartingInfos" [DelegatorStartingInfoRecord] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'delegatorStartingInfos
           (\ x__ y__ -> x__ {_GenesisState'delegatorStartingInfos = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'delegatorStartingInfos" (Data.Vector.Vector DelegatorStartingInfoRecord) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'delegatorStartingInfos
           (\ x__ y__ -> x__ {_GenesisState'delegatorStartingInfos = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "validatorSlashEvents" [ValidatorSlashEventRecord] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'validatorSlashEvents
           (\ x__ y__ -> x__ {_GenesisState'validatorSlashEvents = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'validatorSlashEvents" (Data.Vector.Vector ValidatorSlashEventRecord) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'validatorSlashEvents
           (\ x__ y__ -> x__ {_GenesisState'validatorSlashEvents = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenesisState where
  messageName _
    = Data.Text.pack "cosmos.distribution.v1beta1.GenesisState"
  packedMessageDescriptor _
    = "\n\
      \\fGenesisState\DC2F\n\
      \\ACKparams\CAN\SOH \SOH(\v2#.cosmos.distribution.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2J\n\
      \\bfee_pool\CAN\STX \SOH(\v2$.cosmos.distribution.v1beta1.FeePoolR\afeePoolB\t\200\222\US\NUL\168\231\176*\SOH\DC2w\n\
      \\CANdelegator_withdraw_infos\CAN\ETX \ETX(\v22.cosmos.distribution.v1beta1.DelegatorWithdrawInfoR\SYNdelegatorWithdrawInfosB\t\200\222\US\NUL\168\231\176*\SOH\DC2E\n\
      \\DC1previous_proposer\CAN\EOT \SOH(\tR\DLEpreviousProposerB\CAN\210\180-\DC4cosmos.AddressString\DC2z\n\
      \\DC3outstanding_rewards\CAN\ENQ \ETX(\v2>.cosmos.distribution.v1beta1.ValidatorOutstandingRewardsRecordR\DC2outstandingRewardsB\t\200\222\US\NUL\168\231\176*\SOH\DC2\152\SOH\n\
      \!validator_accumulated_commissions\CAN\ACK \ETX(\v2A.cosmos.distribution.v1beta1.ValidatorAccumulatedCommissionRecordR\USvalidatorAccumulatedCommissionsB\t\200\222\US\NUL\168\231\176*\SOH\DC2\138\SOH\n\
      \\FSvalidator_historical_rewards\CAN\a \ETX(\v2=.cosmos.distribution.v1beta1.ValidatorHistoricalRewardsRecordR\SUBvalidatorHistoricalRewardsB\t\200\222\US\NUL\168\231\176*\SOH\DC2\129\SOH\n\
      \\EMvalidator_current_rewards\CAN\b \ETX(\v2:.cosmos.distribution.v1beta1.ValidatorCurrentRewardsRecordR\ETBvalidatorCurrentRewardsB\t\200\222\US\NUL\168\231\176*\SOH\DC2}\n\
      \\CANdelegator_starting_infos\CAN\t \ETX(\v28.cosmos.distribution.v1beta1.DelegatorStartingInfoRecordR\SYNdelegatorStartingInfosB\t\200\222\US\NUL\168\231\176*\SOH\DC2w\n\
      \\SYNvalidator_slash_events\CAN\n\
      \ \ETX(\v26.cosmos.distribution.v1beta1.ValidatorSlashEventRecordR\DC4validatorSlashEventsB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Distribution.V1beta1.Distribution.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        feePool__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fee_pool"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Distribution.V1beta1.Distribution.FeePool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'feePool")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        delegatorWithdrawInfos__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_withdraw_infos"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DelegatorWithdrawInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"delegatorWithdrawInfos")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        previousProposer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "previous_proposer"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"previousProposer")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        outstandingRewards__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "outstanding_rewards"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ValidatorOutstandingRewardsRecord)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"outstandingRewards")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        validatorAccumulatedCommissions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_accumulated_commissions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ValidatorAccumulatedCommissionRecord)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"validatorAccumulatedCommissions")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        validatorHistoricalRewards__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_historical_rewards"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ValidatorHistoricalRewardsRecord)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"validatorHistoricalRewards")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        validatorCurrentRewards__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_current_rewards"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ValidatorCurrentRewardsRecord)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"validatorCurrentRewards")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        delegatorStartingInfos__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_starting_infos"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DelegatorStartingInfoRecord)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"delegatorStartingInfos")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        validatorSlashEvents__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_slash_events"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ValidatorSlashEventRecord)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"validatorSlashEvents")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, params__field_descriptor),
           (Data.ProtoLens.Tag 2, feePool__field_descriptor),
           (Data.ProtoLens.Tag 3, delegatorWithdrawInfos__field_descriptor),
           (Data.ProtoLens.Tag 4, previousProposer__field_descriptor),
           (Data.ProtoLens.Tag 5, outstandingRewards__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            validatorAccumulatedCommissions__field_descriptor),
           (Data.ProtoLens.Tag 7, 
            validatorHistoricalRewards__field_descriptor),
           (Data.ProtoLens.Tag 8, validatorCurrentRewards__field_descriptor),
           (Data.ProtoLens.Tag 9, delegatorStartingInfos__field_descriptor),
           (Data.ProtoLens.Tag 10, validatorSlashEvents__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenesisState'_unknownFields
        (\ x__ y__ -> x__ {_GenesisState'_unknownFields = y__})
  defMessage
    = GenesisState'_constructor
        {_GenesisState'params = Prelude.Nothing,
         _GenesisState'feePool = Prelude.Nothing,
         _GenesisState'delegatorWithdrawInfos = Data.Vector.Generic.empty,
         _GenesisState'previousProposer = Data.ProtoLens.fieldDefault,
         _GenesisState'outstandingRewards = Data.Vector.Generic.empty,
         _GenesisState'validatorAccumulatedCommissions = Data.Vector.Generic.empty,
         _GenesisState'validatorHistoricalRewards = Data.Vector.Generic.empty,
         _GenesisState'validatorCurrentRewards = Data.Vector.Generic.empty,
         _GenesisState'delegatorStartingInfos = Data.Vector.Generic.empty,
         _GenesisState'validatorSlashEvents = Data.Vector.Generic.empty,
         _GenesisState'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenesisState
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DelegatorStartingInfoRecord
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DelegatorWithdrawInfo
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ValidatorOutstandingRewardsRecord
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ValidatorAccumulatedCommissionRecord
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ValidatorCurrentRewardsRecord
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ValidatorHistoricalRewardsRecord
                            -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ValidatorSlashEventRecord
                               -> Data.ProtoLens.Encoding.Bytes.Parser GenesisState
        loop
          x
          mutable'delegatorStartingInfos
          mutable'delegatorWithdrawInfos
          mutable'outstandingRewards
          mutable'validatorAccumulatedCommissions
          mutable'validatorCurrentRewards
          mutable'validatorHistoricalRewards
          mutable'validatorSlashEvents
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'delegatorStartingInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'delegatorStartingInfos)
                      frozen'delegatorWithdrawInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'delegatorWithdrawInfos)
                      frozen'outstandingRewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'outstandingRewards)
                      frozen'validatorAccumulatedCommissions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                     mutable'validatorAccumulatedCommissions)
                      frozen'validatorCurrentRewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                             mutable'validatorCurrentRewards)
                      frozen'validatorHistoricalRewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                mutable'validatorHistoricalRewards)
                      frozen'validatorSlashEvents <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'validatorSlashEvents)
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
                              (Data.ProtoLens.Field.field @"vec'delegatorStartingInfos")
                              frozen'delegatorStartingInfos
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'delegatorWithdrawInfos")
                                 frozen'delegatorWithdrawInfos
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'outstandingRewards")
                                    frozen'outstandingRewards
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field
                                          @"vec'validatorAccumulatedCommissions")
                                       frozen'validatorAccumulatedCommissions
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field
                                             @"vec'validatorCurrentRewards")
                                          frozen'validatorCurrentRewards
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field
                                                @"vec'validatorHistoricalRewards")
                                             frozen'validatorHistoricalRewards
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field
                                                   @"vec'validatorSlashEvents")
                                                frozen'validatorSlashEvents x))))))))
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
                                  mutable'delegatorStartingInfos mutable'delegatorWithdrawInfos
                                  mutable'outstandingRewards mutable'validatorAccumulatedCommissions
                                  mutable'validatorCurrentRewards mutable'validatorHistoricalRewards
                                  mutable'validatorSlashEvents
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fee_pool"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"feePool") y x)
                                  mutable'delegatorStartingInfos mutable'delegatorWithdrawInfos
                                  mutable'outstandingRewards mutable'validatorAccumulatedCommissions
                                  mutable'validatorCurrentRewards mutable'validatorHistoricalRewards
                                  mutable'validatorSlashEvents
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "delegator_withdraw_infos"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'delegatorWithdrawInfos y)
                                loop
                                  x mutable'delegatorStartingInfos v mutable'outstandingRewards
                                  mutable'validatorAccumulatedCommissions
                                  mutable'validatorCurrentRewards mutable'validatorHistoricalRewards
                                  mutable'validatorSlashEvents
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
                                       "previous_proposer"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"previousProposer") y x)
                                  mutable'delegatorStartingInfos mutable'delegatorWithdrawInfos
                                  mutable'outstandingRewards mutable'validatorAccumulatedCommissions
                                  mutable'validatorCurrentRewards mutable'validatorHistoricalRewards
                                  mutable'validatorSlashEvents
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "outstanding_rewards"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'outstandingRewards y)
                                loop
                                  x mutable'delegatorStartingInfos mutable'delegatorWithdrawInfos v
                                  mutable'validatorAccumulatedCommissions
                                  mutable'validatorCurrentRewards mutable'validatorHistoricalRewards
                                  mutable'validatorSlashEvents
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "validator_accumulated_commissions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'validatorAccumulatedCommissions y)
                                loop
                                  x mutable'delegatorStartingInfos mutable'delegatorWithdrawInfos
                                  mutable'outstandingRewards v mutable'validatorCurrentRewards
                                  mutable'validatorHistoricalRewards mutable'validatorSlashEvents
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "validator_historical_rewards"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'validatorHistoricalRewards y)
                                loop
                                  x mutable'delegatorStartingInfos mutable'delegatorWithdrawInfos
                                  mutable'outstandingRewards mutable'validatorAccumulatedCommissions
                                  mutable'validatorCurrentRewards v mutable'validatorSlashEvents
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "validator_current_rewards"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'validatorCurrentRewards y)
                                loop
                                  x mutable'delegatorStartingInfos mutable'delegatorWithdrawInfos
                                  mutable'outstandingRewards mutable'validatorAccumulatedCommissions
                                  v mutable'validatorHistoricalRewards mutable'validatorSlashEvents
                        74
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "delegator_starting_infos"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'delegatorStartingInfos y)
                                loop
                                  x v mutable'delegatorWithdrawInfos mutable'outstandingRewards
                                  mutable'validatorAccumulatedCommissions
                                  mutable'validatorCurrentRewards mutable'validatorHistoricalRewards
                                  mutable'validatorSlashEvents
                        82
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "validator_slash_events"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'validatorSlashEvents y)
                                loop
                                  x mutable'delegatorStartingInfos mutable'delegatorWithdrawInfos
                                  mutable'outstandingRewards mutable'validatorAccumulatedCommissions
                                  mutable'validatorCurrentRewards mutable'validatorHistoricalRewards
                                  v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'delegatorStartingInfos mutable'delegatorWithdrawInfos
                                  mutable'outstandingRewards mutable'validatorAccumulatedCommissions
                                  mutable'validatorCurrentRewards mutable'validatorHistoricalRewards
                                  mutable'validatorSlashEvents
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'delegatorStartingInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              mutable'delegatorWithdrawInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              mutable'outstandingRewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              mutable'validatorAccumulatedCommissions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                           Data.ProtoLens.Encoding.Growing.new
              mutable'validatorCurrentRewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   Data.ProtoLens.Encoding.Growing.new
              mutable'validatorHistoricalRewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      Data.ProtoLens.Encoding.Growing.new
              mutable'validatorSlashEvents <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'delegatorStartingInfos
                mutable'delegatorWithdrawInfos mutable'outstandingRewards
                mutable'validatorAccumulatedCommissions
                mutable'validatorCurrentRewards mutable'validatorHistoricalRewards
                mutable'validatorSlashEvents)
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'feePool") _x
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
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'delegatorWithdrawInfos") _x))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"previousProposer") _x
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
                               (Data.ProtoLens.Field.field @"vec'outstandingRewards") _x))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
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
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field
                                     @"vec'validatorAccumulatedCommissions")
                                  _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
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
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'validatorHistoricalRewards")
                                     _x))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                             ((Prelude..)
                                                (\ bs
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (Prelude.fromIntegral
                                                              (Data.ByteString.length bs)))
                                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Data.ProtoLens.encodeMessage _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'validatorCurrentRewards")
                                        _x))
                                  ((Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                        (\ _v
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                                ((Prelude..)
                                                   (\ bs
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              (Prelude.fromIntegral
                                                                 (Data.ByteString.length bs)))
                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                              bs))
                                                   Data.ProtoLens.encodeMessage _v))
                                        (Lens.Family2.view
                                           (Data.ProtoLens.Field.field
                                              @"vec'delegatorStartingInfos")
                                           _x))
                                     ((Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                           (\ _v
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                   ((Prelude..)
                                                      (\ bs
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 (Prelude.fromIntegral
                                                                    (Data.ByteString.length bs)))
                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                 bs))
                                                      Data.ProtoLens.encodeMessage _v))
                                           (Lens.Family2.view
                                              (Data.ProtoLens.Field.field
                                                 @"vec'validatorSlashEvents")
                                              _x))
                                        (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                           (Lens.Family2.view
                                              Data.ProtoLens.unknownFields _x)))))))))))
instance Control.DeepSeq.NFData GenesisState where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenesisState'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GenesisState'params x__)
                (Control.DeepSeq.deepseq
                   (_GenesisState'feePool x__)
                   (Control.DeepSeq.deepseq
                      (_GenesisState'delegatorWithdrawInfos x__)
                      (Control.DeepSeq.deepseq
                         (_GenesisState'previousProposer x__)
                         (Control.DeepSeq.deepseq
                            (_GenesisState'outstandingRewards x__)
                            (Control.DeepSeq.deepseq
                               (_GenesisState'validatorAccumulatedCommissions x__)
                               (Control.DeepSeq.deepseq
                                  (_GenesisState'validatorHistoricalRewards x__)
                                  (Control.DeepSeq.deepseq
                                     (_GenesisState'validatorCurrentRewards x__)
                                     (Control.DeepSeq.deepseq
                                        (_GenesisState'delegatorStartingInfos x__)
                                        (Control.DeepSeq.deepseq
                                           (_GenesisState'validatorSlashEvents x__) ()))))))))))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.validatorAddress' @:: Lens' ValidatorAccumulatedCommissionRecord Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.accumulated' @:: Lens' ValidatorAccumulatedCommissionRecord Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorAccumulatedCommission@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.maybe'accumulated' @:: Lens' ValidatorAccumulatedCommissionRecord (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorAccumulatedCommission)@ -}
data ValidatorAccumulatedCommissionRecord
  = ValidatorAccumulatedCommissionRecord'_constructor {_ValidatorAccumulatedCommissionRecord'validatorAddress :: !Data.Text.Text,
                                                       _ValidatorAccumulatedCommissionRecord'accumulated :: !(Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorAccumulatedCommission),
                                                       _ValidatorAccumulatedCommissionRecord'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorAccumulatedCommissionRecord where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorAccumulatedCommissionRecord "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorAccumulatedCommissionRecord'validatorAddress
           (\ x__ y__
              -> x__
                   {_ValidatorAccumulatedCommissionRecord'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorAccumulatedCommissionRecord "accumulated" Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorAccumulatedCommission where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorAccumulatedCommissionRecord'accumulated
           (\ x__ y__
              -> x__ {_ValidatorAccumulatedCommissionRecord'accumulated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ValidatorAccumulatedCommissionRecord "maybe'accumulated" (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorAccumulatedCommission) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorAccumulatedCommissionRecord'accumulated
           (\ x__ y__
              -> x__ {_ValidatorAccumulatedCommissionRecord'accumulated = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorAccumulatedCommissionRecord where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.ValidatorAccumulatedCommissionRecord"
  packedMessageDescriptor _
    = "\n\
      \$ValidatorAccumulatedCommissionRecord\DC2N\n\
      \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2h\n\
      \\vaccumulated\CAN\STX \SOH(\v2;.cosmos.distribution.v1beta1.ValidatorAccumulatedCommissionR\vaccumulatedB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL"
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
              Data.ProtoLens.FieldDescriptor ValidatorAccumulatedCommissionRecord
        accumulated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "accumulated"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorAccumulatedCommission)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'accumulated")) ::
              Data.ProtoLens.FieldDescriptor ValidatorAccumulatedCommissionRecord
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, accumulated__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorAccumulatedCommissionRecord'_unknownFields
        (\ x__ y__
           -> x__
                {_ValidatorAccumulatedCommissionRecord'_unknownFields = y__})
  defMessage
    = ValidatorAccumulatedCommissionRecord'_constructor
        {_ValidatorAccumulatedCommissionRecord'validatorAddress = Data.ProtoLens.fieldDefault,
         _ValidatorAccumulatedCommissionRecord'accumulated = Prelude.Nothing,
         _ValidatorAccumulatedCommissionRecord'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorAccumulatedCommissionRecord
          -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorAccumulatedCommissionRecord
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "accumulated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"accumulated") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "ValidatorAccumulatedCommissionRecord"
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'accumulated") _x
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
instance Control.DeepSeq.NFData ValidatorAccumulatedCommissionRecord where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorAccumulatedCommissionRecord'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValidatorAccumulatedCommissionRecord'validatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_ValidatorAccumulatedCommissionRecord'accumulated x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.validatorAddress' @:: Lens' ValidatorCurrentRewardsRecord Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.rewards' @:: Lens' ValidatorCurrentRewardsRecord Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorCurrentRewards@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.maybe'rewards' @:: Lens' ValidatorCurrentRewardsRecord (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorCurrentRewards)@ -}
data ValidatorCurrentRewardsRecord
  = ValidatorCurrentRewardsRecord'_constructor {_ValidatorCurrentRewardsRecord'validatorAddress :: !Data.Text.Text,
                                                _ValidatorCurrentRewardsRecord'rewards :: !(Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorCurrentRewards),
                                                _ValidatorCurrentRewardsRecord'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorCurrentRewardsRecord where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorCurrentRewardsRecord "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorCurrentRewardsRecord'validatorAddress
           (\ x__ y__
              -> x__ {_ValidatorCurrentRewardsRecord'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorCurrentRewardsRecord "rewards" Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorCurrentRewards where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorCurrentRewardsRecord'rewards
           (\ x__ y__ -> x__ {_ValidatorCurrentRewardsRecord'rewards = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ValidatorCurrentRewardsRecord "maybe'rewards" (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorCurrentRewards) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorCurrentRewardsRecord'rewards
           (\ x__ y__ -> x__ {_ValidatorCurrentRewardsRecord'rewards = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorCurrentRewardsRecord where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.ValidatorCurrentRewardsRecord"
  packedMessageDescriptor _
    = "\n\
      \\GSValidatorCurrentRewardsRecord\DC2N\n\
      \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2Y\n\
      \\arewards\CAN\STX \SOH(\v24.cosmos.distribution.v1beta1.ValidatorCurrentRewardsR\arewardsB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL"
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
              Data.ProtoLens.FieldDescriptor ValidatorCurrentRewardsRecord
        rewards__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rewards"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorCurrentRewards)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rewards")) ::
              Data.ProtoLens.FieldDescriptor ValidatorCurrentRewardsRecord
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, rewards__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorCurrentRewardsRecord'_unknownFields
        (\ x__ y__
           -> x__ {_ValidatorCurrentRewardsRecord'_unknownFields = y__})
  defMessage
    = ValidatorCurrentRewardsRecord'_constructor
        {_ValidatorCurrentRewardsRecord'validatorAddress = Data.ProtoLens.fieldDefault,
         _ValidatorCurrentRewardsRecord'rewards = Prelude.Nothing,
         _ValidatorCurrentRewardsRecord'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorCurrentRewardsRecord
          -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorCurrentRewardsRecord
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "rewards"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rewards") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ValidatorCurrentRewardsRecord"
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rewards") _x
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
instance Control.DeepSeq.NFData ValidatorCurrentRewardsRecord where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorCurrentRewardsRecord'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValidatorCurrentRewardsRecord'validatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_ValidatorCurrentRewardsRecord'rewards x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.validatorAddress' @:: Lens' ValidatorHistoricalRewardsRecord Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.period' @:: Lens' ValidatorHistoricalRewardsRecord Data.Word.Word64@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.rewards' @:: Lens' ValidatorHistoricalRewardsRecord Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorHistoricalRewards@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.maybe'rewards' @:: Lens' ValidatorHistoricalRewardsRecord (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorHistoricalRewards)@ -}
data ValidatorHistoricalRewardsRecord
  = ValidatorHistoricalRewardsRecord'_constructor {_ValidatorHistoricalRewardsRecord'validatorAddress :: !Data.Text.Text,
                                                   _ValidatorHistoricalRewardsRecord'period :: !Data.Word.Word64,
                                                   _ValidatorHistoricalRewardsRecord'rewards :: !(Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorHistoricalRewards),
                                                   _ValidatorHistoricalRewardsRecord'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorHistoricalRewardsRecord where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorHistoricalRewardsRecord "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorHistoricalRewardsRecord'validatorAddress
           (\ x__ y__
              -> x__ {_ValidatorHistoricalRewardsRecord'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorHistoricalRewardsRecord "period" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorHistoricalRewardsRecord'period
           (\ x__ y__
              -> x__ {_ValidatorHistoricalRewardsRecord'period = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorHistoricalRewardsRecord "rewards" Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorHistoricalRewards where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorHistoricalRewardsRecord'rewards
           (\ x__ y__
              -> x__ {_ValidatorHistoricalRewardsRecord'rewards = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ValidatorHistoricalRewardsRecord "maybe'rewards" (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorHistoricalRewards) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorHistoricalRewardsRecord'rewards
           (\ x__ y__
              -> x__ {_ValidatorHistoricalRewardsRecord'rewards = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorHistoricalRewardsRecord where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.ValidatorHistoricalRewardsRecord"
  packedMessageDescriptor _
    = "\n\
      \ ValidatorHistoricalRewardsRecord\DC2N\n\
      \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2\SYN\n\
      \\ACKperiod\CAN\STX \SOH(\EOTR\ACKperiod\DC2\\\n\
      \\arewards\CAN\ETX \SOH(\v27.cosmos.distribution.v1beta1.ValidatorHistoricalRewardsR\arewardsB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL"
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
              Data.ProtoLens.FieldDescriptor ValidatorHistoricalRewardsRecord
        period__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "period"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"period")) ::
              Data.ProtoLens.FieldDescriptor ValidatorHistoricalRewardsRecord
        rewards__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rewards"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorHistoricalRewards)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rewards")) ::
              Data.ProtoLens.FieldDescriptor ValidatorHistoricalRewardsRecord
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, period__field_descriptor),
           (Data.ProtoLens.Tag 3, rewards__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorHistoricalRewardsRecord'_unknownFields
        (\ x__ y__
           -> x__ {_ValidatorHistoricalRewardsRecord'_unknownFields = y__})
  defMessage
    = ValidatorHistoricalRewardsRecord'_constructor
        {_ValidatorHistoricalRewardsRecord'validatorAddress = Data.ProtoLens.fieldDefault,
         _ValidatorHistoricalRewardsRecord'period = Data.ProtoLens.fieldDefault,
         _ValidatorHistoricalRewardsRecord'rewards = Prelude.Nothing,
         _ValidatorHistoricalRewardsRecord'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorHistoricalRewardsRecord
          -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorHistoricalRewardsRecord
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "period"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"period") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "rewards"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rewards") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "ValidatorHistoricalRewardsRecord"
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
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"period") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rewards") _x
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
instance Control.DeepSeq.NFData ValidatorHistoricalRewardsRecord where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorHistoricalRewardsRecord'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValidatorHistoricalRewardsRecord'validatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_ValidatorHistoricalRewardsRecord'period x__)
                   (Control.DeepSeq.deepseq
                      (_ValidatorHistoricalRewardsRecord'rewards x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.validatorAddress' @:: Lens' ValidatorOutstandingRewardsRecord Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.outstandingRewards' @:: Lens' ValidatorOutstandingRewardsRecord [Proto.Cosmos.Base.V1beta1.Coin.DecCoin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.vec'outstandingRewards' @:: Lens' ValidatorOutstandingRewardsRecord (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin)@ -}
data ValidatorOutstandingRewardsRecord
  = ValidatorOutstandingRewardsRecord'_constructor {_ValidatorOutstandingRewardsRecord'validatorAddress :: !Data.Text.Text,
                                                    _ValidatorOutstandingRewardsRecord'outstandingRewards :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin),
                                                    _ValidatorOutstandingRewardsRecord'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorOutstandingRewardsRecord where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorOutstandingRewardsRecord "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorOutstandingRewardsRecord'validatorAddress
           (\ x__ y__
              -> x__
                   {_ValidatorOutstandingRewardsRecord'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorOutstandingRewardsRecord "outstandingRewards" [Proto.Cosmos.Base.V1beta1.Coin.DecCoin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorOutstandingRewardsRecord'outstandingRewards
           (\ x__ y__
              -> x__
                   {_ValidatorOutstandingRewardsRecord'outstandingRewards = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ValidatorOutstandingRewardsRecord "vec'outstandingRewards" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorOutstandingRewardsRecord'outstandingRewards
           (\ x__ y__
              -> x__
                   {_ValidatorOutstandingRewardsRecord'outstandingRewards = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorOutstandingRewardsRecord where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.ValidatorOutstandingRewardsRecord"
  packedMessageDescriptor _
    = "\n\
      \!ValidatorOutstandingRewardsRecord\DC2N\n\
      \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2\135\SOH\n\
      \\DC3outstanding_rewards\CAN\STX \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\DC2outstandingRewardsB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL"
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
              Data.ProtoLens.FieldDescriptor ValidatorOutstandingRewardsRecord
        outstandingRewards__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "outstanding_rewards"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.DecCoin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"outstandingRewards")) ::
              Data.ProtoLens.FieldDescriptor ValidatorOutstandingRewardsRecord
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, outstandingRewards__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorOutstandingRewardsRecord'_unknownFields
        (\ x__ y__
           -> x__ {_ValidatorOutstandingRewardsRecord'_unknownFields = y__})
  defMessage
    = ValidatorOutstandingRewardsRecord'_constructor
        {_ValidatorOutstandingRewardsRecord'validatorAddress = Data.ProtoLens.fieldDefault,
         _ValidatorOutstandingRewardsRecord'outstandingRewards = Data.Vector.Generic.empty,
         _ValidatorOutstandingRewardsRecord'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorOutstandingRewardsRecord
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.DecCoin
             -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorOutstandingRewardsRecord
        loop x mutable'outstandingRewards
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'outstandingRewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'outstandingRewards)
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
                              (Data.ProtoLens.Field.field @"vec'outstandingRewards")
                              frozen'outstandingRewards x))
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
                                  mutable'outstandingRewards
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "outstanding_rewards"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'outstandingRewards y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'outstandingRewards
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'outstandingRewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'outstandingRewards)
          "ValidatorOutstandingRewardsRecord"
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
                      (Data.ProtoLens.Field.field @"vec'outstandingRewards") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ValidatorOutstandingRewardsRecord where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorOutstandingRewardsRecord'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValidatorOutstandingRewardsRecord'validatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_ValidatorOutstandingRewardsRecord'outstandingRewards x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.validatorAddress' @:: Lens' ValidatorSlashEventRecord Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.height' @:: Lens' ValidatorSlashEventRecord Data.Word.Word64@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.period' @:: Lens' ValidatorSlashEventRecord Data.Word.Word64@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.validatorSlashEvent' @:: Lens' ValidatorSlashEventRecord Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorSlashEvent@
         * 'Proto.Cosmos.Distribution.V1beta1.Genesis_Fields.maybe'validatorSlashEvent' @:: Lens' ValidatorSlashEventRecord (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorSlashEvent)@ -}
data ValidatorSlashEventRecord
  = ValidatorSlashEventRecord'_constructor {_ValidatorSlashEventRecord'validatorAddress :: !Data.Text.Text,
                                            _ValidatorSlashEventRecord'height :: !Data.Word.Word64,
                                            _ValidatorSlashEventRecord'period :: !Data.Word.Word64,
                                            _ValidatorSlashEventRecord'validatorSlashEvent :: !(Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorSlashEvent),
                                            _ValidatorSlashEventRecord'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorSlashEventRecord where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorSlashEventRecord "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSlashEventRecord'validatorAddress
           (\ x__ y__
              -> x__ {_ValidatorSlashEventRecord'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorSlashEventRecord "height" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSlashEventRecord'height
           (\ x__ y__ -> x__ {_ValidatorSlashEventRecord'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorSlashEventRecord "period" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSlashEventRecord'period
           (\ x__ y__ -> x__ {_ValidatorSlashEventRecord'period = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorSlashEventRecord "validatorSlashEvent" Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorSlashEvent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSlashEventRecord'validatorSlashEvent
           (\ x__ y__
              -> x__ {_ValidatorSlashEventRecord'validatorSlashEvent = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ValidatorSlashEventRecord "maybe'validatorSlashEvent" (Prelude.Maybe Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorSlashEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSlashEventRecord'validatorSlashEvent
           (\ x__ y__
              -> x__ {_ValidatorSlashEventRecord'validatorSlashEvent = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorSlashEventRecord where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.ValidatorSlashEventRecord"
  packedMessageDescriptor _
    = "\n\
      \\EMValidatorSlashEventRecord\DC2N\n\
      \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2\SYN\n\
      \\ACKheight\CAN\STX \SOH(\EOTR\ACKheight\DC2\SYN\n\
      \\ACKperiod\CAN\ETX \SOH(\EOTR\ACKperiod\DC2o\n\
      \\NAKvalidator_slash_event\CAN\EOT \SOH(\v20.cosmos.distribution.v1beta1.ValidatorSlashEventR\DC3validatorSlashEventB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL"
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
              Data.ProtoLens.FieldDescriptor ValidatorSlashEventRecord
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor ValidatorSlashEventRecord
        period__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "period"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"period")) ::
              Data.ProtoLens.FieldDescriptor ValidatorSlashEventRecord
        validatorSlashEvent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_slash_event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Distribution.V1beta1.Distribution.ValidatorSlashEvent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validatorSlashEvent")) ::
              Data.ProtoLens.FieldDescriptor ValidatorSlashEventRecord
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, height__field_descriptor),
           (Data.ProtoLens.Tag 3, period__field_descriptor),
           (Data.ProtoLens.Tag 4, validatorSlashEvent__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorSlashEventRecord'_unknownFields
        (\ x__ y__
           -> x__ {_ValidatorSlashEventRecord'_unknownFields = y__})
  defMessage
    = ValidatorSlashEventRecord'_constructor
        {_ValidatorSlashEventRecord'validatorAddress = Data.ProtoLens.fieldDefault,
         _ValidatorSlashEventRecord'height = Data.ProtoLens.fieldDefault,
         _ValidatorSlashEventRecord'period = Data.ProtoLens.fieldDefault,
         _ValidatorSlashEventRecord'validatorSlashEvent = Prelude.Nothing,
         _ValidatorSlashEventRecord'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorSlashEventRecord
          -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorSlashEventRecord
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "period"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"period") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "validator_slash_event"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorSlashEvent") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ValidatorSlashEventRecord"
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
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"period") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'validatorSlashEvent") _x
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
instance Control.DeepSeq.NFData ValidatorSlashEventRecord where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorSlashEventRecord'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValidatorSlashEventRecord'validatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_ValidatorSlashEventRecord'height x__)
                   (Control.DeepSeq.deepseq
                      (_ValidatorSlashEventRecord'period x__)
                      (Control.DeepSeq.deepseq
                         (_ValidatorSlashEventRecord'validatorSlashEvent x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \)cosmos/distribution/v1beta1/genesis.proto\DC2\ESCcosmos.distribution.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\RScosmos/base/v1beta1/coin.proto\SUB.cosmos/distribution/v1beta1/distribution.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"\173\SOH\n\
    \\NAKDelegatorWithdrawInfo\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
    \\DLEwithdraw_address\CAN\STX \SOH(\tR\SIwithdrawAddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL\"\135\STX\n\
    \!ValidatorOutstandingRewardsRecord\DC2N\n\
    \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2\135\SOH\n\
    \\DC3outstanding_rewards\CAN\STX \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\DC2outstandingRewardsB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL\"\234\SOH\n\
    \$ValidatorAccumulatedCommissionRecord\DC2N\n\
    \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2h\n\
    \\vaccumulated\CAN\STX \SOH(\v2;.cosmos.distribution.v1beta1.ValidatorAccumulatedCommissionR\vaccumulatedB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL\"\242\SOH\n\
    \ ValidatorHistoricalRewardsRecord\DC2N\n\
    \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2\SYN\n\
    \\ACKperiod\CAN\STX \SOH(\EOTR\ACKperiod\DC2\\\n\
    \\arewards\CAN\ETX \SOH(\v27.cosmos.distribution.v1beta1.ValidatorHistoricalRewardsR\arewardsB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL\"\212\SOH\n\
    \\GSValidatorCurrentRewardsRecord\DC2N\n\
    \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2Y\n\
    \\arewards\CAN\STX \SOH(\v24.cosmos.distribution.v1beta1.ValidatorCurrentRewardsR\arewardsB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL\"\162\STX\n\
    \\ESCDelegatorStartingInfoRecord\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
    \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2b\n\
    \\rstarting_info\CAN\ETX \SOH(\v22.cosmos.distribution.v1beta1.DelegatorStartingInfoR\fstartingInfoB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL\"\150\STX\n\
    \\EMValidatorSlashEventRecord\DC2N\n\
    \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2\SYN\n\
    \\ACKheight\CAN\STX \SOH(\EOTR\ACKheight\DC2\SYN\n\
    \\ACKperiod\CAN\ETX \SOH(\EOTR\ACKperiod\DC2o\n\
    \\NAKvalidator_slash_event\CAN\EOT \SOH(\v20.cosmos.distribution.v1beta1.ValidatorSlashEventR\DC3validatorSlashEventB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL\"\140\t\n\
    \\fGenesisState\DC2F\n\
    \\ACKparams\CAN\SOH \SOH(\v2#.cosmos.distribution.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2J\n\
    \\bfee_pool\CAN\STX \SOH(\v2$.cosmos.distribution.v1beta1.FeePoolR\afeePoolB\t\200\222\US\NUL\168\231\176*\SOH\DC2w\n\
    \\CANdelegator_withdraw_infos\CAN\ETX \ETX(\v22.cosmos.distribution.v1beta1.DelegatorWithdrawInfoR\SYNdelegatorWithdrawInfosB\t\200\222\US\NUL\168\231\176*\SOH\DC2E\n\
    \\DC1previous_proposer\CAN\EOT \SOH(\tR\DLEpreviousProposerB\CAN\210\180-\DC4cosmos.AddressString\DC2z\n\
    \\DC3outstanding_rewards\CAN\ENQ \ETX(\v2>.cosmos.distribution.v1beta1.ValidatorOutstandingRewardsRecordR\DC2outstandingRewardsB\t\200\222\US\NUL\168\231\176*\SOH\DC2\152\SOH\n\
    \!validator_accumulated_commissions\CAN\ACK \ETX(\v2A.cosmos.distribution.v1beta1.ValidatorAccumulatedCommissionRecordR\USvalidatorAccumulatedCommissionsB\t\200\222\US\NUL\168\231\176*\SOH\DC2\138\SOH\n\
    \\FSvalidator_historical_rewards\CAN\a \ETX(\v2=.cosmos.distribution.v1beta1.ValidatorHistoricalRewardsRecordR\SUBvalidatorHistoricalRewardsB\t\200\222\US\NUL\168\231\176*\SOH\DC2\129\SOH\n\
    \\EMvalidator_current_rewards\CAN\b \ETX(\v2:.cosmos.distribution.v1beta1.ValidatorCurrentRewardsRecordR\ETBvalidatorCurrentRewardsB\t\200\222\US\NUL\168\231\176*\SOH\DC2}\n\
    \\CANdelegator_starting_infos\CAN\t \ETX(\v28.cosmos.distribution.v1beta1.DelegatorStartingInfoRecordR\SYNdelegatorStartingInfosB\t\200\222\US\NUL\168\231\176*\SOH\DC2w\n\
    \\SYNvalidator_slash_events\CAN\n\
    \ \ETX(\v26.cosmos.distribution.v1beta1.ValidatorSlashEventRecordR\DC4validatorSlashEventsB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NULB7Z1github.com/cosmos/cosmos-sdk/x/distribution/types\168\226\RS\SOHJ\167.\n\
    \\a\DC2\ENQ\NUL\NUL\154\SOH\SOH\n\
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
    \\STX\ETX\STX\DC2\ETX\b\NUL8\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL#\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL\ESC\n\
    \\188\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SI\NUL\CAN\SOH\SUB\175\SOH DelegatorWithdrawInfo is the address for where distributions rewards are\n\
    \ withdrawn to by default this struct is only used at genesis to feed in\n\
    \ default withdraw addresses.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SI\b\GS\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DLE\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETX\DLE\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC1\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\129\244\ETX\DC2\ETX\DC1\STX-\n\
    \A\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC4\STXP\SUB4 delegator_address is the address of the delegator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC4\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC4\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\DC4\USO\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\DC4 N\n\
    \U\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\ETB\STXO\SUBH withdraw_address is the address to withdraw the delegation rewards to.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ETB\t\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ETB\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\ETB\RSN\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\ETB\USM\n\
    \[\n\
    \\STX\EOT\SOH\DC2\EOT\ESC\NUL(\SOH\SUBO ValidatorOutstandingRewardsRecord is used for import/export via genesis json.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\ESC\b)\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX\FS\STX-\n\
    \\r\n\
    \\ACK\EOT\SOH\a\141\244\ETX\DC2\ETX\FS\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX\GS\STX-\n\
    \\r\n\
    \\ACK\EOT\SOH\a\129\244\ETX\DC2\ETX\GS\STX-\n\
    \A\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX \STXY\SUB4 validator_address is the address of the validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX \STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX \t\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX \GS\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX \USX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\202\214\ENQ\DC2\ETX  W\n\
    \V\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT#\STX'\EOT\SUBH outstanding_rewards represents the outstanding rewards of a validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX#\v&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX#':\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX#=>\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\EOT#?'\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\245\251\ETX\DC2\ETX$\EOTL\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\233\251\ETX\DC2\ETX%\EOT$\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\SOH\b\245\140\166\ENQ\DC2\ETX&\EOT#\n\
    \a\n\
    \\STX\EOT\STX\DC2\EOT,\NUL5\SOH\SUBU ValidatorAccumulatedCommissionRecord is used for import / export via genesis\n\
    \ json.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX,\b,\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX-\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\141\244\ETX\DC2\ETX-\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX.\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\129\244\ETX\DC2\ETX.\STX-\n\
    \A\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX1\STXY\SUB4 validator_address is the address of the validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX1\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX1\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX1\USX\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX1 W\n\
    \H\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX4\STXo\SUB; accumulated is the accumulated commission of a validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX4\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX4!,\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX4/0\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETX41n\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\233\251\ETX\DC2\ETX42N\n\
    \\DLE\n\
    \\t\EOT\STX\STX\SOH\b\245\140\166\ENQ\DC2\ETX4Pm\n\
    \]\n\
    \\STX\EOT\ETX\DC2\EOT9\NULE\SOH\SUBQ ValidatorHistoricalRewardsRecord is used for import / export via genesis\n\
    \ json.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX9\b(\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\a\DC2\ETX:\STX-\n\
    \\r\n\
    \\ACK\EOT\ETX\a\141\244\ETX\DC2\ETX:\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\a\DC2\ETX;\STX-\n\
    \\r\n\
    \\ACK\EOT\ETX\a\129\244\ETX\DC2\ETX;\STX-\n\
    \A\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX>\STXY\SUB4 validator_address is the address of the validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX>\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX>\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX>\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETX>\USX\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\202\214\ENQ\DC2\ETX> W\n\
    \I\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXA\STX\DC4\SUB< period defines the period the historical rewards apply to.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETXA\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXA\t\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXA\DC2\DC3\n\
    \E\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXD\STXg\SUB8 rewards defines the historical rewards of a validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETXD\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXD\GS$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXD'(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\b\DC2\ETXD)f\n\
    \\SI\n\
    \\b\EOT\ETX\STX\STX\b\233\251\ETX\DC2\ETXD*F\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\STX\b\245\140\166\ENQ\DC2\ETXDHe\n\
    \Y\n\
    \\STX\EOT\EOT\DC2\EOTH\NULQ\SOH\SUBM ValidatorCurrentRewardsRecord is used for import / export via genesis json.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXH\b%\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXI\STX-\n\
    \\r\n\
    \\ACK\EOT\EOT\a\141\244\ETX\DC2\ETXI\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXJ\STX-\n\
    \\r\n\
    \\ACK\EOT\EOT\a\129\244\ETX\DC2\ETXJ\STX-\n\
    \A\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXM\STXY\SUB4 validator_address is the address of the validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXM\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXM\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXM\USX\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETXM W\n\
    \B\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXP\STXd\SUB5 rewards defines the current rewards of a validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETXP\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXP\SUB!\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXP$%\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ETXP&c\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\233\251\ETX\DC2\ETXP'C\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\SOH\b\245\140\166\ENQ\DC2\ETXPEb\n\
    \T\n\
    \\STX\EOT\ENQ\DC2\EOTT\NUL`\SOH\SUBH DelegatorStartingInfoRecord used for import / export via genesis json.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXT\b#\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\a\DC2\ETXU\STX-\n\
    \\r\n\
    \\ACK\EOT\ENQ\a\141\244\ETX\DC2\ETXU\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\a\DC2\ETXV\STX-\n\
    \\r\n\
    \\ACK\EOT\ENQ\a\129\244\ETX\DC2\ETXV\STX-\n\
    \A\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXY\STXP\SUB4 delegator_address is the address of the delegator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXY\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXY\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXY\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\ETXY\USO\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\NUL\b\202\214\ENQ\DC2\ETXY N\n\
    \A\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX\\\STXY\SUB4 validator_address is the address of the validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX\\\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX\\\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX\\\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\b\DC2\ETX\\\USX\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\SOH\b\202\214\ENQ\DC2\ETX\\ W\n\
    \F\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX_\STXh\SUB9 starting_info defines the starting info of a delegator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ACK\DC2\ETX_\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX_\CAN%\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX_()\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\b\DC2\ETX_*g\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\STX\b\233\251\ETX\DC2\ETX_+G\n\
    \\DLE\n\
    \\t\EOT\ENQ\STX\STX\b\245\140\166\ENQ\DC2\ETX_If\n\
    \U\n\
    \\STX\EOT\ACK\DC2\EOTc\NULo\SOH\SUBI ValidatorSlashEventRecord is used for import / export via genesis json.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXc\b!\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETXd\STX-\n\
    \\r\n\
    \\ACK\EOT\ACK\a\141\244\ETX\DC2\ETXd\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETXe\STX-\n\
    \\r\n\
    \\ACK\EOT\ACK\a\129\244\ETX\DC2\ETXe\STX-\n\
    \A\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXh\STXY\SUB4 validator_address is the address of the validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXh\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXh\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXh\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\ETXh\USX\n\
    \\SI\n\
    \\b\EOT\ACK\STX\NUL\b\202\214\ENQ\DC2\ETXh W\n\
    \Q\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXj\STX\DC4\SUBD height defines the block height at which the slash event occurred.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETXj\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXj\t\SI\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXj\DC2\DC3\n\
    \7\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXl\STX\DC4\SUB* period is the period of the slash event.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETXl\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXl\t\SI\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXl\DC2\DC3\n\
    \?\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETXn\STXn\SUB2 validator_slash_event describes the slash event.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ACK\DC2\ETXn\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETXn\SYN+\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETXn./\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\b\DC2\ETXn0m\n\
    \\SI\n\
    \\b\EOT\ACK\STX\ETX\b\233\251\ETX\DC2\ETXn1M\n\
    \\DLE\n\
    \\t\EOT\ACK\STX\ETX\b\245\140\166\ENQ\DC2\ETXnOl\n\
    \L\n\
    \\STX\EOT\a\DC2\ENQr\NUL\154\SOH\SOH\SUB? GenesisState defines the distribution module's genesis state.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXr\b\DC4\n\
    \\n\
    \\n\
    \\ETX\EOT\a\a\DC2\ETXs\STX-\n\
    \\r\n\
    \\ACK\EOT\a\a\141\244\ETX\DC2\ETXs\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\a\a\DC2\ETXt\STX-\n\
    \\r\n\
    \\ACK\EOT\a\a\129\244\ETX\DC2\ETXt\STX-\n\
    \?\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXw\STXR\SUB2 params defines all the parameters of the module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETXw\STX\b\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXw\t\SI\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXw\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\ETXw\DC4Q\n\
    \\SI\n\
    \\b\EOT\a\STX\NUL\b\233\251\ETX\DC2\ETXw\NAK1\n\
    \\DLE\n\
    \\t\EOT\a\STX\NUL\b\245\140\166\ENQ\DC2\ETXw3P\n\
    \8\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETXz\STXU\SUB+ fee_pool defines the fee pool at genesis.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\ETXz\STX\t\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETXz\n\
    \\DC2\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETXz\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\b\DC2\ETXz\ETBT\n\
    \\SI\n\
    \\b\EOT\a\STX\SOH\b\233\251\ETX\DC2\ETXz\CAN4\n\
    \\DLE\n\
    \\t\EOT\a\STX\SOH\b\245\140\166\ENQ\DC2\ETXz6S\n\
    \I\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT}\STX~D\SUB; fee_pool defines the delegator withdraw infos at genesis.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\ETX}\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ACK\DC2\ETX}\v \n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETX}!9\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETX}<=\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\b\DC2\ETX~\ACKC\n\
    \\SI\n\
    \\b\EOT\a\STX\STX\b\233\251\ETX\DC2\ETX~\a#\n\
    \\DLE\n\
    \\t\EOT\a\STX\STX\b\245\140\166\ENQ\DC2\ETX~%B\n\
    \B\n\
    \\EOT\EOT\a\STX\ETX\DC2\EOT\129\SOH\STXP\SUB4 fee_pool defines the previous proposer at genesis.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\EOT\129\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\EOT\129\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\EOT\129\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\b\DC2\EOT\129\SOH\USO\n\
    \\DLE\n\
    \\b\EOT\a\STX\ETX\b\202\214\ENQ\DC2\EOT\129\SOH N\n\
    \X\n\
    \\EOT\EOT\a\STX\EOT\DC2\ACK\132\SOH\STX\133\SOHD\SUBH fee_pool defines the outstanding rewards of all validators at genesis.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\EOT\DC2\EOT\132\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ACK\DC2\EOT\132\SOH\v,\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\EOT\132\SOH-@\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\EOT\132\SOHCD\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\b\DC2\EOT\133\SOH\ACKC\n\
    \\DLE\n\
    \\b\EOT\a\STX\EOT\b\233\251\ETX\DC2\EOT\133\SOH\a#\n\
    \\DC1\n\
    \\t\EOT\a\STX\EOT\b\245\140\166\ENQ\DC2\EOT\133\SOH%B\n\
    \\\\n\
    \\EOT\EOT\a\STX\ENQ\DC2\ACK\136\SOH\STX\137\SOHD\SUBL fee_pool defines the accumulated commissions of all validators at genesis.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\EOT\DC2\EOT\136\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\ACK\DC2\EOT\136\SOH\v/\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\SOH\DC2\EOT\136\SOH0Q\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\ETX\DC2\EOT\136\SOHTU\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\b\DC2\EOT\137\SOH\ACKC\n\
    \\DLE\n\
    \\b\EOT\a\STX\ENQ\b\233\251\ETX\DC2\EOT\137\SOH\a#\n\
    \\DC1\n\
    \\t\EOT\a\STX\ENQ\b\245\140\166\ENQ\DC2\EOT\137\SOH%B\n\
    \W\n\
    \\EOT\EOT\a\STX\ACK\DC2\ACK\140\SOH\STX\141\SOHD\SUBG fee_pool defines the historical rewards of all validators at genesis.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\EOT\DC2\EOT\140\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\ACK\DC2\EOT\140\SOH\v+\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\SOH\DC2\EOT\140\SOH,H\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\ETX\DC2\EOT\140\SOHKL\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\b\DC2\EOT\141\SOH\ACKC\n\
    \\DLE\n\
    \\b\EOT\a\STX\ACK\b\233\251\ETX\DC2\EOT\141\SOH\a#\n\
    \\DC1\n\
    \\t\EOT\a\STX\ACK\b\245\140\166\ENQ\DC2\EOT\141\SOH%B\n\
    \T\n\
    \\EOT\EOT\a\STX\a\DC2\ACK\144\SOH\STX\145\SOHD\SUBD fee_pool defines the current rewards of all validators at genesis.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\a\EOT\DC2\EOT\144\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\a\ACK\DC2\EOT\144\SOH\v(\n\
    \\r\n\
    \\ENQ\EOT\a\STX\a\SOH\DC2\EOT\144\SOH)B\n\
    \\r\n\
    \\ENQ\EOT\a\STX\a\ETX\DC2\EOT\144\SOHEF\n\
    \\r\n\
    \\ENQ\EOT\a\STX\a\b\DC2\EOT\145\SOH\ACKC\n\
    \\DLE\n\
    \\b\EOT\a\STX\a\b\233\251\ETX\DC2\EOT\145\SOH\a#\n\
    \\DC1\n\
    \\t\EOT\a\STX\a\b\245\140\166\ENQ\DC2\EOT\145\SOH%B\n\
    \K\n\
    \\EOT\EOT\a\STX\b\DC2\ACK\148\SOH\STX\149\SOHD\SUB; fee_pool defines the delegator starting infos at genesis.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\b\EOT\DC2\EOT\148\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\b\ACK\DC2\EOT\148\SOH\v&\n\
    \\r\n\
    \\ENQ\EOT\a\STX\b\SOH\DC2\EOT\148\SOH'?\n\
    \\r\n\
    \\ENQ\EOT\a\STX\b\ETX\DC2\EOT\148\SOHBC\n\
    \\r\n\
    \\ENQ\EOT\a\STX\b\b\DC2\EOT\149\SOH\ACKC\n\
    \\DLE\n\
    \\b\EOT\a\STX\b\b\233\251\ETX\DC2\EOT\149\SOH\a#\n\
    \\DC1\n\
    \\t\EOT\a\STX\b\b\245\140\166\ENQ\DC2\EOT\149\SOH%B\n\
    \I\n\
    \\EOT\EOT\a\STX\t\DC2\ACK\152\SOH\STX\153\SOHD\SUB9 fee_pool defines the validator slash events at genesis.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\t\EOT\DC2\EOT\152\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\t\ACK\DC2\EOT\152\SOH\v$\n\
    \\r\n\
    \\ENQ\EOT\a\STX\t\SOH\DC2\EOT\152\SOH%;\n\
    \\r\n\
    \\ENQ\EOT\a\STX\t\ETX\DC2\EOT\152\SOH>@\n\
    \\r\n\
    \\ENQ\EOT\a\STX\t\b\DC2\EOT\153\SOH\ACKC\n\
    \\DLE\n\
    \\b\EOT\a\STX\t\b\233\251\ETX\DC2\EOT\153\SOH\a#\n\
    \\DC1\n\
    \\t\EOT\a\STX\t\b\245\140\166\ENQ\DC2\EOT\153\SOH%Bb\ACKproto3"