{- This file was auto-generated from cosmos/gov/v1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Gov.V1.Tx (
        Msg(..), MsgCancelProposal(), MsgCancelProposalResponse(),
        MsgDeposit(), MsgDepositResponse(), MsgExecLegacyContent(),
        MsgExecLegacyContentResponse(), MsgSubmitProposal(),
        MsgSubmitProposalResponse(), MsgUpdateParams(),
        MsgUpdateParamsResponse(), MsgVote(), MsgVoteResponse(),
        MsgVoteWeighted(), MsgVoteWeightedResponse()
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
import qualified Proto.Cosmos.Gov.V1.Gov
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Timestamp
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.proposalId' @:: Lens' MsgCancelProposal Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.proposer' @:: Lens' MsgCancelProposal Data.Text.Text@ -}
data MsgCancelProposal
  = MsgCancelProposal'_constructor {_MsgCancelProposal'proposalId :: !Data.Word.Word64,
                                    _MsgCancelProposal'proposer :: !Data.Text.Text,
                                    _MsgCancelProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCancelProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCancelProposal "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCancelProposal'proposalId
           (\ x__ y__ -> x__ {_MsgCancelProposal'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCancelProposal "proposer" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCancelProposal'proposer
           (\ x__ y__ -> x__ {_MsgCancelProposal'proposer = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCancelProposal where
  messageName _ = Data.Text.pack "cosmos.gov.v1.MsgCancelProposal"
  packedMessageDescriptor _
    = "\n\
      \\DC1MsgCancelProposal\DC20\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalIdB\SI\234\222\US\vproposal_id\DC24\n\
      \\bproposer\CAN\STX \SOH(\tR\bproposerB\CAN\210\180-\DC4cosmos.AddressString:\r\130\231\176*\bproposer"
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
              Data.ProtoLens.FieldDescriptor MsgCancelProposal
        proposer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposer"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposer")) ::
              Data.ProtoLens.FieldDescriptor MsgCancelProposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, proposer__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCancelProposal'_unknownFields
        (\ x__ y__ -> x__ {_MsgCancelProposal'_unknownFields = y__})
  defMessage
    = MsgCancelProposal'_constructor
        {_MsgCancelProposal'proposalId = Data.ProtoLens.fieldDefault,
         _MsgCancelProposal'proposer = Data.ProtoLens.fieldDefault,
         _MsgCancelProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCancelProposal
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCancelProposal
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proposal_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposalId") y x)
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
                                       "proposer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposer") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgCancelProposal"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"proposer") _x
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
instance Control.DeepSeq.NFData MsgCancelProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCancelProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCancelProposal'proposalId x__)
                (Control.DeepSeq.deepseq (_MsgCancelProposal'proposer x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.proposalId' @:: Lens' MsgCancelProposalResponse Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.canceledTime' @:: Lens' MsgCancelProposalResponse Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.maybe'canceledTime' @:: Lens' MsgCancelProposalResponse (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.canceledHeight' @:: Lens' MsgCancelProposalResponse Data.Word.Word64@ -}
data MsgCancelProposalResponse
  = MsgCancelProposalResponse'_constructor {_MsgCancelProposalResponse'proposalId :: !Data.Word.Word64,
                                            _MsgCancelProposalResponse'canceledTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                            _MsgCancelProposalResponse'canceledHeight :: !Data.Word.Word64,
                                            _MsgCancelProposalResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCancelProposalResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCancelProposalResponse "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCancelProposalResponse'proposalId
           (\ x__ y__ -> x__ {_MsgCancelProposalResponse'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCancelProposalResponse "canceledTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCancelProposalResponse'canceledTime
           (\ x__ y__ -> x__ {_MsgCancelProposalResponse'canceledTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgCancelProposalResponse "maybe'canceledTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCancelProposalResponse'canceledTime
           (\ x__ y__ -> x__ {_MsgCancelProposalResponse'canceledTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCancelProposalResponse "canceledHeight" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCancelProposalResponse'canceledHeight
           (\ x__ y__
              -> x__ {_MsgCancelProposalResponse'canceledHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCancelProposalResponse where
  messageName _
    = Data.Text.pack "cosmos.gov.v1.MsgCancelProposalResponse"
  packedMessageDescriptor _
    = "\n\
      \\EMMsgCancelProposalResponse\DC20\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalIdB\SI\234\222\US\vproposal_id\DC2I\n\
      \\rcanceled_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\fcanceledTimeB\b\200\222\US\NUL\144\223\US\SOH\DC2'\n\
      \\SIcanceled_height\CAN\ETX \SOH(\EOTR\SOcanceledHeight"
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
              Data.ProtoLens.FieldDescriptor MsgCancelProposalResponse
        canceledTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "canceled_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'canceledTime")) ::
              Data.ProtoLens.FieldDescriptor MsgCancelProposalResponse
        canceledHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "canceled_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"canceledHeight")) ::
              Data.ProtoLens.FieldDescriptor MsgCancelProposalResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, canceledTime__field_descriptor),
           (Data.ProtoLens.Tag 3, canceledHeight__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCancelProposalResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgCancelProposalResponse'_unknownFields = y__})
  defMessage
    = MsgCancelProposalResponse'_constructor
        {_MsgCancelProposalResponse'proposalId = Data.ProtoLens.fieldDefault,
         _MsgCancelProposalResponse'canceledTime = Prelude.Nothing,
         _MsgCancelProposalResponse'canceledHeight = Data.ProtoLens.fieldDefault,
         _MsgCancelProposalResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCancelProposalResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCancelProposalResponse
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proposal_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposalId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "canceled_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"canceledTime") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "canceled_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"canceledHeight") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgCancelProposalResponse"
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'canceledTime") _x
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
                            (Data.ProtoLens.Field.field @"canceledHeight") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgCancelProposalResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCancelProposalResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCancelProposalResponse'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_MsgCancelProposalResponse'canceledTime x__)
                   (Control.DeepSeq.deepseq
                      (_MsgCancelProposalResponse'canceledHeight x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.proposalId' @:: Lens' MsgDeposit Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.depositor' @:: Lens' MsgDeposit Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.amount' @:: Lens' MsgDeposit [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.vec'amount' @:: Lens' MsgDeposit (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data MsgDeposit
  = MsgDeposit'_constructor {_MsgDeposit'proposalId :: !Data.Word.Word64,
                             _MsgDeposit'depositor :: !Data.Text.Text,
                             _MsgDeposit'amount :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                             _MsgDeposit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDeposit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgDeposit "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeposit'proposalId
           (\ x__ y__ -> x__ {_MsgDeposit'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDeposit "depositor" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeposit'depositor
           (\ x__ y__ -> x__ {_MsgDeposit'depositor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgDeposit "amount" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeposit'amount (\ x__ y__ -> x__ {_MsgDeposit'amount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgDeposit "vec'amount" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgDeposit'amount (\ x__ y__ -> x__ {_MsgDeposit'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgDeposit where
  messageName _ = Data.Text.pack "cosmos.gov.v1.MsgDeposit"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \MsgDeposit\DC25\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalIdB\DC4\234\222\US\vproposal_id\168\231\176*\SOH\DC26\n\
      \\tdepositor\CAN\STX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString\DC2<\n\
      \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH:+\130\231\176*\tdepositor\138\231\176*\CANcosmos-sdk/v1/MsgDeposit"
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
              Data.ProtoLens.FieldDescriptor MsgDeposit
        depositor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "depositor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"depositor")) ::
              Data.ProtoLens.FieldDescriptor MsgDeposit
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor MsgDeposit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, depositor__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDeposit'_unknownFields
        (\ x__ y__ -> x__ {_MsgDeposit'_unknownFields = y__})
  defMessage
    = MsgDeposit'_constructor
        {_MsgDeposit'proposalId = Data.ProtoLens.fieldDefault,
         _MsgDeposit'depositor = Data.ProtoLens.fieldDefault,
         _MsgDeposit'amount = Data.Vector.Generic.empty,
         _MsgDeposit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDeposit
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgDeposit
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
          "MsgDeposit"
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
instance Control.DeepSeq.NFData MsgDeposit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDeposit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgDeposit'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_MsgDeposit'depositor x__)
                   (Control.DeepSeq.deepseq (_MsgDeposit'amount x__) ())))
{- | Fields :
      -}
data MsgDepositResponse
  = MsgDepositResponse'_constructor {_MsgDepositResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgDepositResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgDepositResponse where
  messageName _ = Data.Text.pack "cosmos.gov.v1.MsgDepositResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2MsgDepositResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgDepositResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgDepositResponse'_unknownFields = y__})
  defMessage
    = MsgDepositResponse'_constructor
        {_MsgDepositResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgDepositResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgDepositResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgDepositResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgDepositResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgDepositResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.content' @:: Lens' MsgExecLegacyContent Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.maybe'content' @:: Lens' MsgExecLegacyContent (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.authority' @:: Lens' MsgExecLegacyContent Data.Text.Text@ -}
data MsgExecLegacyContent
  = MsgExecLegacyContent'_constructor {_MsgExecLegacyContent'content :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                       _MsgExecLegacyContent'authority :: !Data.Text.Text,
                                       _MsgExecLegacyContent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgExecLegacyContent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgExecLegacyContent "content" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgExecLegacyContent'content
           (\ x__ y__ -> x__ {_MsgExecLegacyContent'content = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgExecLegacyContent "maybe'content" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgExecLegacyContent'content
           (\ x__ y__ -> x__ {_MsgExecLegacyContent'content = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgExecLegacyContent "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgExecLegacyContent'authority
           (\ x__ y__ -> x__ {_MsgExecLegacyContent'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgExecLegacyContent where
  messageName _ = Data.Text.pack "cosmos.gov.v1.MsgExecLegacyContent"
  packedMessageDescriptor _
    = "\n\
      \\DC4MsgExecLegacyContent\DC2N\n\
      \\acontent\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\acontentB\RS\202\180-\SUBcosmos.gov.v1beta1.Content\DC2\FS\n\
      \\tauthority\CAN\STX \SOH(\tR\tauthority:5\130\231\176*\tauthority\138\231\176*\"cosmos-sdk/v1/MsgExecLegacyContent"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        content__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "content"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'content")) ::
              Data.ProtoLens.FieldDescriptor MsgExecLegacyContent
        authority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authority")) ::
              Data.ProtoLens.FieldDescriptor MsgExecLegacyContent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, content__field_descriptor),
           (Data.ProtoLens.Tag 2, authority__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgExecLegacyContent'_unknownFields
        (\ x__ y__ -> x__ {_MsgExecLegacyContent'_unknownFields = y__})
  defMessage
    = MsgExecLegacyContent'_constructor
        {_MsgExecLegacyContent'content = Prelude.Nothing,
         _MsgExecLegacyContent'authority = Data.ProtoLens.fieldDefault,
         _MsgExecLegacyContent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgExecLegacyContent
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgExecLegacyContent
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
                                       "content"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"content") y x)
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
                                       "authority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"authority") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgExecLegacyContent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'content") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"authority") _x
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
instance Control.DeepSeq.NFData MsgExecLegacyContent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgExecLegacyContent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgExecLegacyContent'content x__)
                (Control.DeepSeq.deepseq (_MsgExecLegacyContent'authority x__) ()))
{- | Fields :
      -}
data MsgExecLegacyContentResponse
  = MsgExecLegacyContentResponse'_constructor {_MsgExecLegacyContentResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgExecLegacyContentResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgExecLegacyContentResponse where
  messageName _
    = Data.Text.pack "cosmos.gov.v1.MsgExecLegacyContentResponse"
  packedMessageDescriptor _
    = "\n\
      \\FSMsgExecLegacyContentResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgExecLegacyContentResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgExecLegacyContentResponse'_unknownFields = y__})
  defMessage
    = MsgExecLegacyContentResponse'_constructor
        {_MsgExecLegacyContentResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgExecLegacyContentResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgExecLegacyContentResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgExecLegacyContentResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgExecLegacyContentResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgExecLegacyContentResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.messages' @:: Lens' MsgSubmitProposal [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.vec'messages' @:: Lens' MsgSubmitProposal (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.initialDeposit' @:: Lens' MsgSubmitProposal [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.vec'initialDeposit' @:: Lens' MsgSubmitProposal (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.proposer' @:: Lens' MsgSubmitProposal Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.metadata' @:: Lens' MsgSubmitProposal Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.title' @:: Lens' MsgSubmitProposal Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.summary' @:: Lens' MsgSubmitProposal Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.expedited' @:: Lens' MsgSubmitProposal Prelude.Bool@ -}
data MsgSubmitProposal
  = MsgSubmitProposal'_constructor {_MsgSubmitProposal'messages :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                                    _MsgSubmitProposal'initialDeposit :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                    _MsgSubmitProposal'proposer :: !Data.Text.Text,
                                    _MsgSubmitProposal'metadata :: !Data.Text.Text,
                                    _MsgSubmitProposal'title :: !Data.Text.Text,
                                    _MsgSubmitProposal'summary :: !Data.Text.Text,
                                    _MsgSubmitProposal'expedited :: !Prelude.Bool,
                                    _MsgSubmitProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSubmitProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "messages" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'messages
           (\ x__ y__ -> x__ {_MsgSubmitProposal'messages = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "vec'messages" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'messages
           (\ x__ y__ -> x__ {_MsgSubmitProposal'messages = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "initialDeposit" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'initialDeposit
           (\ x__ y__ -> x__ {_MsgSubmitProposal'initialDeposit = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "vec'initialDeposit" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'initialDeposit
           (\ x__ y__ -> x__ {_MsgSubmitProposal'initialDeposit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "proposer" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'proposer
           (\ x__ y__ -> x__ {_MsgSubmitProposal'proposer = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'metadata
           (\ x__ y__ -> x__ {_MsgSubmitProposal'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "title" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'title
           (\ x__ y__ -> x__ {_MsgSubmitProposal'title = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "summary" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'summary
           (\ x__ y__ -> x__ {_MsgSubmitProposal'summary = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "expedited" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'expedited
           (\ x__ y__ -> x__ {_MsgSubmitProposal'expedited = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgSubmitProposal where
  messageName _ = Data.Text.pack "cosmos.gov.v1.MsgSubmitProposal"
  packedMessageDescriptor _
    = "\n\
      \\DC1MsgSubmitProposal\DC20\n\
      \\bmessages\CAN\SOH \ETX(\v2\DC4.google.protobuf.AnyR\bmessages\DC2M\n\
      \\SIinitial_deposit\CAN\STX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\SOinitialDepositB\t\200\222\US\NUL\168\231\176*\SOH\DC24\n\
      \\bproposer\CAN\ETX \SOH(\tR\bproposerB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
      \\bmetadata\CAN\EOT \SOH(\tR\bmetadata\DC2\DC4\n\
      \\ENQtitle\CAN\ENQ \SOH(\tR\ENQtitle\DC2\CAN\n\
      \\asummary\CAN\ACK \SOH(\tR\asummary\DC2\FS\n\
      \\texpedited\CAN\a \SOH(\bR\texpedited:1\130\231\176*\bproposer\138\231\176*\UScosmos-sdk/v1/MsgSubmitProposal"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        messages__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "messages"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"messages")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitProposal
        initialDeposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_deposit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"initialDeposit")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitProposal
        proposer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposer"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposer")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitProposal
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitProposal
        title__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "title"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"title")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitProposal
        summary__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "summary"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"summary")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitProposal
        expedited__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expedited"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"expedited")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitProposal
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, messages__field_descriptor),
           (Data.ProtoLens.Tag 2, initialDeposit__field_descriptor),
           (Data.ProtoLens.Tag 3, proposer__field_descriptor),
           (Data.ProtoLens.Tag 4, metadata__field_descriptor),
           (Data.ProtoLens.Tag 5, title__field_descriptor),
           (Data.ProtoLens.Tag 6, summary__field_descriptor),
           (Data.ProtoLens.Tag 7, expedited__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSubmitProposal'_unknownFields
        (\ x__ y__ -> x__ {_MsgSubmitProposal'_unknownFields = y__})
  defMessage
    = MsgSubmitProposal'_constructor
        {_MsgSubmitProposal'messages = Data.Vector.Generic.empty,
         _MsgSubmitProposal'initialDeposit = Data.Vector.Generic.empty,
         _MsgSubmitProposal'proposer = Data.ProtoLens.fieldDefault,
         _MsgSubmitProposal'metadata = Data.ProtoLens.fieldDefault,
         _MsgSubmitProposal'title = Data.ProtoLens.fieldDefault,
         _MsgSubmitProposal'summary = Data.ProtoLens.fieldDefault,
         _MsgSubmitProposal'expedited = Data.ProtoLens.fieldDefault,
         _MsgSubmitProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSubmitProposal
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
                -> Data.ProtoLens.Encoding.Bytes.Parser MsgSubmitProposal
        loop x mutable'initialDeposit mutable'messages
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'initialDeposit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'initialDeposit)
                      frozen'messages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'messages)
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
                              (Data.ProtoLens.Field.field @"vec'initialDeposit")
                              frozen'initialDeposit
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'messages") frozen'messages x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "messages"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'messages y)
                                loop x mutable'initialDeposit v
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "initial_deposit"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'initialDeposit y)
                                loop x v mutable'messages
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
                                       "proposer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposer") y x)
                                  mutable'initialDeposit mutable'messages
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
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                                  mutable'initialDeposit mutable'messages
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
                                       "title"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"title") y x)
                                  mutable'initialDeposit mutable'messages
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
                                       "summary"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"summary") y x)
                                  mutable'initialDeposit mutable'messages
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "expedited"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"expedited") y x)
                                  mutable'initialDeposit mutable'messages
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'initialDeposit mutable'messages
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'initialDeposit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              mutable'messages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'initialDeposit mutable'messages)
          "MsgSubmitProposal"
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
                   (Data.ProtoLens.Field.field @"vec'messages") _x))
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
                      (Data.ProtoLens.Field.field @"vec'initialDeposit") _x))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"proposer") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x
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
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"title") _x
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
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"summary") _x
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
                                    = Lens.Family2.view (Data.ProtoLens.Field.field @"expedited") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (\ b -> if b then 1 else 0) _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData MsgSubmitProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSubmitProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgSubmitProposal'messages x__)
                (Control.DeepSeq.deepseq
                   (_MsgSubmitProposal'initialDeposit x__)
                   (Control.DeepSeq.deepseq
                      (_MsgSubmitProposal'proposer x__)
                      (Control.DeepSeq.deepseq
                         (_MsgSubmitProposal'metadata x__)
                         (Control.DeepSeq.deepseq
                            (_MsgSubmitProposal'title x__)
                            (Control.DeepSeq.deepseq
                               (_MsgSubmitProposal'summary x__)
                               (Control.DeepSeq.deepseq
                                  (_MsgSubmitProposal'expedited x__) ())))))))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.proposalId' @:: Lens' MsgSubmitProposalResponse Data.Word.Word64@ -}
data MsgSubmitProposalResponse
  = MsgSubmitProposalResponse'_constructor {_MsgSubmitProposalResponse'proposalId :: !Data.Word.Word64,
                                            _MsgSubmitProposalResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSubmitProposalResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgSubmitProposalResponse "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposalResponse'proposalId
           (\ x__ y__ -> x__ {_MsgSubmitProposalResponse'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgSubmitProposalResponse where
  messageName _
    = Data.Text.pack "cosmos.gov.v1.MsgSubmitProposalResponse"
  packedMessageDescriptor _
    = "\n\
      \\EMMsgSubmitProposalResponse\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId"
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
              Data.ProtoLens.FieldDescriptor MsgSubmitProposalResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSubmitProposalResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgSubmitProposalResponse'_unknownFields = y__})
  defMessage
    = MsgSubmitProposalResponse'_constructor
        {_MsgSubmitProposalResponse'proposalId = Data.ProtoLens.fieldDefault,
         _MsgSubmitProposalResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSubmitProposalResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgSubmitProposalResponse
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proposal_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposalId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgSubmitProposalResponse"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgSubmitProposalResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSubmitProposalResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgSubmitProposalResponse'proposalId x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.authority' @:: Lens' MsgUpdateParams Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.params' @:: Lens' MsgUpdateParams Proto.Cosmos.Gov.V1.Gov.Params@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.maybe'params' @:: Lens' MsgUpdateParams (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Params)@ -}
data MsgUpdateParams
  = MsgUpdateParams'_constructor {_MsgUpdateParams'authority :: !Data.Text.Text,
                                  _MsgUpdateParams'params :: !(Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Params),
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
instance Data.ProtoLens.Field.HasField MsgUpdateParams "params" Proto.Cosmos.Gov.V1.Gov.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgUpdateParams "maybe'params" (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateParams where
  messageName _ = Data.Text.pack "cosmos.gov.v1.MsgUpdateParams"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgUpdateParams\DC26\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC28\n\
      \\ACKparams\CAN\STX \SOH(\v2\NAK.cosmos.gov.v1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH:6\130\231\176*\tauthority\138\231\176*#cosmos-sdk/x/gov/v1/MsgUpdateParams"
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
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.Params)
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
    = Data.Text.pack "cosmos.gov.v1.MsgUpdateParamsResponse"
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
     
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.proposalId' @:: Lens' MsgVote Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.voter' @:: Lens' MsgVote Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.option' @:: Lens' MsgVote Proto.Cosmos.Gov.V1.Gov.VoteOption@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.metadata' @:: Lens' MsgVote Data.Text.Text@ -}
data MsgVote
  = MsgVote'_constructor {_MsgVote'proposalId :: !Data.Word.Word64,
                          _MsgVote'voter :: !Data.Text.Text,
                          _MsgVote'option :: !Proto.Cosmos.Gov.V1.Gov.VoteOption,
                          _MsgVote'metadata :: !Data.Text.Text,
                          _MsgVote'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgVote where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgVote "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVote'proposalId (\ x__ y__ -> x__ {_MsgVote'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgVote "voter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVote'voter (\ x__ y__ -> x__ {_MsgVote'voter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgVote "option" Proto.Cosmos.Gov.V1.Gov.VoteOption where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVote'option (\ x__ y__ -> x__ {_MsgVote'option = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgVote "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVote'metadata (\ x__ y__ -> x__ {_MsgVote'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgVote where
  messageName _ = Data.Text.pack "cosmos.gov.v1.MsgVote"
  packedMessageDescriptor _
    = "\n\
      \\aMsgVote\DC25\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalIdB\DC4\234\222\US\vproposal_id\168\231\176*\SOH\DC2.\n\
      \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC21\n\
      \\ACKoption\CAN\ETX \SOH(\SO2\EM.cosmos.gov.v1.VoteOptionR\ACKoption\DC2\SUB\n\
      \\bmetadata\CAN\EOT \SOH(\tR\bmetadata:$\130\231\176*\ENQvoter\138\231\176*\NAKcosmos-sdk/v1/MsgVote"
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
              Data.ProtoLens.FieldDescriptor MsgVote
        voter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"voter")) ::
              Data.ProtoLens.FieldDescriptor MsgVote
        option__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "option"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.VoteOption)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"option")) ::
              Data.ProtoLens.FieldDescriptor MsgVote
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor MsgVote
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, voter__field_descriptor),
           (Data.ProtoLens.Tag 3, option__field_descriptor),
           (Data.ProtoLens.Tag 4, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgVote'_unknownFields
        (\ x__ y__ -> x__ {_MsgVote'_unknownFields = y__})
  defMessage
    = MsgVote'_constructor
        {_MsgVote'proposalId = Data.ProtoLens.fieldDefault,
         _MsgVote'voter = Data.ProtoLens.fieldDefault,
         _MsgVote'option = Data.ProtoLens.fieldDefault,
         _MsgVote'metadata = Data.ProtoLens.fieldDefault,
         _MsgVote'_unknownFields = []}
  parseMessage
    = let
        loop :: MsgVote -> Data.ProtoLens.Encoding.Bytes.Parser MsgVote
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "proposal_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposalId") y x)
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
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"voter") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "option"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"option") y x)
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
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgVote"
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
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x
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
instance Control.DeepSeq.NFData MsgVote where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgVote'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgVote'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_MsgVote'voter x__)
                   (Control.DeepSeq.deepseq
                      (_MsgVote'option x__)
                      (Control.DeepSeq.deepseq (_MsgVote'metadata x__) ()))))
{- | Fields :
      -}
data MsgVoteResponse
  = MsgVoteResponse'_constructor {_MsgVoteResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgVoteResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgVoteResponse where
  messageName _ = Data.Text.pack "cosmos.gov.v1.MsgVoteResponse"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgVoteResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgVoteResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgVoteResponse'_unknownFields = y__})
  defMessage
    = MsgVoteResponse'_constructor
        {_MsgVoteResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgVoteResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgVoteResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgVoteResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgVoteResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_MsgVoteResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.proposalId' @:: Lens' MsgVoteWeighted Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.voter' @:: Lens' MsgVoteWeighted Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.options' @:: Lens' MsgVoteWeighted [Proto.Cosmos.Gov.V1.Gov.WeightedVoteOption]@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.vec'options' @:: Lens' MsgVoteWeighted (Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.WeightedVoteOption)@
         * 'Proto.Cosmos.Gov.V1.Tx_Fields.metadata' @:: Lens' MsgVoteWeighted Data.Text.Text@ -}
data MsgVoteWeighted
  = MsgVoteWeighted'_constructor {_MsgVoteWeighted'proposalId :: !Data.Word.Word64,
                                  _MsgVoteWeighted'voter :: !Data.Text.Text,
                                  _MsgVoteWeighted'options :: !(Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.WeightedVoteOption),
                                  _MsgVoteWeighted'metadata :: !Data.Text.Text,
                                  _MsgVoteWeighted'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgVoteWeighted where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgVoteWeighted "proposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVoteWeighted'proposalId
           (\ x__ y__ -> x__ {_MsgVoteWeighted'proposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgVoteWeighted "voter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVoteWeighted'voter
           (\ x__ y__ -> x__ {_MsgVoteWeighted'voter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgVoteWeighted "options" [Proto.Cosmos.Gov.V1.Gov.WeightedVoteOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVoteWeighted'options
           (\ x__ y__ -> x__ {_MsgVoteWeighted'options = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgVoteWeighted "vec'options" (Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.WeightedVoteOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVoteWeighted'options
           (\ x__ y__ -> x__ {_MsgVoteWeighted'options = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgVoteWeighted "metadata" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVoteWeighted'metadata
           (\ x__ y__ -> x__ {_MsgVoteWeighted'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgVoteWeighted where
  messageName _ = Data.Text.pack "cosmos.gov.v1.MsgVoteWeighted"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgVoteWeighted\DC25\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalIdB\DC4\234\222\US\vproposal_id\168\231\176*\SOH\DC2.\n\
      \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC2;\n\
      \\aoptions\CAN\ETX \ETX(\v2!.cosmos.gov.v1.WeightedVoteOptionR\aoptions\DC2\SUB\n\
      \\bmetadata\CAN\EOT \SOH(\tR\bmetadata:,\130\231\176*\ENQvoter\138\231\176*\GScosmos-sdk/v1/MsgVoteWeighted"
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
              Data.ProtoLens.FieldDescriptor MsgVoteWeighted
        voter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"voter")) ::
              Data.ProtoLens.FieldDescriptor MsgVoteWeighted
        options__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.WeightedVoteOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"options")) ::
              Data.ProtoLens.FieldDescriptor MsgVoteWeighted
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor MsgVoteWeighted
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, voter__field_descriptor),
           (Data.ProtoLens.Tag 3, options__field_descriptor),
           (Data.ProtoLens.Tag 4, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgVoteWeighted'_unknownFields
        (\ x__ y__ -> x__ {_MsgVoteWeighted'_unknownFields = y__})
  defMessage
    = MsgVoteWeighted'_constructor
        {_MsgVoteWeighted'proposalId = Data.ProtoLens.fieldDefault,
         _MsgVoteWeighted'voter = Data.ProtoLens.fieldDefault,
         _MsgVoteWeighted'options = Data.Vector.Generic.empty,
         _MsgVoteWeighted'metadata = Data.ProtoLens.fieldDefault,
         _MsgVoteWeighted'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgVoteWeighted
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Gov.V1.Gov.WeightedVoteOption
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgVoteWeighted
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
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "options"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'options y)
                                loop x v
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
          "MsgVoteWeighted"
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
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
instance Control.DeepSeq.NFData MsgVoteWeighted where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgVoteWeighted'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgVoteWeighted'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_MsgVoteWeighted'voter x__)
                   (Control.DeepSeq.deepseq
                      (_MsgVoteWeighted'options x__)
                      (Control.DeepSeq.deepseq (_MsgVoteWeighted'metadata x__) ()))))
{- | Fields :
      -}
data MsgVoteWeightedResponse
  = MsgVoteWeightedResponse'_constructor {_MsgVoteWeightedResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgVoteWeightedResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgVoteWeightedResponse where
  messageName _
    = Data.Text.pack "cosmos.gov.v1.MsgVoteWeightedResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgVoteWeightedResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgVoteWeightedResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgVoteWeightedResponse'_unknownFields = y__})
  defMessage
    = MsgVoteWeightedResponse'_constructor
        {_MsgVoteWeightedResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgVoteWeightedResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgVoteWeightedResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgVoteWeightedResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgVoteWeightedResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgVoteWeightedResponse'_unknownFields x__) ()
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "cosmos.gov.v1"
  type ServiceMethods Msg = '["cancelProposal",
                              "deposit",
                              "execLegacyContent",
                              "submitProposal",
                              "updateParams",
                              "vote",
                              "voteWeighted"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2\\\n\
      \\SOSubmitProposal\DC2 .cosmos.gov.v1.MsgSubmitProposal\SUB(.cosmos.gov.v1.MsgSubmitProposalResponse\DC2e\n\
      \\DC1ExecLegacyContent\DC2#.cosmos.gov.v1.MsgExecLegacyContent\SUB+.cosmos.gov.v1.MsgExecLegacyContentResponse\DC2>\n\
      \\EOTVote\DC2\SYN.cosmos.gov.v1.MsgVote\SUB\RS.cosmos.gov.v1.MsgVoteResponse\DC2V\n\
      \\fVoteWeighted\DC2\RS.cosmos.gov.v1.MsgVoteWeighted\SUB&.cosmos.gov.v1.MsgVoteWeightedResponse\DC2G\n\
      \\aDeposit\DC2\EM.cosmos.gov.v1.MsgDeposit\SUB!.cosmos.gov.v1.MsgDepositResponse\DC2V\n\
      \\fUpdateParams\DC2\RS.cosmos.gov.v1.MsgUpdateParams\SUB&.cosmos.gov.v1.MsgUpdateParamsResponse\DC2\\\n\
      \\SOCancelProposal\DC2 .cosmos.gov.v1.MsgCancelProposal\SUB(.cosmos.gov.v1.MsgCancelProposalResponse\SUB\ENQ\128\231\176*\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "submitProposal" where
  type MethodName Msg "submitProposal" = "SubmitProposal"
  type MethodInput Msg "submitProposal" = MsgSubmitProposal
  type MethodOutput Msg "submitProposal" = MsgSubmitProposalResponse
  type MethodStreamingType Msg "submitProposal" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "execLegacyContent" where
  type MethodName Msg "execLegacyContent" = "ExecLegacyContent"
  type MethodInput Msg "execLegacyContent" = MsgExecLegacyContent
  type MethodOutput Msg "execLegacyContent" = MsgExecLegacyContentResponse
  type MethodStreamingType Msg "execLegacyContent" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "vote" where
  type MethodName Msg "vote" = "Vote"
  type MethodInput Msg "vote" = MsgVote
  type MethodOutput Msg "vote" = MsgVoteResponse
  type MethodStreamingType Msg "vote" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "voteWeighted" where
  type MethodName Msg "voteWeighted" = "VoteWeighted"
  type MethodInput Msg "voteWeighted" = MsgVoteWeighted
  type MethodOutput Msg "voteWeighted" = MsgVoteWeightedResponse
  type MethodStreamingType Msg "voteWeighted" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "deposit" where
  type MethodName Msg "deposit" = "Deposit"
  type MethodInput Msg "deposit" = MsgDeposit
  type MethodOutput Msg "deposit" = MsgDepositResponse
  type MethodStreamingType Msg "deposit" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateParams" where
  type MethodName Msg "updateParams" = "UpdateParams"
  type MethodInput Msg "updateParams" = MsgUpdateParams
  type MethodOutput Msg "updateParams" = MsgUpdateParamsResponse
  type MethodStreamingType Msg "updateParams" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "cancelProposal" where
  type MethodName Msg "cancelProposal" = "CancelProposal"
  type MethodInput Msg "cancelProposal" = MsgCancelProposal
  type MethodOutput Msg "cancelProposal" = MsgCancelProposalResponse
  type MethodStreamingType Msg "cancelProposal" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\SYNcosmos/gov/v1/tx.proto\DC2\rcosmos.gov.v1\SUB\RScosmos/base/v1beta1/coin.proto\SUB\ETBcosmos/gov/v1/gov.proto\SUB\DC4gogoproto/gogo.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\EMgoogle/protobuf/any.proto\SUB\ETBcosmos/msg/v1/msg.proto\SUB\DC1amino/amino.proto\SUB\USgoogle/protobuf/timestamp.proto\"\231\STX\n\
    \\DC1MsgSubmitProposal\DC20\n\
    \\bmessages\CAN\SOH \ETX(\v2\DC4.google.protobuf.AnyR\bmessages\DC2M\n\
    \\SIinitial_deposit\CAN\STX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\SOinitialDepositB\t\200\222\US\NUL\168\231\176*\SOH\DC24\n\
    \\bproposer\CAN\ETX \SOH(\tR\bproposerB\CAN\210\180-\DC4cosmos.AddressString\DC2\SUB\n\
    \\bmetadata\CAN\EOT \SOH(\tR\bmetadata\DC2\DC4\n\
    \\ENQtitle\CAN\ENQ \SOH(\tR\ENQtitle\DC2\CAN\n\
    \\asummary\CAN\ACK \SOH(\tR\asummary\DC2\FS\n\
    \\texpedited\CAN\a \SOH(\bR\texpedited:1\130\231\176*\bproposer\138\231\176*\UScosmos-sdk/v1/MsgSubmitProposal\"<\n\
    \\EMMsgSubmitProposalResponse\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\"\187\SOH\n\
    \\DC4MsgExecLegacyContent\DC2N\n\
    \\acontent\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\acontentB\RS\202\180-\SUBcosmos.gov.v1beta1.Content\DC2\FS\n\
    \\tauthority\CAN\STX \SOH(\tR\tauthority:5\130\231\176*\tauthority\138\231\176*\"cosmos-sdk/v1/MsgExecLegacyContent\"\RS\n\
    \\FSMsgExecLegacyContentResponse\"\229\SOH\n\
    \\aMsgVote\DC25\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalIdB\DC4\234\222\US\vproposal_id\168\231\176*\SOH\DC2.\n\
    \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC21\n\
    \\ACKoption\CAN\ETX \SOH(\SO2\EM.cosmos.gov.v1.VoteOptionR\ACKoption\DC2\SUB\n\
    \\bmetadata\CAN\EOT \SOH(\tR\bmetadata:$\130\231\176*\ENQvoter\138\231\176*\NAKcosmos-sdk/v1/MsgVote\"\DC1\n\
    \\SIMsgVoteResponse\"\255\SOH\n\
    \\SIMsgVoteWeighted\DC25\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalIdB\DC4\234\222\US\vproposal_id\168\231\176*\SOH\DC2.\n\
    \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC2;\n\
    \\aoptions\CAN\ETX \ETX(\v2!.cosmos.gov.v1.WeightedVoteOptionR\aoptions\DC2\SUB\n\
    \\bmetadata\CAN\EOT \SOH(\tR\bmetadata:,\130\231\176*\ENQvoter\138\231\176*\GScosmos-sdk/v1/MsgVoteWeighted\"\EM\n\
    \\ETBMsgVoteWeightedResponse\"\230\SOH\n\
    \\n\
    \MsgDeposit\DC25\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalIdB\DC4\234\222\US\vproposal_id\168\231\176*\SOH\DC26\n\
    \\tdepositor\CAN\STX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString\DC2<\n\
    \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\t\200\222\US\NUL\168\231\176*\SOH:+\130\231\176*\tdepositor\138\231\176*\CANcosmos-sdk/v1/MsgDeposit\"\DC4\n\
    \\DC2MsgDepositResponse\"\187\SOH\n\
    \\SIMsgUpdateParams\DC26\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC28\n\
    \\ACKparams\CAN\STX \SOH(\v2\NAK.cosmos.gov.v1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH:6\130\231\176*\tauthority\138\231\176*#cosmos-sdk/x/gov/v1/MsgUpdateParams\"\EM\n\
    \\ETBMsgUpdateParamsResponse\"\138\SOH\n\
    \\DC1MsgCancelProposal\DC20\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalIdB\SI\234\222\US\vproposal_id\DC24\n\
    \\bproposer\CAN\STX \SOH(\tR\bproposerB\CAN\210\180-\DC4cosmos.AddressString:\r\130\231\176*\bproposer\"\193\SOH\n\
    \\EMMsgCancelProposalResponse\DC20\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalIdB\SI\234\222\US\vproposal_id\DC2I\n\
    \\rcanceled_time\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\fcanceledTimeB\b\200\222\US\NUL\144\223\US\SOH\DC2'\n\
    \\SIcanceled_height\CAN\ETX \SOH(\EOTR\SOcanceledHeight2\232\EOT\n\
    \\ETXMsg\DC2\\\n\
    \\SOSubmitProposal\DC2 .cosmos.gov.v1.MsgSubmitProposal\SUB(.cosmos.gov.v1.MsgSubmitProposalResponse\DC2e\n\
    \\DC1ExecLegacyContent\DC2#.cosmos.gov.v1.MsgExecLegacyContent\SUB+.cosmos.gov.v1.MsgExecLegacyContentResponse\DC2>\n\
    \\EOTVote\DC2\SYN.cosmos.gov.v1.MsgVote\SUB\RS.cosmos.gov.v1.MsgVoteResponse\DC2V\n\
    \\fVoteWeighted\DC2\RS.cosmos.gov.v1.MsgVoteWeighted\SUB&.cosmos.gov.v1.MsgVoteWeightedResponse\DC2G\n\
    \\aDeposit\DC2\EM.cosmos.gov.v1.MsgDeposit\SUB!.cosmos.gov.v1.MsgDepositResponse\DC2V\n\
    \\fUpdateParams\DC2\RS.cosmos.gov.v1.MsgUpdateParams\SUB&.cosmos.gov.v1.MsgUpdateParamsResponse\DC2\\\n\
    \\SOCancelProposal\DC2 .cosmos.gov.v1.MsgCancelProposal\SUB(.cosmos.gov.v1.MsgCancelProposalResponse\SUB\ENQ\128\231\176*\SOHB-Z+github.com/cosmos/cosmos-sdk/x/gov/types/v1J\248\&6\n\
    \\a\DC2\ENQ\SOH\NUL\204\SOH\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.46\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL!\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL\RS\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL#\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL!\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\n\
    \\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\v\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULB\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\r\NULB\n\
    \.\n\
    \\STX\ACK\NUL\DC2\EOT\DLE\NUL-\SOH\SUB\" Msg defines the gov Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\DLE\b\v\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\DC1\STX(\n\
    \\SO\n\
    \\a\ACK\NUL\ETX\240\140\166\ENQ\DC2\ETX\DC1\STX(\n\
    \Y\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DC4\STXL\SUBL SubmitProposal defines a method to create new proposal given the messages.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC4\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC4\NAK&\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC41J\n\
    \\132\SOH\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\CAN\STXU\SUBw ExecLegacyContent defines a Msg to be in included in a MsgSubmitProposal\n\
    \ to execute a legacy content-based proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\CAN\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\CAN\CAN,\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\CAN7S\n\
    \J\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX\ESC\STX.\SUB= Vote defines a method to add a vote on a specific proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\ESC\ACK\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\ESC\v\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\ESC\GS,\n\
    \[\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\ETX\RS\STXF\SUBN VoteWeighted defines a method to add a weighted vote on a specific proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\RS\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\RS\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\RS-D\n\
    \N\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\ETX!\STX7\SUBA Deposit defines a method to add deposit on a specific proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX!\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX!\SO\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX!#5\n\
    \\167\SOH\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\ETX'\STXF\SUB\153\SOH UpdateParams defines a governance operation for updating the x/gov module\n\
    \ parameters. The authority is defined in the keeper.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX'\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX'\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX'-D\n\
    \e\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\ETX,\STXL\SUBX CancelProposal defines a method to cancel governance proposal\n\
    \\n\
    \ Since: cosmos-sdk 0.50\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX,\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX,\NAK&\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX,1J\n\
    \m\n\
    \\STX\EOT\NUL\DC2\EOT1\NULO\SOH\SUBa MsgSubmitProposal defines an sdk.Msg type that supports submitting arbitrary\n\
    \ proposal Content.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX1\b\EM\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX2\STX-\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX2\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX3\STXD\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX3\STXD\n\
    \U\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX6\STX,\SUBH messages are the arbitrary messages to be executed if proposal passes.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX6\v\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX6\US'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX6*+\n\
    \]\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX9\STXv\SUBP initial_deposit is the deposit value that must be paid at proposal submission.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX9\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX9\v#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX9$3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX967\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX98u\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX99U\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX9Wt\n\
    \?\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX<\STXG\SUB2 proposer is the account address of the proposer.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX<\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX<\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX<\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX<\SYNF\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\202\214\ENQ\DC2\ETX<\ETBE\n\
    \K\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX?\STX\SYN\SUB> metadata is any arbitrary metadata attached to the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX?\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX?\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX?\DC4\NAK\n\
    \K\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXD\STX\DC3\SUB> title is the title of the proposal.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETXD\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXD\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXD\DC1\DC2\n\
    \N\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXI\STX\NAK\SUBA summary is the summary of the proposal\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETXI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXI\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXI\DC3\DC4\n\
    \]\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXN\STX\NAK\SUBP expedided defines if the proposal is expedited or not\n\
    \\n\
    \ Since: cosmos-sdk 0.50\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETXN\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXN\a\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXN\DC3\DC4\n\
    \U\n\
    \\STX\EOT\SOH\DC2\EOTR\NULU\SOH\SUBI MsgSubmitProposalResponse defines the Msg/SubmitProposal response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXR\b!\n\
    \A\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXT\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXT\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXT\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXT\ETB\CAN\n\
    \\162\SOH\n\
    \\STX\EOT\STX\DC2\EOTY\NULa\SOH\SUB\149\SOH MsgExecLegacyContent is used to wrap the legacy content field into a message.\n\
    \ This ensures backwards compatibility with v1beta1.MsgSubmitProposal.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXY\b\FS\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXZ\STX.\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETXZ\STX.\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX[\STXG\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETX[\STXG\n\
    \1\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX^\STXd\SUB$ content is the proposal's content.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX^\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX^\SYN\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX^ !\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX^\"c\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\201\214\ENQ\DC2\ETX^#b\n\
    \8\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX`\STX\ETB\SUB+ authority must be the gov module address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX`\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX`\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX`\NAK\SYN\n\
    \Z\n\
    \\STX\EOT\ETX\DC2\ETXd\NUL'\SUBO MsgExecLegacyContentResponse defines the Msg/ExecLegacyContent response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXd\b$\n\
    \7\n\
    \\STX\EOT\EOT\DC2\EOTg\NULv\SOH\SUB+ MsgVote defines a message to cast a vote.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXg\b\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXh\STX*\n\
    \\SI\n\
    \\b\EOT\EOT\a\240\140\166\ENQ\NUL\DC2\ETXh\STX*\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXi\STX:\n\
    \\SO\n\
    \\a\EOT\EOT\a\241\140\166\ENQ\DC2\ETXi\STX:\n\
    \A\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXl\STX^\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXl\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXl\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXl\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXl\EM]\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\237\251\ETX\DC2\ETXl\SUB=\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\NUL\b\245\140\166\ENQ\DC2\ETXl?\\\n\
    \;\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXo\STXD\SUB. voter is the voter address for the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXo\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXo\t\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXo\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ETXo\DC3C\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\202\214\ENQ\DC2\ETXo\DC4B\n\
    \.\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXr\STX\CAN\SUB! option defines the vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\ETXr\STX\f\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXr\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXr\SYN\ETB\n\
    \G\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETXu\STX\SYN\SUB: metadata is any arbitrary metadata attached to the Vote.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETXu\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETXu\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETXu\DC4\NAK\n\
    \@\n\
    \\STX\EOT\ENQ\DC2\ETXy\NUL\SUB\SUB5 MsgVoteResponse defines the Msg/Vote response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXy\b\ETB\n\
    \@\n\
    \\STX\EOT\ACK\DC2\ENQ|\NUL\139\SOH\SOH\SUB3 MsgVoteWeighted defines a message to cast a vote.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX|\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETX}\STX*\n\
    \\SI\n\
    \\b\EOT\ACK\a\240\140\166\ENQ\NUL\DC2\ETX}\STX*\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETX~\STXB\n\
    \\SO\n\
    \\a\EOT\ACK\a\241\140\166\ENQ\DC2\ETX~\STXB\n\
    \B\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\129\SOH\STX^\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\EOT\129\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\129\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\129\SOH\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\EOT\129\SOH\EM]\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\237\251\ETX\DC2\EOT\129\SOH\SUB=\n\
    \\DC1\n\
    \\t\EOT\ACK\STX\NUL\b\245\140\166\ENQ\DC2\EOT\129\SOH?\\\n\
    \<\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\132\SOH\STXD\SUB. voter is the voter address for the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\132\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\132\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\132\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\b\DC2\EOT\132\SOH\DC3C\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\SOH\b\202\214\ENQ\DC2\EOT\132\SOH\DC4B\n\
    \:\n\
    \\EOT\EOT\ACK\STX\STX\DC2\EOT\135\SOH\STX*\SUB, options defines the weighted vote options.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\EOT\135\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ACK\DC2\EOT\135\SOH\v\GS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\EOT\135\SOH\RS%\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\EOT\135\SOH()\n\
    \P\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\EOT\138\SOH\STX\SYN\SUBB metadata is any arbitrary metadata attached to the VoteWeighted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\EOT\138\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\EOT\138\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\EOT\138\SOH\DC4\NAK\n\
    \Q\n\
    \\STX\EOT\a\DC2\EOT\142\SOH\NUL\"\SUBE MsgVoteWeightedResponse defines the Msg/VoteWeighted response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\142\SOH\b\US\n\
    \Y\n\
    \\STX\EOT\b\DC2\ACK\145\SOH\NUL\157\SOH\SOH\SUBK MsgDeposit defines a message to submit a deposit to an existing proposal.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\145\SOH\b\DC2\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\146\SOH\STX.\n\
    \\DLE\n\
    \\b\EOT\b\a\240\140\166\ENQ\NUL\DC2\EOT\146\SOH\STX.\n\
    \\v\n\
    \\ETX\EOT\b\a\DC2\EOT\147\SOH\STX=\n\
    \\SI\n\
    \\a\EOT\b\a\241\140\166\ENQ\DC2\EOT\147\SOH\STX=\n\
    \B\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\150\SOH\STX^\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\EOT\150\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\150\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\150\SOH\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\150\SOH\EM]\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\237\251\ETX\DC2\EOT\150\SOH\SUB=\n\
    \\DC1\n\
    \\t\EOT\b\STX\NUL\b\245\140\166\ENQ\DC2\EOT\150\SOH?\\\n\
    \K\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\153\SOH\STXH\SUB= depositor defines the deposit addresses from the proposals.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\153\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\153\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\153\SOH\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\b\DC2\EOT\153\SOH\ETBG\n\
    \\DLE\n\
    \\b\EOT\b\STX\SOH\b\202\214\ENQ\DC2\EOT\153\SOH\CANF\n\
    \4\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\156\SOH\STXm\SUB& amount to be deposited by depositor.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\EOT\DC2\EOT\156\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ACK\DC2\EOT\156\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\156\SOH$*\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\156\SOH-.\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\b\DC2\EOT\156\SOH/l\n\
    \\DLE\n\
    \\b\EOT\b\STX\STX\b\233\251\ETX\DC2\EOT\156\SOH0L\n\
    \\DC1\n\
    \\t\EOT\b\STX\STX\b\245\140\166\ENQ\DC2\EOT\156\SOHNk\n\
    \G\n\
    \\STX\EOT\t\DC2\EOT\160\SOH\NUL\GS\SUB; MsgDepositResponse defines the Msg/Deposit response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\160\SOH\b\SUB\n\
    \^\n\
    \\STX\EOT\n\
    \\DC2\ACK\165\SOH\NUL\176\SOH\SOH\SUBP MsgUpdateParams is the Msg/UpdateParams request type.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\165\SOH\b\ETB\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\166\SOH\STX.\n\
    \\DLE\n\
    \\b\EOT\n\
    \\a\240\140\166\ENQ\NUL\DC2\EOT\166\SOH\STX.\n\
    \\v\n\
    \\ETX\EOT\n\
    \\a\DC2\EOT\167\SOH\STXH\n\
    \\SI\n\
    \\a\EOT\n\
    \\a\241\140\166\ENQ\DC2\EOT\167\SOH\STXH\n\
    \i\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\170\SOH\STXH\SUB[ authority is the address that controls the module (defaults to x/gov unless overwritten).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\170\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\170\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\170\SOH\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\b\DC2\EOT\170\SOH\ETBG\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\NUL\b\202\214\ENQ\DC2\EOT\170\SOH\CANF\n\
    \g\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\175\SOH\STXR\SUBY params defines the x/gov parameters to update.\n\
    \\n\
    \ NOTE: All parameters must be supplied.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ACK\DC2\EOT\175\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\175\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\175\SOH\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\b\DC2\EOT\175\SOH\DC4Q\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\SOH\b\233\251\ETX\DC2\EOT\175\SOH\NAK1\n\
    \\DC1\n\
    \\t\EOT\n\
    \\STX\SOH\b\245\140\166\ENQ\DC2\EOT\175\SOH3P\n\
    \\135\SOH\n\
    \\STX\EOT\v\DC2\EOT\182\SOH\NUL\"\SUB{ MsgUpdateParamsResponse defines the response structure for executing a\n\
    \ MsgUpdateParams message.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\182\SOH\b\US\n\
    \b\n\
    \\STX\EOT\f\DC2\ACK\187\SOH\NUL\192\SOH\SOH\SUBT MsgCancelProposal is the Msg/CancelProposal request type.\n\
    \\n\
    \ Since: cosmos-sdk 0.50\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\187\SOH\b\EM\n\
    \\v\n\
    \\ETX\EOT\f\a\DC2\EOT\188\SOH\STX-\n\
    \\DLE\n\
    \\b\EOT\f\a\240\140\166\ENQ\NUL\DC2\EOT\188\SOH\STX-\n\
    \\f\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\190\SOH\STX?\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\EOT\190\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\190\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\190\SOH\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\b\DC2\EOT\190\SOH\EM>\n\
    \\DLE\n\
    \\b\EOT\f\STX\NUL\b\237\251\ETX\DC2\EOT\190\SOH\SUB=\n\
    \\f\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\191\SOH\STXJ\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\EOT\191\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\191\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\191\SOH\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\b\DC2\EOT\191\SOH\EMI\n\
    \\DLE\n\
    \\b\EOT\f\STX\SOH\b\202\214\ENQ\DC2\EOT\191\SOH\SUBH\n\
    \\141\SOH\n\
    \\STX\EOT\r\DC2\ACK\198\SOH\NUL\204\SOH\SOH\SUB\DEL MsgCancelProposalResponse defines the response structure for executing a\n\
    \ MsgCancelProposal message.\n\
    \\n\
    \ Since: cosmos-sdk 0.50\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\198\SOH\b!\n\
    \\f\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\199\SOH\STX?\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\199\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\199\SOH\t\DC4\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\199\SOH\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\b\DC2\EOT\199\SOH\EM>\n\
    \\DLE\n\
    \\b\EOT\r\STX\NUL\b\237\251\ETX\DC2\EOT\199\SOH\SUB=\n\
    \D\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\201\SOH\STXi\SUB6 canceled_time is the time when proposal is canceled.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ACK\DC2\EOT\201\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\201\SOH\FS)\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\201\SOH,-\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\b\DC2\EOT\201\SOH.h\n\
    \\DLE\n\
    \\b\EOT\r\STX\SOH\b\242\251\ETX\DC2\EOT\201\SOH/I\n\
    \\DLE\n\
    \\b\EOT\r\STX\SOH\b\233\251\ETX\DC2\EOT\201\SOHKg\n\
    \[\n\
    \\EOT\EOT\r\STX\STX\DC2\EOT\203\SOH\STX\GS\SUBM canceled_height defines the block height at which the proposal is canceled.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ENQ\DC2\EOT\203\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\EOT\203\SOH\t\CAN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\EOT\203\SOH\ESC\FSb\ACKproto3"