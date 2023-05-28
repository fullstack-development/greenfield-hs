{- This file was auto-generated from cosmos/staking/v1beta1/staking.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Staking.V1beta1.Staking (
        BondStatus(..), BondStatus(), BondStatus'UnrecognizedValue,
        Commission(), CommissionRates(), DVPair(), DVPairs(), DVVTriplet(),
        DVVTriplets(), Delegation(), DelegationResponse(), Description(),
        HistoricalInfo(), Infraction(..), Infraction(),
        Infraction'UnrecognizedValue, Params(), Pool(), Redelegation(),
        RedelegationEntry(), RedelegationEntryResponse(),
        RedelegationResponse(), UnbondingDelegation(),
        UnbondingDelegationEntry(), ValAddresses(), Validator(),
        ValidatorUpdates()
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Tendermint.Abci.Types
import qualified Proto.Tendermint.Types.Types
newtype BondStatus'UnrecognizedValue
  = BondStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data BondStatus
  = BOND_STATUS_UNSPECIFIED |
    BOND_STATUS_UNBONDED |
    BOND_STATUS_UNBONDING |
    BOND_STATUS_BONDED |
    BondStatus'Unrecognized !BondStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum BondStatus where
  maybeToEnum 0 = Prelude.Just BOND_STATUS_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just BOND_STATUS_UNBONDED
  maybeToEnum 2 = Prelude.Just BOND_STATUS_UNBONDING
  maybeToEnum 3 = Prelude.Just BOND_STATUS_BONDED
  maybeToEnum k
    = Prelude.Just
        (BondStatus'Unrecognized
           (BondStatus'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum BOND_STATUS_UNSPECIFIED = "BOND_STATUS_UNSPECIFIED"
  showEnum BOND_STATUS_UNBONDED = "BOND_STATUS_UNBONDED"
  showEnum BOND_STATUS_UNBONDING = "BOND_STATUS_UNBONDING"
  showEnum BOND_STATUS_BONDED = "BOND_STATUS_BONDED"
  showEnum (BondStatus'Unrecognized (BondStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "BOND_STATUS_UNSPECIFIED"
    = Prelude.Just BOND_STATUS_UNSPECIFIED
    | (Prelude.==) k "BOND_STATUS_UNBONDED"
    = Prelude.Just BOND_STATUS_UNBONDED
    | (Prelude.==) k "BOND_STATUS_UNBONDING"
    = Prelude.Just BOND_STATUS_UNBONDING
    | (Prelude.==) k "BOND_STATUS_BONDED"
    = Prelude.Just BOND_STATUS_BONDED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded BondStatus where
  minBound = BOND_STATUS_UNSPECIFIED
  maxBound = BOND_STATUS_BONDED
instance Prelude.Enum BondStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum BondStatus: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum BOND_STATUS_UNSPECIFIED = 0
  fromEnum BOND_STATUS_UNBONDED = 1
  fromEnum BOND_STATUS_UNBONDING = 2
  fromEnum BOND_STATUS_BONDED = 3
  fromEnum (BondStatus'Unrecognized (BondStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ BOND_STATUS_BONDED
    = Prelude.error
        "BondStatus.succ: bad argument BOND_STATUS_BONDED. This value would be out of bounds."
  succ BOND_STATUS_UNSPECIFIED = BOND_STATUS_UNBONDED
  succ BOND_STATUS_UNBONDED = BOND_STATUS_UNBONDING
  succ BOND_STATUS_UNBONDING = BOND_STATUS_BONDED
  succ (BondStatus'Unrecognized _)
    = Prelude.error "BondStatus.succ: bad argument: unrecognized value"
  pred BOND_STATUS_UNSPECIFIED
    = Prelude.error
        "BondStatus.pred: bad argument BOND_STATUS_UNSPECIFIED. This value would be out of bounds."
  pred BOND_STATUS_UNBONDED = BOND_STATUS_UNSPECIFIED
  pred BOND_STATUS_UNBONDING = BOND_STATUS_UNBONDED
  pred BOND_STATUS_BONDED = BOND_STATUS_UNBONDING
  pred (BondStatus'Unrecognized _)
    = Prelude.error "BondStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault BondStatus where
  fieldDefault = BOND_STATUS_UNSPECIFIED
instance Control.DeepSeq.NFData BondStatus where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.commissionRates' @:: Lens' Commission CommissionRates@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maybe'commissionRates' @:: Lens' Commission (Prelude.Maybe CommissionRates)@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.updateTime' @:: Lens' Commission Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maybe'updateTime' @:: Lens' Commission (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data Commission
  = Commission'_constructor {_Commission'commissionRates :: !(Prelude.Maybe CommissionRates),
                             _Commission'updateTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                             _Commission'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Commission where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Commission "commissionRates" CommissionRates where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Commission'commissionRates
           (\ x__ y__ -> x__ {_Commission'commissionRates = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Commission "maybe'commissionRates" (Prelude.Maybe CommissionRates) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Commission'commissionRates
           (\ x__ y__ -> x__ {_Commission'commissionRates = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Commission "updateTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Commission'updateTime
           (\ x__ y__ -> x__ {_Commission'updateTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Commission "maybe'updateTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Commission'updateTime
           (\ x__ y__ -> x__ {_Commission'updateTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message Commission where
  messageName _ = Data.Text.pack "cosmos.staking.v1beta1.Commission"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Commission\DC2a\n\
      \\DLEcommission_rates\CAN\SOH \SOH(\v2'.cosmos.staking.v1beta1.CommissionRatesR\SIcommissionRatesB\r\200\222\US\NUL\208\222\US\SOH\168\231\176*\SOH\DC2J\n\
      \\vupdate_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \updateTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH:\EOT\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commissionRates__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commission_rates"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommissionRates)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commissionRates")) ::
              Data.ProtoLens.FieldDescriptor Commission
        updateTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'updateTime")) ::
              Data.ProtoLens.FieldDescriptor Commission
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commissionRates__field_descriptor),
           (Data.ProtoLens.Tag 2, updateTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Commission'_unknownFields
        (\ x__ y__ -> x__ {_Commission'_unknownFields = y__})
  defMessage
    = Commission'_constructor
        {_Commission'commissionRates = Prelude.Nothing,
         _Commission'updateTime = Prelude.Nothing,
         _Commission'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Commission -> Data.ProtoLens.Encoding.Bytes.Parser Commission
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
                                       "commission_rates"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commissionRates") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "update_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"updateTime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Commission"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'commissionRates") _x
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
                       (Data.ProtoLens.Field.field @"maybe'updateTime") _x
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
instance Control.DeepSeq.NFData Commission where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Commission'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Commission'commissionRates x__)
                (Control.DeepSeq.deepseq (_Commission'updateTime x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.rate' @:: Lens' CommissionRates Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maxRate' @:: Lens' CommissionRates Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maxChangeRate' @:: Lens' CommissionRates Data.Text.Text@ -}
data CommissionRates
  = CommissionRates'_constructor {_CommissionRates'rate :: !Data.Text.Text,
                                  _CommissionRates'maxRate :: !Data.Text.Text,
                                  _CommissionRates'maxChangeRate :: !Data.Text.Text,
                                  _CommissionRates'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommissionRates where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CommissionRates "rate" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommissionRates'rate
           (\ x__ y__ -> x__ {_CommissionRates'rate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommissionRates "maxRate" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommissionRates'maxRate
           (\ x__ y__ -> x__ {_CommissionRates'maxRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommissionRates "maxChangeRate" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommissionRates'maxChangeRate
           (\ x__ y__ -> x__ {_CommissionRates'maxChangeRate = y__}))
        Prelude.id
instance Data.ProtoLens.Message CommissionRates where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.CommissionRates"
  packedMessageDescriptor _
    = "\n\
      \\SICommissionRates\DC2U\n\
      \\EOTrate\CAN\SOH \SOH(\tR\EOTrateBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\168\231\176*\SOH\DC2\\\n\
      \\bmax_rate\CAN\STX \SOH(\tR\amaxRateBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\168\231\176*\SOH\DC2i\n\
      \\SImax_change_rate\CAN\ETX \SOH(\tR\rmaxChangeRateBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\168\231\176*\SOH:\EOT\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"rate")) ::
              Data.ProtoLens.FieldDescriptor CommissionRates
        maxRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"maxRate")) ::
              Data.ProtoLens.FieldDescriptor CommissionRates
        maxChangeRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_change_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxChangeRate")) ::
              Data.ProtoLens.FieldDescriptor CommissionRates
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rate__field_descriptor),
           (Data.ProtoLens.Tag 2, maxRate__field_descriptor),
           (Data.ProtoLens.Tag 3, maxChangeRate__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommissionRates'_unknownFields
        (\ x__ y__ -> x__ {_CommissionRates'_unknownFields = y__})
  defMessage
    = CommissionRates'_constructor
        {_CommissionRates'rate = Data.ProtoLens.fieldDefault,
         _CommissionRates'maxRate = Data.ProtoLens.fieldDefault,
         _CommissionRates'maxChangeRate = Data.ProtoLens.fieldDefault,
         _CommissionRates'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommissionRates
          -> Data.ProtoLens.Encoding.Bytes.Parser CommissionRates
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
                                       "rate"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rate") y x)
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
                                       "max_rate"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"maxRate") y x)
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
                                       "max_change_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxChangeRate") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CommissionRates"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"rate") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"maxRate") _x
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
                            (Data.ProtoLens.Field.field @"maxChangeRate") _x
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
instance Control.DeepSeq.NFData CommissionRates where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommissionRates'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommissionRates'rate x__)
                (Control.DeepSeq.deepseq
                   (_CommissionRates'maxRate x__)
                   (Control.DeepSeq.deepseq (_CommissionRates'maxChangeRate x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.delegatorAddress' @:: Lens' DVPair Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.validatorAddress' @:: Lens' DVPair Data.Text.Text@ -}
data DVPair
  = DVPair'_constructor {_DVPair'delegatorAddress :: !Data.Text.Text,
                         _DVPair'validatorAddress :: !Data.Text.Text,
                         _DVPair'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DVPair where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DVPair "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DVPair'delegatorAddress
           (\ x__ y__ -> x__ {_DVPair'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DVPair "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DVPair'validatorAddress
           (\ x__ y__ -> x__ {_DVPair'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message DVPair where
  messageName _ = Data.Text.pack "cosmos.staking.v1beta1.DVPair"
  packedMessageDescriptor _
    = "\n\
      \\ACKDVPair\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2E\n\
      \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL"
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
              Data.ProtoLens.FieldDescriptor DVPair
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor DVPair
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DVPair'_unknownFields
        (\ x__ y__ -> x__ {_DVPair'_unknownFields = y__})
  defMessage
    = DVPair'_constructor
        {_DVPair'delegatorAddress = Data.ProtoLens.fieldDefault,
         _DVPair'validatorAddress = Data.ProtoLens.fieldDefault,
         _DVPair'_unknownFields = []}
  parseMessage
    = let
        loop :: DVPair -> Data.ProtoLens.Encoding.Bytes.Parser DVPair
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
          (do loop Data.ProtoLens.defMessage) "DVPair"
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
instance Control.DeepSeq.NFData DVPair where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DVPair'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DVPair'delegatorAddress x__)
                (Control.DeepSeq.deepseq (_DVPair'validatorAddress x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.pairs' @:: Lens' DVPairs [DVPair]@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.vec'pairs' @:: Lens' DVPairs (Data.Vector.Vector DVPair)@ -}
data DVPairs
  = DVPairs'_constructor {_DVPairs'pairs :: !(Data.Vector.Vector DVPair),
                          _DVPairs'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DVPairs where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DVPairs "pairs" [DVPair] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DVPairs'pairs (\ x__ y__ -> x__ {_DVPairs'pairs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DVPairs "vec'pairs" (Data.Vector.Vector DVPair) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DVPairs'pairs (\ x__ y__ -> x__ {_DVPairs'pairs = y__}))
        Prelude.id
instance Data.ProtoLens.Message DVPairs where
  messageName _ = Data.Text.pack "cosmos.staking.v1beta1.DVPairs"
  packedMessageDescriptor _
    = "\n\
      \\aDVPairs\DC2?\n\
      \\ENQpairs\CAN\SOH \ETX(\v2\RS.cosmos.staking.v1beta1.DVPairR\ENQpairsB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pairs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pairs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DVPair)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"pairs")) ::
              Data.ProtoLens.FieldDescriptor DVPairs
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, pairs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DVPairs'_unknownFields
        (\ x__ y__ -> x__ {_DVPairs'_unknownFields = y__})
  defMessage
    = DVPairs'_constructor
        {_DVPairs'pairs = Data.Vector.Generic.empty,
         _DVPairs'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DVPairs
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DVPair
             -> Data.ProtoLens.Encoding.Bytes.Parser DVPairs
        loop x mutable'pairs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'pairs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'pairs)
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
                              (Data.ProtoLens.Field.field @"vec'pairs") frozen'pairs x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "pairs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'pairs y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'pairs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'pairs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'pairs)
          "DVPairs"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'pairs") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DVPairs where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DVPairs'_unknownFields x__)
             (Control.DeepSeq.deepseq (_DVPairs'pairs x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.delegatorAddress' @:: Lens' DVVTriplet Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.validatorSrcAddress' @:: Lens' DVVTriplet Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.validatorDstAddress' @:: Lens' DVVTriplet Data.Text.Text@ -}
data DVVTriplet
  = DVVTriplet'_constructor {_DVVTriplet'delegatorAddress :: !Data.Text.Text,
                             _DVVTriplet'validatorSrcAddress :: !Data.Text.Text,
                             _DVVTriplet'validatorDstAddress :: !Data.Text.Text,
                             _DVVTriplet'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DVVTriplet where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DVVTriplet "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DVVTriplet'delegatorAddress
           (\ x__ y__ -> x__ {_DVVTriplet'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DVVTriplet "validatorSrcAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DVVTriplet'validatorSrcAddress
           (\ x__ y__ -> x__ {_DVVTriplet'validatorSrcAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DVVTriplet "validatorDstAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DVVTriplet'validatorDstAddress
           (\ x__ y__ -> x__ {_DVVTriplet'validatorDstAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message DVVTriplet where
  messageName _ = Data.Text.pack "cosmos.staking.v1beta1.DVVTriplet"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \DVVTriplet\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2L\n\
      \\NAKvalidator_src_address\CAN\STX \SOH(\tR\DC3validatorSrcAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2L\n\
      \\NAKvalidator_dst_address\CAN\ETX \SOH(\tR\DC3validatorDstAddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL"
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
              Data.ProtoLens.FieldDescriptor DVVTriplet
        validatorSrcAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_src_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorSrcAddress")) ::
              Data.ProtoLens.FieldDescriptor DVVTriplet
        validatorDstAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_dst_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorDstAddress")) ::
              Data.ProtoLens.FieldDescriptor DVVTriplet
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorSrcAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, validatorDstAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DVVTriplet'_unknownFields
        (\ x__ y__ -> x__ {_DVVTriplet'_unknownFields = y__})
  defMessage
    = DVVTriplet'_constructor
        {_DVVTriplet'delegatorAddress = Data.ProtoLens.fieldDefault,
         _DVVTriplet'validatorSrcAddress = Data.ProtoLens.fieldDefault,
         _DVVTriplet'validatorDstAddress = Data.ProtoLens.fieldDefault,
         _DVVTriplet'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DVVTriplet -> Data.ProtoLens.Encoding.Bytes.Parser DVVTriplet
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DVVTriplet"
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData DVVTriplet where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DVVTriplet'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DVVTriplet'delegatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_DVVTriplet'validatorSrcAddress x__)
                   (Control.DeepSeq.deepseq
                      (_DVVTriplet'validatorDstAddress x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.triplets' @:: Lens' DVVTriplets [DVVTriplet]@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.vec'triplets' @:: Lens' DVVTriplets (Data.Vector.Vector DVVTriplet)@ -}
data DVVTriplets
  = DVVTriplets'_constructor {_DVVTriplets'triplets :: !(Data.Vector.Vector DVVTriplet),
                              _DVVTriplets'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DVVTriplets where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DVVTriplets "triplets" [DVVTriplet] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DVVTriplets'triplets
           (\ x__ y__ -> x__ {_DVVTriplets'triplets = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DVVTriplets "vec'triplets" (Data.Vector.Vector DVVTriplet) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DVVTriplets'triplets
           (\ x__ y__ -> x__ {_DVVTriplets'triplets = y__}))
        Prelude.id
instance Data.ProtoLens.Message DVVTriplets where
  messageName _ = Data.Text.pack "cosmos.staking.v1beta1.DVVTriplets"
  packedMessageDescriptor _
    = "\n\
      \\vDVVTriplets\DC2I\n\
      \\btriplets\CAN\SOH \ETX(\v2\".cosmos.staking.v1beta1.DVVTripletR\btripletsB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        triplets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "triplets"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DVVTriplet)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"triplets")) ::
              Data.ProtoLens.FieldDescriptor DVVTriplets
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, triplets__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DVVTriplets'_unknownFields
        (\ x__ y__ -> x__ {_DVVTriplets'_unknownFields = y__})
  defMessage
    = DVVTriplets'_constructor
        {_DVVTriplets'triplets = Data.Vector.Generic.empty,
         _DVVTriplets'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DVVTriplets
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DVVTriplet
             -> Data.ProtoLens.Encoding.Bytes.Parser DVVTriplets
        loop x mutable'triplets
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'triplets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'triplets)
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
                              (Data.ProtoLens.Field.field @"vec'triplets") frozen'triplets x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "triplets"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'triplets y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'triplets
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'triplets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'triplets)
          "DVVTriplets"
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
                   (Data.ProtoLens.Field.field @"vec'triplets") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DVVTriplets where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DVVTriplets'_unknownFields x__)
             (Control.DeepSeq.deepseq (_DVVTriplets'triplets x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.delegatorAddress' @:: Lens' Delegation Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.validatorAddress' @:: Lens' Delegation Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.shares' @:: Lens' Delegation Data.Text.Text@ -}
data Delegation
  = Delegation'_constructor {_Delegation'delegatorAddress :: !Data.Text.Text,
                             _Delegation'validatorAddress :: !Data.Text.Text,
                             _Delegation'shares :: !Data.Text.Text,
                             _Delegation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Delegation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Delegation "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Delegation'delegatorAddress
           (\ x__ y__ -> x__ {_Delegation'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Delegation "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Delegation'validatorAddress
           (\ x__ y__ -> x__ {_Delegation'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Delegation "shares" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Delegation'shares (\ x__ y__ -> x__ {_Delegation'shares = y__}))
        Prelude.id
instance Data.ProtoLens.Message Delegation where
  messageName _ = Data.Text.pack "cosmos.staking.v1beta1.Delegation"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Delegation\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2E\n\
      \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2T\n\
      \\ACKshares\CAN\ETX \SOH(\tR\ACKsharesB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec:\b\136\160\US\NUL\232\160\US\NUL"
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
              Data.ProtoLens.FieldDescriptor Delegation
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor Delegation
        shares__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shares"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"shares")) ::
              Data.ProtoLens.FieldDescriptor Delegation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, shares__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Delegation'_unknownFields
        (\ x__ y__ -> x__ {_Delegation'_unknownFields = y__})
  defMessage
    = Delegation'_constructor
        {_Delegation'delegatorAddress = Data.ProtoLens.fieldDefault,
         _Delegation'validatorAddress = Data.ProtoLens.fieldDefault,
         _Delegation'shares = Data.ProtoLens.fieldDefault,
         _Delegation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Delegation -> Data.ProtoLens.Encoding.Bytes.Parser Delegation
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "shares"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"shares") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Delegation"
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
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"shares") _x
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
instance Control.DeepSeq.NFData Delegation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Delegation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Delegation'delegatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_Delegation'validatorAddress x__)
                   (Control.DeepSeq.deepseq (_Delegation'shares x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.delegation' @:: Lens' DelegationResponse Delegation@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maybe'delegation' @:: Lens' DelegationResponse (Prelude.Maybe Delegation)@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.balance' @:: Lens' DelegationResponse Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maybe'balance' @:: Lens' DelegationResponse (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data DelegationResponse
  = DelegationResponse'_constructor {_DelegationResponse'delegation :: !(Prelude.Maybe Delegation),
                                     _DelegationResponse'balance :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                     _DelegationResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DelegationResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DelegationResponse "delegation" Delegation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegationResponse'delegation
           (\ x__ y__ -> x__ {_DelegationResponse'delegation = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DelegationResponse "maybe'delegation" (Prelude.Maybe Delegation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegationResponse'delegation
           (\ x__ y__ -> x__ {_DelegationResponse'delegation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DelegationResponse "balance" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegationResponse'balance
           (\ x__ y__ -> x__ {_DelegationResponse'balance = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DelegationResponse "maybe'balance" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegationResponse'balance
           (\ x__ y__ -> x__ {_DelegationResponse'balance = y__}))
        Prelude.id
instance Data.ProtoLens.Message DelegationResponse where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.DelegationResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2DelegationResponse\DC2M\n\
      \\n\
      \delegation\CAN\SOH \SOH(\v2\".cosmos.staking.v1beta1.DelegationR\n\
      \delegationB\t\200\222\US\NUL\168\231\176*\SOH\DC2>\n\
      \\abalance\CAN\STX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\abalanceB\t\200\222\US\NUL\168\231\176*\SOH:\EOT\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        delegation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Delegation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'delegation")) ::
              Data.ProtoLens.FieldDescriptor DelegationResponse
        balance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "balance"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'balance")) ::
              Data.ProtoLens.FieldDescriptor DelegationResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegation__field_descriptor),
           (Data.ProtoLens.Tag 2, balance__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DelegationResponse'_unknownFields
        (\ x__ y__ -> x__ {_DelegationResponse'_unknownFields = y__})
  defMessage
    = DelegationResponse'_constructor
        {_DelegationResponse'delegation = Prelude.Nothing,
         _DelegationResponse'balance = Prelude.Nothing,
         _DelegationResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DelegationResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser DelegationResponse
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
                                       "delegation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"delegation") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "balance"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"balance") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DelegationResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'delegation") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'balance") _x
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
instance Control.DeepSeq.NFData DelegationResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DelegationResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DelegationResponse'delegation x__)
                (Control.DeepSeq.deepseq (_DelegationResponse'balance x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.moniker' @:: Lens' Description Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.identity' @:: Lens' Description Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.website' @:: Lens' Description Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.securityContact' @:: Lens' Description Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.details' @:: Lens' Description Data.Text.Text@ -}
data Description
  = Description'_constructor {_Description'moniker :: !Data.Text.Text,
                              _Description'identity :: !Data.Text.Text,
                              _Description'website :: !Data.Text.Text,
                              _Description'securityContact :: !Data.Text.Text,
                              _Description'details :: !Data.Text.Text,
                              _Description'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Description where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Description "moniker" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Description'moniker
           (\ x__ y__ -> x__ {_Description'moniker = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Description "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Description'identity
           (\ x__ y__ -> x__ {_Description'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Description "website" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Description'website
           (\ x__ y__ -> x__ {_Description'website = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Description "securityContact" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Description'securityContact
           (\ x__ y__ -> x__ {_Description'securityContact = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Description "details" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Description'details
           (\ x__ y__ -> x__ {_Description'details = y__}))
        Prelude.id
instance Data.ProtoLens.Message Description where
  messageName _ = Data.Text.pack "cosmos.staking.v1beta1.Description"
  packedMessageDescriptor _
    = "\n\
      \\vDescription\DC2\CAN\n\
      \\amoniker\CAN\SOH \SOH(\tR\amoniker\DC2\SUB\n\
      \\bidentity\CAN\STX \SOH(\tR\bidentity\DC2\CAN\n\
      \\awebsite\CAN\ETX \SOH(\tR\awebsite\DC2)\n\
      \\DLEsecurity_contact\CAN\EOT \SOH(\tR\SIsecurityContact\DC2\CAN\n\
      \\adetails\CAN\ENQ \SOH(\tR\adetails:\EOT\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        moniker__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "moniker"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"moniker")) ::
              Data.ProtoLens.FieldDescriptor Description
        identity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"identity")) ::
              Data.ProtoLens.FieldDescriptor Description
        website__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "website"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"website")) ::
              Data.ProtoLens.FieldDescriptor Description
        securityContact__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "security_contact"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"securityContact")) ::
              Data.ProtoLens.FieldDescriptor Description
        details__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "details"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"details")) ::
              Data.ProtoLens.FieldDescriptor Description
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, moniker__field_descriptor),
           (Data.ProtoLens.Tag 2, identity__field_descriptor),
           (Data.ProtoLens.Tag 3, website__field_descriptor),
           (Data.ProtoLens.Tag 4, securityContact__field_descriptor),
           (Data.ProtoLens.Tag 5, details__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Description'_unknownFields
        (\ x__ y__ -> x__ {_Description'_unknownFields = y__})
  defMessage
    = Description'_constructor
        {_Description'moniker = Data.ProtoLens.fieldDefault,
         _Description'identity = Data.ProtoLens.fieldDefault,
         _Description'website = Data.ProtoLens.fieldDefault,
         _Description'securityContact = Data.ProtoLens.fieldDefault,
         _Description'details = Data.ProtoLens.fieldDefault,
         _Description'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Description -> Data.ProtoLens.Encoding.Bytes.Parser Description
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
                                       "moniker"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"moniker") y x)
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
                                       "identity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identity") y x)
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
                                       "website"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"website") y x)
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
                                       "security_contact"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"securityContact") y x)
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
                                       "details"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"details") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Description"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"moniker") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"identity") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"website") _x
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
                               (Data.ProtoLens.Field.field @"securityContact") _x
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
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"details") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Description where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Description'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Description'moniker x__)
                (Control.DeepSeq.deepseq
                   (_Description'identity x__)
                   (Control.DeepSeq.deepseq
                      (_Description'website x__)
                      (Control.DeepSeq.deepseq
                         (_Description'securityContact x__)
                         (Control.DeepSeq.deepseq (_Description'details x__) ())))))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.header' @:: Lens' HistoricalInfo Proto.Tendermint.Types.Types.Header@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maybe'header' @:: Lens' HistoricalInfo (Prelude.Maybe Proto.Tendermint.Types.Types.Header)@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.valset' @:: Lens' HistoricalInfo [Validator]@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.vec'valset' @:: Lens' HistoricalInfo (Data.Vector.Vector Validator)@ -}
data HistoricalInfo
  = HistoricalInfo'_constructor {_HistoricalInfo'header :: !(Prelude.Maybe Proto.Tendermint.Types.Types.Header),
                                 _HistoricalInfo'valset :: !(Data.Vector.Vector Validator),
                                 _HistoricalInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HistoricalInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HistoricalInfo "header" Proto.Tendermint.Types.Types.Header where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HistoricalInfo'header
           (\ x__ y__ -> x__ {_HistoricalInfo'header = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HistoricalInfo "maybe'header" (Prelude.Maybe Proto.Tendermint.Types.Types.Header) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HistoricalInfo'header
           (\ x__ y__ -> x__ {_HistoricalInfo'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HistoricalInfo "valset" [Validator] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HistoricalInfo'valset
           (\ x__ y__ -> x__ {_HistoricalInfo'valset = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HistoricalInfo "vec'valset" (Data.Vector.Vector Validator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HistoricalInfo'valset
           (\ x__ y__ -> x__ {_HistoricalInfo'valset = y__}))
        Prelude.id
instance Data.ProtoLens.Message HistoricalInfo where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.HistoricalInfo"
  packedMessageDescriptor _
    = "\n\
      \\SO\&HistoricalInfo\DC2;\n\
      \\ACKheader\CAN\SOH \SOH(\v2\CAN.tendermint.types.HeaderR\ACKheaderB\t\200\222\US\NUL\168\231\176*\SOH\DC2D\n\
      \\ACKvalset\CAN\STX \ETX(\v2!.cosmos.staking.v1beta1.ValidatorR\ACKvalsetB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Types.Header)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'header")) ::
              Data.ProtoLens.FieldDescriptor HistoricalInfo
        valset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "valset"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Validator)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"valset")) ::
              Data.ProtoLens.FieldDescriptor HistoricalInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, header__field_descriptor),
           (Data.ProtoLens.Tag 2, valset__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HistoricalInfo'_unknownFields
        (\ x__ y__ -> x__ {_HistoricalInfo'_unknownFields = y__})
  defMessage
    = HistoricalInfo'_constructor
        {_HistoricalInfo'header = Prelude.Nothing,
         _HistoricalInfo'valset = Data.Vector.Generic.empty,
         _HistoricalInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HistoricalInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Validator
             -> Data.ProtoLens.Encoding.Bytes.Parser HistoricalInfo
        loop x mutable'valset
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'valset <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'valset)
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
                              (Data.ProtoLens.Field.field @"vec'valset") frozen'valset x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                                  mutable'valset
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "valset"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'valset y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'valset
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'valset <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'valset)
          "HistoricalInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'header") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'valset") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData HistoricalInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HistoricalInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HistoricalInfo'header x__)
                (Control.DeepSeq.deepseq (_HistoricalInfo'valset x__) ()))
newtype Infraction'UnrecognizedValue
  = Infraction'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Infraction
  = INFRACTION_UNSPECIFIED |
    INFRACTION_DOUBLE_SIGN |
    INFRACTION_DOWNTIME |
    Infraction'Unrecognized !Infraction'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Infraction where
  maybeToEnum 0 = Prelude.Just INFRACTION_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just INFRACTION_DOUBLE_SIGN
  maybeToEnum 2 = Prelude.Just INFRACTION_DOWNTIME
  maybeToEnum k
    = Prelude.Just
        (Infraction'Unrecognized
           (Infraction'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum INFRACTION_UNSPECIFIED = "INFRACTION_UNSPECIFIED"
  showEnum INFRACTION_DOUBLE_SIGN = "INFRACTION_DOUBLE_SIGN"
  showEnum INFRACTION_DOWNTIME = "INFRACTION_DOWNTIME"
  showEnum (Infraction'Unrecognized (Infraction'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "INFRACTION_UNSPECIFIED"
    = Prelude.Just INFRACTION_UNSPECIFIED
    | (Prelude.==) k "INFRACTION_DOUBLE_SIGN"
    = Prelude.Just INFRACTION_DOUBLE_SIGN
    | (Prelude.==) k "INFRACTION_DOWNTIME"
    = Prelude.Just INFRACTION_DOWNTIME
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Infraction where
  minBound = INFRACTION_UNSPECIFIED
  maxBound = INFRACTION_DOWNTIME
instance Prelude.Enum Infraction where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Infraction: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum INFRACTION_UNSPECIFIED = 0
  fromEnum INFRACTION_DOUBLE_SIGN = 1
  fromEnum INFRACTION_DOWNTIME = 2
  fromEnum (Infraction'Unrecognized (Infraction'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ INFRACTION_DOWNTIME
    = Prelude.error
        "Infraction.succ: bad argument INFRACTION_DOWNTIME. This value would be out of bounds."
  succ INFRACTION_UNSPECIFIED = INFRACTION_DOUBLE_SIGN
  succ INFRACTION_DOUBLE_SIGN = INFRACTION_DOWNTIME
  succ (Infraction'Unrecognized _)
    = Prelude.error "Infraction.succ: bad argument: unrecognized value"
  pred INFRACTION_UNSPECIFIED
    = Prelude.error
        "Infraction.pred: bad argument INFRACTION_UNSPECIFIED. This value would be out of bounds."
  pred INFRACTION_DOUBLE_SIGN = INFRACTION_UNSPECIFIED
  pred INFRACTION_DOWNTIME = INFRACTION_DOUBLE_SIGN
  pred (Infraction'Unrecognized _)
    = Prelude.error "Infraction.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Infraction where
  fieldDefault = INFRACTION_UNSPECIFIED
instance Control.DeepSeq.NFData Infraction where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.unbondingTime' @:: Lens' Params Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maybe'unbondingTime' @:: Lens' Params (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maxValidators' @:: Lens' Params Data.Word.Word32@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maxEntries' @:: Lens' Params Data.Word.Word32@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.historicalEntries' @:: Lens' Params Data.Word.Word32@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.bondDenom' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.minCommissionRate' @:: Lens' Params Data.Text.Text@ -}
data Params
  = Params'_constructor {_Params'unbondingTime :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                         _Params'maxValidators :: !Data.Word.Word32,
                         _Params'maxEntries :: !Data.Word.Word32,
                         _Params'historicalEntries :: !Data.Word.Word32,
                         _Params'bondDenom :: !Data.Text.Text,
                         _Params'minCommissionRate :: !Data.Text.Text,
                         _Params'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Params where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Params "unbondingTime" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'unbondingTime
           (\ x__ y__ -> x__ {_Params'unbondingTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Params "maybe'unbondingTime" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'unbondingTime
           (\ x__ y__ -> x__ {_Params'unbondingTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "maxValidators" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'maxValidators
           (\ x__ y__ -> x__ {_Params'maxValidators = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "maxEntries" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'maxEntries (\ x__ y__ -> x__ {_Params'maxEntries = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "historicalEntries" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'historicalEntries
           (\ x__ y__ -> x__ {_Params'historicalEntries = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "bondDenom" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'bondDenom (\ x__ y__ -> x__ {_Params'bondDenom = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "minCommissionRate" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'minCommissionRate
           (\ x__ y__ -> x__ {_Params'minCommissionRate = y__}))
        Prelude.id
instance Data.ProtoLens.Message Params where
  messageName _ = Data.Text.pack "cosmos.staking.v1beta1.Params"
  packedMessageDescriptor _
    = "\n\
      \\ACKParams\DC2O\n\
      \\SOunbonding_time\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\runbondingTimeB\r\200\222\US\NUL\152\223\US\SOH\168\231\176*\SOH\DC2%\n\
      \\SOmax_validators\CAN\STX \SOH(\rR\rmaxValidators\DC2\US\n\
      \\vmax_entries\CAN\ETX \SOH(\rR\n\
      \maxEntries\DC2-\n\
      \\DC2historical_entries\CAN\EOT \SOH(\rR\DC1historicalEntries\DC2\GS\n\
      \\n\
      \bond_denom\CAN\ENQ \SOH(\tR\tbondDenom\DC2\143\SOH\n\
      \\DC3min_commission_rate\CAN\ACK \SOH(\tR\DC1minCommissionRateB_\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\242\222\US\SUByaml:\"min_commission_rate\"\210\180-\n\
      \cosmos.Dec\168\231\176*\SOH:$\232\160\US\SOH\138\231\176*\ESCcosmos-sdk/x/staking/Params"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        unbondingTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unbonding_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unbondingTime")) ::
              Data.ProtoLens.FieldDescriptor Params
        maxValidators__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_validators"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxValidators")) ::
              Data.ProtoLens.FieldDescriptor Params
        maxEntries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_entries"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxEntries")) ::
              Data.ProtoLens.FieldDescriptor Params
        historicalEntries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "historical_entries"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"historicalEntries")) ::
              Data.ProtoLens.FieldDescriptor Params
        bondDenom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bond_denom"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bondDenom")) ::
              Data.ProtoLens.FieldDescriptor Params
        minCommissionRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_commission_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"minCommissionRate")) ::
              Data.ProtoLens.FieldDescriptor Params
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, unbondingTime__field_descriptor),
           (Data.ProtoLens.Tag 2, maxValidators__field_descriptor),
           (Data.ProtoLens.Tag 3, maxEntries__field_descriptor),
           (Data.ProtoLens.Tag 4, historicalEntries__field_descriptor),
           (Data.ProtoLens.Tag 5, bondDenom__field_descriptor),
           (Data.ProtoLens.Tag 6, minCommissionRate__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Params'_unknownFields
        (\ x__ y__ -> x__ {_Params'_unknownFields = y__})
  defMessage
    = Params'_constructor
        {_Params'unbondingTime = Prelude.Nothing,
         _Params'maxValidators = Data.ProtoLens.fieldDefault,
         _Params'maxEntries = Data.ProtoLens.fieldDefault,
         _Params'historicalEntries = Data.ProtoLens.fieldDefault,
         _Params'bondDenom = Data.ProtoLens.fieldDefault,
         _Params'minCommissionRate = Data.ProtoLens.fieldDefault,
         _Params'_unknownFields = []}
  parseMessage
    = let
        loop :: Params -> Data.ProtoLens.Encoding.Bytes.Parser Params
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
                                       "unbonding_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unbondingTime") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_validators"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxValidators") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_entries"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxEntries") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "historical_entries"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"historicalEntries") y x)
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
                                       "bond_denom"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bondDenom") y x)
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
                                       "min_commission_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minCommissionRate") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Params"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'unbondingTime") _x
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
                         (Data.ProtoLens.Field.field @"maxValidators") _x
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"maxEntries") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"historicalEntries") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"bondDenom") _x
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
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"minCommissionRate") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData Params where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Params'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Params'unbondingTime x__)
                (Control.DeepSeq.deepseq
                   (_Params'maxValidators x__)
                   (Control.DeepSeq.deepseq
                      (_Params'maxEntries x__)
                      (Control.DeepSeq.deepseq
                         (_Params'historicalEntries x__)
                         (Control.DeepSeq.deepseq
                            (_Params'bondDenom x__)
                            (Control.DeepSeq.deepseq (_Params'minCommissionRate x__) ()))))))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.notBondedTokens' @:: Lens' Pool Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.bondedTokens' @:: Lens' Pool Data.Text.Text@ -}
data Pool
  = Pool'_constructor {_Pool'notBondedTokens :: !Data.Text.Text,
                       _Pool'bondedTokens :: !Data.Text.Text,
                       _Pool'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Pool where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Pool "notBondedTokens" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Pool'notBondedTokens
           (\ x__ y__ -> x__ {_Pool'notBondedTokens = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Pool "bondedTokens" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Pool'bondedTokens (\ x__ y__ -> x__ {_Pool'bondedTokens = y__}))
        Prelude.id
instance Data.ProtoLens.Message Pool where
  messageName _ = Data.Text.pack "cosmos.staking.v1beta1.Pool"
  packedMessageDescriptor _
    = "\n\
      \\EOTPool\DC2\130\SOH\n\
      \\DC1not_bonded_tokens\CAN\SOH \SOH(\tR\SInotBondedTokensBV\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\234\222\US\DC1not_bonded_tokens\210\180-\n\
      \cosmos.Int\168\231\176*\SOH\DC2w\n\
      \\rbonded_tokens\CAN\STX \SOH(\tR\fbondedTokensBR\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\234\222\US\rbonded_tokens\210\180-\n\
      \cosmos.Int\168\231\176*\SOH:\b\232\160\US\SOH\240\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        notBondedTokens__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "not_bonded_tokens"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"notBondedTokens")) ::
              Data.ProtoLens.FieldDescriptor Pool
        bondedTokens__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bonded_tokens"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bondedTokens")) ::
              Data.ProtoLens.FieldDescriptor Pool
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, notBondedTokens__field_descriptor),
           (Data.ProtoLens.Tag 2, bondedTokens__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Pool'_unknownFields
        (\ x__ y__ -> x__ {_Pool'_unknownFields = y__})
  defMessage
    = Pool'_constructor
        {_Pool'notBondedTokens = Data.ProtoLens.fieldDefault,
         _Pool'bondedTokens = Data.ProtoLens.fieldDefault,
         _Pool'_unknownFields = []}
  parseMessage
    = let
        loop :: Pool -> Data.ProtoLens.Encoding.Bytes.Parser Pool
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
                                       "not_bonded_tokens"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"notBondedTokens") y x)
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
                                       "bonded_tokens"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bondedTokens") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Pool"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"notBondedTokens") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"bondedTokens") _x
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
instance Control.DeepSeq.NFData Pool where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Pool'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Pool'notBondedTokens x__)
                (Control.DeepSeq.deepseq (_Pool'bondedTokens x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.delegatorAddress' @:: Lens' Redelegation Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.validatorSrcAddress' @:: Lens' Redelegation Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.validatorDstAddress' @:: Lens' Redelegation Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.entries' @:: Lens' Redelegation [RedelegationEntry]@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.vec'entries' @:: Lens' Redelegation (Data.Vector.Vector RedelegationEntry)@ -}
data Redelegation
  = Redelegation'_constructor {_Redelegation'delegatorAddress :: !Data.Text.Text,
                               _Redelegation'validatorSrcAddress :: !Data.Text.Text,
                               _Redelegation'validatorDstAddress :: !Data.Text.Text,
                               _Redelegation'entries :: !(Data.Vector.Vector RedelegationEntry),
                               _Redelegation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Redelegation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Redelegation "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Redelegation'delegatorAddress
           (\ x__ y__ -> x__ {_Redelegation'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Redelegation "validatorSrcAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Redelegation'validatorSrcAddress
           (\ x__ y__ -> x__ {_Redelegation'validatorSrcAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Redelegation "validatorDstAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Redelegation'validatorDstAddress
           (\ x__ y__ -> x__ {_Redelegation'validatorDstAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Redelegation "entries" [RedelegationEntry] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Redelegation'entries
           (\ x__ y__ -> x__ {_Redelegation'entries = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Redelegation "vec'entries" (Data.Vector.Vector RedelegationEntry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Redelegation'entries
           (\ x__ y__ -> x__ {_Redelegation'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Message Redelegation where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.Redelegation"
  packedMessageDescriptor _
    = "\n\
      \\fRedelegation\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2L\n\
      \\NAKvalidator_src_address\CAN\STX \SOH(\tR\DC3validatorSrcAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2L\n\
      \\NAKvalidator_dst_address\CAN\ETX \SOH(\tR\DC3validatorDstAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
      \\aentries\CAN\EOT \ETX(\v2).cosmos.staking.v1beta1.RedelegationEntryR\aentriesB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL"
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
              Data.ProtoLens.FieldDescriptor Redelegation
        validatorSrcAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_src_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorSrcAddress")) ::
              Data.ProtoLens.FieldDescriptor Redelegation
        validatorDstAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_dst_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorDstAddress")) ::
              Data.ProtoLens.FieldDescriptor Redelegation
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RedelegationEntry)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"entries")) ::
              Data.ProtoLens.FieldDescriptor Redelegation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorSrcAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, validatorDstAddress__field_descriptor),
           (Data.ProtoLens.Tag 4, entries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Redelegation'_unknownFields
        (\ x__ y__ -> x__ {_Redelegation'_unknownFields = y__})
  defMessage
    = Redelegation'_constructor
        {_Redelegation'delegatorAddress = Data.ProtoLens.fieldDefault,
         _Redelegation'validatorSrcAddress = Data.ProtoLens.fieldDefault,
         _Redelegation'validatorDstAddress = Data.ProtoLens.fieldDefault,
         _Redelegation'entries = Data.Vector.Generic.empty,
         _Redelegation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Redelegation
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld RedelegationEntry
             -> Data.ProtoLens.Encoding.Bytes.Parser Redelegation
        loop x mutable'entries
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'entries)
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
                              (Data.ProtoLens.Field.field @"vec'entries") frozen'entries x))
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
                                  mutable'entries
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
                                  mutable'entries
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
                                  mutable'entries
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "entries"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'entries y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'entries
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'entries)
          "Redelegation"
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
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'entries") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Redelegation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Redelegation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Redelegation'delegatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_Redelegation'validatorSrcAddress x__)
                   (Control.DeepSeq.deepseq
                      (_Redelegation'validatorDstAddress x__)
                      (Control.DeepSeq.deepseq (_Redelegation'entries x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.creationHeight' @:: Lens' RedelegationEntry Data.Int.Int64@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.completionTime' @:: Lens' RedelegationEntry Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maybe'completionTime' @:: Lens' RedelegationEntry (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.initialBalance' @:: Lens' RedelegationEntry Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.sharesDst' @:: Lens' RedelegationEntry Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.unbondingId' @:: Lens' RedelegationEntry Data.Word.Word64@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.unbondingOnHoldRefCount' @:: Lens' RedelegationEntry Data.Int.Int64@ -}
data RedelegationEntry
  = RedelegationEntry'_constructor {_RedelegationEntry'creationHeight :: !Data.Int.Int64,
                                    _RedelegationEntry'completionTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                    _RedelegationEntry'initialBalance :: !Data.Text.Text,
                                    _RedelegationEntry'sharesDst :: !Data.Text.Text,
                                    _RedelegationEntry'unbondingId :: !Data.Word.Word64,
                                    _RedelegationEntry'unbondingOnHoldRefCount :: !Data.Int.Int64,
                                    _RedelegationEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RedelegationEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RedelegationEntry "creationHeight" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedelegationEntry'creationHeight
           (\ x__ y__ -> x__ {_RedelegationEntry'creationHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedelegationEntry "completionTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedelegationEntry'completionTime
           (\ x__ y__ -> x__ {_RedelegationEntry'completionTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedelegationEntry "maybe'completionTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedelegationEntry'completionTime
           (\ x__ y__ -> x__ {_RedelegationEntry'completionTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedelegationEntry "initialBalance" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedelegationEntry'initialBalance
           (\ x__ y__ -> x__ {_RedelegationEntry'initialBalance = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedelegationEntry "sharesDst" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedelegationEntry'sharesDst
           (\ x__ y__ -> x__ {_RedelegationEntry'sharesDst = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedelegationEntry "unbondingId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedelegationEntry'unbondingId
           (\ x__ y__ -> x__ {_RedelegationEntry'unbondingId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedelegationEntry "unbondingOnHoldRefCount" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedelegationEntry'unbondingOnHoldRefCount
           (\ x__ y__
              -> x__ {_RedelegationEntry'unbondingOnHoldRefCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message RedelegationEntry where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.RedelegationEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC1RedelegationEntry\DC2'\n\
      \\SIcreation_height\CAN\SOH \SOH(\ETXR\SOcreationHeight\DC2R\n\
      \\SIcompletion_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\SOcompletionTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2e\n\
      \\SIinitial_balance\CAN\ETX \SOH(\tR\SOinitialBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2[\n\
      \\n\
      \shares_dst\CAN\EOT \SOH(\tR\tsharesDstB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\DC2!\n\
      \\funbonding_id\CAN\ENQ \SOH(\EOTR\vunbondingId\DC2<\n\
      \\ESCunbonding_on_hold_ref_count\CAN\ACK \SOH(\ETXR\ETBunbondingOnHoldRefCount:\EOT\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        creationHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "creation_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"creationHeight")) ::
              Data.ProtoLens.FieldDescriptor RedelegationEntry
        completionTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "completion_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'completionTime")) ::
              Data.ProtoLens.FieldDescriptor RedelegationEntry
        initialBalance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_balance"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"initialBalance")) ::
              Data.ProtoLens.FieldDescriptor RedelegationEntry
        sharesDst__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shares_dst"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sharesDst")) ::
              Data.ProtoLens.FieldDescriptor RedelegationEntry
        unbondingId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unbonding_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"unbondingId")) ::
              Data.ProtoLens.FieldDescriptor RedelegationEntry
        unbondingOnHoldRefCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unbonding_on_hold_ref_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"unbondingOnHoldRefCount")) ::
              Data.ProtoLens.FieldDescriptor RedelegationEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, creationHeight__field_descriptor),
           (Data.ProtoLens.Tag 2, completionTime__field_descriptor),
           (Data.ProtoLens.Tag 3, initialBalance__field_descriptor),
           (Data.ProtoLens.Tag 4, sharesDst__field_descriptor),
           (Data.ProtoLens.Tag 5, unbondingId__field_descriptor),
           (Data.ProtoLens.Tag 6, unbondingOnHoldRefCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RedelegationEntry'_unknownFields
        (\ x__ y__ -> x__ {_RedelegationEntry'_unknownFields = y__})
  defMessage
    = RedelegationEntry'_constructor
        {_RedelegationEntry'creationHeight = Data.ProtoLens.fieldDefault,
         _RedelegationEntry'completionTime = Prelude.Nothing,
         _RedelegationEntry'initialBalance = Data.ProtoLens.fieldDefault,
         _RedelegationEntry'sharesDst = Data.ProtoLens.fieldDefault,
         _RedelegationEntry'unbondingId = Data.ProtoLens.fieldDefault,
         _RedelegationEntry'unbondingOnHoldRefCount = Data.ProtoLens.fieldDefault,
         _RedelegationEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RedelegationEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser RedelegationEntry
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
                                       "creation_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"creationHeight") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "completion_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"completionTime") y x)
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
                                       "initial_balance"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"initialBalance") y x)
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
                                       "shares_dst"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sharesDst") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "unbonding_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"unbondingId") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "unbonding_on_hold_ref_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unbondingOnHoldRefCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RedelegationEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"creationHeight") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'completionTime") _x
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
                            (Data.ProtoLens.Field.field @"initialBalance") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sharesDst") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"unbondingId") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"unbondingOnHoldRefCount") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                        _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData RedelegationEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RedelegationEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RedelegationEntry'creationHeight x__)
                (Control.DeepSeq.deepseq
                   (_RedelegationEntry'completionTime x__)
                   (Control.DeepSeq.deepseq
                      (_RedelegationEntry'initialBalance x__)
                      (Control.DeepSeq.deepseq
                         (_RedelegationEntry'sharesDst x__)
                         (Control.DeepSeq.deepseq
                            (_RedelegationEntry'unbondingId x__)
                            (Control.DeepSeq.deepseq
                               (_RedelegationEntry'unbondingOnHoldRefCount x__) ()))))))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.redelegationEntry' @:: Lens' RedelegationEntryResponse RedelegationEntry@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maybe'redelegationEntry' @:: Lens' RedelegationEntryResponse (Prelude.Maybe RedelegationEntry)@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.balance' @:: Lens' RedelegationEntryResponse Data.Text.Text@ -}
data RedelegationEntryResponse
  = RedelegationEntryResponse'_constructor {_RedelegationEntryResponse'redelegationEntry :: !(Prelude.Maybe RedelegationEntry),
                                            _RedelegationEntryResponse'balance :: !Data.Text.Text,
                                            _RedelegationEntryResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RedelegationEntryResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RedelegationEntryResponse "redelegationEntry" RedelegationEntry where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedelegationEntryResponse'redelegationEntry
           (\ x__ y__
              -> x__ {_RedelegationEntryResponse'redelegationEntry = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedelegationEntryResponse "maybe'redelegationEntry" (Prelude.Maybe RedelegationEntry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedelegationEntryResponse'redelegationEntry
           (\ x__ y__
              -> x__ {_RedelegationEntryResponse'redelegationEntry = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedelegationEntryResponse "balance" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedelegationEntryResponse'balance
           (\ x__ y__ -> x__ {_RedelegationEntryResponse'balance = y__}))
        Prelude.id
instance Data.ProtoLens.Message RedelegationEntryResponse where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.RedelegationEntryResponse"
  packedMessageDescriptor _
    = "\n\
      \\EMRedelegationEntryResponse\DC2c\n\
      \\DC2redelegation_entry\CAN\SOH \SOH(\v2).cosmos.staking.v1beta1.RedelegationEntryR\DC1redelegationEntryB\t\200\222\US\NUL\168\231\176*\SOH\DC2V\n\
      \\abalance\CAN\EOT \SOH(\tR\abalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int:\EOT\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        redelegationEntry__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "redelegation_entry"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RedelegationEntry)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'redelegationEntry")) ::
              Data.ProtoLens.FieldDescriptor RedelegationEntryResponse
        balance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "balance"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"balance")) ::
              Data.ProtoLens.FieldDescriptor RedelegationEntryResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, redelegationEntry__field_descriptor),
           (Data.ProtoLens.Tag 4, balance__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RedelegationEntryResponse'_unknownFields
        (\ x__ y__
           -> x__ {_RedelegationEntryResponse'_unknownFields = y__})
  defMessage
    = RedelegationEntryResponse'_constructor
        {_RedelegationEntryResponse'redelegationEntry = Prelude.Nothing,
         _RedelegationEntryResponse'balance = Data.ProtoLens.fieldDefault,
         _RedelegationEntryResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RedelegationEntryResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser RedelegationEntryResponse
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
                                       "redelegation_entry"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"redelegationEntry") y x)
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
                                       "balance"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"balance") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RedelegationEntryResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'redelegationEntry") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"balance") _x
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
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RedelegationEntryResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RedelegationEntryResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RedelegationEntryResponse'redelegationEntry x__)
                (Control.DeepSeq.deepseq
                   (_RedelegationEntryResponse'balance x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.redelegation' @:: Lens' RedelegationResponse Redelegation@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maybe'redelegation' @:: Lens' RedelegationResponse (Prelude.Maybe Redelegation)@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.entries' @:: Lens' RedelegationResponse [RedelegationEntryResponse]@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.vec'entries' @:: Lens' RedelegationResponse (Data.Vector.Vector RedelegationEntryResponse)@ -}
data RedelegationResponse
  = RedelegationResponse'_constructor {_RedelegationResponse'redelegation :: !(Prelude.Maybe Redelegation),
                                       _RedelegationResponse'entries :: !(Data.Vector.Vector RedelegationEntryResponse),
                                       _RedelegationResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RedelegationResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RedelegationResponse "redelegation" Redelegation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedelegationResponse'redelegation
           (\ x__ y__ -> x__ {_RedelegationResponse'redelegation = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RedelegationResponse "maybe'redelegation" (Prelude.Maybe Redelegation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedelegationResponse'redelegation
           (\ x__ y__ -> x__ {_RedelegationResponse'redelegation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RedelegationResponse "entries" [RedelegationEntryResponse] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedelegationResponse'entries
           (\ x__ y__ -> x__ {_RedelegationResponse'entries = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RedelegationResponse "vec'entries" (Data.Vector.Vector RedelegationEntryResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RedelegationResponse'entries
           (\ x__ y__ -> x__ {_RedelegationResponse'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Message RedelegationResponse where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.RedelegationResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4RedelegationResponse\DC2S\n\
      \\fredelegation\CAN\SOH \SOH(\v2$.cosmos.staking.v1beta1.RedelegationR\fredelegationB\t\200\222\US\NUL\168\231\176*\SOH\DC2V\n\
      \\aentries\CAN\STX \ETX(\v21.cosmos.staking.v1beta1.RedelegationEntryResponseR\aentriesB\t\200\222\US\NUL\168\231\176*\SOH:\EOT\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        redelegation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "redelegation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Redelegation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'redelegation")) ::
              Data.ProtoLens.FieldDescriptor RedelegationResponse
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RedelegationEntryResponse)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"entries")) ::
              Data.ProtoLens.FieldDescriptor RedelegationResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, redelegation__field_descriptor),
           (Data.ProtoLens.Tag 2, entries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RedelegationResponse'_unknownFields
        (\ x__ y__ -> x__ {_RedelegationResponse'_unknownFields = y__})
  defMessage
    = RedelegationResponse'_constructor
        {_RedelegationResponse'redelegation = Prelude.Nothing,
         _RedelegationResponse'entries = Data.Vector.Generic.empty,
         _RedelegationResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RedelegationResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld RedelegationEntryResponse
             -> Data.ProtoLens.Encoding.Bytes.Parser RedelegationResponse
        loop x mutable'entries
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'entries)
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
                              (Data.ProtoLens.Field.field @"vec'entries") frozen'entries x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "redelegation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"redelegation") y x)
                                  mutable'entries
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "entries"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'entries y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'entries
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'entries)
          "RedelegationResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'redelegation") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'entries") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RedelegationResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RedelegationResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RedelegationResponse'redelegation x__)
                (Control.DeepSeq.deepseq (_RedelegationResponse'entries x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.delegatorAddress' @:: Lens' UnbondingDelegation Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.validatorAddress' @:: Lens' UnbondingDelegation Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.entries' @:: Lens' UnbondingDelegation [UnbondingDelegationEntry]@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.vec'entries' @:: Lens' UnbondingDelegation (Data.Vector.Vector UnbondingDelegationEntry)@ -}
data UnbondingDelegation
  = UnbondingDelegation'_constructor {_UnbondingDelegation'delegatorAddress :: !Data.Text.Text,
                                      _UnbondingDelegation'validatorAddress :: !Data.Text.Text,
                                      _UnbondingDelegation'entries :: !(Data.Vector.Vector UnbondingDelegationEntry),
                                      _UnbondingDelegation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UnbondingDelegation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UnbondingDelegation "delegatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnbondingDelegation'delegatorAddress
           (\ x__ y__ -> x__ {_UnbondingDelegation'delegatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UnbondingDelegation "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnbondingDelegation'validatorAddress
           (\ x__ y__ -> x__ {_UnbondingDelegation'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UnbondingDelegation "entries" [UnbondingDelegationEntry] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnbondingDelegation'entries
           (\ x__ y__ -> x__ {_UnbondingDelegation'entries = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField UnbondingDelegation "vec'entries" (Data.Vector.Vector UnbondingDelegationEntry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnbondingDelegation'entries
           (\ x__ y__ -> x__ {_UnbondingDelegation'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Message UnbondingDelegation where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.UnbondingDelegation"
  packedMessageDescriptor _
    = "\n\
      \\DC3UnbondingDelegation\DC2E\n\
      \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2E\n\
      \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2U\n\
      \\aentries\CAN\ETX \ETX(\v20.cosmos.staking.v1beta1.UnbondingDelegationEntryR\aentriesB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL"
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
              Data.ProtoLens.FieldDescriptor UnbondingDelegation
        validatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorAddress")) ::
              Data.ProtoLens.FieldDescriptor UnbondingDelegation
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UnbondingDelegationEntry)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"entries")) ::
              Data.ProtoLens.FieldDescriptor UnbondingDelegation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, delegatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, entries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UnbondingDelegation'_unknownFields
        (\ x__ y__ -> x__ {_UnbondingDelegation'_unknownFields = y__})
  defMessage
    = UnbondingDelegation'_constructor
        {_UnbondingDelegation'delegatorAddress = Data.ProtoLens.fieldDefault,
         _UnbondingDelegation'validatorAddress = Data.ProtoLens.fieldDefault,
         _UnbondingDelegation'entries = Data.Vector.Generic.empty,
         _UnbondingDelegation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UnbondingDelegation
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld UnbondingDelegationEntry
             -> Data.ProtoLens.Encoding.Bytes.Parser UnbondingDelegation
        loop x mutable'entries
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'entries)
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
                              (Data.ProtoLens.Field.field @"vec'entries") frozen'entries x))
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
                                  mutable'entries
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
                                  mutable'entries
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "entries"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'entries y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'entries
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'entries)
          "UnbondingDelegation"
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'entries") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData UnbondingDelegation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UnbondingDelegation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UnbondingDelegation'delegatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_UnbondingDelegation'validatorAddress x__)
                   (Control.DeepSeq.deepseq (_UnbondingDelegation'entries x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.creationHeight' @:: Lens' UnbondingDelegationEntry Data.Int.Int64@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.completionTime' @:: Lens' UnbondingDelegationEntry Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maybe'completionTime' @:: Lens' UnbondingDelegationEntry (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.initialBalance' @:: Lens' UnbondingDelegationEntry Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.balance' @:: Lens' UnbondingDelegationEntry Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.unbondingId' @:: Lens' UnbondingDelegationEntry Data.Word.Word64@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.unbondingOnHoldRefCount' @:: Lens' UnbondingDelegationEntry Data.Int.Int64@ -}
data UnbondingDelegationEntry
  = UnbondingDelegationEntry'_constructor {_UnbondingDelegationEntry'creationHeight :: !Data.Int.Int64,
                                           _UnbondingDelegationEntry'completionTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                           _UnbondingDelegationEntry'initialBalance :: !Data.Text.Text,
                                           _UnbondingDelegationEntry'balance :: !Data.Text.Text,
                                           _UnbondingDelegationEntry'unbondingId :: !Data.Word.Word64,
                                           _UnbondingDelegationEntry'unbondingOnHoldRefCount :: !Data.Int.Int64,
                                           _UnbondingDelegationEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UnbondingDelegationEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UnbondingDelegationEntry "creationHeight" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnbondingDelegationEntry'creationHeight
           (\ x__ y__
              -> x__ {_UnbondingDelegationEntry'creationHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UnbondingDelegationEntry "completionTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnbondingDelegationEntry'completionTime
           (\ x__ y__
              -> x__ {_UnbondingDelegationEntry'completionTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UnbondingDelegationEntry "maybe'completionTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnbondingDelegationEntry'completionTime
           (\ x__ y__
              -> x__ {_UnbondingDelegationEntry'completionTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UnbondingDelegationEntry "initialBalance" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnbondingDelegationEntry'initialBalance
           (\ x__ y__
              -> x__ {_UnbondingDelegationEntry'initialBalance = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UnbondingDelegationEntry "balance" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnbondingDelegationEntry'balance
           (\ x__ y__ -> x__ {_UnbondingDelegationEntry'balance = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UnbondingDelegationEntry "unbondingId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnbondingDelegationEntry'unbondingId
           (\ x__ y__ -> x__ {_UnbondingDelegationEntry'unbondingId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UnbondingDelegationEntry "unbondingOnHoldRefCount" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UnbondingDelegationEntry'unbondingOnHoldRefCount
           (\ x__ y__
              -> x__ {_UnbondingDelegationEntry'unbondingOnHoldRefCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message UnbondingDelegationEntry where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.UnbondingDelegationEntry"
  packedMessageDescriptor _
    = "\n\
      \\CANUnbondingDelegationEntry\DC2'\n\
      \\SIcreation_height\CAN\SOH \SOH(\ETXR\SOcreationHeight\DC2R\n\
      \\SIcompletion_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\SOcompletionTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2e\n\
      \\SIinitial_balance\CAN\ETX \SOH(\tR\SOinitialBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2V\n\
      \\abalance\CAN\EOT \SOH(\tR\abalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2!\n\
      \\funbonding_id\CAN\ENQ \SOH(\EOTR\vunbondingId\DC2<\n\
      \\ESCunbonding_on_hold_ref_count\CAN\ACK \SOH(\ETXR\ETBunbondingOnHoldRefCount:\EOT\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        creationHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "creation_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"creationHeight")) ::
              Data.ProtoLens.FieldDescriptor UnbondingDelegationEntry
        completionTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "completion_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'completionTime")) ::
              Data.ProtoLens.FieldDescriptor UnbondingDelegationEntry
        initialBalance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_balance"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"initialBalance")) ::
              Data.ProtoLens.FieldDescriptor UnbondingDelegationEntry
        balance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "balance"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"balance")) ::
              Data.ProtoLens.FieldDescriptor UnbondingDelegationEntry
        unbondingId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unbonding_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"unbondingId")) ::
              Data.ProtoLens.FieldDescriptor UnbondingDelegationEntry
        unbondingOnHoldRefCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unbonding_on_hold_ref_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"unbondingOnHoldRefCount")) ::
              Data.ProtoLens.FieldDescriptor UnbondingDelegationEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, creationHeight__field_descriptor),
           (Data.ProtoLens.Tag 2, completionTime__field_descriptor),
           (Data.ProtoLens.Tag 3, initialBalance__field_descriptor),
           (Data.ProtoLens.Tag 4, balance__field_descriptor),
           (Data.ProtoLens.Tag 5, unbondingId__field_descriptor),
           (Data.ProtoLens.Tag 6, unbondingOnHoldRefCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UnbondingDelegationEntry'_unknownFields
        (\ x__ y__ -> x__ {_UnbondingDelegationEntry'_unknownFields = y__})
  defMessage
    = UnbondingDelegationEntry'_constructor
        {_UnbondingDelegationEntry'creationHeight = Data.ProtoLens.fieldDefault,
         _UnbondingDelegationEntry'completionTime = Prelude.Nothing,
         _UnbondingDelegationEntry'initialBalance = Data.ProtoLens.fieldDefault,
         _UnbondingDelegationEntry'balance = Data.ProtoLens.fieldDefault,
         _UnbondingDelegationEntry'unbondingId = Data.ProtoLens.fieldDefault,
         _UnbondingDelegationEntry'unbondingOnHoldRefCount = Data.ProtoLens.fieldDefault,
         _UnbondingDelegationEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UnbondingDelegationEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser UnbondingDelegationEntry
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
                                       "creation_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"creationHeight") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "completion_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"completionTime") y x)
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
                                       "initial_balance"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"initialBalance") y x)
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
                                       "balance"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"balance") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "unbonding_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"unbondingId") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "unbonding_on_hold_ref_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unbondingOnHoldRefCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UnbondingDelegationEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"creationHeight") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'completionTime") _x
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
                            (Data.ProtoLens.Field.field @"initialBalance") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"balance") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"unbondingId") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"unbondingOnHoldRefCount") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                        _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData UnbondingDelegationEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UnbondingDelegationEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UnbondingDelegationEntry'creationHeight x__)
                (Control.DeepSeq.deepseq
                   (_UnbondingDelegationEntry'completionTime x__)
                   (Control.DeepSeq.deepseq
                      (_UnbondingDelegationEntry'initialBalance x__)
                      (Control.DeepSeq.deepseq
                         (_UnbondingDelegationEntry'balance x__)
                         (Control.DeepSeq.deepseq
                            (_UnbondingDelegationEntry'unbondingId x__)
                            (Control.DeepSeq.deepseq
                               (_UnbondingDelegationEntry'unbondingOnHoldRefCount x__) ()))))))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.addresses' @:: Lens' ValAddresses [Data.Text.Text]@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.vec'addresses' @:: Lens' ValAddresses (Data.Vector.Vector Data.Text.Text)@ -}
data ValAddresses
  = ValAddresses'_constructor {_ValAddresses'addresses :: !(Data.Vector.Vector Data.Text.Text),
                               _ValAddresses'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValAddresses where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValAddresses "addresses" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValAddresses'addresses
           (\ x__ y__ -> x__ {_ValAddresses'addresses = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ValAddresses "vec'addresses" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValAddresses'addresses
           (\ x__ y__ -> x__ {_ValAddresses'addresses = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValAddresses where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.ValAddresses"
  packedMessageDescriptor _
    = "\n\
      \\fValAddresses\DC26\n\
      \\taddresses\CAN\SOH \ETX(\tR\taddressesB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        addresses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "addresses"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"addresses")) ::
              Data.ProtoLens.FieldDescriptor ValAddresses
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, addresses__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValAddresses'_unknownFields
        (\ x__ y__ -> x__ {_ValAddresses'_unknownFields = y__})
  defMessage
    = ValAddresses'_constructor
        {_ValAddresses'addresses = Data.Vector.Generic.empty,
         _ValAddresses'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValAddresses
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser ValAddresses
        loop x mutable'addresses
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'addresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'addresses)
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
                              (Data.ProtoLens.Field.field @"vec'addresses") frozen'addresses x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "addresses"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'addresses y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'addresses
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'addresses <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'addresses)
          "ValAddresses"
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
                           Data.Text.Encoding.encodeUtf8 _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'addresses") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ValAddresses where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValAddresses'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ValAddresses'addresses x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.operatorAddress' @:: Lens' Validator Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.consensusPubkey' @:: Lens' Validator Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maybe'consensusPubkey' @:: Lens' Validator (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.jailed' @:: Lens' Validator Prelude.Bool@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.status' @:: Lens' Validator BondStatus@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.tokens' @:: Lens' Validator Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.delegatorShares' @:: Lens' Validator Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.description' @:: Lens' Validator Description@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maybe'description' @:: Lens' Validator (Prelude.Maybe Description)@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.unbondingHeight' @:: Lens' Validator Data.Int.Int64@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.unbondingTime' @:: Lens' Validator Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maybe'unbondingTime' @:: Lens' Validator (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.commission' @:: Lens' Validator Commission@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.maybe'commission' @:: Lens' Validator (Prelude.Maybe Commission)@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.minSelfDelegation' @:: Lens' Validator Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.unbondingOnHoldRefCount' @:: Lens' Validator Data.Int.Int64@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.unbondingIds' @:: Lens' Validator [Data.Word.Word64]@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.vec'unbondingIds' @:: Lens' Validator (Data.Vector.Unboxed.Vector Data.Word.Word64)@ -}
data Validator
  = Validator'_constructor {_Validator'operatorAddress :: !Data.Text.Text,
                            _Validator'consensusPubkey :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                            _Validator'jailed :: !Prelude.Bool,
                            _Validator'status :: !BondStatus,
                            _Validator'tokens :: !Data.Text.Text,
                            _Validator'delegatorShares :: !Data.Text.Text,
                            _Validator'description :: !(Prelude.Maybe Description),
                            _Validator'unbondingHeight :: !Data.Int.Int64,
                            _Validator'unbondingTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                            _Validator'commission :: !(Prelude.Maybe Commission),
                            _Validator'minSelfDelegation :: !Data.Text.Text,
                            _Validator'unbondingOnHoldRefCount :: !Data.Int.Int64,
                            _Validator'unbondingIds :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                            _Validator'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Validator where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Validator "operatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'operatorAddress
           (\ x__ y__ -> x__ {_Validator'operatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "consensusPubkey" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'consensusPubkey
           (\ x__ y__ -> x__ {_Validator'consensusPubkey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Validator "maybe'consensusPubkey" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'consensusPubkey
           (\ x__ y__ -> x__ {_Validator'consensusPubkey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "jailed" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'jailed (\ x__ y__ -> x__ {_Validator'jailed = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "status" BondStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'status (\ x__ y__ -> x__ {_Validator'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "tokens" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'tokens (\ x__ y__ -> x__ {_Validator'tokens = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "delegatorShares" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'delegatorShares
           (\ x__ y__ -> x__ {_Validator'delegatorShares = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "description" Description where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'description
           (\ x__ y__ -> x__ {_Validator'description = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Validator "maybe'description" (Prelude.Maybe Description) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'description
           (\ x__ y__ -> x__ {_Validator'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "unbondingHeight" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'unbondingHeight
           (\ x__ y__ -> x__ {_Validator'unbondingHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "unbondingTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'unbondingTime
           (\ x__ y__ -> x__ {_Validator'unbondingTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Validator "maybe'unbondingTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'unbondingTime
           (\ x__ y__ -> x__ {_Validator'unbondingTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "commission" Commission where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'commission
           (\ x__ y__ -> x__ {_Validator'commission = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Validator "maybe'commission" (Prelude.Maybe Commission) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'commission
           (\ x__ y__ -> x__ {_Validator'commission = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "minSelfDelegation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'minSelfDelegation
           (\ x__ y__ -> x__ {_Validator'minSelfDelegation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "unbondingOnHoldRefCount" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'unbondingOnHoldRefCount
           (\ x__ y__ -> x__ {_Validator'unbondingOnHoldRefCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "unbondingIds" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'unbondingIds
           (\ x__ y__ -> x__ {_Validator'unbondingIds = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Validator "vec'unbondingIds" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'unbondingIds
           (\ x__ y__ -> x__ {_Validator'unbondingIds = y__}))
        Prelude.id
instance Data.ProtoLens.Message Validator where
  messageName _ = Data.Text.pack "cosmos.staking.v1beta1.Validator"
  packedMessageDescriptor _
    = "\n\
      \\tValidator\DC2C\n\
      \\DLEoperator_address\CAN\SOH \SOH(\tR\SIoperatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2Y\n\
      \\DLEconsensus_pubkey\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\SIconsensusPubkeyB\CAN\202\180-\DC4cosmos.crypto.PubKey\DC2\SYN\n\
      \\ACKjailed\CAN\ETX \SOH(\bR\ACKjailed\DC2:\n\
      \\ACKstatus\CAN\EOT \SOH(\SO2\".cosmos.staking.v1beta1.BondStatusR\ACKstatus\DC2T\n\
      \\ACKtokens\CAN\ENQ \SOH(\tR\ACKtokensB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2g\n\
      \\DLEdelegator_shares\CAN\ACK \SOH(\tR\SIdelegatorSharesB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\DC2P\n\
      \\vdescription\CAN\a \SOH(\v2#.cosmos.staking.v1beta1.DescriptionR\vdescriptionB\t\200\222\US\NUL\168\231\176*\SOH\DC2)\n\
      \\DLEunbonding_height\CAN\b \SOH(\ETXR\SIunbondingHeight\DC2P\n\
      \\SOunbonding_time\CAN\t \SOH(\v2\SUB.google.protobuf.TimestampR\runbondingTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2M\n\
      \\n\
      \commission\CAN\n\
      \ \SOH(\v2\".cosmos.staking.v1beta1.CommissionR\n\
      \commissionB\t\200\222\US\NUL\168\231\176*\SOH\DC2l\n\
      \\DC3min_self_delegation\CAN\v \SOH(\tR\DC1minSelfDelegationB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2<\n\
      \\ESCunbonding_on_hold_ref_count\CAN\f \SOH(\ETXR\ETBunbondingOnHoldRefCount\DC2#\n\
      \\runbonding_ids\CAN\r \ETX(\EOTR\funbondingIds:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operatorAddress")) ::
              Data.ProtoLens.FieldDescriptor Validator
        consensusPubkey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "consensus_pubkey"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'consensusPubkey")) ::
              Data.ProtoLens.FieldDescriptor Validator
        jailed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "jailed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"jailed")) ::
              Data.ProtoLens.FieldDescriptor Validator
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor BondStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor Validator
        tokens__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tokens"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"tokens")) ::
              Data.ProtoLens.FieldDescriptor Validator
        delegatorShares__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegator_shares"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"delegatorShares")) ::
              Data.ProtoLens.FieldDescriptor Validator
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Description)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'description")) ::
              Data.ProtoLens.FieldDescriptor Validator
        unbondingHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unbonding_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"unbondingHeight")) ::
              Data.ProtoLens.FieldDescriptor Validator
        unbondingTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unbonding_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unbondingTime")) ::
              Data.ProtoLens.FieldDescriptor Validator
        commission__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commission"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Commission)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commission")) ::
              Data.ProtoLens.FieldDescriptor Validator
        minSelfDelegation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_self_delegation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"minSelfDelegation")) ::
              Data.ProtoLens.FieldDescriptor Validator
        unbondingOnHoldRefCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unbonding_on_hold_ref_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"unbondingOnHoldRefCount")) ::
              Data.ProtoLens.FieldDescriptor Validator
        unbondingIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unbonding_ids"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"unbondingIds")) ::
              Data.ProtoLens.FieldDescriptor Validator
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, consensusPubkey__field_descriptor),
           (Data.ProtoLens.Tag 3, jailed__field_descriptor),
           (Data.ProtoLens.Tag 4, status__field_descriptor),
           (Data.ProtoLens.Tag 5, tokens__field_descriptor),
           (Data.ProtoLens.Tag 6, delegatorShares__field_descriptor),
           (Data.ProtoLens.Tag 7, description__field_descriptor),
           (Data.ProtoLens.Tag 8, unbondingHeight__field_descriptor),
           (Data.ProtoLens.Tag 9, unbondingTime__field_descriptor),
           (Data.ProtoLens.Tag 10, commission__field_descriptor),
           (Data.ProtoLens.Tag 11, minSelfDelegation__field_descriptor),
           (Data.ProtoLens.Tag 12, unbondingOnHoldRefCount__field_descriptor),
           (Data.ProtoLens.Tag 13, unbondingIds__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Validator'_unknownFields
        (\ x__ y__ -> x__ {_Validator'_unknownFields = y__})
  defMessage
    = Validator'_constructor
        {_Validator'operatorAddress = Data.ProtoLens.fieldDefault,
         _Validator'consensusPubkey = Prelude.Nothing,
         _Validator'jailed = Data.ProtoLens.fieldDefault,
         _Validator'status = Data.ProtoLens.fieldDefault,
         _Validator'tokens = Data.ProtoLens.fieldDefault,
         _Validator'delegatorShares = Data.ProtoLens.fieldDefault,
         _Validator'description = Prelude.Nothing,
         _Validator'unbondingHeight = Data.ProtoLens.fieldDefault,
         _Validator'unbondingTime = Prelude.Nothing,
         _Validator'commission = Prelude.Nothing,
         _Validator'minSelfDelegation = Data.ProtoLens.fieldDefault,
         _Validator'unbondingOnHoldRefCount = Data.ProtoLens.fieldDefault,
         _Validator'unbondingIds = Data.Vector.Generic.empty,
         _Validator'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Validator
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
             -> Data.ProtoLens.Encoding.Bytes.Parser Validator
        loop x mutable'unbondingIds
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'unbondingIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'unbondingIds)
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
                              (Data.ProtoLens.Field.field @"vec'unbondingIds")
                              frozen'unbondingIds x))
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
                                       "operator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operatorAddress") y x)
                                  mutable'unbondingIds
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "consensus_pubkey"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"consensusPubkey") y x)
                                  mutable'unbondingIds
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "jailed"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"jailed") y x)
                                  mutable'unbondingIds
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                                  mutable'unbondingIds
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
                                       "tokens"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tokens") y x)
                                  mutable'unbondingIds
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
                                       "delegator_shares"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"delegatorShares") y x)
                                  mutable'unbondingIds
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                                  mutable'unbondingIds
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "unbonding_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unbondingHeight") y x)
                                  mutable'unbondingIds
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "unbonding_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unbondingTime") y x)
                                  mutable'unbondingIds
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "commission"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"commission") y x)
                                  mutable'unbondingIds
                        90
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
                                  mutable'unbondingIds
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "unbonding_on_hold_ref_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unbondingOnHoldRefCount") y x)
                                  mutable'unbondingIds
                        104
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "unbonding_ids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'unbondingIds y)
                                loop x v
                        106
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
                                                                    "unbonding_ids"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'unbondingIds)
                                loop x y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'unbondingIds
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'unbondingIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'unbondingIds)
          "Validator"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"operatorAddress") _x
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
                       (Data.ProtoLens.Field.field @"maybe'consensusPubkey") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"jailed") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                  Prelude.fromEnum _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"tokens") _x
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
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"delegatorShares") _x
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
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'description") _x
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
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"unbondingHeight") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'unbondingTime") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
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
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'commission") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
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
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"minSelfDelegation")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                    ((Prelude..)
                                                       (\ bs
                                                          -> (Data.Monoid.<>)
                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                  (Prelude.fromIntegral
                                                                     (Data.ByteString.length bs)))
                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                  bs))
                                                       Data.Text.Encoding.encodeUtf8 _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"unbondingOnHoldRefCount")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          Prelude.fromIntegral _v))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    p = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"vec'unbondingIds")
                                                          _x
                                                  in
                                                    if Data.Vector.Generic.null p then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             106)
                                                          ((\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                             (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   p))))
                                                 (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                    (Lens.Family2.view
                                                       Data.ProtoLens.unknownFields _x))))))))))))))
instance Control.DeepSeq.NFData Validator where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Validator'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Validator'operatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_Validator'consensusPubkey x__)
                   (Control.DeepSeq.deepseq
                      (_Validator'jailed x__)
                      (Control.DeepSeq.deepseq
                         (_Validator'status x__)
                         (Control.DeepSeq.deepseq
                            (_Validator'tokens x__)
                            (Control.DeepSeq.deepseq
                               (_Validator'delegatorShares x__)
                               (Control.DeepSeq.deepseq
                                  (_Validator'description x__)
                                  (Control.DeepSeq.deepseq
                                     (_Validator'unbondingHeight x__)
                                     (Control.DeepSeq.deepseq
                                        (_Validator'unbondingTime x__)
                                        (Control.DeepSeq.deepseq
                                           (_Validator'commission x__)
                                           (Control.DeepSeq.deepseq
                                              (_Validator'minSelfDelegation x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Validator'unbondingOnHoldRefCount x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Validator'unbondingIds x__) ())))))))))))))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.updates' @:: Lens' ValidatorUpdates [Proto.Tendermint.Abci.Types.ValidatorUpdate]@
         * 'Proto.Cosmos.Staking.V1beta1.Staking_Fields.vec'updates' @:: Lens' ValidatorUpdates (Data.Vector.Vector Proto.Tendermint.Abci.Types.ValidatorUpdate)@ -}
data ValidatorUpdates
  = ValidatorUpdates'_constructor {_ValidatorUpdates'updates :: !(Data.Vector.Vector Proto.Tendermint.Abci.Types.ValidatorUpdate),
                                   _ValidatorUpdates'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorUpdates where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorUpdates "updates" [Proto.Tendermint.Abci.Types.ValidatorUpdate] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorUpdates'updates
           (\ x__ y__ -> x__ {_ValidatorUpdates'updates = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ValidatorUpdates "vec'updates" (Data.Vector.Vector Proto.Tendermint.Abci.Types.ValidatorUpdate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorUpdates'updates
           (\ x__ y__ -> x__ {_ValidatorUpdates'updates = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorUpdates where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.ValidatorUpdates"
  packedMessageDescriptor _
    = "\n\
      \\DLEValidatorUpdates\DC2E\n\
      \\aupdates\CAN\SOH \ETX(\v2 .tendermint.abci.ValidatorUpdateR\aupdatesB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        updates__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "updates"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Abci.Types.ValidatorUpdate)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"updates")) ::
              Data.ProtoLens.FieldDescriptor ValidatorUpdates
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, updates__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorUpdates'_unknownFields
        (\ x__ y__ -> x__ {_ValidatorUpdates'_unknownFields = y__})
  defMessage
    = ValidatorUpdates'_constructor
        {_ValidatorUpdates'updates = Data.Vector.Generic.empty,
         _ValidatorUpdates'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorUpdates
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Tendermint.Abci.Types.ValidatorUpdate
             -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorUpdates
        loop x mutable'updates
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'updates <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'updates)
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
                              (Data.ProtoLens.Field.field @"vec'updates") frozen'updates x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "updates"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'updates y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'updates
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'updates <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'updates)
          "ValidatorUpdates"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'updates") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ValidatorUpdates where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorUpdates'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ValidatorUpdates'updates x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$cosmos/staking/v1beta1/staking.proto\DC2\SYNcosmos.staking.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\EMgoogle/protobuf/any.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\RScosmos/base/v1beta1/coin.proto\SUB\DC1amino/amino.proto\SUB\FStendermint/types/types.proto\SUB\ESCtendermint/abci/types.proto\"\147\SOH\n\
    \\SO\&HistoricalInfo\DC2;\n\
    \\ACKheader\CAN\SOH \SOH(\v2\CAN.tendermint.types.HeaderR\ACKheaderB\t\200\222\US\NUL\168\231\176*\SOH\DC2D\n\
    \\ACKvalset\CAN\STX \ETX(\v2!.cosmos.staking.v1beta1.ValidatorR\ACKvalsetB\t\200\222\US\NUL\168\231\176*\SOH\"\183\STX\n\
    \\SICommissionRates\DC2U\n\
    \\EOTrate\CAN\SOH \SOH(\tR\EOTrateBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\168\231\176*\SOH\DC2\\\n\
    \\bmax_rate\CAN\STX \SOH(\tR\amaxRateBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\168\231\176*\SOH\DC2i\n\
    \\SImax_change_rate\CAN\ETX \SOH(\tR\rmaxChangeRateBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\168\231\176*\SOH:\EOT\232\160\US\SOH\"\193\SOH\n\
    \\n\
    \Commission\DC2a\n\
    \\DLEcommission_rates\CAN\SOH \SOH(\v2'.cosmos.staking.v1beta1.CommissionRatesR\SIcommissionRatesB\r\200\222\US\NUL\208\222\US\SOH\168\231\176*\SOH\DC2J\n\
    \\vupdate_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \updateTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH:\EOT\232\160\US\SOH\"\168\SOH\n\
    \\vDescription\DC2\CAN\n\
    \\amoniker\CAN\SOH \SOH(\tR\amoniker\DC2\SUB\n\
    \\bidentity\CAN\STX \SOH(\tR\bidentity\DC2\CAN\n\
    \\awebsite\CAN\ETX \SOH(\tR\awebsite\DC2)\n\
    \\DLEsecurity_contact\CAN\EOT \SOH(\tR\SIsecurityContact\DC2\CAN\n\
    \\adetails\CAN\ENQ \SOH(\tR\adetails:\EOT\232\160\US\SOH\"\183\a\n\
    \\tValidator\DC2C\n\
    \\DLEoperator_address\CAN\SOH \SOH(\tR\SIoperatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2Y\n\
    \\DLEconsensus_pubkey\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\SIconsensusPubkeyB\CAN\202\180-\DC4cosmos.crypto.PubKey\DC2\SYN\n\
    \\ACKjailed\CAN\ETX \SOH(\bR\ACKjailed\DC2:\n\
    \\ACKstatus\CAN\EOT \SOH(\SO2\".cosmos.staking.v1beta1.BondStatusR\ACKstatus\DC2T\n\
    \\ACKtokens\CAN\ENQ \SOH(\tR\ACKtokensB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2g\n\
    \\DLEdelegator_shares\CAN\ACK \SOH(\tR\SIdelegatorSharesB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\DC2P\n\
    \\vdescription\CAN\a \SOH(\v2#.cosmos.staking.v1beta1.DescriptionR\vdescriptionB\t\200\222\US\NUL\168\231\176*\SOH\DC2)\n\
    \\DLEunbonding_height\CAN\b \SOH(\ETXR\SIunbondingHeight\DC2P\n\
    \\SOunbonding_time\CAN\t \SOH(\v2\SUB.google.protobuf.TimestampR\runbondingTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2M\n\
    \\n\
    \commission\CAN\n\
    \ \SOH(\v2\".cosmos.staking.v1beta1.CommissionR\n\
    \commissionB\t\200\222\US\NUL\168\231\176*\SOH\DC2l\n\
    \\DC3min_self_delegation\CAN\v \SOH(\tR\DC1minSelfDelegationB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2<\n\
    \\ESCunbonding_on_hold_ref_count\CAN\f \SOH(\ETXR\ETBunbondingOnHoldRefCount\DC2#\n\
    \\runbonding_ids\CAN\r \ETX(\EOTR\funbondingIds:\b\136\160\US\NUL\232\160\US\NUL\"F\n\
    \\fValAddresses\DC26\n\
    \\taddresses\CAN\SOH \ETX(\tR\taddressesB\CAN\210\180-\DC4cosmos.AddressString\"\160\SOH\n\
    \\ACKDVPair\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2E\n\
    \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL\"J\n\
    \\aDVPairs\DC2?\n\
    \\ENQpairs\CAN\SOH \ETX(\v2\RS.cosmos.staking.v1beta1.DVPairR\ENQpairsB\t\200\222\US\NUL\168\231\176*\SOH\"\249\SOH\n\
    \\n\
    \DVVTriplet\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2L\n\
    \\NAKvalidator_src_address\CAN\STX \SOH(\tR\DC3validatorSrcAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2L\n\
    \\NAKvalidator_dst_address\CAN\ETX \SOH(\tR\DC3validatorDstAddressB\CAN\210\180-\DC4cosmos.AddressString:\b\136\160\US\NUL\232\160\US\NUL\"X\n\
    \\vDVVTriplets\DC2I\n\
    \\btriplets\CAN\SOH \ETX(\v2\".cosmos.staking.v1beta1.DVVTripletR\btripletsB\t\200\222\US\NUL\168\231\176*\SOH\"\250\SOH\n\
    \\n\
    \Delegation\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2E\n\
    \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2T\n\
    \\ACKshares\CAN\ETX \SOH(\tR\ACKsharesB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec:\b\136\160\US\NUL\232\160\US\NUL\"\132\STX\n\
    \\DC3UnbondingDelegation\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2E\n\
    \\DC1validator_address\CAN\STX \SOH(\tR\DLEvalidatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2U\n\
    \\aentries\CAN\ETX \ETX(\v20.cosmos.staking.v1beta1.UnbondingDelegationEntryR\aentriesB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL\"\189\ETX\n\
    \\CANUnbondingDelegationEntry\DC2'\n\
    \\SIcreation_height\CAN\SOH \SOH(\ETXR\SOcreationHeight\DC2R\n\
    \\SIcompletion_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\SOcompletionTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2e\n\
    \\SIinitial_balance\CAN\ETX \SOH(\tR\SOinitialBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2V\n\
    \\abalance\CAN\EOT \SOH(\tR\abalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2!\n\
    \\funbonding_id\CAN\ENQ \SOH(\EOTR\vunbondingId\DC2<\n\
    \\ESCunbonding_on_hold_ref_count\CAN\ACK \SOH(\ETXR\ETBunbondingOnHoldRefCount:\EOT\232\160\US\SOH\"\187\ETX\n\
    \\DC1RedelegationEntry\DC2'\n\
    \\SIcreation_height\CAN\SOH \SOH(\ETXR\SOcreationHeight\DC2R\n\
    \\SIcompletion_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\SOcompletionTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2e\n\
    \\SIinitial_balance\CAN\ETX \SOH(\tR\SOinitialBalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2[\n\
    \\n\
    \shares_dst\CAN\EOT \SOH(\tR\tsharesDstB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\DC2!\n\
    \\funbonding_id\CAN\ENQ \SOH(\EOTR\vunbondingId\DC2<\n\
    \\ESCunbonding_on_hold_ref_count\CAN\ACK \SOH(\ETXR\ETBunbondingOnHoldRefCount:\EOT\232\160\US\SOH\"\203\STX\n\
    \\fRedelegation\DC2E\n\
    \\DC1delegator_address\CAN\SOH \SOH(\tR\DLEdelegatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2L\n\
    \\NAKvalidator_src_address\CAN\STX \SOH(\tR\DC3validatorSrcAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2L\n\
    \\NAKvalidator_dst_address\CAN\ETX \SOH(\tR\DC3validatorDstAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2N\n\
    \\aentries\CAN\EOT \ETX(\v2).cosmos.staking.v1beta1.RedelegationEntryR\aentriesB\t\200\222\US\NUL\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL\"\167\ETX\n\
    \\ACKParams\DC2O\n\
    \\SOunbonding_time\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\runbondingTimeB\r\200\222\US\NUL\152\223\US\SOH\168\231\176*\SOH\DC2%\n\
    \\SOmax_validators\CAN\STX \SOH(\rR\rmaxValidators\DC2\US\n\
    \\vmax_entries\CAN\ETX \SOH(\rR\n\
    \maxEntries\DC2-\n\
    \\DC2historical_entries\CAN\EOT \SOH(\rR\DC1historicalEntries\DC2\GS\n\
    \\n\
    \bond_denom\CAN\ENQ \SOH(\tR\tbondDenom\DC2\143\SOH\n\
    \\DC3min_commission_rate\CAN\ACK \SOH(\tR\DC1minCommissionRateB_\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\242\222\US\SUByaml:\"min_commission_rate\"\210\180-\n\
    \cosmos.Dec\168\231\176*\SOH:$\232\160\US\SOH\138\231\176*\ESCcosmos-sdk/x/staking/Params\"\169\SOH\n\
    \\DC2DelegationResponse\DC2M\n\
    \\n\
    \delegation\CAN\SOH \SOH(\v2\".cosmos.staking.v1beta1.DelegationR\n\
    \delegationB\t\200\222\US\NUL\168\231\176*\SOH\DC2>\n\
    \\abalance\CAN\STX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\abalanceB\t\200\222\US\NUL\168\231\176*\SOH:\EOT\232\160\US\NUL\"\222\SOH\n\
    \\EMRedelegationEntryResponse\DC2c\n\
    \\DC2redelegation_entry\CAN\SOH \SOH(\v2).cosmos.staking.v1beta1.RedelegationEntryR\DC1redelegationEntryB\t\200\222\US\NUL\168\231\176*\SOH\DC2V\n\
    \\abalance\CAN\EOT \SOH(\tR\abalanceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int:\EOT\232\160\US\SOH\"\201\SOH\n\
    \\DC4RedelegationResponse\DC2S\n\
    \\fredelegation\CAN\SOH \SOH(\v2$.cosmos.staking.v1beta1.RedelegationR\fredelegationB\t\200\222\US\NUL\168\231\176*\SOH\DC2V\n\
    \\aentries\CAN\STX \ETX(\v21.cosmos.staking.v1beta1.RedelegationEntryResponseR\aentriesB\t\200\222\US\NUL\168\231\176*\SOH:\EOT\232\160\US\NUL\"\142\STX\n\
    \\EOTPool\DC2\130\SOH\n\
    \\DC1not_bonded_tokens\CAN\SOH \SOH(\tR\SInotBondedTokensBV\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\234\222\US\DC1not_bonded_tokens\210\180-\n\
    \cosmos.Int\168\231\176*\SOH\DC2w\n\
    \\rbonded_tokens\CAN\STX \SOH(\tR\fbondedTokensBR\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\234\222\US\rbonded_tokens\210\180-\n\
    \cosmos.Int\168\231\176*\SOH:\b\232\160\US\SOH\240\160\US\SOH\"Y\n\
    \\DLEValidatorUpdates\DC2E\n\
    \\aupdates\CAN\SOH \ETX(\v2 .tendermint.abci.ValidatorUpdateR\aupdatesB\t\200\222\US\NUL\168\231\176*\SOH*\182\SOH\n\
    \\n\
    \BondStatus\DC2,\n\
    \\ETBBOND_STATUS_UNSPECIFIED\DLE\NUL\SUB\SI\138\157 \vUnspecified\DC2&\n\
    \\DC4BOND_STATUS_UNBONDED\DLE\SOH\SUB\f\138\157 \bUnbonded\DC2(\n\
    \\NAKBOND_STATUS_UNBONDING\DLE\STX\SUB\r\138\157 \tUnbonding\DC2\"\n\
    \\DC2BOND_STATUS_BONDED\DLE\ETX\SUB\n\
    \\138\157 \ACKBonded\SUB\EOT\136\163\RS\NUL*]\n\
    \\n\
    \Infraction\DC2\SUB\n\
    \\SYNINFRACTION_UNSPECIFIED\DLE\NUL\DC2\SUB\n\
    \\SYNINFRACTION_DOUBLE_SIGN\DLE\SOH\DC2\ETB\n\
    \\DC3INFRACTION_DOWNTIME\DLE\STXB.Z,github.com/cosmos/cosmos-sdk/x/staking/typesJ\252~\n\
    \\a\DC2\ENQ\NUL\NUL\137\ETX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\US\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL)\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL#\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL(\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\n\
    \\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\v\NUL&\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\f\NUL%\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULC\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\SO\NULC\n\
    \\132\STX\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL\ETB\SOH\SUB\247\SOH HistoricalInfo contains header and validator information for a given block.\n\
    \ It is stored as part of staking module's state, which persists the `n` most\n\
    \ recent HistoricalInfo\n\
    \ (`n` is set by the staking module's `historical_entries` parameter).\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\SYN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\NAK\STXc\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\NAK\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\NAK\SUB \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\NAK#$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\NAK%b\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\NAK&B\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\245\140\166\ENQ\DC2\ETX\NAKDa\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SYN\STXc\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\SYN\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SYN\SUB \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SYN#$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\SYN%b\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\SYN&B\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX\SYNDa\n\
    \h\n\
    \\STX\EOT\SOH\DC2\EOT\ESC\NUL3\SOH\SUB\\ CommissionRates defines the initial commission rates to be used for creating\n\
    \ a validator.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\ESC\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX\FS\STX\"\n\
    \\r\n\
    \\ACK\EOT\SOH\a\141\244\ETX\DC2\ETX\FS\STX\"\n\
    \Q\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\US\STX$\EOT\SUBC rate is the commission rate charged to delegators, as a fraction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\US\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\US\DLE\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\EOT\US\DC2$\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\202\214\ENQ\DC2\ETX \EOT)\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\235\251\ETX\DC2\ETX!\EOTE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\ETX\"\EOT\"\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\NUL\b\245\140\166\ENQ\DC2\ETX#\EOT!\n\
    \l\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT&\STX+\EOT\SUB^ max_rate defines the maximum commission rate which validator can ever charge, as a fraction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX&\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX&\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX&\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\EOT&\SYN+\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\202\214\ENQ\DC2\ETX'\EOT)\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\235\251\ETX\DC2\ETX(\EOTE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\233\251\ETX\DC2\ETX)\EOT\"\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\SOH\b\245\140\166\ENQ\DC2\ETX*\EOT!\n\
    \n\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT-\STX2\EOT\SUB` max_change_rate defines the maximum daily increase of the validator commission, as a fraction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX-\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX-\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX-\ESC\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\EOT-\GS2\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\202\214\ENQ\DC2\ETX.\EOT)\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\235\251\ETX\DC2\ETX/\EOTE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\233\251\ETX\DC2\ETX0\EOT\"\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\STX\b\245\140\166\ENQ\DC2\ETX1\EOT!\n\
    \M\n\
    \\STX\EOT\STX\DC2\EOT6\NUL?\SOH\SUBA Commission defines commission parameters for a given validator.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX6\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX7\STX\"\n\
    \\r\n\
    \\ACK\EOT\STX\a\141\244\ETX\DC2\ETX7\STX\"\n\
    \j\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT:\STX;^\SUB\\ commission_rates defines the initial commission rates to be used for creating a validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX:\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX:\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX:%&\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX;\ACK]\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\234\251\ETX\DC2\ETX;\a\US\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\233\251\ETX\DC2\ETX;!=\n\
    \\DLE\n\
    \\t\EOT\STX\STX\NUL\b\245\140\166\ENQ\DC2\ETX;?\\\n\
    \M\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT=\STX>`\SUB? update_time is the last time the commission rate was changed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX=\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX=\FS'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX=*+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETX>\ACK_\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\233\251\ETX\DC2\ETX>\a#\n\
    \\DLE\n\
    \\t\EOT\STX\STX\SOH\b\245\140\166\ENQ\DC2\ETX>%B\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\242\251\ETX\DC2\ETX>D^\n\
    \:\n\
    \\STX\EOT\ETX\DC2\EOTB\NULO\SOH\SUB. Description defines a validator description.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXB\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\a\DC2\ETXC\STX\"\n\
    \\r\n\
    \\ACK\EOT\ETX\a\141\244\ETX\DC2\ETXC\STX\"\n\
    \G\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXF\STX\NAK\SUB: moniker defines a human-readable name for the validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXF\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXF\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXF\DC3\DC4\n\
    \V\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXH\STX\SYN\SUBI identity defines an optional identity signature (ex. UPort or Keybase).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETXH\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXH\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXH\DC4\NAK\n\
    \8\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXJ\STX\NAK\SUB+ website defines an optional website link.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETXJ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXJ\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXJ\DC3\DC4\n\
    \O\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETXL\STX\RS\SUBB security_contact defines an optional email for security contact.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETXL\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETXL\t\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETXL\FS\GS\n\
    \5\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETXN\STX\NAK\SUB( details define other optional details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETXN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETXN\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETXN\DC3\DC4\n\
    \\185\EOT\n\
    \\STX\EOT\EOT\DC2\ENQY\NUL\136\SOH\SOH\SUB\171\EOT Validator defines a validator, together with the total amount of the\n\
    \ Validator's bond shares and their exchange rate to coins. Slashing results in\n\
    \ a decrease in the exchange rate, allowing correct calculation of future\n\
    \ undelegations without iterating over delegators. When coins are delegated to\n\
    \ this validator, the validator is credited with a delegation whose number of\n\
    \ bond shares is based on the amount of coins delegated divided by the current\n\
    \ exchange rate. Voting power can be calculated as total bonded shares\n\
    \ multiplied by exchange rate.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXY\b\DC1\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXZ\STX-\n\
    \\r\n\
    \\ACK\EOT\EOT\a\141\244\ETX\DC2\ETXZ\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETX[\STX-\n\
    \\r\n\
    \\ACK\EOT\EOT\a\129\244\ETX\DC2\ETX[\STX-\n\
    \f\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX^\STXO\SUBY operator_address defines the address of the validator's operator; bech encoded in JSON.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX^\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX^\t\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX^\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETX^\RSN\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETX^\USM\n\
    \`\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX`\STXg\SUBS consensus_pubkey is the consensus public key of the validator, as a Protobuf Any.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETX`\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX`\SYN&\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX`)*\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ETX`+f\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\201\214\ENQ\DC2\ETX`,e\n\
    \^\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXb\STX\DC2\SUBQ jailed defined whether the validator has been jailed from bonded status or not.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETXb\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXb\a\r\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXb\DLE\DC1\n\
    \J\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETXd\STX\CAN\SUB= status is the validator status (bonded/unbonding/unbonded).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\ETXd\STX\f\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETXd\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETXd\SYN\ETB\n\
    \K\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\EOTf\STXj\EOT\SUB= tokens define the delegated tokens (incl. self-delegation).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETXf\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETXf\t\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETXf\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\b\DC2\EOTf\DC4j\ETX\n\
    \\SI\n\
    \\b\EOT\EOT\STX\EOT\b\202\214\ENQ\DC2\ETXg\EOT)\n\
    \\SI\n\
    \\b\EOT\EOT\STX\EOT\b\235\251\ETX\DC2\ETXh\EOTE\n\
    \\SI\n\
    \\b\EOT\EOT\STX\EOT\b\233\251\ETX\DC2\ETXi\EOT\"\n\
    \Y\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\EOTl\STXp\EOT\SUBK delegator_shares defines total shares issued to a validator's delegators.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ENQ\DC2\ETXl\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\ETXl\t\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\ETXl\FS\GS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\b\DC2\EOTl\RSp\ETX\n\
    \\SI\n\
    \\b\EOT\EOT\STX\ENQ\b\202\214\ENQ\DC2\ETXm\EOT)\n\
    \\SI\n\
    \\b\EOT\EOT\STX\ENQ\b\235\251\ETX\DC2\ETXn\EOTE\n\
    \\SI\n\
    \\b\EOT\EOT\STX\ENQ\b\233\251\ETX\DC2\ETXo\EOT\"\n\
    \K\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\ETXr\STX\\\SUB> description defines the description terms for the validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ACK\DC2\ETXr\STX\r\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\ETXr\SO\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\ETXr\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\b\DC2\ETXr\RS[\n\
    \\SI\n\
    \\b\EOT\EOT\STX\ACK\b\233\251\ETX\DC2\ETXr\US;\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\ACK\b\245\140\166\ENQ\DC2\ETXr=Z\n\
    \n\n\
    \\EOT\EOT\EOT\STX\a\DC2\ETXt\STX\GS\SUBa unbonding_height defines, if unbonding, the height at which this validator has begun unbonding.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\ENQ\DC2\ETXt\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\SOH\DC2\ETXt\b\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\ETX\DC2\ETXt\ESC\FS\n\
    \k\n\
    \\EOT\EOT\EOT\STX\b\DC2\EOTv\STXw`\SUB] unbonding_time defines, if unbonding, the min time for the validator to complete unbonding.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\ACK\DC2\ETXv\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\SOH\DC2\ETXv\FS*\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\ETX\DC2\ETXv-.\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\b\DC2\ETXw\ACK_\n\
    \\SI\n\
    \\b\EOT\EOT\STX\b\b\233\251\ETX\DC2\ETXw\a#\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\b\b\245\140\166\ENQ\DC2\ETXw%B\n\
    \\SI\n\
    \\b\EOT\EOT\STX\b\b\242\251\ETX\DC2\ETXwD^\n\
    \<\n\
    \\EOT\EOT\EOT\STX\t\DC2\ETXy\STX[\SUB/ commission defines the commission parameters.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\ACK\DC2\ETXy\STX\f\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\SOH\DC2\ETXy\r\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\ETX\DC2\ETXy\SUB\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\b\DC2\ETXy\GSZ\n\
    \\SI\n\
    \\b\EOT\EOT\STX\t\b\233\251\ETX\DC2\ETXy\RS:\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\t\b\245\140\166\ENQ\DC2\ETXy<Y\n\
    \w\n\
    \\EOT\EOT\EOT\STX\n\
    \\DC2\ENQ}\STX\129\SOH\EOT\SUBh min_self_delegation is the validator's self declared minimum self delegation.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ENQ\DC2\ETX}\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\SOH\DC2\ETX}\t\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ETX\DC2\ETX}\US!\n\
    \\SO\n\
    \\ENQ\EOT\EOT\STX\n\
    \\b\DC2\ENQ}\"\129\SOH\ETX\n\
    \\SI\n\
    \\b\EOT\EOT\STX\n\
    \\b\202\214\ENQ\DC2\ETX~\EOT)\n\
    \\SI\n\
    \\b\EOT\EOT\STX\n\
    \\b\235\251\ETX\DC2\ETX\DEL\EOTE\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\n\
    \\b\233\251\ETX\DC2\EOT\128\SOH\EOT\"\n\
    \d\n\
    \\EOT\EOT\EOT\STX\v\DC2\EOT\132\SOH\STX)\SUBV strictly positive if this validator's unbonding has been stopped by external modules\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\v\ENQ\DC2\EOT\132\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\v\SOH\DC2\EOT\132\SOH\b#\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\v\ETX\DC2\EOT\132\SOH&(\n\
    \^\n\
    \\EOT\EOT\EOT\STX\f\DC2\EOT\135\SOH\STX%\SUBP list of unbonding ids, each uniquely identifing an unbonding of this validator\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\f\EOT\DC2\EOT\135\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\f\ENQ\DC2\EOT\135\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\f\SOH\DC2\EOT\135\SOH\DC2\US\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\f\ETX\DC2\EOT\135\SOH\"$\n\
    \8\n\
    \\STX\ENQ\NUL\DC2\ACK\139\SOH\NUL\150\SOH\SOH\SUB* BondStatus is the status of a validator.\n\
    \\n\
    \\v\n\
    \\ETX\ENQ\NUL\SOH\DC2\EOT\139\SOH\ENQ\SI\n\
    \\v\n\
    \\ETX\ENQ\NUL\ETX\DC2\EOT\140\SOH\STX1\n\
    \\SO\n\
    \\ACK\ENQ\NUL\ETX\177\228\ETX\DC2\EOT\140\SOH\STX1\n\
    \@\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\EOT\143\SOH\STXQ\SUB2 UNSPECIFIED defines an invalid validator status.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\EOT\143\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\EOT\143\SOH\FS\GS\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\NUL\ETX\DC2\EOT\143\SOH\RSP\n\
    \\DLE\n\
    \\b\ENQ\NUL\STX\NUL\ETX\209\131\EOT\DC2\EOT\143\SOH\USO\n\
    \@\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\EOT\145\SOH\STXK\SUB2 UNBONDED defines a validator that is not bonded.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\EOT\145\SOH\STX\SYN\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\EOT\145\SOH\EM\SUB\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\SOH\ETX\DC2\EOT\145\SOH\ESCJ\n\
    \\DLE\n\
    \\b\ENQ\NUL\STX\SOH\ETX\209\131\EOT\DC2\EOT\145\SOH\FSI\n\
    \@\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\EOT\147\SOH\STXM\SUB2 UNBONDING defines a validator that is unbonding.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\EOT\147\SOH\STX\ETB\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\EOT\147\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\STX\ETX\DC2\EOT\147\SOH\FSL\n\
    \\DLE\n\
    \\b\ENQ\NUL\STX\STX\ETX\209\131\EOT\DC2\EOT\147\SOH\GSK\n\
    \:\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\EOT\149\SOH\STXG\SUB, BONDED defines a validator that is bonded.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\EOT\149\SOH\STX\DC4\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\EOT\149\SOH\ETB\CAN\n\
    \\r\n\
    \\ENQ\ENQ\NUL\STX\ETX\ETX\DC2\EOT\149\SOH\EMF\n\
    \\DLE\n\
    \\b\ENQ\NUL\STX\ETX\ETX\209\131\EOT\DC2\EOT\149\SOH\SUBE\n\
    \K\n\
    \\STX\EOT\ENQ\DC2\ACK\153\SOH\NUL\155\SOH\SOH\SUB= ValAddresses defines a repeated set of validator addresses.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\153\SOH\b\DC4\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\154\SOH\STXQ\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\EOT\154\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\154\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\154\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\154\SOH\RS\US\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\EOT\154\SOH P\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\NUL\b\202\214\ENQ\DC2\EOT\154\SOH!O\n\
    \\249\SOH\n\
    \\STX\EOT\ACK\DC2\ACK\160\SOH\NUL\166\SOH\SOH\SUB\234\SOH DVPair is struct that just has a delegator-validator pair with no other data.\n\
    \ It is intended to be used as a marshalable pointer. For example, a DVPair can\n\
    \ be used to construct the key to getting an UnbondingDelegation from state.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\160\SOH\b\SO\n\
    \\v\n\
    \\ETX\EOT\ACK\a\DC2\EOT\161\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\ACK\a\141\244\ETX\DC2\EOT\161\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\ACK\a\DC2\EOT\162\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\ACK\a\129\244\ETX\DC2\EOT\162\SOH\STX-\n\
    \\f\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\164\SOH\STXP\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\164\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\164\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\164\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\EOT\164\SOH\USO\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\202\214\ENQ\DC2\EOT\164\SOH N\n\
    \\f\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\165\SOH\STXP\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\165\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\165\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\165\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\b\DC2\EOT\165\SOH\USO\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\SOH\b\202\214\ENQ\DC2\EOT\165\SOH N\n\
    \;\n\
    \\STX\EOT\a\DC2\ACK\169\SOH\NUL\171\SOH\SOH\SUB- DVPairs defines an array of DVPair objects.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\169\SOH\b\SI\n\
    \\f\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\170\SOH\STXZ\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\EOT\170\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\170\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\170\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\170\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\EOT\170\SOH\FSY\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\233\251\ETX\DC2\EOT\170\SOH\GS9\n\
    \\DC1\n\
    \\t\EOT\a\STX\NUL\b\245\140\166\ENQ\DC2\EOT\170\SOH;X\n\
    \\135\STX\n\
    \\STX\EOT\b\DC2\ACK\177\SOH\NUL\184\SOH\SOH\SUB\248\SOH DVVTriplet is struct that just has a delegator-validator-validator triplet\n\
    \ with no other data. It is intended to be used as a marshalable pointer. For\n\
    \ example, a DVVTriplet can be used to construct the key to getting a\n\
    \ Redelegation from state.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\177\SOH\b\DC2\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\178\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\b\a\141\244\ETX\DC2\EOT\178\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\179\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\b\a\129\244\ETX\DC2\EOT\179\SOH\STX-\n\
    \\f\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\181\SOH\STXT\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\181\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\181\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\181\SOH!\"\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\181\SOH#S\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\202\214\ENQ\DC2\EOT\181\SOH$R\n\
    \\f\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\182\SOH\STXT\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\182\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\182\SOH\t\RS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\182\SOH!\"\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\b\DC2\EOT\182\SOH#S\n\
    \\DLE\n\
    \\b\EOT\b\STX\SOH\b\202\214\ENQ\DC2\EOT\182\SOH$R\n\
    \\f\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\183\SOH\STXT\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\EOT\183\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\183\SOH\t\RS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\183\SOH!\"\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\b\DC2\EOT\183\SOH#S\n\
    \\DLE\n\
    \\b\EOT\b\STX\STX\b\202\214\ENQ\DC2\EOT\183\SOH$R\n\
    \C\n\
    \\STX\EOT\t\DC2\ACK\187\SOH\NUL\189\SOH\SOH\SUB5 DVVTriplets defines an array of DVVTriplet objects.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\187\SOH\b\DC3\n\
    \\f\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\188\SOH\STXa\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\EOT\188\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\188\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\188\SOH\SYN\RS\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\188\SOH!\"\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\b\DC2\EOT\188\SOH#`\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\233\251\ETX\DC2\EOT\188\SOH$@\n\
    \\DC1\n\
    \\t\EOT\t\STX\NUL\b\245\140\166\ENQ\DC2\EOT\188\SOHB_\n\
    \\169\SOH\n\
    \\STX\EOT\n\
    \\DC2\ACK\194\SOH\NUL\208\SOH\SOH\SUB\154\SOH Delegation represents the bond with tokens held by an account. It is\n\
    \ owned by one delegator, and is associated with the voting power of one\n\
    \ validator.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\194\SOH\b\DC2\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\195\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\n\
    \\a\141\244\ETX\DC2\EOT\195\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\196\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\n\
    \\a\129\244\ETX\DC2\EOT\196\SOH\STX-\n\
    \Q\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\199\SOH\STXP\SUBC delegator_address is the bech32-encoded address of the delegator.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\199\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\199\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\199\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\b\DC2\EOT\199\SOH\USO\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\NUL\b\202\214\ENQ\DC2\EOT\199\SOH N\n\
    \Q\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\201\SOH\STXP\SUBC validator_address is the bech32-encoded address of the validator.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\EOT\201\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\201\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\201\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\b\DC2\EOT\201\SOH\USO\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\SOH\b\202\214\ENQ\DC2\EOT\201\SOH N\n\
    \?\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\ACK\203\SOH\STX\207\SOH\EOT\SUB/ shares define the delegation shares received.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ENQ\DC2\EOT\203\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\203\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\203\SOH\DC2\DC3\n\
    \\SI\n\
    \\ENQ\EOT\n\
    \\STX\STX\b\DC2\ACK\203\SOH\DC4\207\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\STX\b\202\214\ENQ\DC2\EOT\204\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\STX\b\235\251\ETX\DC2\EOT\205\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\STX\b\233\251\ETX\DC2\EOT\206\SOH\EOT\"\n\
    \\135\SOH\n\
    \\STX\EOT\v\DC2\ACK\212\SOH\NUL\223\SOH\SOH\SUBy UnbondingDelegation stores all of a single delegator's unbonding bonds\n\
    \ for a single validator in an time-ordered list.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\212\SOH\b\ESC\n\
    \\v\n\
    \\ETX\EOT\v\a\DC2\EOT\213\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\v\a\141\244\ETX\DC2\EOT\213\SOH\STX-\n\
    \\v\n\
    \\ETX\EOT\v\a\DC2\EOT\214\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\v\a\129\244\ETX\DC2\EOT\214\SOH\STX-\n\
    \Q\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\217\SOH\STXP\SUBC delegator_address is the bech32-encoded address of the delegator.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\EOT\217\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\217\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\217\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\b\DC2\EOT\217\SOH\USO\n\
    \\DLE\n\
    \\b\EOT\v\STX\NUL\b\202\214\ENQ\DC2\EOT\217\SOH N\n\
    \Q\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\219\SOH\STXP\SUBC validator_address is the bech32-encoded address of the validator.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\EOT\219\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\219\SOH\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\219\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\b\DC2\EOT\219\SOH\USO\n\
    \\DLE\n\
    \\b\EOT\v\STX\SOH\b\202\214\ENQ\DC2\EOT\219\SOH N\n\
    \_\n\
    \\EOT\EOT\v\STX\STX\DC2\ACK\221\SOH\STX\222\SOHD\SUB/ entries are the unbonding delegation entries.\n\
    \\"\RS unbonding delegation entries\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\EOT\DC2\EOT\221\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ACK\DC2\EOT\221\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\EOT\221\SOH$+\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\EOT\221\SOH./\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\b\DC2\EOT\222\SOH\ACKC\n\
    \\DLE\n\
    \\b\EOT\v\STX\STX\b\233\251\ETX\DC2\EOT\222\SOH\a#\n\
    \\DC1\n\
    \\t\EOT\v\STX\STX\b\245\140\166\ENQ\DC2\EOT\222\SOH%B\n\
    \\\\n\
    \\STX\EOT\f\DC2\ACK\226\SOH\NUL\251\SOH\SOH\SUBN UnbondingDelegationEntry defines an unbonding object with relevant metadata.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\226\SOH\b \n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\227\SOH\STX\"\n\
    \\SO\n\
    \\ACK\EOT\f\a\141\244\ETX\DC2\EOT\227\SOH\STX\"\n\
    \M\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\230\SOH\STX\FS\SUB? creation_height is the height which the unbonding took place.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\230\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\230\SOH\b\ETB\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\230\SOH\SUB\ESC\n\
    \L\n\
    \\EOT\EOT\f\STX\SOH\DC2\ACK\232\SOH\STX\233\SOH`\SUB< completion_time is the unix time for unbonding completion.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ACK\DC2\EOT\232\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\232\SOH\FS+\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\232\SOH./\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\b\DC2\EOT\233\SOH\ACK_\n\
    \\DLE\n\
    \\b\EOT\f\STX\SOH\b\233\251\ETX\DC2\EOT\233\SOH\a#\n\
    \\DC1\n\
    \\t\EOT\f\STX\SOH\b\245\140\166\ENQ\DC2\EOT\233\SOH%B\n\
    \\DLE\n\
    \\b\EOT\f\STX\SOH\b\242\251\ETX\DC2\EOT\233\SOHD^\n\
    \b\n\
    \\EOT\EOT\f\STX\STX\DC2\ACK\235\SOH\STX\239\SOH\EOT\SUBR initial_balance defines the tokens initially scheduled to receive at completion.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ENQ\DC2\EOT\235\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\EOT\235\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\EOT\235\SOH\ESC\FS\n\
    \\SI\n\
    \\ENQ\EOT\f\STX\STX\b\DC2\ACK\235\SOH\GS\239\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\f\STX\STX\b\202\214\ENQ\DC2\EOT\236\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\f\STX\STX\b\235\251\ETX\DC2\EOT\237\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\f\STX\STX\b\233\251\ETX\DC2\EOT\238\SOH\EOT\"\n\
    \F\n\
    \\EOT\EOT\f\STX\ETX\DC2\ACK\241\SOH\STX\245\SOH\EOT\SUB6 balance defines the tokens to receive at completion.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ENQ\DC2\EOT\241\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\SOH\DC2\EOT\241\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ETX\ETX\DC2\EOT\241\SOH\DC3\DC4\n\
    \\SI\n\
    \\ENQ\EOT\f\STX\ETX\b\DC2\ACK\241\SOH\NAK\245\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\f\STX\ETX\b\202\214\ENQ\DC2\EOT\242\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\f\STX\ETX\b\235\251\ETX\DC2\EOT\243\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\f\STX\ETX\b\233\251\ETX\DC2\EOT\244\SOH\EOT\"\n\
    \C\n\
    \\EOT\EOT\f\STX\EOT\DC2\EOT\247\SOH\STX\SUB\SUB5 Incrementing id that uniquely identifies this entry\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ENQ\DC2\EOT\247\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\SOH\DC2\EOT\247\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\f\STX\EOT\ETX\DC2\EOT\247\SOH\CAN\EM\n\
    \`\n\
    \\EOT\EOT\f\STX\ENQ\DC2\EOT\250\SOH\STX(\SUBR Strictly positive if this entry's unbonding has been stopped by external modules\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ENQ\DC2\EOT\250\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\SOH\DC2\EOT\250\SOH\b#\n\
    \\r\n\
    \\ENQ\EOT\f\STX\ENQ\ETX\DC2\EOT\250\SOH&'\n\
    \W\n\
    \\STX\EOT\r\DC2\ACK\254\SOH\NUL\151\STX\SOH\SUBI RedelegationEntry defines a redelegation object with relevant metadata.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\254\SOH\b\EM\n\
    \\v\n\
    \\ETX\EOT\r\a\DC2\EOT\255\SOH\STX\"\n\
    \\SO\n\
    \\ACK\EOT\r\a\141\244\ETX\DC2\EOT\255\SOH\STX\"\n\
    \V\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\130\STX\STX\FS\SUBH creation_height  defines the height which the redelegation took place.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\130\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\130\STX\b\ETB\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\130\STX\SUB\ESC\n\
    \T\n\
    \\EOT\EOT\r\STX\SOH\DC2\ACK\132\STX\STX\133\STX`\SUBD completion_time defines the unix time for redelegation completion.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ACK\DC2\EOT\132\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\132\STX\FS+\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\132\STX./\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\b\DC2\EOT\133\STX\ACK_\n\
    \\DLE\n\
    \\b\EOT\r\STX\SOH\b\233\251\ETX\DC2\EOT\133\STX\a#\n\
    \\DC1\n\
    \\t\EOT\r\STX\SOH\b\245\140\166\ENQ\DC2\EOT\133\STX%B\n\
    \\DLE\n\
    \\b\EOT\r\STX\SOH\b\242\251\ETX\DC2\EOT\133\STXD^\n\
    \X\n\
    \\EOT\EOT\r\STX\STX\DC2\ACK\135\STX\STX\139\STX\EOT\SUBH initial_balance defines the initial balance when redelegation started.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ENQ\DC2\EOT\135\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\EOT\135\STX\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\EOT\135\STX\ESC\FS\n\
    \\SI\n\
    \\ENQ\EOT\r\STX\STX\b\DC2\ACK\135\STX\GS\139\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\r\STX\STX\b\202\214\ENQ\DC2\EOT\136\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT\r\STX\STX\b\235\251\ETX\DC2\EOT\137\STX\EOTE\n\
    \\DLE\n\
    \\b\EOT\r\STX\STX\b\233\251\ETX\DC2\EOT\138\STX\EOT\"\n\
    \c\n\
    \\EOT\EOT\r\STX\ETX\DC2\ACK\141\STX\STX\145\STX\EOT\SUBS shares_dst is the amount of destination-validator shares created by redelegation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ENQ\DC2\EOT\141\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\SOH\DC2\EOT\141\STX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ETX\DC2\EOT\141\STX\SYN\ETB\n\
    \\SI\n\
    \\ENQ\EOT\r\STX\ETX\b\DC2\ACK\141\STX\CAN\145\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\r\STX\ETX\b\202\214\ENQ\DC2\EOT\142\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT\r\STX\ETX\b\235\251\ETX\DC2\EOT\143\STX\EOTE\n\
    \\DLE\n\
    \\b\EOT\r\STX\ETX\b\233\251\ETX\DC2\EOT\144\STX\EOT\"\n\
    \C\n\
    \\EOT\EOT\r\STX\EOT\DC2\EOT\147\STX\STX\SUB\SUB5 Incrementing id that uniquely identifies this entry\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\ENQ\DC2\EOT\147\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\SOH\DC2\EOT\147\STX\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\ETX\DC2\EOT\147\STX\CAN\EM\n\
    \`\n\
    \\EOT\EOT\r\STX\ENQ\DC2\EOT\150\STX\STX(\SUBR Strictly positive if this entry's unbonding has been stopped by external modules\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\ENQ\DC2\EOT\150\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\SOH\DC2\EOT\150\STX\b#\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\ETX\DC2\EOT\150\STX&'\n\
    \\169\SOH\n\
    \\STX\EOT\SO\DC2\ACK\155\STX\NUL\168\STX\SOH\SUB\154\SOH Redelegation contains the list of a particular delegator's redelegating bonds\n\
    \ from a particular source validator to a particular destination validator.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\155\STX\b\DC4\n\
    \\v\n\
    \\ETX\EOT\SO\a\DC2\EOT\156\STX\STX-\n\
    \\SO\n\
    \\ACK\EOT\SO\a\141\244\ETX\DC2\EOT\156\STX\STX-\n\
    \\v\n\
    \\ETX\EOT\SO\a\DC2\EOT\157\STX\STX-\n\
    \\SO\n\
    \\ACK\EOT\SO\a\129\244\ETX\DC2\EOT\157\STX\STX-\n\
    \Q\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\160\STX\STXP\SUBC delegator_address is the bech32-encoded address of the delegator.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\160\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\160\STX\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\160\STX\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\b\DC2\EOT\160\STX\USO\n\
    \\DLE\n\
    \\b\EOT\SO\STX\NUL\b\202\214\ENQ\DC2\EOT\160\STX N\n\
    \\\\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\162\STX\STXT\SUBN validator_src_address is the validator redelegation source operator address.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\EOT\162\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\162\STX\t\RS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\162\STX!\"\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\b\DC2\EOT\162\STX#S\n\
    \\DLE\n\
    \\b\EOT\SO\STX\SOH\b\202\214\ENQ\DC2\EOT\162\STX$R\n\
    \a\n\
    \\EOT\EOT\SO\STX\STX\DC2\EOT\164\STX\STXT\SUBS validator_dst_address is the validator redelegation destination operator address.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ENQ\DC2\EOT\164\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\SOH\DC2\EOT\164\STX\t\RS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ETX\DC2\EOT\164\STX!\"\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\b\DC2\EOT\164\STX#S\n\
    \\DLE\n\
    \\b\EOT\SO\STX\STX\b\202\214\ENQ\DC2\EOT\164\STX$R\n\
    \O\n\
    \\EOT\EOT\SO\STX\ETX\DC2\ACK\166\STX\STX\167\STXD\SUB' entries are the redelegation entries.\n\
    \\"\SYN redelegation entries\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\EOT\DC2\EOT\166\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\ACK\DC2\EOT\166\STX\v\FS\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\SOH\DC2\EOT\166\STX\GS$\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\ETX\DC2\EOT\166\STX'(\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\ETX\b\DC2\EOT\167\STX\ACKC\n\
    \\DLE\n\
    \\b\EOT\SO\STX\ETX\b\233\251\ETX\DC2\EOT\167\STX\a#\n\
    \\DC1\n\
    \\t\EOT\SO\STX\ETX\b\245\140\166\ENQ\DC2\EOT\167\STX%B\n\
    \G\n\
    \\STX\EOT\SI\DC2\ACK\171\STX\NUL\194\STX\SOH\SUB9 Params defines the parameters for the x/staking module.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\171\STX\b\SO\n\
    \\v\n\
    \\ETX\EOT\SI\a\DC2\EOT\172\STX\STX;\n\
    \\SI\n\
    \\a\EOT\SI\a\241\140\166\ENQ\DC2\EOT\172\STX\STX;\n\
    \\v\n\
    \\ETX\EOT\SI\a\DC2\EOT\173\STX\STX\"\n\
    \\SO\n\
    \\ACK\EOT\SI\a\141\244\ETX\DC2\EOT\173\STX\STX\"\n\
    \C\n\
    \\EOT\EOT\SI\STX\NUL\DC2\ACK\176\STX\STX\177\STXd\SUB3 unbonding_time is the time duration of unbonding.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ACK\DC2\EOT\176\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\176\STX\ESC)\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\176\STX,-\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\b\DC2\EOT\177\STX\ACKc\n\
    \\DLE\n\
    \\b\EOT\SI\STX\NUL\b\233\251\ETX\DC2\EOT\177\STX\a#\n\
    \\DC1\n\
    \\t\EOT\SI\STX\NUL\b\245\140\166\ENQ\DC2\EOT\177\STX%B\n\
    \\DLE\n\
    \\b\EOT\SI\STX\NUL\b\243\251\ETX\DC2\EOT\177\STXDb\n\
    \C\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\179\STX\STX\FS\SUB5 max_validators is the maximum number of validators.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ENQ\DC2\EOT\179\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\179\STX\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\179\STX\SUB\ESC\n\
    \o\n\
    \\EOT\EOT\SI\STX\STX\DC2\EOT\181\STX\STX\EM\SUBa max_entries is the max entries for either unbonding delegation or redelegation (per pair/trio).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ENQ\DC2\EOT\181\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\EOT\181\STX\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\EOT\181\STX\ETB\CAN\n\
    \R\n\
    \\EOT\EOT\SI\STX\ETX\DC2\EOT\183\STX\STX \SUBD historical_entries is the number of historical entries to persist.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ENQ\DC2\EOT\183\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\EOT\183\STX\t\ESC\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\EOT\183\STX\RS\US\n\
    \B\n\
    \\EOT\EOT\SI\STX\EOT\DC2\EOT\185\STX\STX\CAN\SUB4 bond_denom defines the bondable coin denomination.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ENQ\DC2\EOT\185\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\SOH\DC2\EOT\185\STX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\EOT\ETX\DC2\EOT\185\STX\SYN\ETB\n\
    \|\n\
    \\EOT\EOT\SI\STX\ENQ\DC2\ACK\187\STX\STX\193\STX\EOT\SUBl min_commission_rate is the chain-wide minimum commission rate that a validator can charge their delegators\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ENQ\DC2\EOT\187\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\SOH\DC2\EOT\187\STX\t\FS\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ENQ\ETX\DC2\EOT\187\STX\US \n\
    \\SI\n\
    \\ENQ\EOT\SI\STX\ENQ\b\DC2\ACK\187\STX!\193\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ENQ\b\238\251\ETX\DC2\EOT\188\STX\EOT;\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ENQ\b\235\251\ETX\DC2\EOT\189\STX\EOTE\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ENQ\b\233\251\ETX\DC2\EOT\190\STX\EOT\"\n\
    \\DC1\n\
    \\t\EOT\SI\STX\ENQ\b\245\140\166\ENQ\DC2\EOT\191\STX\EOT!\n\
    \\DLE\n\
    \\b\EOT\SI\STX\ENQ\b\202\214\ENQ\DC2\EOT\192\STX\EOT)\n\
    \\165\SOH\n\
    \\STX\EOT\DLE\DC2\ACK\198\STX\NUL\204\STX\SOH\SUB\150\SOH DelegationResponse is equivalent to Delegation except that it contains a\n\
    \ balance in addition to shares which is more suitable for client responses.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\198\STX\b\SUB\n\
    \\v\n\
    \\ETX\EOT\DLE\a\DC2\EOT\199\STX\STX#\n\
    \\SO\n\
    \\ACK\EOT\DLE\a\141\244\ETX\DC2\EOT\199\STX\STX#\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\201\STX\STXZ\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ACK\DC2\EOT\201\STX\STX\f\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\201\STX\r\ETB\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\201\STX\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\b\DC2\EOT\201\STX\FSY\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\NUL\b\233\251\ETX\DC2\EOT\201\STX\GS9\n\
    \\DC1\n\
    \\t\EOT\DLE\STX\NUL\b\245\140\166\ENQ\DC2\EOT\201\STX;X\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\203\STX\STXe\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ACK\DC2\EOT\203\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\203\STX\ESC\"\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\203\STX%&\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\b\DC2\EOT\203\STX'd\n\
    \\DLE\n\
    \\b\EOT\DLE\STX\SOH\b\233\251\ETX\DC2\EOT\203\STX(D\n\
    \\DC1\n\
    \\t\EOT\DLE\STX\SOH\b\245\140\166\ENQ\DC2\EOT\203\STXFc\n\
    \\182\SOH\n\
    \\STX\EOT\DC1\DC2\ACK\209\STX\NUL\218\STX\SOH\SUB\167\SOH RedelegationEntryResponse is equivalent to a RedelegationEntry except that it\n\
    \ contains a balance in addition to shares which is more suitable for client\n\
    \ responses.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\209\STX\b!\n\
    \\v\n\
    \\ETX\EOT\DC1\a\DC2\EOT\210\STX\STX\"\n\
    \\SO\n\
    \\ACK\EOT\DC1\a\141\244\ETX\DC2\EOT\210\STX\STX\"\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\212\STX\STXi\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ACK\DC2\EOT\212\STX\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\212\STX\DC4&\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\212\STX)*\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\b\DC2\EOT\212\STX+h\n\
    \\DLE\n\
    \\b\EOT\DC1\STX\NUL\b\233\251\ETX\DC2\EOT\212\STX,H\n\
    \\DC1\n\
    \\t\EOT\DC1\STX\NUL\b\245\140\166\ENQ\DC2\EOT\212\STXJg\n\
    \\SO\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\ACK\213\STX\STX\217\STX\EOT\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ENQ\DC2\EOT\213\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\213\STX\DC4\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\213\STX)*\n\
    \\SI\n\
    \\ENQ\EOT\DC1\STX\SOH\b\DC2\ACK\213\STX+\217\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\DC1\STX\SOH\b\202\214\ENQ\DC2\EOT\214\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT\DC1\STX\SOH\b\235\251\ETX\DC2\EOT\215\STX\EOTE\n\
    \\DLE\n\
    \\b\EOT\DC1\STX\SOH\b\233\251\ETX\DC2\EOT\216\STX\EOT\"\n\
    \\180\SOH\n\
    \\STX\EOT\DC2\DC2\ACK\223\STX\NUL\228\STX\SOH\SUB\165\SOH RedelegationResponse is equivalent to a Redelegation except that its entries\n\
    \ contain a balance in addition to shares which is more suitable for client\n\
    \ responses.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\223\STX\b\FS\n\
    \\v\n\
    \\ETX\EOT\DC2\a\DC2\EOT\224\STX\STX#\n\
    \\SO\n\
    \\ACK\EOT\DC2\a\141\244\ETX\DC2\EOT\224\STX\STX#\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\226\STX\STXt\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ACK\DC2\EOT\226\STX\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\226\STX%1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\226\STX45\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\b\DC2\EOT\226\STX6s\n\
    \\DLE\n\
    \\b\EOT\DC2\STX\NUL\b\233\251\ETX\DC2\EOT\226\STX7S\n\
    \\DC1\n\
    \\t\EOT\DC2\STX\NUL\b\245\140\166\ENQ\DC2\EOT\226\STXUr\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\227\STX\STXt\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\EOT\DC2\EOT\227\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ACK\DC2\EOT\227\STX\v$\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\227\STX%,\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\227\STX45\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\b\DC2\EOT\227\STX6s\n\
    \\DLE\n\
    \\b\EOT\DC2\STX\SOH\b\233\251\ETX\DC2\EOT\227\STX7S\n\
    \\DC1\n\
    \\t\EOT\DC2\STX\SOH\b\245\140\166\ENQ\DC2\EOT\227\STXUr\n\
    \g\n\
    \\STX\EOT\DC3\DC2\ACK\232\STX\NUL\249\STX\SOH\SUBY Pool is used for tracking bonded and not-bonded token supply of the bond\n\
    \ denomination.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\232\STX\b\f\n\
    \\v\n\
    \\ETX\EOT\DC3\a\DC2\EOT\233\STX\STX(\n\
    \\SO\n\
    \\ACK\EOT\DC3\a\142\244\ETX\DC2\EOT\233\STX\STX(\n\
    \\v\n\
    \\ETX\EOT\DC3\a\DC2\EOT\234\STX\STX(\n\
    \\SO\n\
    \\ACK\EOT\DC3\a\141\244\ETX\DC2\EOT\234\STX\STX(\n\
    \\SO\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\ACK\235\STX\STX\241\STX\EOT\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\235\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\235\STX\t\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\235\STX#$\n\
    \\SI\n\
    \\ENQ\EOT\DC3\STX\NUL\b\DC2\ACK\235\STX%\241\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\NUL\b\202\214\ENQ\DC2\EOT\236\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\NUL\b\235\251\ETX\DC2\EOT\237\STX\EOTE\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\NUL\b\233\251\ETX\DC2\EOT\238\STX\EOT\"\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\NUL\b\237\251\ETX\DC2\EOT\239\STX\EOT0\n\
    \\DC1\n\
    \\t\EOT\DC3\STX\NUL\b\245\140\166\ENQ\DC2\EOT\240\STX\EOT!\n\
    \\SO\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\ACK\242\STX\STX\248\STX\EOT\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ENQ\DC2\EOT\242\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\EOT\242\STX\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\EOT\242\STX\EM\SUB\n\
    \\SI\n\
    \\ENQ\EOT\DC3\STX\SOH\b\DC2\ACK\242\STX\ESC\248\STX\ETX\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\SOH\b\202\214\ENQ\DC2\EOT\243\STX\EOT)\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\SOH\b\235\251\ETX\DC2\EOT\244\STX\EOTE\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\SOH\b\233\251\ETX\DC2\EOT\245\STX\EOT\"\n\
    \\DLE\n\
    \\b\EOT\DC3\STX\SOH\b\237\251\ETX\DC2\EOT\246\STX\EOT,\n\
    \\DC1\n\
    \\t\EOT\DC3\STX\SOH\b\245\140\166\ENQ\DC2\EOT\247\STX\EOT!\n\
    \I\n\
    \\STX\ENQ\SOH\DC2\ACK\252\STX\NUL\131\ETX\SOH\SUB; Infraction indicates the infraction a validator commited.\n\
    \\n\
    \\v\n\
    \\ETX\ENQ\SOH\SOH\DC2\EOT\252\STX\ENQ\SI\n\
    \8\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\EOT\254\STX\STX\GS\SUB* UNSPECIFIED defines an empty infraction.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\EOT\254\STX\STX\CAN\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\EOT\254\STX\ESC\FS\n\
    \J\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\EOT\128\ETX\STX\GS\SUB< DOUBLE_SIGN defines a validator that double-signs a block.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\EOT\128\ETX\STX\CAN\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\EOT\128\ETX\ESC\FS\n\
    \Q\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\EOT\130\ETX\STX\SUB\SUBC DOWNTIME defines a validator that missed signing too many blocks.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\EOT\130\ETX\STX\NAK\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\EOT\130\ETX\CAN\EM\n\
    \\178\SOH\n\
    \\STX\EOT\DC4\DC2\ACK\135\ETX\NUL\137\ETX\SOH\SUB\163\SOH ValidatorUpdates defines an array of abci.ValidatorUpdate objects.\n\
    \ TODO: explore moving this to proto/cosmos/base to separate modules from tendermint dependence\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\135\ETX\b\CAN\n\
    \\f\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\136\ETX\STXu\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\EOT\DC2\EOT\136\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ACK\DC2\EOT\136\ETX\v*\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\136\ETX+2\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\136\ETX56\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\b\DC2\EOT\136\ETX7t\n\
    \\DLE\n\
    \\b\EOT\DC4\STX\NUL\b\233\251\ETX\DC2\EOT\136\ETX8T\n\
    \\DC1\n\
    \\t\EOT\DC4\STX\NUL\b\245\140\166\ENQ\DC2\EOT\136\ETXVsb\ACKproto3"