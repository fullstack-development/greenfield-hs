{- This file was auto-generated from cosmos/gov/v1beta1/gov.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Gov.V1beta1.Gov (
        Deposit(), DepositParams(), Proposal(), ProposalStatus(..),
        ProposalStatus(), ProposalStatus'UnrecognizedValue, TallyParams(),
        TallyResult(), TextProposal(), Vote(), VoteOption(..),
        VoteOption(), VoteOption'UnrecognizedValue, VotingParams(),
        WeightedVoteOption()
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
     
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.proposalId' @:: Lens' Deposit Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.depositor' @:: Lens' Deposit Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.amount' @:: Lens' Deposit [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.vec'amount' @:: Lens' Deposit (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
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
  messageName _ = Data.Text.pack "cosmos.gov.v1beta1.Deposit"
  packedMessageDescriptor _
    = "\n\
      \\aDeposit\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC26\n\
      \\tdepositor\CAN\STX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString\DC2h\n\
      \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB5\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL"
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
     
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.minDeposit' @:: Lens' DepositParams [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.vec'minDeposit' @:: Lens' DepositParams (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.maxDepositPeriod' @:: Lens' DepositParams Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.maybe'maxDepositPeriod' @:: Lens' DepositParams (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
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
  messageName _ = Data.Text.pack "cosmos.gov.v1beta1.DepositParams"
  packedMessageDescriptor _
    = "\n\
      \\rDepositParams\DC2\133\SOH\n\
      \\vmin_deposit\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\n\
      \minDepositBI\200\222\US\NUL\234\222\US\NAKmin_deposit,omitempty\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\DC2q\n\
      \\DC2max_deposit_period\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\DLEmaxDepositPeriodB(\200\222\US\NUL\234\222\US\FSmax_deposit_period,omitempty\152\223\US\SOH"
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
     
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.proposalId' @:: Lens' Proposal Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.content' @:: Lens' Proposal Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.maybe'content' @:: Lens' Proposal (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.status' @:: Lens' Proposal ProposalStatus@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.finalTallyResult' @:: Lens' Proposal TallyResult@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.maybe'finalTallyResult' @:: Lens' Proposal (Prelude.Maybe TallyResult)@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.submitTime' @:: Lens' Proposal Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.maybe'submitTime' @:: Lens' Proposal (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.depositEndTime' @:: Lens' Proposal Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.maybe'depositEndTime' @:: Lens' Proposal (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.totalDeposit' @:: Lens' Proposal [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.vec'totalDeposit' @:: Lens' Proposal (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.votingStartTime' @:: Lens' Proposal Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.maybe'votingStartTime' @:: Lens' Proposal (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.votingEndTime' @:: Lens' Proposal Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.maybe'votingEndTime' @:: Lens' Proposal (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data Proposal
  = Proposal'_constructor {_Proposal'proposalId :: !Data.Word.Word64,
                           _Proposal'content :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                           _Proposal'status :: !ProposalStatus,
                           _Proposal'finalTallyResult :: !(Prelude.Maybe TallyResult),
                           _Proposal'submitTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Proposal'depositEndTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Proposal'totalDeposit :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                           _Proposal'votingStartTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Proposal'votingEndTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                           _Proposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Proposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Proposal "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'proposalId
           (\ x__ y__ -> x__ {_Proposal'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Proposal "content" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'content (\ x__ y__ -> x__ {_Proposal'content = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Proposal "maybe'content" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Proposal'content (\ x__ y__ -> x__ {_Proposal'content = y__}))
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
instance Data.ProtoLens.Message Proposal where
  messageName _ = Data.Text.pack "cosmos.gov.v1beta1.Proposal"
  packedMessageDescriptor _
    = "\n\
      \\bProposal\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC2N\n\
      \\acontent\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\acontentB\RS\202\180-\SUBcosmos.gov.v1beta1.Content\DC2:\n\
      \\ACKstatus\CAN\ETX \SOH(\SO2\".cosmos.gov.v1beta1.ProposalStatusR\ACKstatus\DC2X\n\
      \\DC2final_tally_result\CAN\EOT \SOH(\v2\US.cosmos.gov.v1beta1.TallyResultR\DLEfinalTallyResultB\t\200\222\US\NUL\168\231\176*\SOH\DC2J\n\
      \\vsubmit_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \submitTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2S\n\
      \\DLEdeposit_end_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\SOdepositEndTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2u\n\
      \\rtotal_deposit\CAN\a \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ftotalDepositB5\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\168\231\176*\SOH\DC2U\n\
      \\DC1voting_start_time\CAN\b \SOH(\v2\SUB.google.protobuf.TimestampR\SIvotingStartTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2Q\n\
      \\SIvoting_end_time\CAN\t \SOH(\v2\SUB.google.protobuf.TimestampR\rvotingEndTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH:\EOT\232\160\US\SOH"
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
              Data.ProtoLens.FieldDescriptor Proposal
        content__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "content"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'content")) ::
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
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, content__field_descriptor),
           (Data.ProtoLens.Tag 3, status__field_descriptor),
           (Data.ProtoLens.Tag 4, finalTallyResult__field_descriptor),
           (Data.ProtoLens.Tag 5, submitTime__field_descriptor),
           (Data.ProtoLens.Tag 6, depositEndTime__field_descriptor),
           (Data.ProtoLens.Tag 7, totalDeposit__field_descriptor),
           (Data.ProtoLens.Tag 8, votingStartTime__field_descriptor),
           (Data.ProtoLens.Tag 9, votingEndTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Proposal'_unknownFields
        (\ x__ y__ -> x__ {_Proposal'_unknownFields = y__})
  defMessage
    = Proposal'_constructor
        {_Proposal'proposalId = Data.ProtoLens.fieldDefault,
         _Proposal'content = Prelude.Nothing,
         _Proposal'status = Data.ProtoLens.fieldDefault,
         _Proposal'finalTallyResult = Prelude.Nothing,
         _Proposal'submitTime = Prelude.Nothing,
         _Proposal'depositEndTime = Prelude.Nothing,
         _Proposal'totalDeposit = Data.Vector.Generic.empty,
         _Proposal'votingStartTime = Prelude.Nothing,
         _Proposal'votingEndTime = Prelude.Nothing,
         _Proposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Proposal
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser Proposal
        loop x mutable'totalDeposit
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'totalDeposit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
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
                              (Data.ProtoLens.Field.field @"vec'totalDeposit")
                              frozen'totalDeposit x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proposal_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposalId") y x)
                                  mutable'totalDeposit
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "content"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"content") y x)
                                  mutable'totalDeposit
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
                                  mutable'totalDeposit
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "final_tally_result"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"finalTallyResult") y x)
                                  mutable'totalDeposit
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "submit_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"submitTime") y x)
                                  mutable'totalDeposit
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deposit_end_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"depositEndTime") y x)
                                  mutable'totalDeposit
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
                                loop x v
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "voting_start_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"votingStartTime") y x)
                                  mutable'totalDeposit
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "voting_end_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"votingEndTime") y x)
                                  mutable'totalDeposit
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'totalDeposit
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'totalDeposit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'totalDeposit)
          "Proposal"
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'content") _x
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
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData Proposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Proposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Proposal'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_Proposal'content x__)
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
                                        (_Proposal'votingEndTime x__) ())))))))))
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
     
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.quorum' @:: Lens' TallyParams Data.ByteString.ByteString@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.threshold' @:: Lens' TallyParams Data.ByteString.ByteString@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.vetoThreshold' @:: Lens' TallyParams Data.ByteString.ByteString@ -}
data TallyParams
  = TallyParams'_constructor {_TallyParams'quorum :: !Data.ByteString.ByteString,
                              _TallyParams'threshold :: !Data.ByteString.ByteString,
                              _TallyParams'vetoThreshold :: !Data.ByteString.ByteString,
                              _TallyParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TallyParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TallyParams "quorum" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyParams'quorum (\ x__ y__ -> x__ {_TallyParams'quorum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TallyParams "threshold" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyParams'threshold
           (\ x__ y__ -> x__ {_TallyParams'threshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TallyParams "vetoThreshold" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyParams'vetoThreshold
           (\ x__ y__ -> x__ {_TallyParams'vetoThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Message TallyParams where
  messageName _ = Data.Text.pack "cosmos.gov.v1beta1.TallyParams"
  packedMessageDescriptor _
    = "\n\
      \\vTallyParams\DC2Z\n\
      \\ACKquorum\CAN\SOH \SOH(\fR\ACKquorumBB\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\234\222\US\DLEquorum,omitempty\DC2c\n\
      \\tthreshold\CAN\STX \SOH(\fR\tthresholdBE\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\234\222\US\DC3threshold,omitempty\DC2q\n\
      \\SOveto_threshold\CAN\ETX \SOH(\fR\rvetoThresholdBJ\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\234\222\US\CANveto_threshold,omitempty"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        quorum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "quorum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"quorum")) ::
              Data.ProtoLens.FieldDescriptor TallyParams
        threshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"threshold")) ::
              Data.ProtoLens.FieldDescriptor TallyParams
        vetoThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "veto_threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "quorum"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"quorum") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "threshold"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"threshold") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
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
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"threshold") _x
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
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vetoThreshold") _x
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
     
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.yes' @:: Lens' TallyResult Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.abstain' @:: Lens' TallyResult Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.no' @:: Lens' TallyResult Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.noWithVeto' @:: Lens' TallyResult Data.Text.Text@ -}
data TallyResult
  = TallyResult'_constructor {_TallyResult'yes :: !Data.Text.Text,
                              _TallyResult'abstain :: !Data.Text.Text,
                              _TallyResult'no :: !Data.Text.Text,
                              _TallyResult'noWithVeto :: !Data.Text.Text,
                              _TallyResult'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TallyResult where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TallyResult "yes" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyResult'yes (\ x__ y__ -> x__ {_TallyResult'yes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TallyResult "abstain" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyResult'abstain
           (\ x__ y__ -> x__ {_TallyResult'abstain = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TallyResult "no" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyResult'no (\ x__ y__ -> x__ {_TallyResult'no = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TallyResult "noWithVeto" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TallyResult'noWithVeto
           (\ x__ y__ -> x__ {_TallyResult'noWithVeto = y__}))
        Prelude.id
instance Data.ProtoLens.Message TallyResult where
  messageName _ = Data.Text.pack "cosmos.gov.v1beta1.TallyResult"
  packedMessageDescriptor _
    = "\n\
      \\vTallyResult\DC2N\n\
      \\ETXyes\CAN\SOH \SOH(\tR\ETXyesB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2V\n\
      \\aabstain\CAN\STX \SOH(\tR\aabstainB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2L\n\
      \\STXno\CAN\ETX \SOH(\tR\STXnoB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2^\n\
      \\fno_with_veto\CAN\EOT \SOH(\tR\n\
      \noWithVetoB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int:\EOT\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        yes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "yes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"yes")) ::
              Data.ProtoLens.FieldDescriptor TallyResult
        abstain__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "abstain"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"abstain")) ::
              Data.ProtoLens.FieldDescriptor TallyResult
        no__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"no")) ::
              Data.ProtoLens.FieldDescriptor TallyResult
        noWithVeto__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "no_with_veto"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"noWithVeto")) ::
              Data.ProtoLens.FieldDescriptor TallyResult
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, yes__field_descriptor),
           (Data.ProtoLens.Tag 2, abstain__field_descriptor),
           (Data.ProtoLens.Tag 3, no__field_descriptor),
           (Data.ProtoLens.Tag 4, noWithVeto__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TallyResult'_unknownFields
        (\ x__ y__ -> x__ {_TallyResult'_unknownFields = y__})
  defMessage
    = TallyResult'_constructor
        {_TallyResult'yes = Data.ProtoLens.fieldDefault,
         _TallyResult'abstain = Data.ProtoLens.fieldDefault,
         _TallyResult'no = Data.ProtoLens.fieldDefault,
         _TallyResult'noWithVeto = Data.ProtoLens.fieldDefault,
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
                                       "yes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"yes") y x)
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
                                       "abstain"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"abstain") y x)
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
                                       "no"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"no") y x)
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
                                       "no_with_veto"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"noWithVeto") y x)
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
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"yes") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"abstain") _x
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
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"no") _x
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"noWithVeto") _x
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
                (_TallyResult'yes x__)
                (Control.DeepSeq.deepseq
                   (_TallyResult'abstain x__)
                   (Control.DeepSeq.deepseq
                      (_TallyResult'no x__)
                      (Control.DeepSeq.deepseq (_TallyResult'noWithVeto x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.title' @:: Lens' TextProposal Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.description' @:: Lens' TextProposal Data.Text.Text@ -}
data TextProposal
  = TextProposal'_constructor {_TextProposal'title :: !Data.Text.Text,
                               _TextProposal'description :: !Data.Text.Text,
                               _TextProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TextProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TextProposal "title" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextProposal'title (\ x__ y__ -> x__ {_TextProposal'title = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TextProposal "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TextProposal'description
           (\ x__ y__ -> x__ {_TextProposal'description = y__}))
        Prelude.id
instance Data.ProtoLens.Message TextProposal where
  messageName _ = Data.Text.pack "cosmos.gov.v1beta1.TextProposal"
  packedMessageDescriptor _
    = "\n\
      \\fTextProposal\DC2\DC4\n\
      \\ENQtitle\CAN\SOH \SOH(\tR\ENQtitle\DC2 \n\
      \\vdescription\CAN\STX \SOH(\tR\vdescription:>\232\160\US\SOH\202\180-\SUBcosmos.gov.v1beta1.Content\138\231\176*\ETBcosmos-sdk/TextProposal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        title__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "title"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"title")) ::
              Data.ProtoLens.FieldDescriptor TextProposal
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor TextProposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, title__field_descriptor),
           (Data.ProtoLens.Tag 2, description__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TextProposal'_unknownFields
        (\ x__ y__ -> x__ {_TextProposal'_unknownFields = y__})
  defMessage
    = TextProposal'_constructor
        {_TextProposal'title = Data.ProtoLens.fieldDefault,
         _TextProposal'description = Data.ProtoLens.fieldDefault,
         _TextProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TextProposal -> Data.ProtoLens.Encoding.Bytes.Parser TextProposal
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
                                       "title"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"title") y x)
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TextProposal"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"title") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
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
instance Control.DeepSeq.NFData TextProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TextProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TextProposal'title x__)
                (Control.DeepSeq.deepseq (_TextProposal'description x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.proposalId' @:: Lens' Vote Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.voter' @:: Lens' Vote Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.option' @:: Lens' Vote VoteOption@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.options' @:: Lens' Vote [WeightedVoteOption]@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.vec'options' @:: Lens' Vote (Data.Vector.Vector WeightedVoteOption)@ -}
data Vote
  = Vote'_constructor {_Vote'proposalId :: !Data.Word.Word64,
                       _Vote'voter :: !Data.Text.Text,
                       _Vote'option :: !VoteOption,
                       _Vote'options :: !(Data.Vector.Vector WeightedVoteOption),
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
instance Data.ProtoLens.Field.HasField Vote "option" VoteOption where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vote'option (\ x__ y__ -> x__ {_Vote'option = y__}))
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
instance Data.ProtoLens.Message Vote where
  messageName _ = Data.Text.pack "cosmos.gov.v1beta1.Vote"
  packedMessageDescriptor _
    = "\n\
      \\EOTVote\DC23\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalIdB\DC2\234\222\US\STXid\162\231\176*\STXid\168\231\176*\SOH\DC2.\n\
      \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC2:\n\
      \\ACKoption\CAN\ETX \SOH(\SO2\RS.cosmos.gov.v1beta1.VoteOptionR\ACKoptionB\STX\CAN\SOH\DC2K\n\
      \\aoptions\CAN\EOT \ETX(\v2&.cosmos.gov.v1beta1.WeightedVoteOptionR\aoptionsB\t\200\222\US\NUL\168\231\176*\SOH:\EOT\232\160\US\NUL"
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
        option__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "option"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor VoteOption)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"option")) ::
              Data.ProtoLens.FieldDescriptor Vote
        options__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor WeightedVoteOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"options")) ::
              Data.ProtoLens.FieldDescriptor Vote
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, voter__field_descriptor),
           (Data.ProtoLens.Tag 3, option__field_descriptor),
           (Data.ProtoLens.Tag 4, options__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Vote'_unknownFields
        (\ x__ y__ -> x__ {_Vote'_unknownFields = y__})
  defMessage
    = Vote'_constructor
        {_Vote'proposalId = Data.ProtoLens.fieldDefault,
         _Vote'voter = Data.ProtoLens.fieldDefault,
         _Vote'option = Data.ProtoLens.fieldDefault,
         _Vote'options = Data.Vector.Generic.empty,
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
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "option"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"option") y x)
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
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"option") _x
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
                      (_Vote'option x__)
                      (Control.DeepSeq.deepseq (_Vote'options x__) ()))))
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
     
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.votingPeriod' @:: Lens' VotingParams Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.maybe'votingPeriod' @:: Lens' VotingParams (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
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
  messageName _ = Data.Text.pack "cosmos.gov.v1beta1.VotingParams"
  packedMessageDescriptor _
    = "\n\
      \\fVotingParams\DC2c\n\
      \\rvoting_period\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\fvotingPeriodB#\200\222\US\NUL\234\222\US\ETBvoting_period,omitempty\152\223\US\SOH"
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
     
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.option' @:: Lens' WeightedVoteOption VoteOption@
         * 'Proto.Cosmos.Gov.V1beta1.Gov_Fields.weight' @:: Lens' WeightedVoteOption Data.Text.Text@ -}
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
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.WeightedVoteOption"
  packedMessageDescriptor _
    = "\n\
      \\DC2WeightedVoteOption\DC26\n\
      \\ACKoption\CAN\SOH \SOH(\SO2\RS.cosmos.gov.v1beta1.VoteOptionR\ACKoption\DC2Y\n\
      \\ACKweight\CAN\STX \SOH(\tR\ACKweightBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\168\231\176*\SOH"
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
    \\FScosmos/gov/v1beta1/gov.proto\DC2\DC2cosmos.gov.v1beta1\SUB\RScosmos/base/v1beta1/coin.proto\SUB\DC4gogoproto/gogo.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\EMgoogle/protobuf/any.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"\167\SOH\n\
    \\DC2WeightedVoteOption\DC26\n\
    \\ACKoption\CAN\SOH \SOH(\SO2\RS.cosmos.gov.v1beta1.VoteOptionR\ACKoption\DC2Y\n\
    \\ACKweight\CAN\STX \SOH(\tR\ACKweightBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\168\231\176*\SOH\"\134\SOH\n\
    \\fTextProposal\DC2\DC4\n\
    \\ENQtitle\CAN\SOH \SOH(\tR\ENQtitle\DC2 \n\
    \\vdescription\CAN\STX \SOH(\tR\vdescription:>\232\160\US\SOH\202\180-\SUBcosmos.gov.v1beta1.Content\138\231\176*\ETBcosmos-sdk/TextProposal\"\214\SOH\n\
    \\aDeposit\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC26\n\
    \\tdepositor\CAN\STX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString\DC2h\n\
    \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB5\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\168\231\176*\SOH:\b\136\160\US\NUL\232\160\US\NUL\"\217\ENQ\n\
    \\bProposal\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC2N\n\
    \\acontent\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\acontentB\RS\202\180-\SUBcosmos.gov.v1beta1.Content\DC2:\n\
    \\ACKstatus\CAN\ETX \SOH(\SO2\".cosmos.gov.v1beta1.ProposalStatusR\ACKstatus\DC2X\n\
    \\DC2final_tally_result\CAN\EOT \SOH(\v2\US.cosmos.gov.v1beta1.TallyResultR\DLEfinalTallyResultB\t\200\222\US\NUL\168\231\176*\SOH\DC2J\n\
    \\vsubmit_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \submitTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2S\n\
    \\DLEdeposit_end_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\SOdepositEndTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2u\n\
    \\rtotal_deposit\CAN\a \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ftotalDepositB5\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\168\231\176*\SOH\DC2U\n\
    \\DC1voting_start_time\CAN\b \SOH(\v2\SUB.google.protobuf.TimestampR\SIvotingStartTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH\DC2Q\n\
    \\SIvoting_end_time\CAN\t \SOH(\v2\SUB.google.protobuf.TimestampR\rvotingEndTimeB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH:\EOT\232\160\US\SOH\"\233\STX\n\
    \\vTallyResult\DC2N\n\
    \\ETXyes\CAN\SOH \SOH(\tR\ETXyesB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2V\n\
    \\aabstain\CAN\STX \SOH(\tR\aabstainB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2L\n\
    \\STXno\CAN\ETX \SOH(\tR\STXnoB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2^\n\
    \\fno_with_veto\CAN\EOT \SOH(\tR\n\
    \noWithVetoB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int:\EOT\232\160\US\SOH\"\250\SOH\n\
    \\EOTVote\DC23\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalIdB\DC2\234\222\US\STXid\162\231\176*\STXid\168\231\176*\SOH\DC2.\n\
    \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC2:\n\
    \\ACKoption\CAN\ETX \SOH(\SO2\RS.cosmos.gov.v1beta1.VoteOptionR\ACKoptionB\STX\CAN\SOH\DC2K\n\
    \\aoptions\CAN\EOT \ETX(\v2&.cosmos.gov.v1beta1.WeightedVoteOptionR\aoptionsB\t\200\222\US\NUL\168\231\176*\SOH:\EOT\232\160\US\NUL\"\138\STX\n\
    \\rDepositParams\DC2\133\SOH\n\
    \\vmin_deposit\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\n\
    \minDepositBI\200\222\US\NUL\234\222\US\NAKmin_deposit,omitempty\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\DC2q\n\
    \\DC2max_deposit_period\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\DLEmaxDepositPeriodB(\200\222\US\NUL\234\222\US\FSmax_deposit_period,omitempty\152\223\US\SOH\"s\n\
    \\fVotingParams\DC2c\n\
    \\rvoting_period\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\fvotingPeriodB#\200\222\US\NUL\234\222\US\ETBvoting_period,omitempty\152\223\US\SOH\"\193\STX\n\
    \\vTallyParams\DC2Z\n\
    \\ACKquorum\CAN\SOH \SOH(\fR\ACKquorumBB\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\234\222\US\DLEquorum,omitempty\DC2c\n\
    \\tthreshold\CAN\STX \SOH(\fR\tthresholdBE\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\234\222\US\DC3threshold,omitempty\DC2q\n\
    \\SOveto_threshold\CAN\ETX \SOH(\fR\rvetoThresholdBJ\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\234\222\US\CANveto_threshold,omitempty*\230\SOH\n\
    \\n\
    \VoteOption\DC2,\n\
    \\ETBVOTE_OPTION_UNSPECIFIED\DLE\NUL\SUB\SI\138\157 \vOptionEmpty\DC2\"\n\
    \\SIVOTE_OPTION_YES\DLE\SOH\SUB\r\138\157 \tOptionYes\DC2*\n\
    \\DC3VOTE_OPTION_ABSTAIN\DLE\STX\SUB\DC1\138\157 \rOptionAbstain\DC2 \n\
    \\SOVOTE_OPTION_NO\DLE\ETX\SUB\f\138\157 \bOptionNo\DC22\n\
    \\CANVOTE_OPTION_NO_WITH_VETO\DLE\EOT\SUB\DC4\138\157 \DLEOptionNoWithVeto\SUB\EOT\136\163\RS\NUL*\204\STX\n\
    \\SOProposalStatus\DC2.\n\
    \\ESCPROPOSAL_STATUS_UNSPECIFIED\DLE\NUL\SUB\r\138\157 \tStatusNil\DC2;\n\
    \\RSPROPOSAL_STATUS_DEPOSIT_PERIOD\DLE\SOH\SUB\ETB\138\157 \DC3StatusDepositPeriod\DC29\n\
    \\GSPROPOSAL_STATUS_VOTING_PERIOD\DLE\STX\SUB\SYN\138\157 \DC2StatusVotingPeriod\DC2,\n\
    \\SYNPROPOSAL_STATUS_PASSED\DLE\ETX\SUB\DLE\138\157 \fStatusPassed\DC20\n\
    \\CANPROPOSAL_STATUS_REJECTED\DLE\EOT\SUB\DC2\138\157 \SOStatusRejected\DC2,\n\
    \\SYNPROPOSAL_STATUS_FAILED\DLE\ENQ\SUB\DLE\138\157 \fStatusFailed\SUB\EOT\136\163\RS\NULB6Z0github.com/cosmos/cosmos-sdk/x/gov/types/v1beta1\200\225\RS\NULJ\178B\n\
    \\a\DC2\ENQ\NUL\NUL\250\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL#\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\t\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULG\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\v\NULG\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL/\n\
    \\v\n\
    \\EOT\b\153\236\ETX\DC2\ETX\r\NUL/\n\
    \[\n\
    \\STX\ENQ\NUL\DC2\EOT\DLE\NUL\GS\SOH\SUBO VoteOption enumerates the valid vote options for a given governance proposal.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\DLE\ENQ\SI\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\ETX\DC2\ETX\DC1\STX1\n\
    \\r\n\
    \\ACK\ENQ\NUL\ETX\177\228\ETX\DC2\ETX\DC1\STX1\n\
    \C\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\DC4\STXQ\SUB6 VOTE_OPTION_UNSPECIFIED defines a no-op vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\DC4\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\DC4\FS\GS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\ETX\DC2\ETX\DC4\RSP\n\
    \\SI\n\
    \\b\ENQ\NUL\STX\NUL\ETX\209\131\EOT\DC2\ETX\DC4\USO\n\
    \9\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\SYN\STXG\SUB, VOTE_OPTION_YES defines a yes vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\SYN\STX\DC1\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\SYN\DC4\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\ETX\DC2\ETX\SYN\SYNF\n\
    \\SI\n\
    \\b\ENQ\NUL\STX\SOH\ETX\209\131\EOT\DC2\ETX\SYN\ETBE\n\
    \B\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\CAN\STXO\SUB5 VOTE_OPTION_ABSTAIN defines an abstain vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\CAN\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\CAN\CAN\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\ETX\DC2\ETX\CAN\SUBN\n\
    \\SI\n\
    \\b\ENQ\NUL\STX\STX\ETX\209\131\EOT\DC2\ETX\CAN\ESCM\n\
    \7\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX\SUB\STXE\SUB* VOTE_OPTION_NO defines a no vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX\SUB\STX\DLE\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX\SUB\DC3\DC4\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\ETX\DC2\ETX\SUB\NAKD\n\
    \\SI\n\
    \\b\ENQ\NUL\STX\ETX\ETX\209\131\EOT\DC2\ETX\SUB\SYNC\n\
    \K\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX\FS\STXW\SUB> VOTE_OPTION_NO_WITH_VETO defines a no with veto vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX\FS\STX\SUB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX\FS\GS\RS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\ETX\DC2\ETX\FS\USV\n\
    \\SI\n\
    \\b\ENQ\NUL\STX\EOT\ETX\209\131\EOT\DC2\ETX\FS U\n\
    \`\n\
    \\STX\EOT\NUL\DC2\EOT\"\NUL-\SOH\SUBT WeightedVoteOption defines a unit of vote for vote split.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\"\b\SUB\n\
    \a\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX$\STX\CAN\SUBT option defines the valid vote options, it must not contain duplicate vote options.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX$\STX\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX$\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX$\SYN\ETB\n\
    \J\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT'\STX,\EOT\SUB< weight is the vote weight associated with the vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX'\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX'\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX'\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\EOT'\DC4,\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX(\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\235\251\ETX\DC2\ETX)\EOTE\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX*\EOT!\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX+\EOT\"\n\
    \{\n\
    \\STX\EOT\SOH\DC2\EOT1\NUL<\SOH\SUBo TextProposal defines a standard text proposal whose changes need to be\n\
    \ manually updated in case of approval.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX1\b\DC4\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX2\STXL\n\
    \\SO\n\
    \\a\EOT\SOH\a\201\214\ENQ\NUL\DC2\ETX2\STXL\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX3\STXI\n\
    \\SO\n\
    \\a\EOT\SOH\a\241\140\166\ENQ\DC2\ETX3\STXI\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX5\STX\"\n\
    \\r\n\
    \\ACK\EOT\SOH\a\141\244\ETX\DC2\ETX5\STX\"\n\
    \%\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX8\STX\DC3\SUB\CAN title of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX8\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX8\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX8\DC1\DC2\n\
    \8\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX;\STX\EM\SUB+ description associated with the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX;\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX;\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX;\ETB\CAN\n\
    \_\n\
    \\STX\EOT\STX\DC2\EOT@\NULP\SOH\SUBS Deposit defines an amount deposited by an account address to an active\n\
    \ proposal.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX@\b\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXA\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\129\244\ETX\DC2\ETXA\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXB\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\141\244\ETX\DC2\ETXB\STX-\n\
    \A\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXE\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXE\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXE\ETB\CAN\n\
    \J\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXH\STXH\SUB= depositor defines the deposit addresses from the proposals.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXH\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXH\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXH\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETXH\ETBG\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\202\214\ENQ\DC2\ETXH\CANF\n\
    \4\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOTK\STXO\EOT\SUB& amount to be deposited by depositor.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETXK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETXK\v#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXK$*\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXK-.\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\EOTK/O\ETX\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\233\251\ETX\DC2\ETXL\EOT$\n\
    \\DLE\n\
    \\t\EOT\STX\STX\STX\b\245\140\166\ENQ\DC2\ETXM\EOT#\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\245\251\ETX\DC2\ETXN\EOTI\n\
    \O\n\
    \\STX\EOT\ETX\DC2\EOTS\NULz\SOH\SUBC Proposal defines the core field members of a governance proposal.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXS\b\DLE\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\a\DC2\ETXT\STX\"\n\
    \\r\n\
    \\ACK\EOT\ETX\a\141\244\ETX\DC2\ETXT\STX\"\n\
    \A\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXW\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXW\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXW\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXW\ETB\CAN\n\
    \1\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXZ\STXd\SUB$ content is the proposal's content.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXZ\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXZ\SYN\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXZ !\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\ETXZ\"c\n\
    \\SI\n\
    \\b\EOT\ETX\STX\SOH\b\201\214\ENQ\DC2\ETXZ#b\n\
    \2\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX]\STX\FS\SUB% status defines the proposal status.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETX]\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX]\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX]\SUB\ESC\n\
    \\188\SOH\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETXb\STXc\SUB\174\SOH final_tally_result is the final tally result of the proposal. When\n\
    \ querying a proposal via gRPC, this field is not populated until the\n\
    \ proposal's voting period has ended.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ACK\DC2\ETXb\STX\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETXb\SO \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETXb#$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\b\DC2\ETXb%b\n\
    \\SI\n\
    \\b\EOT\ETX\STX\ETX\b\233\251\ETX\DC2\ETXb&B\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\ETX\b\245\140\166\ENQ\DC2\ETXbDa\n\
    \?\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\EOTe\STXf`\SUB1 submit_time is the time of proposal submission.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ACK\DC2\ETXe\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETXe\FS'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETXe*+\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\b\DC2\ETXf\ACK_\n\
    \\SI\n\
    \\b\EOT\ETX\STX\EOT\b\242\251\ETX\DC2\ETXf\a!\n\
    \\SI\n\
    \\b\EOT\ETX\STX\EOT\b\233\251\ETX\DC2\ETXf#?\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\EOT\b\245\140\166\ENQ\DC2\ETXfA^\n\
    \@\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\EOTi\STXj`\SUB2 deposit_end_time is the end time for deposition.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ACK\DC2\ETXi\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETXi\FS,\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETXi/0\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\b\DC2\ETXj\ACK_\n\
    \\SI\n\
    \\b\EOT\ETX\STX\ENQ\b\242\251\ETX\DC2\ETXj\a!\n\
    \\SI\n\
    \\b\EOT\ETX\STX\ENQ\b\233\251\ETX\DC2\ETXj#?\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\ENQ\b\245\140\166\ENQ\DC2\ETXjA^\n\
    \C\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\EOTm\STXq\EOT\SUB5 total_deposit is the total deposit on the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\EOT\DC2\ETXm\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ACK\DC2\ETXm\v#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\ETXm$1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\ETXm45\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ACK\b\DC2\EOTm6q\ETX\n\
    \\SI\n\
    \\b\EOT\ETX\STX\ACK\b\233\251\ETX\DC2\ETXn\EOT$\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\ACK\b\245\140\166\ENQ\DC2\ETXo\EOT#\n\
    \\SI\n\
    \\b\EOT\ETX\STX\ACK\b\245\251\ETX\DC2\ETXp\EOTI\n\
    \M\n\
    \\EOT\EOT\ETX\STX\a\DC2\EOTt\STXu`\SUB? voting_start_time is the starting time to vote on a proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ACK\DC2\ETXt\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\ETXt\FS-\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\ETXt01\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\b\DC2\ETXu\ACK_\n\
    \\SI\n\
    \\b\EOT\ETX\STX\a\b\242\251\ETX\DC2\ETXu\a!\n\
    \\SI\n\
    \\b\EOT\ETX\STX\a\b\233\251\ETX\DC2\ETXu#?\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\a\b\245\140\166\ENQ\DC2\ETXuA^\n\
    \H\n\
    \\EOT\EOT\ETX\STX\b\DC2\EOTx\STXy`\SUB: voting_end_time is the end time of voting on a proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ACK\DC2\ETXx\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\SOH\DC2\ETXx\FS+\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ETX\DC2\ETXx./\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\b\DC2\ETXy\ACK_\n\
    \\SI\n\
    \\b\EOT\ETX\STX\b\b\242\251\ETX\DC2\ETXy\a!\n\
    \\SI\n\
    \\b\EOT\ETX\STX\b\b\233\251\ETX\DC2\ETXy#?\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\b\b\245\140\166\ENQ\DC2\ETXyA^\n\
    \J\n\
    \\STX\ENQ\SOH\DC2\ENQ}\NUL\145\SOH\SOH\SUB= ProposalStatus enumerates the valid statuses of a proposal.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\SOH\DC2\ETX}\ENQ\DC3\n\
    \\n\
    \\n\
    \\ETX\ENQ\SOH\ETX\DC2\ETX~\STX1\n\
    \\r\n\
    \\ACK\ENQ\SOH\ETX\177\228\ETX\DC2\ETX~\STX1\n\
    \P\n\
    \\EOT\ENQ\SOH\STX\NUL\DC2\EOT\129\SOH\STXS\SUBB PROPOSAL_STATUS_UNSPECIFIED defines the default proposal status.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\NUL\SOH\DC2\EOT\129\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\NUL\STX\DC2\EOT\129\SOH !\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\NUL\ETX\DC2\EOT\129\SOH\"R\n\
    \\DLE\n\
    \\b\ENQ\SOH\STX\NUL\ETX\209\131\EOT\DC2\EOT\129\SOH#Q\n\
    \d\n\
    \\EOT\ENQ\SOH\STX\SOH\DC2\EOT\132\SOH\STX`\SUBV PROPOSAL_STATUS_DEPOSIT_PERIOD defines a proposal status during the deposit\n\
    \ period.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\SOH\SOH\DC2\EOT\132\SOH\STX \n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\SOH\STX\DC2\EOT\132\SOH#$\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\SOH\ETX\DC2\EOT\132\SOH%_\n\
    \\DLE\n\
    \\b\ENQ\SOH\STX\SOH\ETX\209\131\EOT\DC2\EOT\132\SOH&^\n\
    \b\n\
    \\EOT\ENQ\SOH\STX\STX\DC2\EOT\135\SOH\STX^\SUBT PROPOSAL_STATUS_VOTING_PERIOD defines a proposal status during the voting\n\
    \ period.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\STX\SOH\DC2\EOT\135\SOH\STX\US\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\STX\STX\DC2\EOT\135\SOH\"#\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\STX\ETX\DC2\EOT\135\SOH$]\n\
    \\DLE\n\
    \\b\ENQ\SOH\STX\STX\ETX\209\131\EOT\DC2\EOT\135\SOH%\\\n\
    \`\n\
    \\EOT\ENQ\SOH\STX\ETX\DC2\EOT\138\SOH\STXQ\SUBR PROPOSAL_STATUS_PASSED defines a proposal status of a proposal that has\n\
    \ passed.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\ETX\SOH\DC2\EOT\138\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\ETX\STX\DC2\EOT\138\SOH\ESC\FS\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\ETX\ETX\DC2\EOT\138\SOH\GSP\n\
    \\DLE\n\
    \\b\ENQ\SOH\STX\ETX\ETX\209\131\EOT\DC2\EOT\138\SOH\RSO\n\
    \i\n\
    \\EOT\ENQ\SOH\STX\EOT\DC2\EOT\141\SOH\STXU\SUB[ PROPOSAL_STATUS_REJECTED defines a proposal status of a proposal that has\n\
    \ been rejected.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\EOT\SOH\DC2\EOT\141\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\EOT\STX\DC2\EOT\141\SOH\GS\RS\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\EOT\ETX\DC2\EOT\141\SOH\UST\n\
    \\DLE\n\
    \\b\ENQ\SOH\STX\EOT\ETX\209\131\EOT\DC2\EOT\141\SOH S\n\
    \`\n\
    \\EOT\ENQ\SOH\STX\ENQ\DC2\EOT\144\SOH\STXQ\SUBR PROPOSAL_STATUS_FAILED defines a proposal status of a proposal that has\n\
    \ failed.\n\
    \\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\ENQ\SOH\DC2\EOT\144\SOH\STX\CAN\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\ENQ\STX\DC2\EOT\144\SOH\ESC\FS\n\
    \\r\n\
    \\ENQ\ENQ\SOH\STX\ENQ\ETX\DC2\EOT\144\SOH\GSP\n\
    \\DLE\n\
    \\b\ENQ\SOH\STX\ENQ\ETX\209\131\EOT\DC2\EOT\144\SOH\RSO\n\
    \O\n\
    \\STX\EOT\EOT\DC2\ACK\148\SOH\NUL\178\SOH\SOH\SUBA TallyResult defines a standard tally for a governance proposal.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\148\SOH\b\DC3\n\
    \\v\n\
    \\ETX\EOT\EOT\a\DC2\EOT\149\SOH\STX\"\n\
    \\SO\n\
    \\ACK\EOT\EOT\a\141\244\ETX\DC2\EOT\149\SOH\STX\"\n\
    \?\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ACK\152\SOH\STX\156\SOH\EOT\SUB/ yes is the number of yes votes on a proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\EOT\152\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\152\SOH\t\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\152\SOH\SI\DLE\n\
    \\SI\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ACK\152\SOH\DC1\156\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\EOT\153\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\NUL\b\235\251\ETX\DC2\EOT\154\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\NUL\b\233\251\ETX\DC2\EOT\155\SOH\EOT\"\n\
    \G\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ACK\159\SOH\STX\163\SOH\EOT\SUB7 abstain is the number of abstain votes on a proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\EOT\159\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\159\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\159\SOH\DC3\DC4\n\
    \\SI\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ACK\159\SOH\NAK\163\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\SOH\b\202\214\ENQ\DC2\EOT\160\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\SOH\b\235\251\ETX\DC2\EOT\161\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\SOH\b\233\251\ETX\DC2\EOT\162\SOH\EOT\"\n\
    \=\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ACK\166\SOH\STX\170\SOH\EOT\SUB- no is the number of no votes on a proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\EOT\166\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\166\SOH\t\v\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\166\SOH\SO\SI\n\
    \\SI\n\
    \\ENQ\EOT\EOT\STX\STX\b\DC2\ACK\166\SOH\DLE\170\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\STX\b\202\214\ENQ\DC2\EOT\167\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\STX\b\235\251\ETX\DC2\EOT\168\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\STX\b\233\251\ETX\DC2\EOT\169\SOH\EOT\"\n\
    \Q\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ACK\173\SOH\STX\177\SOH\EOT\SUBA no_with_veto is the number of no with veto votes on a proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\EOT\173\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\EOT\173\SOH\t\NAK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\EOT\173\SOH\CAN\EM\n\
    \\SI\n\
    \\ENQ\EOT\EOT\STX\ETX\b\DC2\ACK\173\SOH\SUB\177\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\ETX\b\202\214\ENQ\DC2\EOT\174\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\ETX\b\235\251\ETX\DC2\EOT\175\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\ETX\b\233\251\ETX\DC2\EOT\176\SOH\EOT\"\n\
    \\128\SOH\n\
    \\STX\EOT\ENQ\DC2\ACK\182\SOH\NUL\199\SOH\SOH\SUBr Vote defines a vote on a governance proposal.\n\
    \ A Vote consists of a proposal ID, the voter, and the vote option.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\182\SOH\b\f\n\
    \\v\n\
    \\ETX\EOT\ENQ\a\DC2\EOT\183\SOH\STX#\n\
    \\SO\n\
    \\ACK\EOT\ENQ\a\141\244\ETX\DC2\EOT\183\SOH\STX#\n\
    \B\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\186\SOH\STXp\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\186\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\186\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\186\SOH\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\EOT\186\SOH\EMo\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\NUL\b\237\251\ETX\DC2\EOT\186\SOH\SUB4\n\
    \\DC1\n\
    \\t\EOT\ENQ\STX\NUL\b\244\140\166\ENQ\DC2\EOT\186\SOH6O\n\
    \\DC1\n\
    \\t\EOT\ENQ\STX\NUL\b\245\140\166\ENQ\DC2\EOT\186\SOHQn\n\
    \;\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\189\SOH\STXD\SUB- voter is the voter address of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\EOT\189\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\189\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\189\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\b\DC2\EOT\189\SOH\DC3C\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\SOH\b\202\214\ENQ\DC2\EOT\189\SOH\DC4B\n\
    \\229\SOH\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\193\SOH\STX,\SUB\214\SOH Deprecated: Prefer to use `options` instead. This field is set in queries\n\
    \ if and only if `len(options) == 1` and that option has weight 1. In all\n\
    \ other cases, this field will default to VOTE_OPTION_UNSPECIFIED.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ACK\DC2\EOT\193\SOH\STX\f\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\193\SOH\r\DC3\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\193\SOH\SYN\ETB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\b\DC2\EOT\193\SOH\CAN+\n\
    \\SO\n\
    \\ACK\EOT\ENQ\STX\STX\b\ETX\DC2\EOT\193\SOH\EM*\n\
    \N\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\EOT\198\SOH\STXh\SUB@ options is the weighted vote options.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\EOT\198\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ACK\DC2\EOT\198\SOH\v\GS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\EOT\198\SOH\RS%\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\EOT\198\SOH()\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\b\DC2\EOT\198\SOH*g\n\
    \\DLE\n\
    \\b\EOT\ENQ\STX\ETX\b\233\251\ETX\DC2\EOT\198\SOH+G\n\
    \\DC1\n\
    \\t\EOT\ENQ\STX\ETX\b\245\140\166\ENQ\DC2\EOT\198\SOHIf\n\
    \V\n\
    \\STX\EOT\ACK\DC2\ACK\202\SOH\NUL\217\SOH\SOH\SUBH DepositParams defines the params for deposits on governance proposals.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\202\SOH\b\NAK\n\
    \H\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ACK\204\SOH\STX\208\SOH\EOT\SUB8 Minimum deposit for a proposal to enter voting period.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\EOT\204\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\204\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\204\SOH$/\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\204\SOH23\n\
    \\SI\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\ACK\204\SOH4\208\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\233\251\ETX\DC2\EOT\205\SOH\EOT$\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\245\251\ETX\DC2\EOT\206\SOH\EOTI\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\237\251\ETX\DC2\EOT\207\SOH\EOT6\n\
    \e\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ACK\212\SOH\STX\216\SOH\EOT\SUBU Maximum period for Atom holders to deposit on a proposal. Initial value: 2\n\
    \ months.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\EOT\212\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\212\SOH\ESC-\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\212\SOH01\n\
    \\SI\n\
    \\ENQ\EOT\ACK\STX\SOH\b\DC2\ACK\212\SOH2\216\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\SOH\b\233\251\ETX\DC2\EOT\213\SOH\EOT#\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\SOH\b\243\251\ETX\DC2\EOT\214\SOH\EOT\"\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\SOH\b\237\251\ETX\DC2\EOT\215\SOH\EOT<\n\
    \S\n\
    \\STX\EOT\a\DC2\ACK\220\SOH\NUL\224\SOH\SOH\SUBE VotingParams defines the params for voting on governance proposals.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\220\SOH\b\DC4\n\
    \0\n\
    \\EOT\EOT\a\STX\NUL\DC2\ACK\222\SOH\STX\223\SOHv\SUB  Duration of the voting period.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\222\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\222\SOH\ESC(\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\222\SOH+,\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\EOT\223\SOH\ACKu\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\233\251\ETX\DC2\EOT\223\SOH\a#\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\243\251\ETX\DC2\EOT\223\SOH%C\n\
    \\DLE\n\
    \\b\EOT\a\STX\NUL\b\237\251\ETX\DC2\EOT\223\SOHEt\n\
    \Z\n\
    \\STX\EOT\b\DC2\ACK\227\SOH\NUL\250\SOH\SOH\SUBL TallyParams defines the params for tallying votes on governance proposals.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\227\SOH\b\DC3\n\
    \h\n\
    \\EOT\EOT\b\STX\NUL\DC2\ACK\230\SOH\STX\234\SOH\EOT\SUBX Minimum percentage of total stake needed to vote for a result to be\n\
    \ considered valid.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\230\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\230\SOH\b\SO\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\230\SOH\DC1\DC2\n\
    \\SI\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\ACK\230\SOH\DC3\234\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\235\251\ETX\DC2\EOT\231\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\233\251\ETX\DC2\EOT\232\SOH\EOT\"\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\237\251\ETX\DC2\EOT\233\SOH\EOT/\n\
    \[\n\
    \\EOT\EOT\b\STX\SOH\DC2\ACK\237\SOH\STX\241\SOH\EOT\SUBK Minimum proportion of Yes votes for proposal to pass. Default value: 0.5.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\237\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\237\SOH\b\DC1\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\237\SOH\DC4\NAK\n\
    \\SI\n\
    \\ENQ\EOT\b\STX\SOH\b\DC2\ACK\237\SOH\SYN\241\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\b\STX\SOH\b\235\251\ETX\DC2\EOT\238\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\b\STX\SOH\b\233\251\ETX\DC2\EOT\239\SOH\EOT\"\n\
    \\DLE\n\
    \\b\EOT\b\STX\SOH\b\237\251\ETX\DC2\EOT\240\SOH\EOT2\n\
    \r\n\
    \\EOT\EOT\b\STX\STX\DC2\ACK\245\SOH\STX\249\SOH\EOT\SUBb Minimum value of Veto votes to Total votes ratio for proposal to be\n\
    \ vetoed. Default value: 1/3.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\EOT\245\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\245\SOH\b\SYN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\245\SOH\EM\SUB\n\
    \\SI\n\
    \\ENQ\EOT\b\STX\STX\b\DC2\ACK\245\SOH\ESC\249\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\b\STX\STX\b\235\251\ETX\DC2\EOT\246\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\b\STX\STX\b\233\251\ETX\DC2\EOT\247\SOH\EOT\"\n\
    \\DLE\n\
    \\b\EOT\b\STX\STX\b\237\251\ETX\DC2\EOT\248\SOH\EOT7b\ACKproto3"