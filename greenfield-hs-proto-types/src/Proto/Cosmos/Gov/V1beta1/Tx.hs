{- This file was auto-generated from cosmos/gov/v1beta1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Gov.V1beta1.Tx (
        Msg(..), MsgDeposit(), MsgDepositResponse(), MsgSubmitProposal(),
        MsgSubmitProposalResponse(), MsgVote(), MsgVoteResponse(),
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
import qualified Proto.Cosmos.Gov.V1beta1.Gov
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.proposalId' @:: Lens' MsgDeposit Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.depositor' @:: Lens' MsgDeposit Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.amount' @:: Lens' MsgDeposit [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.vec'amount' @:: Lens' MsgDeposit (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
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
  messageName _ = Data.Text.pack "cosmos.gov.v1beta1.MsgDeposit"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \MsgDeposit\DC25\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalIdB\DC4\234\222\US\vproposal_id\168\231\176*\SOH\DC26\n\
      \\tdepositor\CAN\STX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString\DC2y\n\
      \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:4\136\160\US\NUL\232\160\US\NUL\128\220 \NUL\130\231\176*\tdepositor\138\231\176*\NAKcosmos-sdk/MsgDeposit"
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
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.MsgDepositResponse"
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
     
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.content' @:: Lens' MsgSubmitProposal Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.maybe'content' @:: Lens' MsgSubmitProposal (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.initialDeposit' @:: Lens' MsgSubmitProposal [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.vec'initialDeposit' @:: Lens' MsgSubmitProposal (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.proposer' @:: Lens' MsgSubmitProposal Data.Text.Text@ -}
data MsgSubmitProposal
  = MsgSubmitProposal'_constructor {_MsgSubmitProposal'content :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                    _MsgSubmitProposal'initialDeposit :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                    _MsgSubmitProposal'proposer :: !Data.Text.Text,
                                    _MsgSubmitProposal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSubmitProposal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "content" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'content
           (\ x__ y__ -> x__ {_MsgSubmitProposal'content = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgSubmitProposal "maybe'content" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitProposal'content
           (\ x__ y__ -> x__ {_MsgSubmitProposal'content = y__}))
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
instance Data.ProtoLens.Message MsgSubmitProposal where
  messageName _
    = Data.Text.pack "cosmos.gov.v1beta1.MsgSubmitProposal"
  packedMessageDescriptor _
    = "\n\
      \\DC1MsgSubmitProposal\DC2N\n\
      \\acontent\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\acontentB\RS\202\180-\SUBcosmos.gov.v1beta1.Content\DC2\138\SOH\n\
      \\SIinitial_deposit\CAN\STX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\SOinitialDepositBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC24\n\
      \\bproposer\CAN\ETX \SOH(\tR\bproposerB\CAN\210\180-\DC4cosmos.AddressString:6\136\160\US\NUL\232\160\US\NUL\130\231\176*\bproposer\138\231\176*\FScosmos-sdk/MsgSubmitProposal"
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
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, content__field_descriptor),
           (Data.ProtoLens.Tag 2, initialDeposit__field_descriptor),
           (Data.ProtoLens.Tag 3, proposer__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSubmitProposal'_unknownFields
        (\ x__ y__ -> x__ {_MsgSubmitProposal'_unknownFields = y__})
  defMessage
    = MsgSubmitProposal'_constructor
        {_MsgSubmitProposal'content = Prelude.Nothing,
         _MsgSubmitProposal'initialDeposit = Data.Vector.Generic.empty,
         _MsgSubmitProposal'proposer = Data.ProtoLens.fieldDefault,
         _MsgSubmitProposal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSubmitProposal
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgSubmitProposal
        loop x mutable'initialDeposit
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'initialDeposit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'initialDeposit)
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
                              frozen'initialDeposit x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "content"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"content") y x)
                                  mutable'initialDeposit
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
                                       "proposer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proposer") y x)
                                  mutable'initialDeposit
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'initialDeposit
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'initialDeposit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'initialDeposit)
          "MsgSubmitProposal"
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgSubmitProposal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSubmitProposal'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgSubmitProposal'content x__)
                (Control.DeepSeq.deepseq
                   (_MsgSubmitProposal'initialDeposit x__)
                   (Control.DeepSeq.deepseq (_MsgSubmitProposal'proposer x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.proposalId' @:: Lens' MsgSubmitProposalResponse Data.Word.Word64@ -}
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
    = Data.Text.pack "cosmos.gov.v1beta1.MsgSubmitProposalResponse"
  packedMessageDescriptor _
    = "\n\
      \\EMMsgSubmitProposalResponse\DC25\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalIdB\DC4\234\222\US\vproposal_id\168\231\176*\SOH"
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
     
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.proposalId' @:: Lens' MsgVote Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.voter' @:: Lens' MsgVote Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.option' @:: Lens' MsgVote Proto.Cosmos.Gov.V1beta1.Gov.VoteOption@ -}
data MsgVote
  = MsgVote'_constructor {_MsgVote'proposalId :: !Data.Word.Word64,
                          _MsgVote'voter :: !Data.Text.Text,
                          _MsgVote'option :: !Proto.Cosmos.Gov.V1beta1.Gov.VoteOption,
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
instance Data.ProtoLens.Field.HasField MsgVote "option" Proto.Cosmos.Gov.V1beta1.Gov.VoteOption where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVote'option (\ x__ y__ -> x__ {_MsgVote'option = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgVote where
  messageName _ = Data.Text.pack "cosmos.gov.v1beta1.MsgVote"
  packedMessageDescriptor _
    = "\n\
      \\aMsgVote\DC2\US\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalId\DC2.\n\
      \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC26\n\
      \\ACKoption\CAN\ETX \SOH(\SO2\RS.cosmos.gov.v1beta1.VoteOptionR\ACKoption:)\136\160\US\NUL\232\160\US\NUL\130\231\176*\ENQvoter\138\231\176*\DC2cosmos-sdk/MsgVote"
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
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.VoteOption)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"option")) ::
              Data.ProtoLens.FieldDescriptor MsgVote
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, voter__field_descriptor),
           (Data.ProtoLens.Tag 3, option__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgVote'_unknownFields
        (\ x__ y__ -> x__ {_MsgVote'_unknownFields = y__})
  defMessage
    = MsgVote'_constructor
        {_MsgVote'proposalId = Data.ProtoLens.fieldDefault,
         _MsgVote'voter = Data.ProtoLens.fieldDefault,
         _MsgVote'option = Data.ProtoLens.fieldDefault,
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgVote where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgVote'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgVote'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_MsgVote'voter x__)
                   (Control.DeepSeq.deepseq (_MsgVote'option x__) ())))
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
  messageName _ = Data.Text.pack "cosmos.gov.v1beta1.MsgVoteResponse"
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
     
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.proposalId' @:: Lens' MsgVoteWeighted Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.voter' @:: Lens' MsgVoteWeighted Data.Text.Text@
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.options' @:: Lens' MsgVoteWeighted [Proto.Cosmos.Gov.V1beta1.Gov.WeightedVoteOption]@
         * 'Proto.Cosmos.Gov.V1beta1.Tx_Fields.vec'options' @:: Lens' MsgVoteWeighted (Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.WeightedVoteOption)@ -}
data MsgVoteWeighted
  = MsgVoteWeighted'_constructor {_MsgVoteWeighted'proposalId :: !Data.Word.Word64,
                                  _MsgVoteWeighted'voter :: !Data.Text.Text,
                                  _MsgVoteWeighted'options :: !(Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.WeightedVoteOption),
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
instance Data.ProtoLens.Field.HasField MsgVoteWeighted "options" [Proto.Cosmos.Gov.V1beta1.Gov.WeightedVoteOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVoteWeighted'options
           (\ x__ y__ -> x__ {_MsgVoteWeighted'options = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgVoteWeighted "vec'options" (Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.WeightedVoteOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgVoteWeighted'options
           (\ x__ y__ -> x__ {_MsgVoteWeighted'options = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgVoteWeighted where
  messageName _ = Data.Text.pack "cosmos.gov.v1beta1.MsgVoteWeighted"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgVoteWeighted\DC25\n\
      \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
      \proposalIdB\DC4\234\222\US\vproposal_id\168\231\176*\SOH\DC2.\n\
      \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC2K\n\
      \\aoptions\CAN\ETX \ETX(\v2&.cosmos.gov.v1beta1.WeightedVoteOptionR\aoptionsB\t\200\222\US\NUL\168\231\176*\SOH:1\136\160\US\NUL\232\160\US\NUL\130\231\176*\ENQvoter\138\231\176*\SUBcosmos-sdk/MsgVoteWeighted"
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
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.WeightedVoteOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"options")) ::
              Data.ProtoLens.FieldDescriptor MsgVoteWeighted
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, voter__field_descriptor),
           (Data.ProtoLens.Tag 3, options__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgVoteWeighted'_unknownFields
        (\ x__ y__ -> x__ {_MsgVoteWeighted'_unknownFields = y__})
  defMessage
    = MsgVoteWeighted'_constructor
        {_MsgVoteWeighted'proposalId = Data.ProtoLens.fieldDefault,
         _MsgVoteWeighted'voter = Data.ProtoLens.fieldDefault,
         _MsgVoteWeighted'options = Data.Vector.Generic.empty,
         _MsgVoteWeighted'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgVoteWeighted
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Gov.V1beta1.Gov.WeightedVoteOption
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MsgVoteWeighted where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgVoteWeighted'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgVoteWeighted'proposalId x__)
                (Control.DeepSeq.deepseq
                   (_MsgVoteWeighted'voter x__)
                   (Control.DeepSeq.deepseq (_MsgVoteWeighted'options x__) ())))
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
    = Data.Text.pack "cosmos.gov.v1beta1.MsgVoteWeightedResponse"
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
  type ServicePackage Msg = "cosmos.gov.v1beta1"
  type ServiceMethods Msg = '["deposit",
                              "submitProposal",
                              "vote",
                              "voteWeighted"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2f\n\
      \\SOSubmitProposal\DC2%.cosmos.gov.v1beta1.MsgSubmitProposal\SUB-.cosmos.gov.v1beta1.MsgSubmitProposalResponse\DC2H\n\
      \\EOTVote\DC2\ESC.cosmos.gov.v1beta1.MsgVote\SUB#.cosmos.gov.v1beta1.MsgVoteResponse\DC2`\n\
      \\fVoteWeighted\DC2#.cosmos.gov.v1beta1.MsgVoteWeighted\SUB+.cosmos.gov.v1beta1.MsgVoteWeightedResponse\DC2Q\n\
      \\aDeposit\DC2\RS.cosmos.gov.v1beta1.MsgDeposit\SUB&.cosmos.gov.v1beta1.MsgDepositResponse\SUB\ENQ\128\231\176*\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "submitProposal" where
  type MethodName Msg "submitProposal" = "SubmitProposal"
  type MethodInput Msg "submitProposal" = MsgSubmitProposal
  type MethodOutput Msg "submitProposal" = MsgSubmitProposalResponse
  type MethodStreamingType Msg "submitProposal" = 'Data.ProtoLens.Service.Types.NonStreaming
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
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\ESCcosmos/gov/v1beta1/tx.proto\DC2\DC2cosmos.gov.v1beta1\SUB\RScosmos/base/v1beta1/coin.proto\SUB\FScosmos/gov/v1beta1/gov.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\EMgoogle/protobuf/any.proto\SUB\ETBcosmos/msg/v1/msg.proto\SUB\DC1amino/amino.proto\"\222\STX\n\
    \\DC1MsgSubmitProposal\DC2N\n\
    \\acontent\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\acontentB\RS\202\180-\SUBcosmos.gov.v1beta1.Content\DC2\138\SOH\n\
    \\SIinitial_deposit\CAN\STX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\SOinitialDepositBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC24\n\
    \\bproposer\CAN\ETX \SOH(\tR\bproposerB\CAN\210\180-\DC4cosmos.AddressString:6\136\160\US\NUL\232\160\US\NUL\130\231\176*\bproposer\138\231\176*\FScosmos-sdk/MsgSubmitProposal\"R\n\
    \\EMMsgSubmitProposalResponse\DC25\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalIdB\DC4\234\222\US\vproposal_id\168\231\176*\SOH\"\189\SOH\n\
    \\aMsgVote\DC2\US\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalId\DC2.\n\
    \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC26\n\
    \\ACKoption\CAN\ETX \SOH(\SO2\RS.cosmos.gov.v1beta1.VoteOptionR\ACKoption:)\136\160\US\NUL\232\160\US\NUL\130\231\176*\ENQvoter\138\231\176*\DC2cosmos-sdk/MsgVote\"\DC1\n\
    \\SIMsgVoteResponse\"\248\SOH\n\
    \\SIMsgVoteWeighted\DC25\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalIdB\DC4\234\222\US\vproposal_id\168\231\176*\SOH\DC2.\n\
    \\ENQvoter\CAN\STX \SOH(\tR\ENQvoterB\CAN\210\180-\DC4cosmos.AddressString\DC2K\n\
    \\aoptions\CAN\ETX \ETX(\v2&.cosmos.gov.v1beta1.WeightedVoteOptionR\aoptionsB\t\200\222\US\NUL\168\231\176*\SOH:1\136\160\US\NUL\232\160\US\NUL\130\231\176*\ENQvoter\138\231\176*\SUBcosmos-sdk/MsgVoteWeighted\"\EM\n\
    \\ETBMsgVoteWeightedResponse\"\172\STX\n\
    \\n\
    \MsgDeposit\DC25\n\
    \\vproposal_id\CAN\SOH \SOH(\EOTR\n\
    \proposalIdB\DC4\234\222\US\vproposal_id\168\231\176*\SOH\DC26\n\
    \\tdepositor\CAN\STX \SOH(\tR\tdepositorB\CAN\210\180-\DC4cosmos.AddressString\DC2y\n\
    \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:4\136\160\US\NUL\232\160\US\NUL\128\220 \NUL\130\231\176*\tdepositor\138\231\176*\NAKcosmos-sdk/MsgDeposit\"\DC4\n\
    \\DC2MsgDepositResponse2\243\STX\n\
    \\ETXMsg\DC2f\n\
    \\SOSubmitProposal\DC2%.cosmos.gov.v1beta1.MsgSubmitProposal\SUB-.cosmos.gov.v1beta1.MsgSubmitProposalResponse\DC2H\n\
    \\EOTVote\DC2\ESC.cosmos.gov.v1beta1.MsgVote\SUB#.cosmos.gov.v1beta1.MsgVoteResponse\DC2`\n\
    \\fVoteWeighted\DC2#.cosmos.gov.v1beta1.MsgVoteWeighted\SUB+.cosmos.gov.v1beta1.MsgVoteWeightedResponse\DC2Q\n\
    \\aDeposit\DC2\RS.cosmos.gov.v1beta1.MsgDeposit\SUB&.cosmos.gov.v1beta1.MsgDepositResponse\SUB\ENQ\128\231\176*\SOHB2Z0github.com/cosmos/cosmos-sdk/x/gov/types/v1beta1J\234\RS\n\
    \\a\DC2\ENQ\NUL\NUL\133\SOH\GS\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL\RS\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL!\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\t\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULG\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\v\NULG\n\
    \/\n\
    \\STX\ACK\NUL\DC2\EOT\SO\NUL\RS\SOH\SUB# Msg defines the bank Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\SO\b\v\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\SI\STX(\n\
    \\SO\n\
    \\a\ACK\NUL\ETX\240\140\166\ENQ\DC2\ETX\SI\STX(\n\
    \V\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DC2\STXL\SUBI SubmitProposal defines a method to create new proposal given a content.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC2\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC2\NAK&\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC21J\n\
    \J\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\NAK\STX.\SUB= Vote defines a method to add a vote on a specific proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\NAK\ACK\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\NAK\v\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\NAK\GS,\n\
    \t\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX\SUB\STXF\SUBg VoteWeighted defines a method to add a weighted vote on a specific proposal.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\SUB\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\SUB\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\SUB-D\n\
    \N\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\ETX\GS\STX7\SUBA Deposit defines a method to add deposit on a specific proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\GS\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\GS\SO\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\GS#5\n\
    \m\n\
    \\STX\EOT\NUL\DC2\EOT\"\NUL6\SOH\SUBa MsgSubmitProposal defines an sdk.Msg type that supports submitting arbitrary\n\
    \ proposal Content.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\"\b\EM\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX#\STX-\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX#\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX$\STXA\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX$\STXA\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX&\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETX&\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX'\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\129\244\ETX\DC2\ETX'\STX-\n\
    \1\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX*\STXd\SUB$ content is the proposal's content.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX*\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX*\SYN\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX* !\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX*\"c\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\201\214\ENQ\DC2\ETX*#b\n\
    \^\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT-\STX2\EOT\SUBP initial_deposit is the deposit value that must be paid at proposal submission.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX-\v#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX-$3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX-67\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\EOT-82\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX.\EOT$\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX/\EOT#\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\243\140\166\ENQ\DC2\ETX0\EOT-\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\245\251\ETX\DC2\ETX1\EOTI\n\
    \?\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX5\STXG\SUB2 proposer is the account address of the proposer.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX5\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX5\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX5\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX5\SYNF\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\202\214\ENQ\DC2\ETX5\ETBE\n\
    \U\n\
    \\STX\EOT\SOH\DC2\EOT9\NUL<\SOH\SUBI MsgSubmitProposalResponse defines the Msg/SubmitProposal response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX9\b!\n\
    \A\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX;\STX^\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX;\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX;\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX;\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX;\EM]\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\237\251\ETX\DC2\ETX;\SUB=\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\NUL\b\245\140\166\ENQ\DC2\ETX;?\\\n\
    \7\n\
    \\STX\EOT\STX\DC2\EOT?\NULN\SOH\SUB+ MsgVote defines a message to cast a vote.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX?\b\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX@\STX*\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETX@\STX*\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXA\STX7\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETXA\STX7\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXC\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\141\244\ETX\DC2\ETXC\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXD\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\129\244\ETX\DC2\ETXD\STX-\n\
    \A\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXG\STX\EM\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXG\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXG\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXG\ETB\CAN\n\
    \;\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXJ\STXD\SUB. voter is the voter address for the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXJ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXJ\t\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXJ\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETXJ\DC3C\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\202\214\ENQ\DC2\ETXJ\DC4B\n\
    \.\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETXM\STX\CAN\SUB! option defines the vote option.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETXM\STX\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXM\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXM\SYN\ETB\n\
    \@\n\
    \\STX\EOT\ETX\DC2\ETXQ\NUL\SUB\SUB5 MsgVoteResponse defines the Msg/Vote response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXQ\b\ETB\n\
    \X\n\
    \\STX\EOT\EOT\DC2\EOTV\NULe\SOH\SUBL MsgVoteWeighted defines a message to cast a vote.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXV\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXW\STX*\n\
    \\SI\n\
    \\b\EOT\EOT\a\240\140\166\ENQ\NUL\DC2\ETXW\STX*\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXX\STX?\n\
    \\SO\n\
    \\a\EOT\EOT\a\241\140\166\ENQ\DC2\ETXX\STX?\n\
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
    \A\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX^\STX^\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX^\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX^\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX^\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETX^\EM]\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\237\251\ETX\DC2\ETX^\SUB=\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\NUL\b\245\140\166\ENQ\DC2\ETX^?\\\n\
    \;\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXa\STXD\SUB. voter is the voter address for the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXa\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXa\t\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXa\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ETXa\DC3C\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\202\214\ENQ\DC2\ETXa\DC4B\n\
    \9\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXd\STXh\SUB, options defines the weighted vote options.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETXd\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\ETXd\v\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXd\RS%\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXd()\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\b\DC2\ETXd*g\n\
    \\SI\n\
    \\b\EOT\EOT\STX\STX\b\233\251\ETX\DC2\ETXd+G\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\STX\b\245\140\166\ENQ\DC2\ETXdIf\n\
    \i\n\
    \\STX\EOT\ENQ\DC2\ETXj\NUL\"\SUB^ MsgVoteWeightedResponse defines the Msg/VoteWeighted response type.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXj\b\US\n\
    \X\n\
    \\STX\EOT\ACK\DC2\ENQm\NUL\130\SOH\SOH\SUBK MsgDeposit defines a message to submit a deposit to an existing proposal.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXm\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETXn\STX.\n\
    \\SI\n\
    \\b\EOT\ACK\a\240\140\166\ENQ\NUL\DC2\ETXn\STX.\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETXo\STX:\n\
    \\SO\n\
    \\a\EOT\ACK\a\241\140\166\ENQ\DC2\ETXo\STX:\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETXq\STX-\n\
    \\r\n\
    \\ACK\EOT\ACK\a\141\244\ETX\DC2\ETXq\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETXr\STX-\n\
    \\r\n\
    \\ACK\EOT\ACK\a\192\139\EOT\DC2\ETXr\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\a\DC2\ETXs\STX-\n\
    \\r\n\
    \\ACK\EOT\ACK\a\129\244\ETX\DC2\ETXs\STX-\n\
    \A\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXv\STX^\SUB4 proposal_id defines the unique id of the proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXv\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXv\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXv\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\ETXv\EM]\n\
    \\SI\n\
    \\b\EOT\ACK\STX\NUL\b\237\251\ETX\DC2\ETXv\SUB=\n\
    \\DLE\n\
    \\t\EOT\ACK\STX\NUL\b\245\140\166\ENQ\DC2\ETXv?\\\n\
    \J\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXy\STXH\SUB= depositor defines the deposit addresses from the proposals.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETXy\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXy\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXy\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\b\DC2\ETXy\ETBG\n\
    \\SI\n\
    \\b\EOT\ACK\STX\SOH\b\202\214\ENQ\DC2\ETXy\CANF\n\
    \5\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ENQ|\STX\129\SOH\EOT\SUB& amount to be deposited by depositor.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\ETX|\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ACK\DC2\ETX|\v#\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETX|$*\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETX|-.\n\
    \\SO\n\
    \\ENQ\EOT\ACK\STX\STX\b\DC2\ENQ|/\129\SOH\ETX\n\
    \\SI\n\
    \\b\EOT\ACK\STX\STX\b\233\251\ETX\DC2\ETX}\EOT$\n\
    \\DLE\n\
    \\t\EOT\ACK\STX\STX\b\245\140\166\ENQ\DC2\ETX~\EOT#\n\
    \\DLE\n\
    \\t\EOT\ACK\STX\STX\b\243\140\166\ENQ\DC2\ETX\DEL\EOT-\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\STX\b\245\251\ETX\DC2\EOT\128\SOH\EOTI\n\
    \G\n\
    \\STX\EOT\a\DC2\EOT\133\SOH\NUL\GS\SUB; MsgDepositResponse defines the Msg/Deposit response type.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\133\SOH\b\SUBb\ACKproto3"