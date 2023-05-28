{- This file was auto-generated from cosmos/gov/v1/gov.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Gov.V1.Gov (
        Deposit(), DepositParams(), Params(), Proposal(),
        ProposalStatus(..), ProposalStatus(),
        ProposalStatus'UnrecognizedValue, TallyParams(), TallyResult(),
        Vote(), VoteOption(..), VoteOption(), VoteOption'UnrecognizedValue,
        VotingParams(), WeightedVoteOption()
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
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.proposalId' @:: Lens' Deposit Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.depositor' @:: Lens' Deposit Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.amount' @:: Lens' Deposit [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.vec'amount' @:: Lens' Deposit (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data Deposit
  = Deposit'_constructor {_Deposit'proposalId :: !Data.Word.Word64,
                          _Deposit'depositor :: !Data.Text.Text,
                          _Deposit'amount :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                          _Deposit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Deposit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Deposit "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Deposit'proposalId (\ x__ y__ -> x__ {_Deposit'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Deposit "depositor" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Deposit'depositor (\ x__ y__ -> x__ {_Deposit'depositor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Deposit "amount" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Deposit'amount (\ x__ y__ -> x__ {_Deposit'amount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Deposit "vec'amount" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Deposit'amount (\ x__ y__ -> x__ {_Deposit'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message Deposit where
  messageName _ = Data.Text.pack "cosmos.gov.v1.Deposit"
  packedMessageDescriptor _
    = "\n\
      \\aDeposit\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC26\n\
      \\tdepositor\CAN\STX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString\DC2<\n\
      \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposalId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposalId")) ::
              Data.ProtoLens.FieldDescriptor Deposit
        depositor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "depositor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"depositor")) ::
              Data.ProtoLens.FieldDescriptor Deposit
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor Deposit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, depositor__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Deposit'_unknownFields
        (\ x__ y__ -> x__ {_Deposit'_unknownFields = y__})
  defMessage
    = Deposit'_constructor
        {_Deposit'proposalId = Data.ProtoLens.fieldDefault,
         _Deposit'depositor = Data.ProtoLens.fieldDefault,
         _Deposit'amount = Data.Vector.Generic.empty,
         _Deposit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Deposit
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser Deposit
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proposal_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposalId") y x)
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
                                       "depositor"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"depositor") y x)
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
          "Deposit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"proposalId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
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
instance Control.DeepSeq.NFData Deposit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Deposit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Deposit'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_Deposit'depositor x__)
                   (Control.DeepSeq.deepseq (_Deposit'amount x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.minDeposit' @:: Lens' DepositParams [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.vec'minDeposit' @:: Lens' DepositParams (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.maxDepositPeriod' @:: Lens' DepositParams Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.maybe'maxDepositPeriod' @:: Lens' DepositParams (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data DepositParams
  = DepositParams'_constructor {_DepositParams'minDeposit :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                _DepositParams'maxDepositPeriod :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                _DepositParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DepositParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DepositParams "minDeposit" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DepositParams'minDeposit
           (\ x__ y__ -> x__ {_DepositParams'minDeposit = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DepositParams "vec'minDeposit" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DepositParams'minDeposit
           (\ x__ y__ -> x__ {_DepositParams'minDeposit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DepositParams "maxDepositPeriod" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DepositParams'maxDepositPeriod
           (\ x__ y__ -> x__ {_DepositParams'maxDepositPeriod = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DepositParams "maybe'maxDepositPeriod" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DepositParams'maxDepositPeriod
           (\ x__ y__ -> x__ {_DepositParams'maxDepositPeriod = y__}))
        Prelude.id
instance Data.ProtoLens.Message DepositParams where
  messageName _ = Data.Text.pack "cosmos.gov.v1.DepositParams"
  packedMessageDescriptor _
    = "\n\
      \\rDepositParams\DC2Y\n\
      \\vmin_deposit\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\n\
      \minDepositB\GS\200\222\US\NUL\234\222\US\NAKmin_deposit,omitempty\DC2m\n\
      \\DC2max_deposit_period\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\DLEmaxDepositPeriodB$\234\222\US\FSmax_deposit_period,omitempty\152\223\US\SOH:\STX\CAN\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        minDeposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_deposit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"minDeposit")) ::
              Data.ProtoLens.FieldDescriptor DepositParams
        maxDepositPeriod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_deposit_period"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxDepositPeriod")) ::
              Data.ProtoLens.FieldDescriptor DepositParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, minDeposit__field_descriptor),
           (Data.ProtoLens.Tag 2, maxDepositPeriod__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DepositParams'_unknownFields
        (\ x__ y__ -> x__ {_DepositParams'_unknownFields = y__})
  defMessage
    = DepositParams'_constructor
        {_DepositParams'minDeposit = Data.Vector.Generic.empty,
         _DepositParams'maxDepositPeriod = Prelude.Nothing,
         _DepositParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DepositParams
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser DepositParams
        loop x mutable'minDeposit
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'minDeposit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'minDeposit)
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
                              (Data.ProtoLens.Field.field @"vec'minDeposit") frozen'minDeposit
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
                                        "min_deposit"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'minDeposit y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_deposit_period"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxDepositPeriod") y x)
                                  mutable'minDeposit
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'minDeposit
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'minDeposit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'minDeposit)
          "DepositParams"
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
                   (Data.ProtoLens.Field.field @"vec'minDeposit") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'maxDepositPeriod") _x
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
instance Control.DeepSeq.NFData DepositParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DepositParams'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DepositParams'minDeposit x__)
                (Control.DeepSeq.deepseq (_DepositParams'maxDepositPeriod x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.minDeposit' @:: Lens' Params [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.vec'minDeposit' @:: Lens' Params (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.maxDepositPeriod' @:: Lens' Params Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.maybe'maxDepositPeriod' @:: Lens' Params (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.votingPeriod' @:: Lens' Params Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.maybe'votingPeriod' @:: Lens' Params (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.quorum' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.threshold' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.vetoThreshold' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.minInitialDepositRatio' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.proposalCancelRatio' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.proposalCancelDest' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.expeditedVotingPeriod' @:: Lens' Params Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.maybe'expeditedVotingPeriod' @:: Lens' Params (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.expeditedThreshold' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.expeditedMinDeposit' @:: Lens' Params [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.vec'expeditedMinDeposit' @:: Lens' Params (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.burnVoteQuorum' @:: Lens' Params Prelude.Bool@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.burnProposalDepositPrevote' @:: Lens' Params Prelude.Bool@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.burnVoteVeto' @:: Lens' Params Prelude.Bool@ -}
data Params
  = Params'_constructor {_Params'minDeposit :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                         _Params'maxDepositPeriod :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                         _Params'votingPeriod :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                         _Params'quorum :: !Data.Text.Text,
                         _Params'threshold :: !Data.Text.Text,
                         _Params'vetoThreshold :: !Data.Text.Text,
                         _Params'minInitialDepositRatio :: !Data.Text.Text,
                         _Params'proposalCancelRatio :: !Data.Text.Text,
                         _Params'proposalCancelDest :: !Data.Text.Text,
                         _Params'expeditedVotingPeriod :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                         _Params'expeditedThreshold :: !Data.Text.Text,
                         _Params'expeditedMinDeposit :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                         _Params'burnVoteQuorum :: !Prelude.Bool,
                         _Params'burnProposalDepositPrevote :: !Prelude.Bool,
                         _Params'burnVoteVeto :: !Prelude.Bool,
                         _Params'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Params where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Params "minDeposit" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'minDeposit (\ x__ y__ -> x__ {_Params'minDeposit = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Params "vec'minDeposit" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'minDeposit (\ x__ y__ -> x__ {_Params'minDeposit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "maxDepositPeriod" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'maxDepositPeriod
           (\ x__ y__ -> x__ {_Params'maxDepositPeriod = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Params "maybe'maxDepositPeriod" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'maxDepositPeriod
           (\ x__ y__ -> x__ {_Params'maxDepositPeriod = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "votingPeriod" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'votingPeriod
           (\ x__ y__ -> x__ {_Params'votingPeriod = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Params "maybe'votingPeriod" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'votingPeriod
           (\ x__ y__ -> x__ {_Params'votingPeriod = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "quorum" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'quorum (\ x__ y__ -> x__ {_Params'quorum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "threshold" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'threshold (\ x__ y__ -> x__ {_Params'threshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "vetoThreshold" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'vetoThreshold
           (\ x__ y__ -> x__ {_Params'vetoThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "minInitialDepositRatio" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'minInitialDepositRatio
           (\ x__ y__ -> x__ {_Params'minInitialDepositRatio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "proposalCancelRatio" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'proposalCancelRatio
           (\ x__ y__ -> x__ {_Params'proposalCancelRatio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "proposalCancelDest" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'proposalCancelDest
           (\ x__ y__ -> x__ {_Params'proposalCancelDest = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "expeditedVotingPeriod" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'expeditedVotingPeriod
           (\ x__ y__ -> x__ {_Params'expeditedVotingPeriod = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Params "maybe'expeditedVotingPeriod" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'expeditedVotingPeriod
           (\ x__ y__ -> x__ {_Params'expeditedVotingPeriod = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "expeditedThreshold" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'expeditedThreshold
           (\ x__ y__ -> x__ {_Params'expeditedThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "expeditedMinDeposit" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'expeditedMinDeposit
           (\ x__ y__ -> x__ {_Params'expeditedMinDeposit = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Params "vec'expeditedMinDeposit" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'expeditedMinDeposit
           (\ x__ y__ -> x__ {_Params'expeditedMinDeposit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "burnVoteQuorum" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'burnVoteQuorum
           (\ x__ y__ -> x__ {_Params'burnVoteQuorum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "burnProposalDepositPrevote" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'burnProposalDepositPrevote
           (\ x__ y__ -> x__ {_Params'burnProposalDepositPrevote = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "burnVoteVeto" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'burnVoteVeto
           (\ x__ y__ -> x__ {_Params'burnVoteVeto = y__}))
        Prelude.id
instance Data.ProtoLens.Message Params where
  messageName _ = Data.Text.pack "cosmos.gov.v1.Params"
  packedMessageDescriptor _
    = "\n\
      \\ACKParams\DC2E\n\
      \\vmin_deposit\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\n\
      \minDepositB\t\200\222\US\NUL\168\231\176*\SOH\DC2M\n\
      \\DC2max_deposit_period\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\DLEmaxDepositPeriodB\EOT\152\223\US\SOH\DC2D\n\
      \\rvoting_period\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\fvotingPeriodB\EOT\152\223\US\SOH\DC2&\n\
      \\ACKquorum\CAN\EOT \SOH(\tR\ACKquorumB\SO\210\180-\n\
      \cosmos.Dec\DC2,\n\
      \\tthreshold\CAN\ENQ \SOH(\tR\tthresholdB\SO\210\180-\n\
      \cosmos.Dec\DC25\n\
      \\SOveto_threshold\CAN\ACK \SOH(\tR\rvetoThresholdB\SO\210\180-\n\
      \cosmos.Dec\DC2I\n\
      \\EMmin_initial_deposit_ratio\CAN\a \SOH(\tR\SYNminInitialDepositRatioB\SO\210\180-\n\
      \cosmos.Dec\DC2B\n\
      \\NAKproposal_cancel_ratio\CAN\b \SOH(\tR\DC3proposalCancelRatioB\SO\210\180-\n\
      \cosmos.Dec\DC2J\n\
      \\DC4proposal_cancel_dest\CAN\t \SOH(\tR\DC2proposalCancelDestB\CAN\210\180-\DC4cosmos.AddressString\DC2W\n\
      \\ETBexpedited_voting_period\CAN\n\
      \ \SOH(\v2\EM.google.protobuf.DurationR\NAKexpeditedVotingPeriodB\EOT\152\223\US\SOH\DC2?\n\
      \\DC3expedited_threshold\CAN\v \SOH(\tR\DC2expeditedThresholdB\SO\210\180-\n\
      \cosmos.Dec\DC2X\n\
      \\NAKexpedited_min_deposit\CAN\f \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\DC3expeditedMinDepositB\t\200\222\US\NUL\168\231\176*\SOH\DC2(\n\
      \\DLEburn_vote_quorum\CAN\r \SOH(\bR\SOburnVoteQuorum\DC2A\n\
      \\GSburn_proposal_deposit_prevote\CAN\SO \SOH(\bR\SUBburnProposalDepositPrevote\DC2$\n\
      \\SOburn_vote_veto\CAN\SI \SOH(\bR\fburnVoteVeto"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        minDeposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_deposit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"minDeposit")) ::
              Data.ProtoLens.FieldDescriptor Params
        maxDepositPeriod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_deposit_period"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxDepositPeriod")) ::
              Data.ProtoLens.FieldDescriptor Params
        votingPeriod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voting_period"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'votingPeriod")) ::
              Data.ProtoLens.FieldDescriptor Params
        quorum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "quorum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"quorum")) ::
              Data.ProtoLens.FieldDescriptor Params
        threshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"threshold")) ::
              Data.ProtoLens.FieldDescriptor Params
        vetoThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "veto_threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"vetoThreshold")) ::
              Data.ProtoLens.FieldDescriptor Params
        minInitialDepositRatio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_initial_deposit_ratio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"minInitialDepositRatio")) ::
              Data.ProtoLens.FieldDescriptor Params
        proposalCancelRatio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal_cancel_ratio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposalCancelRatio")) ::
              Data.ProtoLens.FieldDescriptor Params
        proposalCancelDest__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal_cancel_dest"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposalCancelDest")) ::
              Data.ProtoLens.FieldDescriptor Params
        expeditedVotingPeriod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expedited_voting_period"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expeditedVotingPeriod")) ::
              Data.ProtoLens.FieldDescriptor Params
        expeditedThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expedited_threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"expeditedThreshold")) ::
              Data.ProtoLens.FieldDescriptor Params
        expeditedMinDeposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expedited_min_deposit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"expeditedMinDeposit")) ::
              Data.ProtoLens.FieldDescriptor Params
        burnVoteQuorum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "burn_vote_quorum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"burnVoteQuorum")) ::
              Data.ProtoLens.FieldDescriptor Params
        burnProposalDepositPrevote__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "burn_proposal_deposit_prevote"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"burnProposalDepositPrevote")) ::
              Data.ProtoLens.FieldDescriptor Params
        burnVoteVeto__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "burn_vote_veto"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"burnVoteVeto")) ::
              Data.ProtoLens.FieldDescriptor Params
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, minDeposit__field_descriptor),
           (Data.ProtoLens.Tag 2, maxDepositPeriod__field_descriptor),
           (Data.ProtoLens.Tag 3, votingPeriod__field_descriptor),
           (Data.ProtoLens.Tag 4, quorum__field_descriptor),
           (Data.ProtoLens.Tag 5, threshold__field_descriptor),
           (Data.ProtoLens.Tag 6, vetoThreshold__field_descriptor),
           (Data.ProtoLens.Tag 7, minInitialDepositRatio__field_descriptor),
           (Data.ProtoLens.Tag 8, proposalCancelRatio__field_descriptor),
           (Data.ProtoLens.Tag 9, proposalCancelDest__field_descriptor),
           (Data.ProtoLens.Tag 10, expeditedVotingPeriod__field_descriptor),
           (Data.ProtoLens.Tag 11, expeditedThreshold__field_descriptor),
           (Data.ProtoLens.Tag 12, expeditedMinDeposit__field_descriptor),
           (Data.ProtoLens.Tag 13, burnVoteQuorum__field_descriptor),
           (Data.ProtoLens.Tag 14, 
            burnProposalDepositPrevote__field_descriptor),
           (Data.ProtoLens.Tag 15, burnVoteVeto__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Params'_unknownFields
        (\ x__ y__ -> x__ {_Params'_unknownFields = y__})
  defMessage
    = Params'_constructor
        {_Params'minDeposit = Data.Vector.Generic.empty,
         _Params'maxDepositPeriod = Prelude.Nothing,
         _Params'votingPeriod = Prelude.Nothing,
         _Params'quorum = Data.ProtoLens.fieldDefault,
         _Params'threshold = Data.ProtoLens.fieldDefault,
         _Params'vetoThreshold = Data.ProtoLens.fieldDefault,
         _Params'minInitialDepositRatio = Data.ProtoLens.fieldDefault,
         _Params'proposalCancelRatio = Data.ProtoLens.fieldDefault,
         _Params'proposalCancelDest = Data.ProtoLens.fieldDefault,
         _Params'expeditedVotingPeriod = Prelude.Nothing,
         _Params'expeditedThreshold = Data.ProtoLens.fieldDefault,
         _Params'expeditedMinDeposit = Data.Vector.Generic.empty,
         _Params'burnVoteQuorum = Data.ProtoLens.fieldDefault,
         _Params'burnProposalDepositPrevote = Data.ProtoLens.fieldDefault,
         _Params'burnVoteVeto = Data.ProtoLens.fieldDefault,
         _Params'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Params
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
                -> Data.ProtoLens.Encoding.Bytes.Parser Params
        loop x mutable'expeditedMinDeposit mutable'minDeposit
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'expeditedMinDeposit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'expeditedMinDeposit)
                      frozen'minDeposit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'minDeposit)
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
                              (Data.ProtoLens.Field.field @"vec'expeditedMinDeposit")
                              frozen'expeditedMinDeposit
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'minDeposit") frozen'minDeposit
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "min_deposit"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'minDeposit y)
                                loop x mutable'expeditedMinDeposit v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_deposit_period"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxDepositPeriod") y x)
                                  mutable'expeditedMinDeposit mutable'minDeposit
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "voting_period"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"votingPeriod") y x)
                                  mutable'expeditedMinDeposit mutable'minDeposit
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
                                       "quorum"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"quorum") y x)
                                  mutable'expeditedMinDeposit mutable'minDeposit
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
                                       "threshold"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"threshold") y x)
                                  mutable'expeditedMinDeposit mutable'minDeposit
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
                                       "veto_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"vetoThreshold") y x)
                                  mutable'expeditedMinDeposit mutable'minDeposit
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
                                       "min_initial_deposit_ratio"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minInitialDepositRatio") y x)
                                  mutable'expeditedMinDeposit mutable'minDeposit
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
                                       "proposal_cancel_ratio"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"proposalCancelRatio") y x)
                                  mutable'expeditedMinDeposit mutable'minDeposit
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "proposal_cancel_dest"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"proposalCancelDest") y x)
                                  mutable'expeditedMinDeposit mutable'minDeposit
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "expedited_voting_period"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"expeditedVotingPeriod") y x)
                                  mutable'expeditedMinDeposit mutable'minDeposit
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
                                       "expedited_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"expeditedThreshold") y x)
                                  mutable'expeditedMinDeposit mutable'minDeposit
                        98
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "expedited_min_deposit"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'expeditedMinDeposit y)
                                loop x v mutable'minDeposit
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "burn_vote_quorum"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"burnVoteQuorum") y x)
                                  mutable'expeditedMinDeposit mutable'minDeposit
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "burn_proposal_deposit_prevote"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"burnProposalDepositPrevote") y x)
                                  mutable'expeditedMinDeposit mutable'minDeposit
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "burn_vote_veto"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"burnVoteVeto") y x)
                                  mutable'expeditedMinDeposit mutable'minDeposit
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'expeditedMinDeposit mutable'minDeposit
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'expeditedMinDeposit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              mutable'minDeposit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'expeditedMinDeposit
                mutable'minDeposit)
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
                   (Data.ProtoLens.Field.field @"vec'minDeposit") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'maxDepositPeriod") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'votingPeriod") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"quorum") _x
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
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"threshold") _x
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
                                     (Data.ProtoLens.Field.field @"vetoThreshold") _x
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
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"minInitialDepositRatio") _x
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
                                           (Data.ProtoLens.Field.field @"proposalCancelRatio") _x
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
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"proposalCancelDest") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
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
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'expeditedVotingPeriod")
                                               _x
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
                                                       @"expeditedThreshold")
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
                                              (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                 (\ _v
                                                    -> (Data.Monoid.<>)
                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                            98)
                                                         ((Prelude..)
                                                            (\ bs
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       (Prelude.fromIntegral
                                                                          (Data.ByteString.length
                                                                             bs)))
                                                                    (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                       bs))
                                                            Data.ProtoLens.encodeMessage _v))
                                                 (Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"vec'expeditedMinDeposit")
                                                    _x))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    _v
                                                      = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"burnVoteQuorum")
                                                          _x
                                                  in
                                                    if (Prelude.==)
                                                         _v Data.ProtoLens.fieldDefault then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             104)
                                                          ((Prelude..)
                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (\ b -> if b then 1 else 0) _v))
                                                 ((Data.Monoid.<>)
                                                    (let
                                                       _v
                                                         = Lens.Family2.view
                                                             (Data.ProtoLens.Field.field
                                                                @"burnProposalDepositPrevote")
                                                             _x
                                                     in
                                                       if (Prelude.==)
                                                            _v Data.ProtoLens.fieldDefault then
                                                           Data.Monoid.mempty
                                                       else
                                                           (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                112)
                                                             ((Prelude..)
                                                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (\ b -> if b then 1 else 0) _v))
                                                    ((Data.Monoid.<>)
                                                       (let
                                                          _v
                                                            = Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"burnVoteVeto")
                                                                _x
                                                        in
                                                          if (Prelude.==)
                                                               _v Data.ProtoLens.fieldDefault then
                                                              Data.Monoid.mempty
                                                          else
                                                              (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   120)
                                                                ((Prelude..)
                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (\ b -> if b then 1 else 0) _v))
                                                       (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                          (Lens.Family2.view
                                                             Data.ProtoLens.unknownFields
                                                             _x))))))))))))))))
instance Control.DeepSeq.NFData Params where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Params'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Params'minDeposit x__)
                (Control.DeepSeq.deepseq
                   (_Params'maxDepositPeriod x__)
                   (Control.DeepSeq.deepseq
                      (_Params'votingPeriod x__)
                      (Control.DeepSeq.deepseq
                         (_Params'quorum x__)
                         (Control.DeepSeq.deepseq
                            (_Params'threshold x__)
                            (Control.DeepSeq.deepseq
                               (_Params'vetoThreshold x__)
                               (Control.DeepSeq.deepseq
                                  (_Params'minInitialDepositRatio x__)
                                  (Control.DeepSeq.deepseq
                                     (_Params'proposalCancelRatio x__)
                                     (Control.DeepSeq.deepseq
                                        (_Params'proposalCancelDest x__)
                                        (Control.DeepSeq.deepseq
                                           (_Params'expeditedVotingPeriod x__)
                                           (Control.DeepSeq.deepseq
                                              (_Params'expeditedThreshold x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Params'expeditedMinDeposit x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Params'burnVoteQuorum x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_Params'burnProposalDepositPrevote x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_Params'burnVoteVeto x__)
                                                          ())))))))))))))))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.id' @:: Lens' Proposal Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.messages' @:: Lens' Proposal [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.vec'messages' @:: Lens' Proposal (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.status' @:: Lens' Proposal ProposalStatus@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.finalTallyResult' @:: Lens' Proposal TallyResult@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.maybe'finalTallyResult' @:: Lens' Proposal (Prelude.Maybe TallyResult)@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.submitTime' @:: Lens' Proposal Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.maybe'submitTime' @:: Lens' Proposal (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.depositEndTime' @:: Lens' Proposal Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.maybe'depositEndTime' @:: Lens' Proposal (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.totalDeposit' @:: Lens' Proposal [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.vec'totalDeposit' @:: Lens' Proposal (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.votingStartTime' @:: Lens' Proposal Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.maybe'votingStartTime' @:: Lens' Proposal (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.votingEndTime' @:: Lens' Proposal Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.maybe'votingEndTime' @:: Lens' Proposal (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.metadata' @:: Lens' Proposal Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.title' @:: Lens' Proposal Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.summary' @:: Lens' Proposal Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.proposer' @:: Lens' Proposal Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.expedited' @:: Lens' Proposal Prelude.Bool@ -}
data Proposal
  = Proposal'_constructor {_Proposal'id :: !Data.Word.Word64,
                           _Proposal'messages :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                           _Proposal'status :: !ProposalStatus,
                           _Proposal'finalTallyResult :: !(Prelude.Maybe TallyResult),
                           _Proposal'submitTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Proposal'depositEndTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Proposal'totalDeposit :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                           _Proposal'votingStartTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Proposal'votingEndTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Proposal'metadata :: !Data.Text.Text,
                           _Proposal'title :: !Data.Text.Text,
                           _Proposal'summary :: !Data.Text.Text,
                           _Proposal'proposer :: !Data.Text.Text,
                           _Proposal'expedited :: !Prelude.Bool,
                           _Proposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Proposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Proposal "id" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'id (\ x__ y__ -> x__ {_Proposal'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "messages" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'messages (\ x__ y__ -> x__ {_Proposal'messages = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Proposal "vec'messages" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'messages (\ x__ y__ -> x__ {_Proposal'messages = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "status" ProposalStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'status (\ x__ y__ -> x__ {_Proposal'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "finalTallyResult" TallyResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'finalTallyResult
           (\ x__ y__ -> x__ {_Proposal'finalTallyResult = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Proposal "maybe'finalTallyResult" (Prelude.Maybe TallyResult) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'finalTallyResult
           (\ x__ y__ -> x__ {_Proposal'finalTallyResult = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "submitTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'submitTime
           (\ x__ y__ -> x__ {_Proposal'submitTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Proposal "maybe'submitTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'submitTime
           (\ x__ y__ -> x__ {_Proposal'submitTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "depositEndTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'depositEndTime
           (\ x__ y__ -> x__ {_Proposal'depositEndTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Proposal "maybe'depositEndTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'depositEndTime
           (\ x__ y__ -> x__ {_Proposal'depositEndTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "totalDeposit" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'totalDeposit
           (\ x__ y__ -> x__ {_Proposal'totalDeposit = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Proposal "vec'totalDeposit" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'totalDeposit
           (\ x__ y__ -> x__ {_Proposal'totalDeposit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "votingStartTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'votingStartTime
           (\ x__ y__ -> x__ {_Proposal'votingStartTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Proposal "maybe'votingStartTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'votingStartTime
           (\ x__ y__ -> x__ {_Proposal'votingStartTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "votingEndTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'votingEndTime
           (\ x__ y__ -> x__ {_Proposal'votingEndTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Proposal "maybe'votingEndTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'votingEndTime
           (\ x__ y__ -> x__ {_Proposal'votingEndTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'metadata (\ x__ y__ -> x__ {_Proposal'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "title" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'title (\ x__ y__ -> x__ {_Proposal'title = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "summary" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'summary (\ x__ y__ -> x__ {_Proposal'summary = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "proposer" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'proposer (\ x__ y__ -> x__ {_Proposal'proposer = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "expedited" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'expedited (\ x__ y__ -> x__ {_Proposal'expedited = y__}))
        Prelude.id
instance Data.ProtoLens.Message Proposal where
  messageName _ = Data.Text.pack "cosmos.gov.v1.Proposal"
  packedMessageDescriptor _
    = "\n\
      \\bProposal\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\EOTR\STXid\DC20\n\
      \\bmessages\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\bmessages\DC25\n\
      \\ACKstatus\CAN\ETX \SOH(\SO2\GS.cosmos.gov.v1.ProposalStatusR\ACKstatus\DC2H\n\
      \\DC2final_tally_result\CAN\EOT \SOH(\v2\SUB.cosmos.gov.v1.TallyResultR\DLEfinalTallyResult\DC2A\n\
      \\vsubmit_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \submitTimeB\EOT\144\223\US\SOH\DC2J\n\
      \\DLEdeposit_end_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\SOdepositEndTimeB\EOT\144\223\US\SOH\DC2I\n\
      \\rtotal_deposit\CAN\a \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ftotalDepositB\t\200\222\US\NUL\168\231\176*\SOH\DC2L\n\
      \\DC1voting_start_time\CAN\b \SOH(\v2\SUB.google.protobuf.TimestampR\SIvotingStartTimeB\EOT\144\223\US\SOH\DC2H\n\
      \\SIvoting_end_time\CAN\t \SOH(\v2\SUB.google.protobuf.TimestampR\rvotingEndTimeB\EOT\144\223\US\SOH\DC2\SUB\n\
      \\bmetadata\CAN\n\
      \ \SOH(\tR\bmetadata\DC2\DC4\n\
      \\ENQtitle\CAN\v \SOH(\tR\ENQtitle\DC2\CAN\n\
      \\asummary\CAN\f \SOH(\tR\asummary\DC24\n\
      \\bproposer\CAN\r \SOH(\tR\bproposerB\CAN\210\180-\DC4cosmos.AddressString\DC2\FS\n\
      \\texpedited\CAN\SO \SOH(\bR\texpedited"
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
              Data.ProtoLens.FieldDescriptor Proposal
        messages__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "messages"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"messages")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ProposalStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        finalTallyResult__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "final_tally_result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TallyResult)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'finalTallyResult")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        submitTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "submit_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'submitTime")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        depositEndTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deposit_end_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'depositEndTime")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        totalDeposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_deposit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"totalDeposit")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        votingStartTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voting_start_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'votingStartTime")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        votingEndTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voting_end_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'votingEndTime")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        title__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "title"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"title")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        summary__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "summary"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"summary")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        proposer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposer"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposer")) ::
              Data.ProtoLens.FieldDescriptor Proposal
        expedited__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expedited"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"expedited")) ::
              Data.ProtoLens.FieldDescriptor Proposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, messages__field_descriptor),
           (Data.ProtoLens.Tag 3, status__field_descriptor),
           (Data.ProtoLens.Tag 4, finalTallyResult__field_descriptor),
           (Data.ProtoLens.Tag 5, submitTime__field_descriptor),
           (Data.ProtoLens.Tag 6, depositEndTime__field_descriptor),
           (Data.ProtoLens.Tag 7, totalDeposit__field_descriptor),
           (Data.ProtoLens.Tag 8, votingStartTime__field_descriptor),
           (Data.ProtoLens.Tag 9, votingEndTime__field_descriptor),
           (Data.ProtoLens.Tag 10, metadata__field_descriptor),
           (Data.ProtoLens.Tag 11, title__field_descriptor),
           (Data.ProtoLens.Tag 12, summary__field_descriptor),
           (Data.ProtoLens.Tag 13, proposer__field_descriptor),
           (Data.ProtoLens.Tag 14, expedited__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Proposal'_unknownFields
        (\ x__ y__ -> x__ {_Proposal'_unknownFields = y__})
  defMessage
    = Proposal'_constructor
        {_Proposal'id = Data.ProtoLens.fieldDefault,
         _Proposal'messages = Data.Vector.Generic.empty,
         _Proposal'status = Data.ProtoLens.fieldDefault,
         _Proposal'finalTallyResult = Prelude.Nothing,
         _Proposal'submitTime = Prelude.Nothing,
         _Proposal'depositEndTime = Prelude.Nothing,
         _Proposal'totalDeposit = Data.Vector.Generic.empty,
         _Proposal'votingStartTime = Prelude.Nothing,
         _Proposal'votingEndTime = Prelude.Nothing,
         _Proposal'metadata = Data.ProtoLens.fieldDefault,
         _Proposal'title = Data.ProtoLens.fieldDefault,
         _Proposal'summary = Data.ProtoLens.fieldDefault,
         _Proposal'proposer = Data.ProtoLens.fieldDefault,
         _Proposal'expedited = Data.ProtoLens.fieldDefault,
         _Proposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Proposal
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
                -> Data.ProtoLens.Encoding.Bytes.Parser Proposal
        loop x mutable'messages mutable'totalDeposit
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'messages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'messages)
                      frozen'totalDeposit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'totalDeposit)
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
                              (Data.ProtoLens.Field.field @"vec'messages") frozen'messages
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'totalDeposit")
                                 frozen'totalDeposit x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                                  mutable'messages mutable'totalDeposit
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "messages"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'messages y)
                                loop x v mutable'totalDeposit
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                                  mutable'messages mutable'totalDeposit
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "final_tally_result"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"finalTallyResult") y x)
                                  mutable'messages mutable'totalDeposit
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "submit_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"submitTime") y x)
                                  mutable'messages mutable'totalDeposit
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deposit_end_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"depositEndTime") y x)
                                  mutable'messages mutable'totalDeposit
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "total_deposit"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'totalDeposit y)
                                loop x mutable'messages v
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "voting_start_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"votingStartTime") y x)
                                  mutable'messages mutable'totalDeposit
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "voting_end_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"votingEndTime") y x)
                                  mutable'messages mutable'totalDeposit
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                                  mutable'messages mutable'totalDeposit
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
                                       "title"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"title") y x)
                                  mutable'messages mutable'totalDeposit
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "summary"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"summary") y x)
                                  mutable'messages mutable'totalDeposit
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "proposer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposer") y x)
                                  mutable'messages mutable'totalDeposit
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "expedited"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"expedited") y x)
                                  mutable'messages mutable'totalDeposit
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'messages mutable'totalDeposit
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'messages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'totalDeposit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'messages mutable'totalDeposit)
          "Proposal"
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
                      (Data.ProtoLens.Field.field @"vec'messages") _x))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               Prelude.fromEnum _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'finalTallyResult") _x
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
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'submitTime") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                                   (Data.ProtoLens.Field.field @"maybe'depositEndTime") _x
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
                                     (Data.ProtoLens.Field.field @"vec'totalDeposit") _x))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'votingStartTime") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
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
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'votingEndTime") _x
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
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"metadata") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
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
                                                    (Data.ProtoLens.Field.field @"title") _x
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
                                                       (Data.ProtoLens.Field.field @"summary") _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                       ((Prelude..)
                                                          (\ bs
                                                             -> (Data.Monoid.<>)
                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                     (Prelude.fromIntegral
                                                                        (Data.ByteString.length
                                                                           bs)))
                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                     bs))
                                                          Data.Text.Encoding.encodeUtf8 _v))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    _v
                                                      = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field @"proposer")
                                                          _x
                                                  in
                                                    if (Prelude.==)
                                                         _v Data.ProtoLens.fieldDefault then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             106)
                                                          ((Prelude..)
                                                             (\ bs
                                                                -> (Data.Monoid.<>)
                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                        (Prelude.fromIntegral
                                                                           (Data.ByteString.length
                                                                              bs)))
                                                                     (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                        bs))
                                                             Data.Text.Encoding.encodeUtf8 _v))
                                                 ((Data.Monoid.<>)
                                                    (let
                                                       _v
                                                         = Lens.Family2.view
                                                             (Data.ProtoLens.Field.field
                                                                @"expedited")
                                                             _x
                                                     in
                                                       if (Prelude.==)
                                                            _v Data.ProtoLens.fieldDefault then
                                                           Data.Monoid.mempty
                                                       else
                                                           (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                112)
                                                             ((Prelude..)
                                                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (\ b -> if b then 1 else 0) _v))
                                                    (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                       (Lens.Family2.view
                                                          Data.ProtoLens.unknownFields
                                                          _x)))))))))))))))
instance Control.DeepSeq.NFData Proposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Proposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Proposal'id x__)
                (Control.DeepSeq.deepseq
                   (_Proposal'messages x__)
                   (Control.DeepSeq.deepseq
                      (_Proposal'status x__)
                      (Control.DeepSeq.deepseq
                         (_Proposal'finalTallyResult x__)
                         (Control.DeepSeq.deepseq
                            (_Proposal'submitTime x__)
                            (Control.DeepSeq.deepseq
                               (_Proposal'depositEndTime x__)
                               (Control.DeepSeq.deepseq
                                  (_Proposal'totalDeposit x__)
                                  (Control.DeepSeq.deepseq
                                     (_Proposal'votingStartTime x__)
                                     (Control.DeepSeq.deepseq
                                        (_Proposal'votingEndTime x__)
                                        (Control.DeepSeq.deepseq
                                           (_Proposal'metadata x__)
                                           (Control.DeepSeq.deepseq
                                              (_Proposal'title x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Proposal'summary x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Proposal'proposer x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_Proposal'expedited x__) ()))))))))))))))
newtype ProposalStatus'UnrecognizedValue
  = ProposalStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ProposalStatus
  = PROPOSAL_STATUS_UNSPECIFIED |
    PROPOSAL_STATUS_DEPOSIT_PERIOD |
    PROPOSAL_STATUS_VOTING_PERIOD |
    PROPOSAL_STATUS_PASSED |
    PROPOSAL_STATUS_REJECTED |
    PROPOSAL_STATUS_FAILED |
    ProposalStatus'Unrecognized !ProposalStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ProposalStatus where
  maybeToEnum 0 = Prelude.Just PROPOSAL_STATUS_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just PROPOSAL_STATUS_DEPOSIT_PERIOD
  maybeToEnum 2 = Prelude.Just PROPOSAL_STATUS_VOTING_PERIOD
  maybeToEnum 3 = Prelude.Just PROPOSAL_STATUS_PASSED
  maybeToEnum 4 = Prelude.Just PROPOSAL_STATUS_REJECTED
  maybeToEnum 5 = Prelude.Just PROPOSAL_STATUS_FAILED
  maybeToEnum k
    = Prelude.Just
        (ProposalStatus'Unrecognized
           (ProposalStatus'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum PROPOSAL_STATUS_UNSPECIFIED
    = "PROPOSAL_STATUS_UNSPECIFIED"
  showEnum PROPOSAL_STATUS_DEPOSIT_PERIOD
    = "PROPOSAL_STATUS_DEPOSIT_PERIOD"
  showEnum PROPOSAL_STATUS_VOTING_PERIOD
    = "PROPOSAL_STATUS_VOTING_PERIOD"
  showEnum PROPOSAL_STATUS_PASSED = "PROPOSAL_STATUS_PASSED"
  showEnum PROPOSAL_STATUS_REJECTED = "PROPOSAL_STATUS_REJECTED"
  showEnum PROPOSAL_STATUS_FAILED = "PROPOSAL_STATUS_FAILED"
  showEnum
    (ProposalStatus'Unrecognized (ProposalStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "PROPOSAL_STATUS_UNSPECIFIED"
    = Prelude.Just PROPOSAL_STATUS_UNSPECIFIED
    | (Prelude.==) k "PROPOSAL_STATUS_DEPOSIT_PERIOD"
    = Prelude.Just PROPOSAL_STATUS_DEPOSIT_PERIOD
    | (Prelude.==) k "PROPOSAL_STATUS_VOTING_PERIOD"
    = Prelude.Just PROPOSAL_STATUS_VOTING_PERIOD
    | (Prelude.==) k "PROPOSAL_STATUS_PASSED"
    = Prelude.Just PROPOSAL_STATUS_PASSED
    | (Prelude.==) k "PROPOSAL_STATUS_REJECTED"
    = Prelude.Just PROPOSAL_STATUS_REJECTED
    | (Prelude.==) k "PROPOSAL_STATUS_FAILED"
    = Prelude.Just PROPOSAL_STATUS_FAILED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ProposalStatus where
  minBound = PROPOSAL_STATUS_UNSPECIFIED
  maxBound = PROPOSAL_STATUS_FAILED
instance Prelude.Enum ProposalStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ProposalStatus: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum PROPOSAL_STATUS_UNSPECIFIED = 0
  fromEnum PROPOSAL_STATUS_DEPOSIT_PERIOD = 1
  fromEnum PROPOSAL_STATUS_VOTING_PERIOD = 2
  fromEnum PROPOSAL_STATUS_PASSED = 3
  fromEnum PROPOSAL_STATUS_REJECTED = 4
  fromEnum PROPOSAL_STATUS_FAILED = 5
  fromEnum
    (ProposalStatus'Unrecognized (ProposalStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ PROPOSAL_STATUS_FAILED
    = Prelude.error
        "ProposalStatus.succ: bad argument PROPOSAL_STATUS_FAILED. This value would be out of bounds."
  succ PROPOSAL_STATUS_UNSPECIFIED = PROPOSAL_STATUS_DEPOSIT_PERIOD
  succ PROPOSAL_STATUS_DEPOSIT_PERIOD = PROPOSAL_STATUS_VOTING_PERIOD
  succ PROPOSAL_STATUS_VOTING_PERIOD = PROPOSAL_STATUS_PASSED
  succ PROPOSAL_STATUS_PASSED = PROPOSAL_STATUS_REJECTED
  succ PROPOSAL_STATUS_REJECTED = PROPOSAL_STATUS_FAILED
  succ (ProposalStatus'Unrecognized _)
    = Prelude.error
        "ProposalStatus.succ: bad argument: unrecognized value"
  pred PROPOSAL_STATUS_UNSPECIFIED
    = Prelude.error
        "ProposalStatus.pred: bad argument PROPOSAL_STATUS_UNSPECIFIED. This value would be out of bounds."
  pred PROPOSAL_STATUS_DEPOSIT_PERIOD = PROPOSAL_STATUS_UNSPECIFIED
  pred PROPOSAL_STATUS_VOTING_PERIOD = PROPOSAL_STATUS_DEPOSIT_PERIOD
  pred PROPOSAL_STATUS_PASSED = PROPOSAL_STATUS_VOTING_PERIOD
  pred PROPOSAL_STATUS_REJECTED = PROPOSAL_STATUS_PASSED
  pred PROPOSAL_STATUS_FAILED = PROPOSAL_STATUS_REJECTED
  pred (ProposalStatus'Unrecognized _)
    = Prelude.error
        "ProposalStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ProposalStatus where
  fieldDefault = PROPOSAL_STATUS_UNSPECIFIED
instance Control.DeepSeq.NFData ProposalStatus where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.quorum' @:: Lens' TallyParams Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.threshold' @:: Lens' TallyParams Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.vetoThreshold' @:: Lens' TallyParams Data.Text.Text@ -}
data TallyParams
  = TallyParams'_constructor {_TallyParams'quorum :: !Data.Text.Text,
                              _TallyParams'threshold :: !Data.Text.Text,
                              _TallyParams'vetoThreshold :: !Data.Text.Text,
                              _TallyParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TallyParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TallyParams "quorum" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyParams'quorum (\ x__ y__ -> x__ {_TallyParams'quorum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TallyParams "threshold" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyParams'threshold
           (\ x__ y__ -> x__ {_TallyParams'threshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TallyParams "vetoThreshold" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyParams'vetoThreshold
           (\ x__ y__ -> x__ {_TallyParams'vetoThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Message TallyParams where
  messageName _ = Data.Text.pack "cosmos.gov.v1.TallyParams"
  packedMessageDescriptor _
    = "\n\
      \\vTallyParams\DC2&\n\
      \\ACKquorum\CAN\SOH \SOH(\tR\ACKquorumB\SO\210\180-\n\
      \cosmos.Dec\DC2,\n\
      \\tthreshold\CAN\STX \SOH(\tR\tthresholdB\SO\210\180-\n\
      \cosmos.Dec\DC25\n\
      \\SOveto_threshold\CAN\ETX \SOH(\tR\rvetoThresholdB\SO\210\180-\n\
      \cosmos.Dec:\STX\CAN\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        quorum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "quorum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"quorum")) ::
              Data.ProtoLens.FieldDescriptor TallyParams
        threshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"threshold")) ::
              Data.ProtoLens.FieldDescriptor TallyParams
        vetoThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "veto_threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"vetoThreshold")) ::
              Data.ProtoLens.FieldDescriptor TallyParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, quorum__field_descriptor),
           (Data.ProtoLens.Tag 2, threshold__field_descriptor),
           (Data.ProtoLens.Tag 3, vetoThreshold__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TallyParams'_unknownFields
        (\ x__ y__ -> x__ {_TallyParams'_unknownFields = y__})
  defMessage
    = TallyParams'_constructor
        {_TallyParams'quorum = Data.ProtoLens.fieldDefault,
         _TallyParams'threshold = Data.ProtoLens.fieldDefault,
         _TallyParams'vetoThreshold = Data.ProtoLens.fieldDefault,
         _TallyParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TallyParams -> Data.ProtoLens.Encoding.Bytes.Parser TallyParams
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
                                       "quorum"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"quorum") y x)
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
                                       "threshold"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"threshold") y x)
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
                                       "veto_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"vetoThreshold") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TallyParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"quorum") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"threshold") _x
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
                            (Data.ProtoLens.Field.field @"vetoThreshold") _x
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
instance Control.DeepSeq.NFData TallyParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TallyParams'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TallyParams'quorum x__)
                (Control.DeepSeq.deepseq
                   (_TallyParams'threshold x__)
                   (Control.DeepSeq.deepseq (_TallyParams'vetoThreshold x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.yesCount' @:: Lens' TallyResult Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.abstainCount' @:: Lens' TallyResult Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.noCount' @:: Lens' TallyResult Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.noWithVetoCount' @:: Lens' TallyResult Data.Text.Text@ -}
data TallyResult
  = TallyResult'_constructor {_TallyResult'yesCount :: !Data.Text.Text,
                              _TallyResult'abstainCount :: !Data.Text.Text,
                              _TallyResult'noCount :: !Data.Text.Text,
                              _TallyResult'noWithVetoCount :: !Data.Text.Text,
                              _TallyResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TallyResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TallyResult "yesCount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyResult'yesCount
           (\ x__ y__ -> x__ {_TallyResult'yesCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TallyResult "abstainCount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyResult'abstainCount
           (\ x__ y__ -> x__ {_TallyResult'abstainCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TallyResult "noCount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyResult'noCount
           (\ x__ y__ -> x__ {_TallyResult'noCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TallyResult "noWithVetoCount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyResult'noWithVetoCount
           (\ x__ y__ -> x__ {_TallyResult'noWithVetoCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message TallyResult where
  messageName _ = Data.Text.pack "cosmos.gov.v1.TallyResult"
  packedMessageDescriptor _
    = "\n\
      \\vTallyResult\DC2+\n\
      \\tyes_count\CAN\SOH \SOH(\tR\byesCountB\SO\210\180-\n\
      \cosmos.Int\DC23\n\
      \\rabstain_count\CAN\STX \SOH(\tR\fabstainCountB\SO\210\180-\n\
      \cosmos.Int\DC2)\n\
      \\bno_count\CAN\ETX \SOH(\tR\anoCountB\SO\210\180-\n\
      \cosmos.Int\DC2;\n\
      \\DC2no_with_veto_count\CAN\EOT \SOH(\tR\SInoWithVetoCountB\SO\210\180-\n\
      \cosmos.Int"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        yesCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "yes_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"yesCount")) ::
              Data.ProtoLens.FieldDescriptor TallyResult
        abstainCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "abstain_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"abstainCount")) ::
              Data.ProtoLens.FieldDescriptor TallyResult
        noCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"noCount")) ::
              Data.ProtoLens.FieldDescriptor TallyResult
        noWithVetoCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_with_veto_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"noWithVetoCount")) ::
              Data.ProtoLens.FieldDescriptor TallyResult
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, yesCount__field_descriptor),
           (Data.ProtoLens.Tag 2, abstainCount__field_descriptor),
           (Data.ProtoLens.Tag 3, noCount__field_descriptor),
           (Data.ProtoLens.Tag 4, noWithVetoCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TallyResult'_unknownFields
        (\ x__ y__ -> x__ {_TallyResult'_unknownFields = y__})
  defMessage
    = TallyResult'_constructor
        {_TallyResult'yesCount = Data.ProtoLens.fieldDefault,
         _TallyResult'abstainCount = Data.ProtoLens.fieldDefault,
         _TallyResult'noCount = Data.ProtoLens.fieldDefault,
         _TallyResult'noWithVetoCount = Data.ProtoLens.fieldDefault,
         _TallyResult'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TallyResult -> Data.ProtoLens.Encoding.Bytes.Parser TallyResult
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
                                       "yes_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"yesCount") y x)
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
                                       "abstain_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"abstainCount") y x)
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
                                       "no_count"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"noCount") y x)
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
                                       "no_with_veto_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"noWithVetoCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TallyResult"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"yesCount") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"abstainCount") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"noCount") _x
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
                               (Data.ProtoLens.Field.field @"noWithVetoCount") _x
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
instance Control.DeepSeq.NFData TallyResult where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TallyResult'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TallyResult'yesCount x__)
                (Control.DeepSeq.deepseq
                   (_TallyResult'abstainCount x__)
                   (Control.DeepSeq.deepseq
                      (_TallyResult'noCount x__)
                      (Control.DeepSeq.deepseq (_TallyResult'noWithVetoCount x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.proposalId' @:: Lens' Vote Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.voter' @:: Lens' Vote Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.options' @:: Lens' Vote [WeightedVoteOption]@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.vec'options' @:: Lens' Vote (Data.Vector.Vector WeightedVoteOption)@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.metadata' @:: Lens' Vote Data.Text.Text@ -}
data Vote
  = Vote'_constructor {_Vote'proposalId :: !Data.Word.Word64,
                       _Vote'voter :: !Data.Text.Text,
                       _Vote'options :: !(Data.Vector.Vector WeightedVoteOption),
                       _Vote'metadata :: !Data.Text.Text,
                       _Vote'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Vote where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Vote "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'proposalId (\ x__ y__ -> x__ {_Vote'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "voter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'voter (\ x__ y__ -> x__ {_Vote'voter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "options" [WeightedVoteOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'options (\ x__ y__ -> x__ {_Vote'options = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Vote "vec'options" (Data.Vector.Vector WeightedVoteOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'options (\ x__ y__ -> x__ {_Vote'options = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vote "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'metadata (\ x__ y__ -> x__ {_Vote'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message Vote where
  messageName _ = Data.Text.pack "cosmos.gov.v1.Vote"
  packedMessageDescriptor _
    = "\n\
      \\EOTVote\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC2.\n\
      \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC2;\n\
      \\aoptions\CAN\EOT \ETX(\v2!.cosmos.gov.v1.WeightedVoteOptionR\aoptions\DC2\SUB\n\
      \\bmetadata\CAN\ENQ \SOH(\tR\bmetadataJ\EOT\b\ETX\DLE\EOT"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proposalId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposal_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposalId")) ::
              Data.ProtoLens.FieldDescriptor Vote
        voter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"voter")) ::
              Data.ProtoLens.FieldDescriptor Vote
        options__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WeightedVoteOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"options")) ::
              Data.ProtoLens.FieldDescriptor Vote
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor Vote
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, voter__field_descriptor),
           (Data.ProtoLens.Tag 4, options__field_descriptor),
           (Data.ProtoLens.Tag 5, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Vote'_unknownFields
        (\ x__ y__ -> x__ {_Vote'_unknownFields = y__})
  defMessage
    = Vote'_constructor
        {_Vote'proposalId = Data.ProtoLens.fieldDefault,
         _Vote'voter = Data.ProtoLens.fieldDefault,
         _Vote'options = Data.Vector.Generic.empty,
         _Vote'metadata = Data.ProtoLens.fieldDefault,
         _Vote'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Vote
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld WeightedVoteOption
             -> Data.ProtoLens.Encoding.Bytes.Parser Vote
        loop x mutable'options
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'options <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'options)
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
                              (Data.ProtoLens.Field.field @"vec'options") frozen'options x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proposal_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposalId") y x)
                                  mutable'options
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
                                       "voter"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"voter") y x)
                                  mutable'options
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "options"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'options y)
                                loop x v
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
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                                  mutable'options
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'options
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'options <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'options)
          "Vote"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"proposalId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"voter") _x
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
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'options") _x))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x
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
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Vote where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Vote'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Vote'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_Vote'voter x__)
                   (Control.DeepSeq.deepseq
                      (_Vote'options x__)
                      (Control.DeepSeq.deepseq (_Vote'metadata x__) ()))))
newtype VoteOption'UnrecognizedValue
  = VoteOption'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data VoteOption
  = VOTE_OPTION_UNSPECIFIED |
    VOTE_OPTION_YES |
    VOTE_OPTION_ABSTAIN |
    VOTE_OPTION_NO |
    VOTE_OPTION_NO_WITH_VETO |
    VoteOption'Unrecognized !VoteOption'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum VoteOption where
  maybeToEnum 0 = Prelude.Just VOTE_OPTION_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just VOTE_OPTION_YES
  maybeToEnum 2 = Prelude.Just VOTE_OPTION_ABSTAIN
  maybeToEnum 3 = Prelude.Just VOTE_OPTION_NO
  maybeToEnum 4 = Prelude.Just VOTE_OPTION_NO_WITH_VETO
  maybeToEnum k
    = Prelude.Just
        (VoteOption'Unrecognized
           (VoteOption'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum VOTE_OPTION_UNSPECIFIED = "VOTE_OPTION_UNSPECIFIED"
  showEnum VOTE_OPTION_YES = "VOTE_OPTION_YES"
  showEnum VOTE_OPTION_ABSTAIN = "VOTE_OPTION_ABSTAIN"
  showEnum VOTE_OPTION_NO = "VOTE_OPTION_NO"
  showEnum VOTE_OPTION_NO_WITH_VETO = "VOTE_OPTION_NO_WITH_VETO"
  showEnum (VoteOption'Unrecognized (VoteOption'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "VOTE_OPTION_UNSPECIFIED"
    = Prelude.Just VOTE_OPTION_UNSPECIFIED
    | (Prelude.==) k "VOTE_OPTION_YES" = Prelude.Just VOTE_OPTION_YES
    | (Prelude.==) k "VOTE_OPTION_ABSTAIN"
    = Prelude.Just VOTE_OPTION_ABSTAIN
    | (Prelude.==) k "VOTE_OPTION_NO" = Prelude.Just VOTE_OPTION_NO
    | (Prelude.==) k "VOTE_OPTION_NO_WITH_VETO"
    = Prelude.Just VOTE_OPTION_NO_WITH_VETO
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded VoteOption where
  minBound = VOTE_OPTION_UNSPECIFIED
  maxBound = VOTE_OPTION_NO_WITH_VETO
instance Prelude.Enum VoteOption where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum VoteOption: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum VOTE_OPTION_UNSPECIFIED = 0
  fromEnum VOTE_OPTION_YES = 1
  fromEnum VOTE_OPTION_ABSTAIN = 2
  fromEnum VOTE_OPTION_NO = 3
  fromEnum VOTE_OPTION_NO_WITH_VETO = 4
  fromEnum (VoteOption'Unrecognized (VoteOption'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ VOTE_OPTION_NO_WITH_VETO
    = Prelude.error
        "VoteOption.succ: bad argument VOTE_OPTION_NO_WITH_VETO. This value would be out of bounds."
  succ VOTE_OPTION_UNSPECIFIED = VOTE_OPTION_YES
  succ VOTE_OPTION_YES = VOTE_OPTION_ABSTAIN
  succ VOTE_OPTION_ABSTAIN = VOTE_OPTION_NO
  succ VOTE_OPTION_NO = VOTE_OPTION_NO_WITH_VETO
  succ (VoteOption'Unrecognized _)
    = Prelude.error "VoteOption.succ: bad argument: unrecognized value"
  pred VOTE_OPTION_UNSPECIFIED
    = Prelude.error
        "VoteOption.pred: bad argument VOTE_OPTION_UNSPECIFIED. This value would be out of bounds."
  pred VOTE_OPTION_YES = VOTE_OPTION_UNSPECIFIED
  pred VOTE_OPTION_ABSTAIN = VOTE_OPTION_YES
  pred VOTE_OPTION_NO = VOTE_OPTION_ABSTAIN
  pred VOTE_OPTION_NO_WITH_VETO = VOTE_OPTION_NO
  pred (VoteOption'Unrecognized _)
    = Prelude.error "VoteOption.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault VoteOption where
  fieldDefault = VOTE_OPTION_UNSPECIFIED
instance Control.DeepSeq.NFData VoteOption where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.votingPeriod' @:: Lens' VotingParams Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.maybe'votingPeriod' @:: Lens' VotingParams (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data VotingParams
  = VotingParams'_constructor {_VotingParams'votingPeriod :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                               _VotingParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VotingParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VotingParams "votingPeriod" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VotingParams'votingPeriod
           (\ x__ y__ -> x__ {_VotingParams'votingPeriod = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField VotingParams "maybe'votingPeriod" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VotingParams'votingPeriod
           (\ x__ y__ -> x__ {_VotingParams'votingPeriod = y__}))
        Prelude.id
instance Data.ProtoLens.Message VotingParams where
  messageName _ = Data.Text.pack "cosmos.gov.v1.VotingParams"
  packedMessageDescriptor _
    = "\n\
      \\fVotingParams\DC2D\n\
      \\rvoting_period\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\fvotingPeriodB\EOT\152\223\US\SOH:\STX\CAN\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        votingPeriod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voting_period"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'votingPeriod")) ::
              Data.ProtoLens.FieldDescriptor VotingParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, votingPeriod__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VotingParams'_unknownFields
        (\ x__ y__ -> x__ {_VotingParams'_unknownFields = y__})
  defMessage
    = VotingParams'_constructor
        {_VotingParams'votingPeriod = Prelude.Nothing,
         _VotingParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VotingParams -> Data.ProtoLens.Encoding.Bytes.Parser VotingParams
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
                                       "voting_period"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"votingPeriod") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "VotingParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'votingPeriod") _x
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
instance Control.DeepSeq.NFData VotingParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VotingParams'_unknownFields x__)
             (Control.DeepSeq.deepseq (_VotingParams'votingPeriod x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.option' @:: Lens' WeightedVoteOption VoteOption@
         * 'Proto.Cosmos.Gov.V1.Gov_Fields.weight' @:: Lens' WeightedVoteOption Data.Text.Text@ -}
data WeightedVoteOption
  = WeightedVoteOption'_constructor {_WeightedVoteOption'option :: !VoteOption,
                                     _WeightedVoteOption'weight :: !Data.Text.Text,
                                     _WeightedVoteOption'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WeightedVoteOption where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField WeightedVoteOption "option" VoteOption where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WeightedVoteOption'option
           (\ x__ y__ -> x__ {_WeightedVoteOption'option = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField WeightedVoteOption "weight" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _WeightedVoteOption'weight
           (\ x__ y__ -> x__ {_WeightedVoteOption'weight = y__}))
        Prelude.id
instance Data.ProtoLens.Message WeightedVoteOption where
  messageName _ = Data.Text.pack "cosmos.gov.v1.WeightedVoteOption"
  packedMessageDescriptor _
    = "\n\
      \\DC2WeightedVoteOption\DC21\n\
      \\ACKoption\CAN\SOH \SOH(\SO2\EM.cosmos.gov.v1.VoteOptionR\ACKoption\DC2&\n\
      \\ACKweight\CAN\STX \SOH(\tR\ACKweightB\SO\210\180-\n\
      \cosmos.Dec"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        option__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "option"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor VoteOption)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"option")) ::
              Data.ProtoLens.FieldDescriptor WeightedVoteOption
        weight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "weight"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"weight")) ::
              Data.ProtoLens.FieldDescriptor WeightedVoteOption
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, option__field_descriptor),
           (Data.ProtoLens.Tag 2, weight__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _WeightedVoteOption'_unknownFields
        (\ x__ y__ -> x__ {_WeightedVoteOption'_unknownFields = y__})
  defMessage
    = WeightedVoteOption'_constructor
        {_WeightedVoteOption'option = Data.ProtoLens.fieldDefault,
         _WeightedVoteOption'weight = Data.ProtoLens.fieldDefault,
         _WeightedVoteOption'_unknownFields = []}
  parseMessage
    = let
        loop ::
          WeightedVoteOption
          -> Data.ProtoLens.Encoding.Bytes.Parser WeightedVoteOption
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "option"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"option") y x)
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
                                       "weight"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"weight") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "WeightedVoteOption"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"option") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"weight") _x
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
instance Control.DeepSeq.NFData WeightedVoteOption where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_WeightedVoteOption'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_WeightedVoteOption'option x__)
                (Control.DeepSeq.deepseq (_WeightedVoteOption'weight x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\ETBcosmos/gov/v1/gov.proto\DC2\rcosmos.gov.v1\SUB\RScosmos/base/v1beta1/coin.proto\SUB\DC4gogoproto/gogo.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\EMgoogle/protobuf/any.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"o\n\
    \\DC2WeightedVoteOption\DC21\n\
    \\ACKoption\CAN\SOH \SOH(\SO2\EM.cosmos.gov.v1.VoteOptionR\ACKoption\DC2&\n\
    \\ACKweight\CAN\STX \SOH(\tR\ACKweightB\SO\210\180-\n\
    \cosmos.Dec\"\160\SOH\n\
    \\aDeposit\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC26\n\
    \\tdepositor\CAN\STX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString\DC2<\n\
    \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH\"\223\ENQ\n\
    \\bProposal\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\EOTR\STXid\DC20\n\
    \\bmessages\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\bmessages\DC25\n\
    \\ACKstatus\CAN\ETX \SOH(\SO2\GS.cosmos.gov.v1.ProposalStatusR\ACKstatus\DC2H\n\
    \\DC2final_tally_result\CAN\EOT \SOH(\v2\SUB.cosmos.gov.v1.TallyResultR\DLEfinalTallyResult\DC2A\n\
    \\vsubmit_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \submitTimeB\EOT\144\223\US\SOH\DC2J\n\
    \\DLEdeposit_end_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\SOdepositEndTimeB\EOT\144\223\US\SOH\DC2I\n\
    \\rtotal_deposit\CAN\a \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ftotalDepositB\t\200\222\US\NUL\168\231\176*\SOH\DC2L\n\
    \\DC1voting_start_time\CAN\b \SOH(\v2\SUB.google.protobuf.TimestampR\SIvotingStartTimeB\EOT\144\223\US\SOH\DC2H\n\
    \\SIvoting_end_time\CAN\t \SOH(\v2\SUB.google.protobuf.TimestampR\rvotingEndTimeB\EOT\144\223\US\SOH\DC2\SUB\n\
    \\bmetadata\CAN\n\
    \ \SOH(\tR\bmetadata\DC2\DC4\n\
    \\ENQtitle\CAN\v \SOH(\tR\ENQtitle\DC2\CAN\n\
    \\asummary\CAN\f \SOH(\tR\asummary\DC24\n\
    \\bproposer\CAN\r \SOH(\tR\bproposerB\CAN\210\180-\DC4cosmos.AddressString\DC2\FS\n\
    \\texpedited\CAN\SO \SOH(\bR\texpedited\"\215\SOH\n\
    \\vTallyResult\DC2+\n\
    \\tyes_count\CAN\SOH \SOH(\tR\byesCountB\SO\210\180-\n\
    \cosmos.Int\DC23\n\
    \\rabstain_count\CAN\STX \SOH(\tR\fabstainCountB\SO\210\180-\n\
    \cosmos.Int\DC2)\n\
    \\bno_count\CAN\ETX \SOH(\tR\anoCountB\SO\210\180-\n\
    \cosmos.Int\DC2;\n\
    \\DC2no_with_veto_count\CAN\EOT \SOH(\tR\SInoWithVetoCountB\SO\210\180-\n\
    \cosmos.Int\"\182\SOH\n\
    \\EOTVote\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC2.\n\
    \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC2;\n\
    \\aoptions\CAN\EOT \ETX(\v2!.cosmos.gov.v1.WeightedVoteOptionR\aoptions\DC2\SUB\n\
    \\bmetadata\CAN\ENQ \SOH(\tR\bmetadataJ\EOT\b\ETX\DLE\EOT\"\221\SOH\n\
    \\rDepositParams\DC2Y\n\
    \\vmin_deposit\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\n\
    \minDepositB\GS\200\222\US\NUL\234\222\US\NAKmin_deposit,omitempty\DC2m\n\
    \\DC2max_deposit_period\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\DLEmaxDepositPeriodB$\234\222\US\FSmax_deposit_period,omitempty\152\223\US\SOH:\STX\CAN\SOH\"X\n\
    \\fVotingParams\DC2D\n\
    \\rvoting_period\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\fvotingPeriodB\EOT\152\223\US\SOH:\STX\CAN\SOH\"\158\SOH\n\
    \\vTallyParams\DC2&\n\
    \\ACKquorum\CAN\SOH \SOH(\tR\ACKquorumB\SO\210\180-\n\
    \cosmos.Dec\DC2,\n\
    \\tthreshold\CAN\STX \SOH(\tR\tthresholdB\SO\210\180-\n\
    \cosmos.Dec\DC25\n\
    \\SOveto_threshold\CAN\ETX \SOH(\tR\rvetoThresholdB\SO\210\180-\n\
    \cosmos.Dec:\STX\CAN\SOH\"\211\a\n\
    \\ACKParams\DC2E\n\
    \\vmin_deposit\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\n\
    \minDepositB\t\200\222\US\NUL\168\231\176*\SOH\DC2M\n\
    \\DC2max_deposit_period\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\DLEmaxDepositPeriodB\EOT\152\223\US\SOH\DC2D\n\
    \\rvoting_period\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\fvotingPeriodB\EOT\152\223\US\SOH\DC2&\n\
    \\ACKquorum\CAN\EOT \SOH(\tR\ACKquorumB\SO\210\180-\n\
    \cosmos.Dec\DC2,\n\
    \\tthreshold\CAN\ENQ \SOH(\tR\tthresholdB\SO\210\180-\n\
    \cosmos.Dec\DC25\n\
    \\SOveto_threshold\CAN\ACK \SOH(\tR\rvetoThresholdB\SO\210\180-\n\
    \cosmos.Dec\DC2I\n\
    \\EMmin_initial_deposit_ratio\CAN\a \SOH(\tR\SYNminInitialDepositRatioB\SO\210\180-\n\
    \cosmos.Dec\DC2B\n\
    \\NAKproposal_cancel_ratio\CAN\b \SOH(\tR\DC3proposalCancelRatioB\SO\210\180-\n\
    \cosmos.Dec\DC2J\n\
    \\DC4proposal_cancel_dest\CAN\t \SOH(\tR\DC2proposalCancelDestB\CAN\210\180-\DC4cosmos.AddressString\DC2W\n\
    \\ETBexpedited_voting_period\CAN\n\
    \ \SOH(\v2\EM.google.protobuf.DurationR\NAKexpeditedVotingPeriodB\EOT\152\223\US\SOH\DC2?\n\
    \\DC3expedited_threshold\CAN\v \SOH(\tR\DC2expeditedThresholdB\SO\210\180-\n\
    \cosmos.Dec\DC2X\n\
    \\NAKexpedited_min_deposit\CAN\f \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\DC3expeditedMinDepositB\t\200\222\US\NUL\168\231\176*\SOH\DC2(\n\
    \\DLEburn_vote_quorum\CAN\r \SOH(\bR\SOburnVoteQuorum\DC2A\n\
    \\GSburn_proposal_deposit_prevote\CAN\SO \SOH(\bR\SUBburnProposalDepositPrevote\DC2$\n\
    \\SOburn_vote_veto\CAN\SI \SOH(\bR\fburnVoteVeto*\137\SOH\n\
    \\n\
    \VoteOption\DC2\ESC\n\
    \\ETBVOTE_OPTION_UNSPECIFIED\DLE\NUL\DC2\DC3\n\
    \\SIVOTE_OPTION_YES\DLE\SOH\DC2\ETB\n\
    \\DC3VOTE_OPTION_ABSTAIN\DLE\STX\DC2\DC2\n\
    \\SOVOTE_OPTION_NO\DLE\ETX\DC2\FS\n\
    \\CANVOTE_OPTION_NO_WITH_VETO\DLE\EOT*\206\SOH\n\
    \\SOProposalStatus\DC2\US\n\
    \\ESCPROPOSAL_STATUS_UNSPECIFIED\DLE\NUL\DC2\"\n\
    \\RSPROPOSAL_STATUS_DEPOSIT_PERIOD\DLE\SOH\DC2!\n\
    \\GSPROPOSAL_STATUS_VOTING_PERIOD\DLE\STX\DC2\SUB\n\
    \\SYNPROPOSAL_STATUS_PASSED\DLE\ETX\DC2\FS\n\
    \\CANPROPOSAL_STATUS_REJECTED\DLE\EOT\DC2\SUB\n\
    \\SYNPROPOSAL_STATUS_FAILED\DLE\ENQB-Z+github.com/cosmos/cosmos-sdk/x/gov/types/v1J\252P\n\
    \\a\DC2\ENQ\SOH\NUL\128\STX\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.46\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL#\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\n\
    \\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULB\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\f\NULB\n\
    \[\n\
    \\STX\ENQ\NUL\DC2\EOT\SI\NUL\SUB\SOH\SUBO VoteOption enumerates the valid vote options for a given governance proposal.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\SI\ENQ\SI\n\
    \C\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\DC1\STX\RS\SUB6 VOTE_OPTION_UNSPECIFIED defines a no-op vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\DC1\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\DC1\FS\GS\n\
    \9\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\DC3\STX\SYN\SUB, VOTE_OPTION_YES defines a yes vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\DC3\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\DC3\DC4\NAK\n\
    \B\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\NAK\STX\SUB\SUB5 VOTE_OPTION_ABSTAIN defines an abstain vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\NAK\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\NAK\CAN\EM\n\
    \7\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX\ETB\STX\NAK\SUB* VOTE_OPTION_NO defines a no vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX\ETB\STX\DLE\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX\ETB\DC3\DC4\n\
    \K\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX\EM\STX\US\SUB> VOTE_OPTION_NO_WITH_VETO defines a no with veto vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX\EM\STX\SUB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX\EM\GS\RS\n\
    \G\n\
    \\STX\EOT\NUL\DC2\EOT\GS\NUL#\SOH\SUB; WeightedVoteOption defines a unit of vote for vote split.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\GS\b\SUB\n\
    \a\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\US\STX\CAN\SUBT option defines the valid vote options, it must not contain duplicate vote options.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\US\STX\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\US\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\US\SYN\ETB\n\
    \I\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\"\STX;\SUB< weight is the vote weight associated with the vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\"\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\"\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\"\DC4:\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\"\NAK9\n\
    \_\n\
    \\STX\EOT\SOH\DC2\EOT'\NUL0\SOH\SUBS Deposit defines an amount deposited by an account address to an active\n\
    \ proposal.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX'\b\SI\n\
    \A\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX)\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX)\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX)\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX)\ETB\CAN\n\
    \J\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX,\STXH\SUB= depositor defines the deposit addresses from the proposals.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX,\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX,\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX,\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX,\ETBG\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\202\214\ENQ\DC2\ETX,\CANF\n\
    \3\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX/\STXm\SUB& amount to be deposited by depositor.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX/\v#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX/$*\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX/-.\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\ETX//l\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\233\251\ETX\DC2\ETX/0L\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\STX\b\245\140\166\ENQ\DC2\ETX/Nk\n\
    \O\n\
    \\STX\EOT\STX\DC2\EOT3\NULh\SOH\SUBC Proposal defines the core field members of a governance proposal.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX3\b\DLE\n\
    \8\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX5\STX\DLE\SUB+ id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX5\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX5\t\v\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX5\SO\SI\n\
    \Y\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX8\STX,\SUBL messages are the arbitrary messages to be executed if the proposal passes.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX8\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX8\v\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX8\US'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX8*+\n\
    \2\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX;\STX\FS\SUB% status defines the proposal status.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETX;\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX;\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX;\SUB\ESC\n\
    \\188\SOH\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX@\STX%\SUB\174\SOH final_tally_result is the final tally result of the proposal. When\n\
    \ querying a proposal via gRPC, this field is not populated until the\n\
    \ proposal's voting period has ended.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETX@\STX\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX@\SO \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX@#$\n\
    \>\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETXC\STXI\SUB1 submit_time is the time of proposal submission.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\ETXC\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETXC\FS'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETXC*+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\b\DC2\ETXC,H\n\
    \\SI\n\
    \\b\EOT\STX\STX\EOT\b\242\251\ETX\DC2\ETXC-G\n\
    \?\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETXF\STXN\SUB2 deposit_end_time is the end time for deposition.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ACK\DC2\ETXF\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETXF\FS,\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETXF/0\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\b\DC2\ETXF1M\n\
    \\SI\n\
    \\b\EOT\STX\STX\ENQ\b\242\251\ETX\DC2\ETXF2L\n\
    \B\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETXI\STXt\SUB5 total_deposit is the total deposit on the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ACK\DC2\ETXI\v#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETXI$1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETXI45\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\b\DC2\ETXI6s\n\
    \\SI\n\
    \\b\EOT\STX\STX\ACK\b\233\251\ETX\DC2\ETXI7S\n\
    \\DLE\n\
    \\t\EOT\STX\STX\ACK\b\245\140\166\ENQ\DC2\ETXIUr\n\
    \L\n\
    \\EOT\EOT\STX\STX\a\DC2\ETXL\STXO\SUB? voting_start_time is the starting time to vote on a proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ACK\DC2\ETXL\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\ETXL\FS-\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\ETXL01\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\b\DC2\ETXL2N\n\
    \\SI\n\
    \\b\EOT\STX\STX\a\b\242\251\ETX\DC2\ETXL3M\n\
    \G\n\
    \\EOT\EOT\STX\STX\b\DC2\ETXO\STXM\SUB: voting_end_time is the end time of voting on a proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\ACK\DC2\ETXO\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\SOH\DC2\ETXO\FS+\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\ETX\DC2\ETXO./\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\b\DC2\ETXO0L\n\
    \\SI\n\
    \\b\EOT\STX\STX\b\b\242\251\ETX\DC2\ETXO1K\n\
    \\194\SOH\n\
    \\EOT\EOT\STX\STX\t\DC2\ETXS\STX\ETB\SUB\180\SOH metadata is any arbitrary metadata attached to the proposal.\n\
    \ the recommended format of the metadata is to be found here: https://docs.cosmos.network/v0.47/modules/gov#proposal-3\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\ENQ\DC2\ETXS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\SOH\DC2\ETXS\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\ETX\DC2\ETXS\DC4\SYN\n\
    \J\n\
    \\EOT\EOT\STX\STX\n\
    \\DC2\ETXX\STX\DC4\SUB= title is the title of the proposal\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\ENQ\DC2\ETXX\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\SOH\DC2\ETXX\t\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\ETX\DC2\ETXX\DC1\DC3\n\
    \R\n\
    \\EOT\EOT\STX\STX\v\DC2\ETX]\STX\SYN\SUBE summary is a short summary of the proposal\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\ENQ\DC2\ETX]\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\SOH\DC2\ETX]\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\ETX\DC2\ETX]\DC3\NAK\n\
    \Y\n\
    \\EOT\EOT\STX\STX\f\DC2\ETXb\STXH\SUBL proposer is the address of the proposal sumbitter\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\ENQ\DC2\ETXb\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\SOH\DC2\ETXb\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\ETX\DC2\ETXb\DC4\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\b\DC2\ETXb\ETBG\n\
    \\SI\n\
    \\b\EOT\STX\STX\f\b\202\214\ENQ\DC2\ETXb\CANF\n\
    \V\n\
    \\EOT\EOT\STX\STX\r\DC2\ETXg\STX\SYN\SUBI expedited defines if the proposal is expedited\n\
    \\n\
    \ Since: cosmos-sdk 0.50\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\ENQ\DC2\ETXg\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\SOH\DC2\ETXg\a\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\ETX\DC2\ETXg\DC3\NAK\n\
    \I\n\
    \\STX\ENQ\SOH\DC2\EOTk\NUL}\SOH\SUB= ProposalStatus enumerates the valid statuses of a proposal.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\SOH\DC2\ETXk\ENQ\DC3\n\
    \O\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\ETXm\STX\"\SUBB PROPOSAL_STATUS_UNSPECIFIED defines the default proposal status.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\ETXm\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\ETXm !\n\
    \c\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\ETXp\STX%\SUBV PROPOSAL_STATUS_DEPOSIT_PERIOD defines a proposal status during the deposit\n\
    \ period.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\ETXp\STX \n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\ETXp#$\n\
    \a\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\ETXs\STX$\SUBT PROPOSAL_STATUS_VOTING_PERIOD defines a proposal status during the voting\n\
    \ period.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\ETXs\STX\US\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\ETXs\"#\n\
    \_\n\
    \\EOT\ENQ\SOH\STX\ETX\DC2\ETXv\STX\GS\SUBR PROPOSAL_STATUS_PASSED defines a proposal status of a proposal that has\n\
    \ passed.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ETX\SOH\DC2\ETXv\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ETX\STX\DC2\ETXv\ESC\FS\n\
    \h\n\
    \\EOT\ENQ\SOH\STX\EOT\DC2\ETXy\STX\US\SUB[ PROPOSAL_STATUS_REJECTED defines a proposal status of a proposal that has\n\
    \ been rejected.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\EOT\SOH\DC2\ETXy\STX\SUB\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\EOT\STX\DC2\ETXy\GS\RS\n\
    \_\n\
    \\EOT\ENQ\SOH\STX\ENQ\DC2\ETX|\STX\GS\SUBR PROPOSAL_STATUS_FAILED defines a proposal status of a proposal that has\n\
    \ failed.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ENQ\SOH\DC2\ETX|\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\SOH\STX\ENQ\STX\DC2\ETX|\ESC\FS\n\
    \O\n\
    \\STX\EOT\ETX\DC2\ACK\128\SOH\NUL\137\SOH\SOH\SUBA TallyResult defines a standard tally for a governance proposal.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\128\SOH\b\DC3\n\
    \C\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\130\SOH\STX>\SUB5 yes_count is the number of yes votes on a proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\130\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\130\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\130\SOH\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\EOT\130\SOH\ETB=\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\NUL\b\202\214\ENQ\DC2\EOT\130\SOH\CAN<\n\
    \K\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\132\SOH\STXB\SUB= abstain_count is the number of abstain votes on a proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\132\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\132\SOH\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\132\SOH\EM\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\EOT\132\SOH\ESCA\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\SOH\b\202\214\ENQ\DC2\EOT\132\SOH\FS@\n\
    \A\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOT\134\SOH\STX=\SUB3 no_count is the number of no votes on a proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\EOT\134\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\EOT\134\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\EOT\134\SOH\DC4\NAK\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\b\DC2\EOT\134\SOH\SYN<\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\STX\b\202\214\ENQ\DC2\EOT\134\SOH\ETB;\n\
    \U\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\EOT\136\SOH\STXG\SUBG no_with_veto_count is the number of no with veto votes on a proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\EOT\136\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\EOT\136\SOH\t\ESC\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\EOT\136\SOH\RS\US\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\b\DC2\EOT\136\SOH F\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\ETX\b\202\214\ENQ\DC2\EOT\136\SOH!E\n\
    \\128\SOH\n\
    \\STX\EOT\EOT\DC2\ACK\141\SOH\NUL\156\SOH\SOH\SUBr Vote defines a vote on a governance proposal.\n\
    \ A Vote consists of a proposal ID, the voter, and the vote option.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\141\SOH\b\f\n\
    \B\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\143\SOH\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\EOT\143\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\143\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\143\SOH\ETB\CAN\n\
    \;\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\146\SOH\STXD\SUB- voter is the voter address of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\EOT\146\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\146\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\146\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\EOT\146\SOH\DC3C\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\SOH\b\202\214\ENQ\DC2\EOT\146\SOH\DC4B\n\
    \\v\n\
    \\ETX\EOT\EOT\t\DC2\EOT\148\SOH\STX\r\n\
    \\f\n\
    \\EOT\EOT\EOT\t\NUL\DC2\EOT\148\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\t\NUL\SOH\DC2\EOT\148\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\t\NUL\STX\DC2\EOT\148\SOH\v\f\n\
    \5\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\151\SOH\STX*\SUB' options is the weighted vote options.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\EOT\151\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\EOT\151\SOH\v\GS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\151\SOH\RS%\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\151\SOH()\n\
    \\190\SOH\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\EOT\155\SOH\STX\SYN\SUB\175\SOH metadata is any arbitrary metadata to attached to the vote.\n\
    \ the recommended format of the metadata is to be found here: https://docs.cosmos.network/v0.47/modules/gov#vote-5\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\EOT\155\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\EOT\155\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\EOT\155\SOH\DC4\NAK\n\
    \V\n\
    \\STX\EOT\ENQ\DC2\ACK\159\SOH\NUL\170\SOH\SOH\SUBH DepositParams defines the params for deposits on governance proposals.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\159\SOH\b\NAK\n\
    \\v\n\
    \\ETX\EOT\ENQ\a\DC2\EOT\160\SOH\STX\ESC\n\
    \\f\n\
    \\EOT\EOT\ENQ\a\ETX\DC2\EOT\160\SOH\STX\ESC\n\
    \H\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ACK\163\SOH\STX\164\SOHT\SUB8 Minimum deposit for a proposal to enter voting period.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\EOT\163\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\163\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\163\SOH$/\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\163\SOH23\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\EOT\164\SOH\ACKS\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\NUL\b\233\251\ETX\DC2\EOT\164\SOH\a#\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\NUL\b\237\251\ETX\DC2\EOT\164\SOH%R\n\
    \e\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ACK\168\SOH\STX\169\SOH]\SUBU Maximum period for Atom holders to deposit on a proposal. Initial value: 2\n\
    \ months.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\168\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\168\SOH\ESC-\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\168\SOH01\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\b\DC2\EOT\169\SOH\ACK\\\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\SOH\b\243\251\ETX\DC2\EOT\169\SOH\a%\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\SOH\b\237\251\ETX\DC2\EOT\169\SOH'[\n\
    \S\n\
    \\STX\EOT\ACK\DC2\ACK\173\SOH\NUL\178\SOH\SOH\SUBE VotingParams defines the params for voting on governance proposals.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\173\SOH\b\DC4\n\
    \\v\n\
    \\ETX\EOT\ACK\a\DC2\EOT\174\SOH\STX\ESC\n\
    \\f\n\
    \\EOT\EOT\ACK\a\ETX\DC2\EOT\174\SOH\STX\ESC\n\
    \.\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\177\SOH\STXN\SUB  Duration of the voting period.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\177\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\177\SOH\ESC(\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\177\SOH+,\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\EOT\177\SOH-M\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\243\251\ETX\DC2\EOT\177\SOH.L\n\
    \Z\n\
    \\STX\EOT\a\DC2\ACK\181\SOH\NUL\194\SOH\SOH\SUBL TallyParams defines the params for tallying votes on governance proposals.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\181\SOH\b\DC3\n\
    \\v\n\
    \\ETX\EOT\a\a\DC2\EOT\182\SOH\STX\ESC\n\
    \\f\n\
    \\EOT\EOT\a\a\ETX\DC2\EOT\182\SOH\STX\ESC\n\
    \f\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\186\SOH\STX;\SUBX Minimum percentage of total stake needed to vote for a result to be\n\
    \ considered valid.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\EOT\186\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\186\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\186\SOH\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\EOT\186\SOH\DC4:\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\202\214\ENQ\DC2\EOT\186\SOH\NAK9\n\
    \Y\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\189\SOH\STX>\SUBK Minimum proportion of Yes votes for proposal to pass. Default value: 0.5.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\EOT\189\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\189\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\189\SOH\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\b\DC2\EOT\189\SOH\ETB=\n\
    \\DLE\n\
    \\b\EOT\a\STX\SOH\b\202\214\ENQ\DC2\EOT\189\SOH\CAN<\n\
    \p\n\
    \\EOT\EOT\a\STX\STX\DC2\EOT\193\SOH\STXC\SUBb Minimum value of Veto votes to Total votes ratio for proposal to be\n\
    \ vetoed. Default value: 1/3.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\EOT\193\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\193\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\193\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\b\DC2\EOT\193\SOH\FSB\n\
    \\DLE\n\
    \\b\EOT\a\STX\STX\b\202\214\ENQ\DC2\EOT\193\SOH\GSA\n\
    \\\\n\
    \\STX\EOT\b\DC2\ACK\199\SOH\NUL\128\STX\SOH\SUBN Params defines the parameters for the x/gov module.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\199\SOH\b\SO\n\
    \F\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\201\SOH\STXr\SUB8 Minimum deposit for a proposal to enter voting period.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\EOT\201\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\201\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\201\SOH$/\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\201\SOH23\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\201\SOH4q\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\233\251\ETX\DC2\EOT\201\SOH5Q\n\
    \\DC1\n\
    \\t\EOT\b\STX\NUL\b\245\140\166\ENQ\DC2\EOT\201\SOHSp\n\
    \c\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\205\SOH\STXS\SUBU Maximum period for Atom holders to deposit on a proposal. Initial value: 2\n\
    \ months.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\EOT\205\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\205\SOH\ESC-\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\205\SOH01\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\b\DC2\EOT\205\SOH2R\n\
    \\DLE\n\
    \\b\EOT\b\STX\SOH\b\243\251\ETX\DC2\EOT\205\SOH3Q\n\
    \.\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\208\SOH\STXN\SUB  Duration of the voting period.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ACK\DC2\EOT\208\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\208\SOH\ESC(\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\208\SOH+,\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\b\DC2\EOT\208\SOH-M\n\
    \\DLE\n\
    \\b\EOT\b\STX\STX\b\243\251\ETX\DC2\EOT\208\SOH.L\n\
    \h\n\
    \\EOT\EOT\b\STX\ETX\DC2\EOT\212\SOH\STX;\SUBZ  Minimum percentage of total stake needed to vote for a result to be\n\
    \  considered valid.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\EOT\212\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\212\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\212\SOH\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\b\DC2\EOT\212\SOH\DC4:\n\
    \\DLE\n\
    \\b\EOT\b\STX\ETX\b\202\214\ENQ\DC2\EOT\212\SOH\NAK9\n\
    \Z\n\
    \\EOT\EOT\b\STX\EOT\DC2\EOT\215\SOH\STX>\SUBL  Minimum proportion of Yes votes for proposal to pass. Default value: 0.5.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ENQ\DC2\EOT\215\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\EOT\215\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\EOT\215\SOH\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\EOT\b\DC2\EOT\215\SOH\ETB=\n\
    \\DLE\n\
    \\b\EOT\b\STX\EOT\b\202\214\ENQ\DC2\EOT\215\SOH\CAN<\n\
    \r\n\
    \\EOT\EOT\b\STX\ENQ\DC2\EOT\219\SOH\STXC\SUBd  Minimum value of Veto votes to Total votes ratio for proposal to be\n\
    \  vetoed. Default value: 1/3.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\ENQ\DC2\EOT\219\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\SOH\DC2\EOT\219\SOH\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\ETX\DC2\EOT\219\SOH\SUB\ESC\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ENQ\b\DC2\EOT\219\SOH\FSB\n\
    \\DLE\n\
    \\b\EOT\b\STX\ENQ\b\202\214\ENQ\DC2\EOT\219\SOH\GSA\n\
    \u\n\
    \\EOT\EOT\b\STX\ACK\DC2\EOT\222\SOH\STXN\SUBg  The ratio representing the proportion of the deposit value that must be paid at proposal submission.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\ENQ\DC2\EOT\222\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\SOH\DC2\EOT\222\SOH\t\"\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\ETX\DC2\EOT\222\SOH%&\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ACK\b\DC2\EOT\222\SOH'M\n\
    \\DLE\n\
    \\b\EOT\b\STX\ACK\b\202\214\ENQ\DC2\EOT\222\SOH(L\n\
    \\137\SOH\n\
    \\EOT\EOT\b\STX\a\DC2\EOT\227\SOH\STXJ\SUB{ The cancel ratio which will not be returned back to the depositors when a proposal is cancelled.\n\
    \\n\
    \ Since: cosmos-sdk 0.50\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\a\ENQ\DC2\EOT\227\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\a\SOH\DC2\EOT\227\SOH\t\RS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\a\ETX\DC2\EOT\227\SOH!\"\n\
    \\r\n\
    \\ENQ\EOT\b\STX\a\b\DC2\EOT\227\SOH#I\n\
    \\DLE\n\
    \\b\EOT\b\STX\a\b\202\214\ENQ\DC2\EOT\227\SOH$H\n\
    \\208\SOH\n\
    \\EOT\EOT\b\STX\b\DC2\EOT\233\SOH\STXS\SUB\193\SOH The address which will receive (proposal_cancel_ratio * deposit) proposal deposits.\n\
    \ If empty, the (proposal_cancel_ratio * deposit) proposal deposits will be burned.\n\
    \\n\
    \ Since: cosmos-sdk 0.50\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\b\ENQ\DC2\EOT\233\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\b\SOH\DC2\EOT\233\SOH\t\GS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\b\ETX\DC2\EOT\233\SOH !\n\
    \\r\n\
    \\ENQ\EOT\b\STX\b\b\DC2\EOT\233\SOH\"R\n\
    \\DLE\n\
    \\b\EOT\b\STX\b\b\202\214\ENQ\DC2\EOT\233\SOH#Q\n\
    \`\n\
    \\EOT\EOT\b\STX\t\DC2\EOT\238\SOH\STXY\SUBR Duration of the voting period of an expedited proposal.\n\
    \\n\
    \ Since: cosmos-sdk 0.50\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\t\ACK\DC2\EOT\238\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\t\SOH\DC2\EOT\238\SOH\ESC2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\t\ETX\DC2\EOT\238\SOH57\n\
    \\r\n\
    \\ENQ\EOT\b\STX\t\b\DC2\EOT\238\SOH8X\n\
    \\DLE\n\
    \\b\EOT\b\STX\t\b\243\251\ETX\DC2\EOT\238\SOH9W\n\
    \s\n\
    \\EOT\EOT\b\STX\n\
    \\DC2\EOT\243\SOH\STXI\SUBe Minimum proportion of Yes votes for proposal to pass. Default value: 0.67.\n\
    \\n\
    \ Since: cosmos-sdk 0.50\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\n\
    \\ENQ\DC2\EOT\243\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\n\
    \\SOH\DC2\EOT\243\SOH\t\FS\n\
    \\r\n\
    \\ENQ\EOT\b\STX\n\
    \\ETX\DC2\EOT\243\SOH\US!\n\
    \\r\n\
    \\ENQ\EOT\b\STX\n\
    \\b\DC2\EOT\243\SOH\"H\n\
    \\DLE\n\
    \\b\EOT\b\STX\n\
    \\b\202\214\ENQ\DC2\EOT\243\SOH#G\n\
    \Q\n\
    \\EOT\EOT\b\STX\v\DC2\EOT\246\SOH\STX}\SUBC  Minimum expedited deposit for a proposal to enter voting period.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\v\EOT\DC2\EOT\246\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\v\ACK\DC2\EOT\246\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\b\STX\v\SOH\DC2\EOT\246\SOH$9\n\
    \\r\n\
    \\ENQ\EOT\b\STX\v\ETX\DC2\EOT\246\SOH<>\n\
    \\r\n\
    \\ENQ\EOT\b\STX\v\b\DC2\EOT\246\SOH?|\n\
    \\DLE\n\
    \\b\EOT\b\STX\v\b\233\251\ETX\DC2\EOT\246\SOH@\\\n\
    \\DC1\n\
    \\t\EOT\b\STX\v\b\245\140\166\ENQ\DC2\EOT\246\SOH^{\n\
    \@\n\
    \\EOT\EOT\b\STX\f\DC2\EOT\249\SOH\STX\GS\SUB2 burn deposits if a proposal does not meet quorum\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\f\ENQ\DC2\EOT\249\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\b\STX\f\SOH\DC2\EOT\249\SOH\a\ETB\n\
    \\r\n\
    \\ENQ\EOT\b\STX\f\ETX\DC2\EOT\249\SOH\SUB\FS\n\
    \J\n\
    \\EOT\EOT\b\STX\r\DC2\EOT\252\SOH\STX*\SUB< burn deposits if the proposal does not enter voting period\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\r\ENQ\DC2\EOT\252\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\b\STX\r\SOH\DC2\EOT\252\SOH\a$\n\
    \\r\n\
    \\ENQ\EOT\b\STX\r\ETX\DC2\EOT\252\SOH')\n\
    \E\n\
    \\EOT\EOT\b\STX\SO\DC2\EOT\255\SOH\STX\ESC\SUB7 burn deposits if quorum with vote type no_veto is met\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SO\ENQ\DC2\EOT\255\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SO\SOH\DC2\EOT\255\SOH\a\NAK\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SO\ETX\DC2\EOT\255\SOH\CAN\SUBb\ACKproto3"