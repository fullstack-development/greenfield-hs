{- This file was auto-generated from cosmos/distribution/v1beta1/distribution.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Distribution.V1beta1.Distribution (
        CommunityPoolSpendProposal(),
        CommunityPoolSpendProposalWithDeposit(),
        DelegationDelegatorReward(), DelegatorStartingInfo(), FeePool(),
        Params(), ValidatorAccumulatedCommission(),
        ValidatorCurrentRewards(), ValidatorHistoricalRewards(),
        ValidatorOutstandingRewards(), ValidatorSlashEvent(),
        ValidatorSlashEvents()
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
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.title' @:: Lens' CommunityPoolSpendProposal Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.description' @:: Lens' CommunityPoolSpendProposal Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.recipient' @:: Lens' CommunityPoolSpendProposal Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.amount' @:: Lens' CommunityPoolSpendProposal [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.vec'amount' @:: Lens' CommunityPoolSpendProposal (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data CommunityPoolSpendProposal
  = CommunityPoolSpendProposal'_constructor {_CommunityPoolSpendProposal'title :: !Data.Text.Text,
                                             _CommunityPoolSpendProposal'description :: !Data.Text.Text,
                                             _CommunityPoolSpendProposal'recipient :: !Data.Text.Text,
                                             _CommunityPoolSpendProposal'amount :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                             _CommunityPoolSpendProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommunityPoolSpendProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CommunityPoolSpendProposal "title" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommunityPoolSpendProposal'title
           (\ x__ y__ -> x__ {_CommunityPoolSpendProposal'title = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommunityPoolSpendProposal "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommunityPoolSpendProposal'description
           (\ x__ y__ -> x__ {_CommunityPoolSpendProposal'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommunityPoolSpendProposal "recipient" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommunityPoolSpendProposal'recipient
           (\ x__ y__ -> x__ {_CommunityPoolSpendProposal'recipient = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommunityPoolSpendProposal "amount" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommunityPoolSpendProposal'amount
           (\ x__ y__ -> x__ {_CommunityPoolSpendProposal'amount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CommunityPoolSpendProposal "vec'amount" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommunityPoolSpendProposal'amount
           (\ x__ y__ -> x__ {_CommunityPoolSpendProposal'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message CommunityPoolSpendProposal where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.CommunityPoolSpendProposal"
  packedMessageDescriptor _
    = "\n\
      \\SUBCommunityPoolSpendProposal\DC2\DC4\n\
      \\ENQtitle\CAN\SOH \SOH(\tR\ENQtitle\DC2 \n\
      \\vdescription\CAN\STX \SOH(\tR\vdescription\DC2\FS\n\
      \\trecipient\CAN\ETX \SOH(\tR\trecipient\DC2y\n\
      \\ACKamount\CAN\EOT \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:(\CAN\SOH\136\160\US\NUL\232\160\US\NUL\202\180-\SUBcosmos.gov.v1beta1.Content"
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
              Data.ProtoLens.FieldDescriptor CommunityPoolSpendProposal
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor CommunityPoolSpendProposal
        recipient__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "recipient"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"recipient")) ::
              Data.ProtoLens.FieldDescriptor CommunityPoolSpendProposal
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor CommunityPoolSpendProposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, title__field_descriptor),
           (Data.ProtoLens.Tag 2, description__field_descriptor),
           (Data.ProtoLens.Tag 3, recipient__field_descriptor),
           (Data.ProtoLens.Tag 4, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommunityPoolSpendProposal'_unknownFields
        (\ x__ y__
           -> x__ {_CommunityPoolSpendProposal'_unknownFields = y__})
  defMessage
    = CommunityPoolSpendProposal'_constructor
        {_CommunityPoolSpendProposal'title = Data.ProtoLens.fieldDefault,
         _CommunityPoolSpendProposal'description = Data.ProtoLens.fieldDefault,
         _CommunityPoolSpendProposal'recipient = Data.ProtoLens.fieldDefault,
         _CommunityPoolSpendProposal'amount = Data.Vector.Generic.empty,
         _CommunityPoolSpendProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommunityPoolSpendProposal
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser CommunityPoolSpendProposal
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
                                       "title"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"title") y x)
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                                  mutable'amount
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
                                       "recipient"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"recipient") y x)
                                  mutable'amount
                        34
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
          "CommunityPoolSpendProposal"
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
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"recipient") _x
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
                         (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'amount") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData CommunityPoolSpendProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommunityPoolSpendProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommunityPoolSpendProposal'title x__)
                (Control.DeepSeq.deepseq
                   (_CommunityPoolSpendProposal'description x__)
                   (Control.DeepSeq.deepseq
                      (_CommunityPoolSpendProposal'recipient x__)
                      (Control.DeepSeq.deepseq
                         (_CommunityPoolSpendProposal'amount x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.title' @:: Lens' CommunityPoolSpendProposalWithDeposit Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.description' @:: Lens' CommunityPoolSpendProposalWithDeposit Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.recipient' @:: Lens' CommunityPoolSpendProposalWithDeposit Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.amount' @:: Lens' CommunityPoolSpendProposalWithDeposit Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.deposit' @:: Lens' CommunityPoolSpendProposalWithDeposit Data.Text.Text@ -}
data CommunityPoolSpendProposalWithDeposit
  = CommunityPoolSpendProposalWithDeposit'_constructor {_CommunityPoolSpendProposalWithDeposit'title :: !Data.Text.Text,
                                                        _CommunityPoolSpendProposalWithDeposit'description :: !Data.Text.Text,
                                                        _CommunityPoolSpendProposalWithDeposit'recipient :: !Data.Text.Text,
                                                        _CommunityPoolSpendProposalWithDeposit'amount :: !Data.Text.Text,
                                                        _CommunityPoolSpendProposalWithDeposit'deposit :: !Data.Text.Text,
                                                        _CommunityPoolSpendProposalWithDeposit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommunityPoolSpendProposalWithDeposit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CommunityPoolSpendProposalWithDeposit "title" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommunityPoolSpendProposalWithDeposit'title
           (\ x__ y__
              -> x__ {_CommunityPoolSpendProposalWithDeposit'title = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommunityPoolSpendProposalWithDeposit "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommunityPoolSpendProposalWithDeposit'description
           (\ x__ y__
              -> x__ {_CommunityPoolSpendProposalWithDeposit'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommunityPoolSpendProposalWithDeposit "recipient" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommunityPoolSpendProposalWithDeposit'recipient
           (\ x__ y__
              -> x__ {_CommunityPoolSpendProposalWithDeposit'recipient = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommunityPoolSpendProposalWithDeposit "amount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommunityPoolSpendProposalWithDeposit'amount
           (\ x__ y__
              -> x__ {_CommunityPoolSpendProposalWithDeposit'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommunityPoolSpendProposalWithDeposit "deposit" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommunityPoolSpendProposalWithDeposit'deposit
           (\ x__ y__
              -> x__ {_CommunityPoolSpendProposalWithDeposit'deposit = y__}))
        Prelude.id
instance Data.ProtoLens.Message CommunityPoolSpendProposalWithDeposit where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.CommunityPoolSpendProposalWithDeposit"
  packedMessageDescriptor _
    = "\n\
      \%CommunityPoolSpendProposalWithDeposit\DC2\DC4\n\
      \\ENQtitle\CAN\SOH \SOH(\tR\ENQtitle\DC2 \n\
      \\vdescription\CAN\STX \SOH(\tR\vdescription\DC2\FS\n\
      \\trecipient\CAN\ETX \SOH(\tR\trecipient\DC2\SYN\n\
      \\ACKamount\CAN\EOT \SOH(\tR\ACKamount\DC2\CAN\n\
      \\adeposit\CAN\ENQ \SOH(\tR\adeposit:\"\136\160\US\NUL\202\180-\SUBcosmos.gov.v1beta1.Content"
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
              Data.ProtoLens.FieldDescriptor CommunityPoolSpendProposalWithDeposit
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor CommunityPoolSpendProposalWithDeposit
        recipient__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "recipient"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"recipient")) ::
              Data.ProtoLens.FieldDescriptor CommunityPoolSpendProposalWithDeposit
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor CommunityPoolSpendProposalWithDeposit
        deposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deposit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"deposit")) ::
              Data.ProtoLens.FieldDescriptor CommunityPoolSpendProposalWithDeposit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, title__field_descriptor),
           (Data.ProtoLens.Tag 2, description__field_descriptor),
           (Data.ProtoLens.Tag 3, recipient__field_descriptor),
           (Data.ProtoLens.Tag 4, amount__field_descriptor),
           (Data.ProtoLens.Tag 5, deposit__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommunityPoolSpendProposalWithDeposit'_unknownFields
        (\ x__ y__
           -> x__
                {_CommunityPoolSpendProposalWithDeposit'_unknownFields = y__})
  defMessage
    = CommunityPoolSpendProposalWithDeposit'_constructor
        {_CommunityPoolSpendProposalWithDeposit'title = Data.ProtoLens.fieldDefault,
         _CommunityPoolSpendProposalWithDeposit'description = Data.ProtoLens.fieldDefault,
         _CommunityPoolSpendProposalWithDeposit'recipient = Data.ProtoLens.fieldDefault,
         _CommunityPoolSpendProposalWithDeposit'amount = Data.ProtoLens.fieldDefault,
         _CommunityPoolSpendProposalWithDeposit'deposit = Data.ProtoLens.fieldDefault,
         _CommunityPoolSpendProposalWithDeposit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommunityPoolSpendProposalWithDeposit
          -> Data.ProtoLens.Encoding.Bytes.Parser CommunityPoolSpendProposalWithDeposit
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
                                       "recipient"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"recipient") y x)
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
                                       "amount"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"amount") y x)
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
                                       "deposit"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"deposit") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "CommunityPoolSpendProposalWithDeposit"
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
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"recipient") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"amount") _x
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
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"deposit") _x
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
instance Control.DeepSeq.NFData CommunityPoolSpendProposalWithDeposit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommunityPoolSpendProposalWithDeposit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommunityPoolSpendProposalWithDeposit'title x__)
                (Control.DeepSeq.deepseq
                   (_CommunityPoolSpendProposalWithDeposit'description x__)
                   (Control.DeepSeq.deepseq
                      (_CommunityPoolSpendProposalWithDeposit'recipient x__)
                      (Control.DeepSeq.deepseq
                         (_CommunityPoolSpendProposalWithDeposit'amount x__)
                         (Control.DeepSeq.deepseq
                            (_CommunityPoolSpendProposalWithDeposit'deposit x__) ())))))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.validatorAddress' @:: Lens' DelegationDelegatorReward Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.reward' @:: Lens' DelegationDelegatorReward [Proto.Cosmos.Base.V1beta1.Coin.DecCoin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.vec'reward' @:: Lens' DelegationDelegatorReward (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin)@ -}
data DelegationDelegatorReward
  = DelegationDelegatorReward'_constructor {_DelegationDelegatorReward'validatorAddress :: !Data.Text.Text,
                                            _DelegationDelegatorReward'reward :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin),
                                            _DelegationDelegatorReward'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DelegationDelegatorReward where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DelegationDelegatorReward "validatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegationDelegatorReward'validatorAddress
           (\ x__ y__
              -> x__ {_DelegationDelegatorReward'validatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DelegationDelegatorReward "reward" [Proto.Cosmos.Base.V1beta1.Coin.DecCoin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegationDelegatorReward'reward
           (\ x__ y__ -> x__ {_DelegationDelegatorReward'reward = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DelegationDelegatorReward "vec'reward" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegationDelegatorReward'reward
           (\ x__ y__ -> x__ {_DelegationDelegatorReward'reward = y__}))
        Prelude.id
instance Data.ProtoLens.Message DelegationDelegatorReward where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.DelegationDelegatorReward"
  packedMessageDescriptor _
    = "\n\
      \\EMDelegationDelegatorReward\DC2N\n\
      \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2n\n\
      \\ACKreward\CAN\STX \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\ACKrewardB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH:\EOT\136\160\US\NUL"
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
              Data.ProtoLens.FieldDescriptor DelegationDelegatorReward
        reward__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reward"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.DecCoin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"reward")) ::
              Data.ProtoLens.FieldDescriptor DelegationDelegatorReward
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, reward__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DelegationDelegatorReward'_unknownFields
        (\ x__ y__
           -> x__ {_DelegationDelegatorReward'_unknownFields = y__})
  defMessage
    = DelegationDelegatorReward'_constructor
        {_DelegationDelegatorReward'validatorAddress = Data.ProtoLens.fieldDefault,
         _DelegationDelegatorReward'reward = Data.Vector.Generic.empty,
         _DelegationDelegatorReward'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DelegationDelegatorReward
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.DecCoin
             -> Data.ProtoLens.Encoding.Bytes.Parser DelegationDelegatorReward
        loop x mutable'reward
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'reward <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'reward)
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
                              (Data.ProtoLens.Field.field @"vec'reward") frozen'reward x))
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
                                  mutable'reward
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "reward"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'reward y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'reward
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'reward <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'reward)
          "DelegationDelegatorReward"
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'reward") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData DelegationDelegatorReward where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DelegationDelegatorReward'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DelegationDelegatorReward'validatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_DelegationDelegatorReward'reward x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.previousPeriod' @:: Lens' DelegatorStartingInfo Data.Word.Word64@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.stake' @:: Lens' DelegatorStartingInfo Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.height' @:: Lens' DelegatorStartingInfo Data.Word.Word64@ -}
data DelegatorStartingInfo
  = DelegatorStartingInfo'_constructor {_DelegatorStartingInfo'previousPeriod :: !Data.Word.Word64,
                                        _DelegatorStartingInfo'stake :: !Data.Text.Text,
                                        _DelegatorStartingInfo'height :: !Data.Word.Word64,
                                        _DelegatorStartingInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DelegatorStartingInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DelegatorStartingInfo "previousPeriod" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegatorStartingInfo'previousPeriod
           (\ x__ y__ -> x__ {_DelegatorStartingInfo'previousPeriod = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DelegatorStartingInfo "stake" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegatorStartingInfo'stake
           (\ x__ y__ -> x__ {_DelegatorStartingInfo'stake = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DelegatorStartingInfo "height" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelegatorStartingInfo'height
           (\ x__ y__ -> x__ {_DelegatorStartingInfo'height = y__}))
        Prelude.id
instance Data.ProtoLens.Message DelegatorStartingInfo where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.DelegatorStartingInfo"
  packedMessageDescriptor _
    = "\n\
      \\NAKDelegatorStartingInfo\DC2'\n\
      \\SIprevious_period\CAN\SOH \SOH(\EOTR\SOpreviousPeriod\DC2W\n\
      \\ENQstake\CAN\STX \SOH(\tR\ENQstakeBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\168\231\176*\SOH\DC2D\n\
      \\ACKheight\CAN\ETX \SOH(\EOTR\ACKheightB,\234\222\US\SIcreation_height\162\231\176*\SIcreation_height\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        previousPeriod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "previous_period"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"previousPeriod")) ::
              Data.ProtoLens.FieldDescriptor DelegatorStartingInfo
        stake__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stake"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"stake")) ::
              Data.ProtoLens.FieldDescriptor DelegatorStartingInfo
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor DelegatorStartingInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, previousPeriod__field_descriptor),
           (Data.ProtoLens.Tag 2, stake__field_descriptor),
           (Data.ProtoLens.Tag 3, height__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DelegatorStartingInfo'_unknownFields
        (\ x__ y__ -> x__ {_DelegatorStartingInfo'_unknownFields = y__})
  defMessage
    = DelegatorStartingInfo'_constructor
        {_DelegatorStartingInfo'previousPeriod = Data.ProtoLens.fieldDefault,
         _DelegatorStartingInfo'stake = Data.ProtoLens.fieldDefault,
         _DelegatorStartingInfo'height = Data.ProtoLens.fieldDefault,
         _DelegatorStartingInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DelegatorStartingInfo
          -> Data.ProtoLens.Encoding.Bytes.Parser DelegatorStartingInfo
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "previous_period"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"previousPeriod") y x)
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
                                       "stake"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"stake") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DelegatorStartingInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"previousPeriod") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"stake") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData DelegatorStartingInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DelegatorStartingInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DelegatorStartingInfo'previousPeriod x__)
                (Control.DeepSeq.deepseq
                   (_DelegatorStartingInfo'stake x__)
                   (Control.DeepSeq.deepseq (_DelegatorStartingInfo'height x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.communityPool' @:: Lens' FeePool [Proto.Cosmos.Base.V1beta1.Coin.DecCoin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.vec'communityPool' @:: Lens' FeePool (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin)@ -}
data FeePool
  = FeePool'_constructor {_FeePool'communityPool :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin),
                          _FeePool'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FeePool where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FeePool "communityPool" [Proto.Cosmos.Base.V1beta1.Coin.DecCoin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FeePool'communityPool
           (\ x__ y__ -> x__ {_FeePool'communityPool = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FeePool "vec'communityPool" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FeePool'communityPool
           (\ x__ y__ -> x__ {_FeePool'communityPool = y__}))
        Prelude.id
instance Data.ProtoLens.Message FeePool where
  messageName _
    = Data.Text.pack "cosmos.distribution.v1beta1.FeePool"
  packedMessageDescriptor _
    = "\n\
      \\aFeePool\DC2}\n\
      \\SOcommunity_pool\CAN\SOH \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\rcommunityPoolB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        communityPool__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "community_pool"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.DecCoin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"communityPool")) ::
              Data.ProtoLens.FieldDescriptor FeePool
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, communityPool__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FeePool'_unknownFields
        (\ x__ y__ -> x__ {_FeePool'_unknownFields = y__})
  defMessage
    = FeePool'_constructor
        {_FeePool'communityPool = Data.Vector.Generic.empty,
         _FeePool'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FeePool
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.DecCoin
             -> Data.ProtoLens.Encoding.Bytes.Parser FeePool
        loop x mutable'communityPool
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'communityPool <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'communityPool)
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
                              (Data.ProtoLens.Field.field @"vec'communityPool")
                              frozen'communityPool x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "community_pool"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'communityPool y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'communityPool
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'communityPool <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'communityPool)
          "FeePool"
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
                   (Data.ProtoLens.Field.field @"vec'communityPool") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FeePool where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FeePool'_unknownFields x__)
             (Control.DeepSeq.deepseq (_FeePool'communityPool x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.communityTax' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.baseProposerReward' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.bonusProposerReward' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.withdrawAddrEnabled' @:: Lens' Params Prelude.Bool@ -}
data Params
  = Params'_constructor {_Params'communityTax :: !Data.Text.Text,
                         _Params'baseProposerReward :: !Data.Text.Text,
                         _Params'bonusProposerReward :: !Data.Text.Text,
                         _Params'withdrawAddrEnabled :: !Prelude.Bool,
                         _Params'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Params where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Params "communityTax" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'communityTax
           (\ x__ y__ -> x__ {_Params'communityTax = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "baseProposerReward" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'baseProposerReward
           (\ x__ y__ -> x__ {_Params'baseProposerReward = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "bonusProposerReward" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'bonusProposerReward
           (\ x__ y__ -> x__ {_Params'bonusProposerReward = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "withdrawAddrEnabled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'withdrawAddrEnabled
           (\ x__ y__ -> x__ {_Params'withdrawAddrEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Message Params where
  messageName _ = Data.Text.pack "cosmos.distribution.v1beta1.Params"
  packedMessageDescriptor _
    = "\n\
      \\ACKParams\DC2f\n\
      \\rcommunity_tax\CAN\SOH \SOH(\tR\fcommunityTaxBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\168\231\176*\SOH\DC2u\n\
      \\DC4base_proposer_reward\CAN\STX \SOH(\tR\DC2baseProposerRewardBC\CAN\SOH\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\168\231\176*\SOH\DC2w\n\
      \\NAKbonus_proposer_reward\CAN\ETX \SOH(\tR\DC3bonusProposerRewardBC\CAN\SOH\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\168\231\176*\SOH\DC22\n\
      \\NAKwithdraw_addr_enabled\CAN\EOT \SOH(\bR\DC3withdrawAddrEnabled:%\138\231\176* cosmos-sdk/x/distribution/Params"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        communityTax__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "community_tax"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"communityTax")) ::
              Data.ProtoLens.FieldDescriptor Params
        baseProposerReward__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "base_proposer_reward"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"baseProposerReward")) ::
              Data.ProtoLens.FieldDescriptor Params
        bonusProposerReward__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bonus_proposer_reward"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bonusProposerReward")) ::
              Data.ProtoLens.FieldDescriptor Params
        withdrawAddrEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "withdraw_addr_enabled"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"withdrawAddrEnabled")) ::
              Data.ProtoLens.FieldDescriptor Params
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, communityTax__field_descriptor),
           (Data.ProtoLens.Tag 2, baseProposerReward__field_descriptor),
           (Data.ProtoLens.Tag 3, bonusProposerReward__field_descriptor),
           (Data.ProtoLens.Tag 4, withdrawAddrEnabled__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Params'_unknownFields
        (\ x__ y__ -> x__ {_Params'_unknownFields = y__})
  defMessage
    = Params'_constructor
        {_Params'communityTax = Data.ProtoLens.fieldDefault,
         _Params'baseProposerReward = Data.ProtoLens.fieldDefault,
         _Params'bonusProposerReward = Data.ProtoLens.fieldDefault,
         _Params'withdrawAddrEnabled = Data.ProtoLens.fieldDefault,
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "community_tax"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"communityTax") y x)
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
                                       "base_proposer_reward"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"baseProposerReward") y x)
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
                                       "bonus_proposer_reward"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bonusProposerReward") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "withdraw_addr_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"withdrawAddrEnabled") y x)
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
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"communityTax") _x
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
                         (Data.ProtoLens.Field.field @"baseProposerReward") _x
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
                            (Data.ProtoLens.Field.field @"bonusProposerReward") _x
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
                               (Data.ProtoLens.Field.field @"withdrawAddrEnabled") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0) _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Params where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Params'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Params'communityTax x__)
                (Control.DeepSeq.deepseq
                   (_Params'baseProposerReward x__)
                   (Control.DeepSeq.deepseq
                      (_Params'bonusProposerReward x__)
                      (Control.DeepSeq.deepseq (_Params'withdrawAddrEnabled x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.commission' @:: Lens' ValidatorAccumulatedCommission [Proto.Cosmos.Base.V1beta1.Coin.DecCoin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.vec'commission' @:: Lens' ValidatorAccumulatedCommission (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin)@ -}
data ValidatorAccumulatedCommission
  = ValidatorAccumulatedCommission'_constructor {_ValidatorAccumulatedCommission'commission :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin),
                                                 _ValidatorAccumulatedCommission'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorAccumulatedCommission where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorAccumulatedCommission "commission" [Proto.Cosmos.Base.V1beta1.Coin.DecCoin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorAccumulatedCommission'commission
           (\ x__ y__
              -> x__ {_ValidatorAccumulatedCommission'commission = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ValidatorAccumulatedCommission "vec'commission" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorAccumulatedCommission'commission
           (\ x__ y__
              -> x__ {_ValidatorAccumulatedCommission'commission = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorAccumulatedCommission where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.ValidatorAccumulatedCommission"
  packedMessageDescriptor _
    = "\n\
      \\RSValidatorAccumulatedCommission\DC2v\n\
      \\n\
      \commission\CAN\SOH \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\n\
      \commissionB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commission__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commission"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.DecCoin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"commission")) ::
              Data.ProtoLens.FieldDescriptor ValidatorAccumulatedCommission
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commission__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorAccumulatedCommission'_unknownFields
        (\ x__ y__
           -> x__ {_ValidatorAccumulatedCommission'_unknownFields = y__})
  defMessage
    = ValidatorAccumulatedCommission'_constructor
        {_ValidatorAccumulatedCommission'commission = Data.Vector.Generic.empty,
         _ValidatorAccumulatedCommission'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorAccumulatedCommission
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.DecCoin
             -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorAccumulatedCommission
        loop x mutable'commission
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'commission <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'commission)
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
                              (Data.ProtoLens.Field.field @"vec'commission") frozen'commission
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
                                        "commission"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'commission y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'commission
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'commission <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'commission)
          "ValidatorAccumulatedCommission"
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
                   (Data.ProtoLens.Field.field @"vec'commission") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ValidatorAccumulatedCommission where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorAccumulatedCommission'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValidatorAccumulatedCommission'commission x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.rewards' @:: Lens' ValidatorCurrentRewards [Proto.Cosmos.Base.V1beta1.Coin.DecCoin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.vec'rewards' @:: Lens' ValidatorCurrentRewards (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin)@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.period' @:: Lens' ValidatorCurrentRewards Data.Word.Word64@ -}
data ValidatorCurrentRewards
  = ValidatorCurrentRewards'_constructor {_ValidatorCurrentRewards'rewards :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin),
                                          _ValidatorCurrentRewards'period :: !Data.Word.Word64,
                                          _ValidatorCurrentRewards'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorCurrentRewards where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorCurrentRewards "rewards" [Proto.Cosmos.Base.V1beta1.Coin.DecCoin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorCurrentRewards'rewards
           (\ x__ y__ -> x__ {_ValidatorCurrentRewards'rewards = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ValidatorCurrentRewards "vec'rewards" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorCurrentRewards'rewards
           (\ x__ y__ -> x__ {_ValidatorCurrentRewards'rewards = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorCurrentRewards "period" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorCurrentRewards'period
           (\ x__ y__ -> x__ {_ValidatorCurrentRewards'period = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorCurrentRewards where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.ValidatorCurrentRewards"
  packedMessageDescriptor _
    = "\n\
      \\ETBValidatorCurrentRewards\DC2p\n\
      \\arewards\CAN\SOH \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\arewardsB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH\DC2\SYN\n\
      \\ACKperiod\CAN\STX \SOH(\EOTR\ACKperiod"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rewards__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rewards"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.DecCoin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"rewards")) ::
              Data.ProtoLens.FieldDescriptor ValidatorCurrentRewards
        period__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "period"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"period")) ::
              Data.ProtoLens.FieldDescriptor ValidatorCurrentRewards
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rewards__field_descriptor),
           (Data.ProtoLens.Tag 2, period__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorCurrentRewards'_unknownFields
        (\ x__ y__ -> x__ {_ValidatorCurrentRewards'_unknownFields = y__})
  defMessage
    = ValidatorCurrentRewards'_constructor
        {_ValidatorCurrentRewards'rewards = Data.Vector.Generic.empty,
         _ValidatorCurrentRewards'period = Data.ProtoLens.fieldDefault,
         _ValidatorCurrentRewards'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorCurrentRewards
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.DecCoin
             -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorCurrentRewards
        loop x mutable'rewards
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'rewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'rewards)
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
                              (Data.ProtoLens.Field.field @"vec'rewards") frozen'rewards x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "rewards"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'rewards y)
                                loop x v
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "period"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"period") y x)
                                  mutable'rewards
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'rewards
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'rewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'rewards)
          "ValidatorCurrentRewards"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'rewards") _x))
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ValidatorCurrentRewards where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorCurrentRewards'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValidatorCurrentRewards'rewards x__)
                (Control.DeepSeq.deepseq (_ValidatorCurrentRewards'period x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.cumulativeRewardRatio' @:: Lens' ValidatorHistoricalRewards [Proto.Cosmos.Base.V1beta1.Coin.DecCoin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.vec'cumulativeRewardRatio' @:: Lens' ValidatorHistoricalRewards (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin)@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.referenceCount' @:: Lens' ValidatorHistoricalRewards Data.Word.Word32@ -}
data ValidatorHistoricalRewards
  = ValidatorHistoricalRewards'_constructor {_ValidatorHistoricalRewards'cumulativeRewardRatio :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin),
                                             _ValidatorHistoricalRewards'referenceCount :: !Data.Word.Word32,
                                             _ValidatorHistoricalRewards'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorHistoricalRewards where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorHistoricalRewards "cumulativeRewardRatio" [Proto.Cosmos.Base.V1beta1.Coin.DecCoin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorHistoricalRewards'cumulativeRewardRatio
           (\ x__ y__
              -> x__ {_ValidatorHistoricalRewards'cumulativeRewardRatio = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ValidatorHistoricalRewards "vec'cumulativeRewardRatio" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorHistoricalRewards'cumulativeRewardRatio
           (\ x__ y__
              -> x__ {_ValidatorHistoricalRewards'cumulativeRewardRatio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorHistoricalRewards "referenceCount" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorHistoricalRewards'referenceCount
           (\ x__ y__
              -> x__ {_ValidatorHistoricalRewards'referenceCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorHistoricalRewards where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.ValidatorHistoricalRewards"
  packedMessageDescriptor _
    = "\n\
      \\SUBValidatorHistoricalRewards\DC2\142\SOH\n\
      \\ETBcumulative_reward_ratio\CAN\SOH \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\NAKcumulativeRewardRatioB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH\DC2'\n\
      \\SIreference_count\CAN\STX \SOH(\rR\SOreferenceCount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cumulativeRewardRatio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cumulative_reward_ratio"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.DecCoin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"cumulativeRewardRatio")) ::
              Data.ProtoLens.FieldDescriptor ValidatorHistoricalRewards
        referenceCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reference_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"referenceCount")) ::
              Data.ProtoLens.FieldDescriptor ValidatorHistoricalRewards
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cumulativeRewardRatio__field_descriptor),
           (Data.ProtoLens.Tag 2, referenceCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorHistoricalRewards'_unknownFields
        (\ x__ y__
           -> x__ {_ValidatorHistoricalRewards'_unknownFields = y__})
  defMessage
    = ValidatorHistoricalRewards'_constructor
        {_ValidatorHistoricalRewards'cumulativeRewardRatio = Data.Vector.Generic.empty,
         _ValidatorHistoricalRewards'referenceCount = Data.ProtoLens.fieldDefault,
         _ValidatorHistoricalRewards'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorHistoricalRewards
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.DecCoin
             -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorHistoricalRewards
        loop x mutable'cumulativeRewardRatio
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'cumulativeRewardRatio <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                           mutable'cumulativeRewardRatio)
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
                              (Data.ProtoLens.Field.field @"vec'cumulativeRewardRatio")
                              frozen'cumulativeRewardRatio x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "cumulative_reward_ratio"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'cumulativeRewardRatio y)
                                loop x v
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reference_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"referenceCount") y x)
                                  mutable'cumulativeRewardRatio
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'cumulativeRewardRatio
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'cumulativeRewardRatio <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'cumulativeRewardRatio)
          "ValidatorHistoricalRewards"
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
                   (Data.ProtoLens.Field.field @"vec'cumulativeRewardRatio") _x))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"referenceCount") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ValidatorHistoricalRewards where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorHistoricalRewards'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValidatorHistoricalRewards'cumulativeRewardRatio x__)
                (Control.DeepSeq.deepseq
                   (_ValidatorHistoricalRewards'referenceCount x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.rewards' @:: Lens' ValidatorOutstandingRewards [Proto.Cosmos.Base.V1beta1.Coin.DecCoin]@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.vec'rewards' @:: Lens' ValidatorOutstandingRewards (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin)@ -}
data ValidatorOutstandingRewards
  = ValidatorOutstandingRewards'_constructor {_ValidatorOutstandingRewards'rewards :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin),
                                              _ValidatorOutstandingRewards'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorOutstandingRewards where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorOutstandingRewards "rewards" [Proto.Cosmos.Base.V1beta1.Coin.DecCoin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorOutstandingRewards'rewards
           (\ x__ y__ -> x__ {_ValidatorOutstandingRewards'rewards = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ValidatorOutstandingRewards "vec'rewards" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.DecCoin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorOutstandingRewards'rewards
           (\ x__ y__ -> x__ {_ValidatorOutstandingRewards'rewards = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorOutstandingRewards where
  messageName _
    = Data.Text.pack
        "cosmos.distribution.v1beta1.ValidatorOutstandingRewards"
  packedMessageDescriptor _
    = "\n\
      \\ESCValidatorOutstandingRewards\DC2p\n\
      \\arewards\CAN\SOH \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\arewardsB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rewards__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rewards"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.DecCoin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"rewards")) ::
              Data.ProtoLens.FieldDescriptor ValidatorOutstandingRewards
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rewards__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorOutstandingRewards'_unknownFields
        (\ x__ y__
           -> x__ {_ValidatorOutstandingRewards'_unknownFields = y__})
  defMessage
    = ValidatorOutstandingRewards'_constructor
        {_ValidatorOutstandingRewards'rewards = Data.Vector.Generic.empty,
         _ValidatorOutstandingRewards'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorOutstandingRewards
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.DecCoin
             -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorOutstandingRewards
        loop x mutable'rewards
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'rewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'rewards)
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
                              (Data.ProtoLens.Field.field @"vec'rewards") frozen'rewards x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "rewards"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'rewards y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'rewards
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'rewards <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'rewards)
          "ValidatorOutstandingRewards"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'rewards") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ValidatorOutstandingRewards where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorOutstandingRewards'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValidatorOutstandingRewards'rewards x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.validatorPeriod' @:: Lens' ValidatorSlashEvent Data.Word.Word64@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.fraction' @:: Lens' ValidatorSlashEvent Data.Text.Text@ -}
data ValidatorSlashEvent
  = ValidatorSlashEvent'_constructor {_ValidatorSlashEvent'validatorPeriod :: !Data.Word.Word64,
                                      _ValidatorSlashEvent'fraction :: !Data.Text.Text,
                                      _ValidatorSlashEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorSlashEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorSlashEvent "validatorPeriod" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSlashEvent'validatorPeriod
           (\ x__ y__ -> x__ {_ValidatorSlashEvent'validatorPeriod = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorSlashEvent "fraction" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSlashEvent'fraction
           (\ x__ y__ -> x__ {_ValidatorSlashEvent'fraction = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorSlashEvent where
  messageName _
    = Data.Text.pack "cosmos.distribution.v1beta1.ValidatorSlashEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC3ValidatorSlashEvent\DC2)\n\
      \\DLEvalidator_period\CAN\SOH \SOH(\EOTR\SIvalidatorPeriod\DC2X\n\
      \\bfraction\CAN\STX \SOH(\tR\bfractionB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validatorPeriod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_period"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorPeriod")) ::
              Data.ProtoLens.FieldDescriptor ValidatorSlashEvent
        fraction__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fraction"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fraction")) ::
              Data.ProtoLens.FieldDescriptor ValidatorSlashEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorPeriod__field_descriptor),
           (Data.ProtoLens.Tag 2, fraction__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorSlashEvent'_unknownFields
        (\ x__ y__ -> x__ {_ValidatorSlashEvent'_unknownFields = y__})
  defMessage
    = ValidatorSlashEvent'_constructor
        {_ValidatorSlashEvent'validatorPeriod = Data.ProtoLens.fieldDefault,
         _ValidatorSlashEvent'fraction = Data.ProtoLens.fieldDefault,
         _ValidatorSlashEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorSlashEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorSlashEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "validator_period"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorPeriod") y x)
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
                                       "fraction"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fraction") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ValidatorSlashEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"validatorPeriod") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"fraction") _x
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
instance Control.DeepSeq.NFData ValidatorSlashEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorSlashEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValidatorSlashEvent'validatorPeriod x__)
                (Control.DeepSeq.deepseq (_ValidatorSlashEvent'fraction x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.validatorSlashEvents' @:: Lens' ValidatorSlashEvents [ValidatorSlashEvent]@
         * 'Proto.Cosmos.Distribution.V1beta1.Distribution_Fields.vec'validatorSlashEvents' @:: Lens' ValidatorSlashEvents (Data.Vector.Vector ValidatorSlashEvent)@ -}
data ValidatorSlashEvents
  = ValidatorSlashEvents'_constructor {_ValidatorSlashEvents'validatorSlashEvents :: !(Data.Vector.Vector ValidatorSlashEvent),
                                       _ValidatorSlashEvents'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorSlashEvents where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorSlashEvents "validatorSlashEvents" [ValidatorSlashEvent] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSlashEvents'validatorSlashEvents
           (\ x__ y__
              -> x__ {_ValidatorSlashEvents'validatorSlashEvents = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ValidatorSlashEvents "vec'validatorSlashEvents" (Data.Vector.Vector ValidatorSlashEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorSlashEvents'validatorSlashEvents
           (\ x__ y__
              -> x__ {_ValidatorSlashEvents'validatorSlashEvents = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorSlashEvents where
  messageName _
    = Data.Text.pack "cosmos.distribution.v1beta1.ValidatorSlashEvents"
  packedMessageDescriptor _
    = "\n\
      \\DC4ValidatorSlashEvents\DC2q\n\
      \\SYNvalidator_slash_events\CAN\SOH \ETX(\v20.cosmos.distribution.v1beta1.ValidatorSlashEventR\DC4validatorSlashEventsB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        validatorSlashEvents__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_slash_events"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ValidatorSlashEvent)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"validatorSlashEvents")) ::
              Data.ProtoLens.FieldDescriptor ValidatorSlashEvents
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, validatorSlashEvents__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorSlashEvents'_unknownFields
        (\ x__ y__ -> x__ {_ValidatorSlashEvents'_unknownFields = y__})
  defMessage
    = ValidatorSlashEvents'_constructor
        {_ValidatorSlashEvents'validatorSlashEvents = Data.Vector.Generic.empty,
         _ValidatorSlashEvents'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorSlashEvents
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ValidatorSlashEvent
             -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorSlashEvents
        loop x mutable'validatorSlashEvents
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'validatorSlashEvents <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
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
                              (Data.ProtoLens.Field.field @"vec'validatorSlashEvents")
                              frozen'validatorSlashEvents x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "validator_slash_events"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'validatorSlashEvents y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'validatorSlashEvents
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'validatorSlashEvents <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'validatorSlashEvents)
          "ValidatorSlashEvents"
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
                   (Data.ProtoLens.Field.field @"vec'validatorSlashEvents") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ValidatorSlashEvents where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorSlashEvents'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValidatorSlashEvents'validatorSlashEvents x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \.cosmos/distribution/v1beta1/distribution.proto\DC2\ESCcosmos.distribution.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\RScosmos/base/v1beta1/coin.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"\187\ETX\n\
    \\ACKParams\DC2f\n\
    \\rcommunity_tax\CAN\SOH \SOH(\tR\fcommunityTaxBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\168\231\176*\SOH\DC2u\n\
    \\DC4base_proposer_reward\CAN\STX \SOH(\tR\DC2baseProposerRewardBC\CAN\SOH\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\168\231\176*\SOH\DC2w\n\
    \\NAKbonus_proposer_reward\CAN\ETX \SOH(\tR\DC3bonusProposerRewardBC\CAN\SOH\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\168\231\176*\SOH\DC22\n\
    \\NAKwithdraw_addr_enabled\CAN\EOT \SOH(\bR\DC3withdrawAddrEnabled:%\138\231\176* cosmos-sdk/x/distribution/Params\"\214\SOH\n\
    \\SUBValidatorHistoricalRewards\DC2\142\SOH\n\
    \\ETBcumulative_reward_ratio\CAN\SOH \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\NAKcumulativeRewardRatioB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH\DC2'\n\
    \\SIreference_count\CAN\STX \SOH(\rR\SOreferenceCount\"\163\SOH\n\
    \\ETBValidatorCurrentRewards\DC2p\n\
    \\arewards\CAN\SOH \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\arewardsB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH\DC2\SYN\n\
    \\ACKperiod\CAN\STX \SOH(\EOTR\ACKperiod\"\152\SOH\n\
    \\RSValidatorAccumulatedCommission\DC2v\n\
    \\n\
    \commission\CAN\SOH \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\n\
    \commissionB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH\"\143\SOH\n\
    \\ESCValidatorOutstandingRewards\DC2p\n\
    \\arewards\CAN\SOH \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\arewardsB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH\"\154\SOH\n\
    \\DC3ValidatorSlashEvent\DC2)\n\
    \\DLEvalidator_period\CAN\SOH \SOH(\EOTR\SIvalidatorPeriod\DC2X\n\
    \\bfraction\CAN\STX \SOH(\tR\bfractionB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\"\137\SOH\n\
    \\DC4ValidatorSlashEvents\DC2q\n\
    \\SYNvalidator_slash_events\CAN\SOH \ETX(\v20.cosmos.distribution.v1beta1.ValidatorSlashEventR\DC4validatorSlashEventsB\t\200\222\US\NUL\168\231\176*\SOH\"\136\SOH\n\
    \\aFeePool\DC2}\n\
    \\SOcommunity_pool\CAN\SOH \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\rcommunityPoolB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH\"\151\STX\n\
    \\SUBCommunityPoolSpendProposal\DC2\DC4\n\
    \\ENQtitle\CAN\SOH \SOH(\tR\ENQtitle\DC2 \n\
    \\vdescription\CAN\STX \SOH(\tR\vdescription\DC2\FS\n\
    \\trecipient\CAN\ETX \SOH(\tR\trecipient\DC2y\n\
    \\ACKamount\CAN\EOT \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:(\CAN\SOH\136\160\US\NUL\232\160\US\NUL\202\180-\SUBcosmos.gov.v1beta1.Content\"\223\SOH\n\
    \\NAKDelegatorStartingInfo\DC2'\n\
    \\SIprevious_period\CAN\SOH \SOH(\EOTR\SOpreviousPeriod\DC2W\n\
    \\ENQstake\CAN\STX \SOH(\tR\ENQstakeBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\168\231\176*\SOH\DC2D\n\
    \\ACKheight\CAN\ETX \SOH(\EOTR\ACKheightB,\234\222\US\SIcreation_height\162\231\176*\SIcreation_height\168\231\176*\SOH\"\225\SOH\n\
    \\EMDelegationDelegatorReward\DC2N\n\
    \\DC1validator_address\CAN\SOH \SOH(\tR\DLEvalidatorAddressB!\210\180-\GScosmos.ValidatorAddressString\DC2n\n\
    \\ACKreward\CAN\STX \ETX(\v2\FS.cosmos.base.v1beta1.DecCoinR\ACKrewardB8\200\222\US\NUL\170\223\US+github.com/cosmos/cosmos-sdk/types.DecCoins\168\231\176*\SOH:\EOT\136\160\US\NUL\"\211\SOH\n\
    \%CommunityPoolSpendProposalWithDeposit\DC2\DC4\n\
    \\ENQtitle\CAN\SOH \SOH(\tR\ENQtitle\DC2 \n\
    \\vdescription\CAN\STX \SOH(\tR\vdescription\DC2\FS\n\
    \\trecipient\CAN\ETX \SOH(\tR\trecipient\DC2\SYN\n\
    \\ACKamount\CAN\EOT \SOH(\tR\ACKamount\DC2\CAN\n\
    \\adeposit\CAN\ENQ \SOH(\tR\adeposit:\"\136\160\US\NUL\202\180-\SUBcosmos.gov.v1beta1.ContentB7Z1github.com/cosmos/cosmos-sdk/x/distribution/types\168\226\RS\SOHJ\184\&1\n\
    \\a\DC2\ENQ\NUL\NUL\193\SOH\SOH\n\
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
    \\STX\ETX\ETX\DC2\ETX\t\NUL\ESC\n\
    \K\n\
    \\STX\EOT\NUL\DC2\EOT\f\NUL+\SOH\SUB? Params defines the set of params for the distribution module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\f\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\r\STX;\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\r\STX;\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\SI\STX\DC4\EOT\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SI\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SI\EM\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\EOT\SI\ESC\DC4\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\DLE\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\235\251\ETX\DC2\ETX\DC1\EOTE\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\245\140\166\ENQ\DC2\ETX\DC2\EOT!\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\DC3\EOT\"\n\
    \\145\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\CAN\STX\RS\EOT\SUB\130\SOH Deprecated: The base_proposer_reward field is deprecated and is no longer used\n\
    \ in the x/distribution module's reward mechanism.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\CAN\t\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\CAN !\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\EOT\CAN\"\RS\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\EM\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\235\251\ETX\DC2\ETX\SUB\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\ESC\EOT\"\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX\FS\EOT!\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\SOH\b\ETX\DC2\ETX\GS\EOT!\n\
    \\146\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\"\STX(\EOT\SUB\131\SOH Deprecated: The bonus_proposer_reward field is deprecated and is no longer used\n\
    \ in the x/distribution module's reward mechanism.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\"\t\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\"!\"\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\EOT\"#(\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\202\214\ENQ\DC2\ETX#\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\235\251\ETX\DC2\ETX$\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX%\EOT\"\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\245\140\166\ENQ\DC2\ETX&\EOT!\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\STX\b\ETX\DC2\ETX'\EOT!\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX*\STX!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX*\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX*\a\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX*\US \n\
    \\146\ENQ\n\
    \\STX\EOT\SOH\DC2\EOT9\NUL@\SOH\SUB\133\ENQ ValidatorHistoricalRewards represents historical rewards for a validator.\n\
    \ Height is implicit within the store key.\n\
    \ Cumulative reward ratio is the sum from the zeroeth period\n\
    \ until this period of rewards / tokens, per the spec.\n\
    \ The reference count indicates the number of objects\n\
    \ which might need to reference this historical entry at any point.\n\
    \ ReferenceCount =\n\
    \    number of outstanding delegations which ended the associated period (and\n\
    \    might need to read that record)\n\
    \  + number of slashes which ended the associated period (and might need to\n\
    \  read that record)\n\
    \  + one per validator for the zeroeth period, set on initialization\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX9\b\"\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT:\STX>\EOT\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX:\v&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX:'>\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX:AB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\EOT:C>\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\245\251\ETX\DC2\ETX;\EOTL\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\ETX<\EOT$\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\NUL\b\245\140\166\ENQ\DC2\ETX=\EOT#\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX?\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX?\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX?\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX?\ESC\FS\n\
    \\206\SOH\n\
    \\STX\EOT\STX\DC2\EOTE\NULL\SOH\SUB\193\SOH ValidatorCurrentRewards represents current rewards and current\n\
    \ period for a validator kept as a running counter and incremented\n\
    \ each block as long as the validator's tokens remain constant.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXE\b\US\n\
    \\f\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOTF\STXJ\EOT\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETXF\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXF\v&\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXF'.\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXF12\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\EOTF3J\ETX\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\245\251\ETX\DC2\ETXG\EOTL\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\233\251\ETX\DC2\ETXH\EOT$\n\
    \\DLE\n\
    \\t\EOT\STX\STX\NUL\b\245\140\166\ENQ\DC2\ETXI\EOT#\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXK\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXK\t\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXK\DC2\DC3\n\
    \\153\SOH\n\
    \\STX\EOT\ETX\DC2\EOTP\NULV\SOH\SUB\140\SOH ValidatorAccumulatedCommission represents accumulated commission\n\
    \ for a validator kept as a running counter, can be withdrawn at any time.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXP\b&\n\
    \\f\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOTQ\STXU\EOT\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETXQ\v&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXQ'1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXQ45\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\EOTQ6U\ETX\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\245\251\ETX\DC2\ETXR\EOTL\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\233\251\ETX\DC2\ETXS\EOT$\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\NUL\b\245\140\166\ENQ\DC2\ETXT\EOT#\n\
    \\156\SOH\n\
    \\STX\EOT\EOT\DC2\EOTZ\NUL`\SOH\SUB\143\SOH ValidatorOutstandingRewards represents outstanding (un-withdrawn) rewards\n\
    \ for a validator inexpensive to track, allows simple sanity checks.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXZ\b#\n\
    \\f\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT[\STX_\EOT\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX[\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETX[\v&\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX['.\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX[12\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\EOT[3_\ETX\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\245\251\ETX\DC2\ETX\\\EOTL\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\233\251\ETX\DC2\ETX]\EOT$\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\NUL\b\245\140\166\ENQ\DC2\ETX^\EOT#\n\
    \\243\SOH\n\
    \\STX\EOT\ENQ\DC2\EOTf\NULm\SOH\SUB\230\SOH ValidatorSlashEvent represents a validator slash event.\n\
    \ Height is implicit within the store key.\n\
    \ This is needed to calculate appropriate amount of staking tokens\n\
    \ for delegations which are withdrawn after a slash has occurred.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXf\b\ESC\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXg\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXg\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXg\t\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXg\FS\GS\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOTh\STXl\EOT\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETXh\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXh\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXh\FS\GS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\b\DC2\EOTh\RSl\ETX\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\SOH\b\202\214\ENQ\DC2\ETXi\EOT)\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\SOH\b\235\251\ETX\DC2\ETXj\EOTE\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\SOH\b\233\251\ETX\DC2\ETXk\EOT\"\n\
    \S\n\
    \\STX\EOT\ACK\DC2\EOTp\NULr\SOH\SUBG ValidatorSlashEvents is a collection of ValidatorSlashEvent messages.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXp\b\FS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXq\STXx\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETXq\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\ETXq\v\RS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXq\US5\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXq89\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\ETXq:w\n\
    \\SI\n\
    \\b\EOT\ACK\STX\NUL\b\233\251\ETX\DC2\ETXq;W\n\
    \\DLE\n\
    \\t\EOT\ACK\STX\NUL\b\245\140\166\ENQ\DC2\ETXqYv\n\
    \>\n\
    \\STX\EOT\a\DC2\EOTu\NUL{\SOH\SUB2 FeePool is the global fee pool for distribution.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXu\b\SI\n\
    \\f\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOTv\STXz\EOT\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETXv\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETXv\v&\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXv'5\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXv89\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\b\DC2\EOTv:z\ETX\n\
    \\SI\n\
    \\b\EOT\a\STX\NUL\b\233\251\ETX\DC2\ETXw\EOT$\n\
    \\DLE\n\
    \\t\EOT\a\STX\NUL\b\245\140\166\ENQ\DC2\ETXx\EOT#\n\
    \\SI\n\
    \\b\EOT\a\STX\NUL\b\245\251\ETX\DC2\ETXy\EOTL\n\
    \\189\ETX\n\
    \\STX\EOT\b\DC2\ACK\133\SOH\NUL\148\SOH\SOH\SUB\174\ETX CommunityPoolSpendProposal details a proposal for use of community funds,\n\
    \ together with how many coins are proposed to be spent, and to which\n\
    \ recipient account.\n\
    \\n\
    \ Deprecated: Do not use. As of the Cosmos SDK release v0.47.x, there is no\n\
    \ longer a need for an explicit CommunityPoolSpendProposal. To spend community\n\
    \ pool funds, a simple MsgCommunityPoolSpend can be invoked from the x/gov\n\
    \ module via a v1 governance proposal.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\133\SOH\b\"\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\134\SOH\STX4\n\
    \\f\n\
    \\EOT\EOT\b\a\ETX\DC2\EOT\134\SOH\STX4\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\135\SOH\STX5\n\
    \\SO\n\
    \\ACK\EOT\b\a\141\244\ETX\DC2\EOT\135\SOH\STX5\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\136\SOH\STX5\n\
    \\SO\n\
    \\ACK\EOT\b\a\129\244\ETX\DC2\EOT\136\SOH\STX5\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\137\SOH\STXL\n\
    \\SI\n\
    \\a\EOT\b\a\201\214\ENQ\NUL\DC2\EOT\137\SOH\STXL\n\
    \\f\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\139\SOH\STX/\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\139\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\139\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\139\SOH-.\n\
    \\f\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\140\SOH\STX/\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\140\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\140\SOH\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\140\SOH-.\n\
    \\f\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\141\SOH\STX/\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\EOT\141\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\141\SOH\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\141\SOH-.\n\
    \\SO\n\
    \\EOT\EOT\b\STX\ETX\DC2\ACK\142\SOH\STX\147\SOH\EOT\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\EOT\DC2\EOT\142\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ACK\DC2\EOT\142\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\142\SOH$*\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\142\SOH-.\n\
    \\SI\n\
    \\ENQ\EOT\b\STX\ETX\b\DC2\ACK\142\SOH/\147\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\b\STX\ETX\b\233\251\ETX\DC2\EOT\143\SOH\EOT$\n\
    \\DC1\n\
    \\t\EOT\b\STX\ETX\b\245\140\166\ENQ\DC2\EOT\144\SOH\EOT#\n\
    \\DC1\n\
    \\t\EOT\b\STX\ETX\b\243\140\166\ENQ\DC2\EOT\145\SOH\EOT-\n\
    \\DLE\n\
    \\b\EOT\b\STX\ETX\b\245\251\ETX\DC2\EOT\146\SOH\EOTI\n\
    \\169\ETX\n\
    \\STX\EOT\t\DC2\ACK\156\SOH\NUL\166\SOH\SOH\SUB\154\ETX DelegatorStartingInfo represents the starting info for a delegator reward\n\
    \ period. It tracks the previous validator period, the delegation's amount of\n\
    \ staking token, and the creation height (to check later on if any slashes have\n\
    \ occurred). NOTE: Even though validators are slashed to whole staking tokens,\n\
    \ the delegators within the validator may be left with less than a full token,\n\
    \ thus sdk.Dec is used.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\156\SOH\b\GS\n\
    \\f\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\157\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\EOT\157\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\157\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\157\SOH\ESC\FS\n\
    \\SO\n\
    \\EOT\EOT\t\STX\SOH\DC2\ACK\158\SOH\STX\163\SOH\EOT\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\EOT\158\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\158\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\158\SOH\ESC\FS\n\
    \\SI\n\
    \\ENQ\EOT\t\STX\SOH\b\DC2\ACK\158\SOH\GS\163\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\t\STX\SOH\b\202\214\ENQ\DC2\EOT\159\SOH\EOT)\n\
    \\DLE\n\
    \\b\EOT\t\STX\SOH\b\235\251\ETX\DC2\EOT\160\SOH\EOTE\n\
    \\DLE\n\
    \\b\EOT\t\STX\SOH\b\233\251\ETX\DC2\EOT\161\SOH\EOT\"\n\
    \\DC1\n\
    \\t\EOT\t\STX\SOH\b\245\140\166\ENQ\DC2\EOT\162\SOH\EOT!\n\
    \\SO\n\
    \\EOT\EOT\t\STX\STX\DC2\ACK\164\SOH\STX\165\SOHw\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ENQ\DC2\EOT\164\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\SOH\DC2\EOT\164\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\ETX\DC2\EOT\164\SOH\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\t\STX\STX\b\DC2\EOT\165\SOH\ACKv\n\
    \\DLE\n\
    \\b\EOT\t\STX\STX\b\237\251\ETX\DC2\EOT\165\SOH\a.\n\
    \\DC1\n\
    \\t\EOT\t\STX\STX\b\244\140\166\ENQ\DC2\EOT\165\SOH0V\n\
    \\DC1\n\
    \\t\EOT\t\STX\STX\b\245\140\166\ENQ\DC2\EOT\165\SOHXu\n\
    \h\n\
    \\STX\EOT\n\
    \\DC2\ACK\170\SOH\NUL\180\SOH\SOH\SUBZ DelegationDelegatorReward represents the properties\n\
    \ of a delegator's delegation reward.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\170\SOH\b!\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\171\SOH\STX-\n\
    \\SO\n\
    \\ACK\EOT\n\
    \\a\129\244\ETX\DC2\EOT\171\SOH\STX-\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\173\SOH\STXY\n\
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
    \\STX\NUL\b\DC2\EOT\173\SOH\USX\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\NUL\b\202\214\ENQ\DC2\EOT\173\SOH W\n\
    \\SO\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ACK\175\SOH\STX\179\SOH\EOT\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\EOT\DC2\EOT\175\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ACK\DC2\EOT\175\SOH\v&\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\175\SOH'-\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\175\SOH01\n\
    \\SI\n\
    \\ENQ\EOT\n\
    \\STX\SOH\b\DC2\ACK\175\SOH2\179\SOH\ETX\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\SOH\b\245\251\ETX\DC2\EOT\176\SOH\EOTL\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\SOH\b\233\251\ETX\DC2\EOT\177\SOH\EOT$\n\
    \\DC1\n\
    \\t\EOT\n\
    \\STX\SOH\b\245\140\166\ENQ\DC2\EOT\178\SOH\EOT#\n\
    \j\n\
    \\STX\EOT\v\DC2\ACK\184\SOH\NUL\193\SOH\SOH\SUB\\ CommunityPoolSpendProposalWithDeposit defines a CommunityPoolSpendProposal\n\
    \ with a deposit\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\184\SOH\b-\n\
    \\v\n\
    \\ETX\EOT\v\a\DC2\EOT\185\SOH\STX5\n\
    \\SO\n\
    \\ACK\EOT\v\a\129\244\ETX\DC2\EOT\185\SOH\STX5\n\
    \\v\n\
    \\ETX\EOT\v\a\DC2\EOT\186\SOH\STXL\n\
    \\SI\n\
    \\a\EOT\v\a\201\214\ENQ\NUL\DC2\EOT\186\SOH\STXL\n\
    \\f\n\
    \\EOT\EOT\v\STX\NUL\DC2\EOT\188\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\EOT\188\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\EOT\188\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\EOT\188\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\v\STX\SOH\DC2\EOT\189\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\EOT\189\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\EOT\189\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\EOT\189\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\v\STX\STX\DC2\EOT\190\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ENQ\DC2\EOT\190\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\EOT\190\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\EOT\190\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\v\STX\ETX\DC2\EOT\191\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ENQ\DC2\EOT\191\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\EOT\191\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\EOT\191\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\v\STX\EOT\DC2\EOT\192\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ENQ\DC2\EOT\192\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\SOH\DC2\EOT\192\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\v\STX\EOT\ETX\DC2\EOT\192\SOH\ETB\CANb\ACKproto3"