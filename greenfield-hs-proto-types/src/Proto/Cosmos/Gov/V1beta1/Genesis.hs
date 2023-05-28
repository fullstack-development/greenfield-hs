{- This file was auto-generated from cosmos/gov/v1beta1/genesis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Gov.V1beta1.Genesis (
        GenesisState()
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
import qualified Proto.Cosmos.Gov.V1beta1.Gov
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1beta1.Genesis_Fields.startingProposalId' @:: Lens' GenesisState Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1beta1.Genesis_Fields.deposits' @:: Lens' GenesisState [Proto.Cosmos.Gov.V1beta1.Gov.Deposit]@
         * 'Proto.Cosmos.Gov.V1beta1.Genesis_Fields.vec'deposits' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Deposit)@
         * 'Proto.Cosmos.Gov.V1beta1.Genesis_Fields.votes' @:: Lens' GenesisState [Proto.Cosmos.Gov.V1beta1.Gov.Vote]@
         * 'Proto.Cosmos.Gov.V1beta1.Genesis_Fields.vec'votes' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Vote)@
         * 'Proto.Cosmos.Gov.V1beta1.Genesis_Fields.proposals' @:: Lens' GenesisState [Proto.Cosmos.Gov.V1beta1.Gov.Proposal]@
         * 'Proto.Cosmos.Gov.V1beta1.Genesis_Fields.vec'proposals' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Proposal)@
         * 'Proto.Cosmos.Gov.V1beta1.Genesis_Fields.depositParams' @:: Lens' GenesisState Proto.Cosmos.Gov.V1beta1.Gov.DepositParams@
         * 'Proto.Cosmos.Gov.V1beta1.Genesis_Fields.maybe'depositParams' @:: Lens' GenesisState (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.DepositParams)@
         * 'Proto.Cosmos.Gov.V1beta1.Genesis_Fields.votingParams' @:: Lens' GenesisState Proto.Cosmos.Gov.V1beta1.Gov.VotingParams@
         * 'Proto.Cosmos.Gov.V1beta1.Genesis_Fields.maybe'votingParams' @:: Lens' GenesisState (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.VotingParams)@
         * 'Proto.Cosmos.Gov.V1beta1.Genesis_Fields.tallyParams' @:: Lens' GenesisState Proto.Cosmos.Gov.V1beta1.Gov.TallyParams@
         * 'Proto.Cosmos.Gov.V1beta1.Genesis_Fields.maybe'tallyParams' @:: Lens' GenesisState (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.TallyParams)@ -}
data GenesisState
  = GenesisState'_constructor {_GenesisState'startingProposalId :: !Data.Word.Word64,
                               _GenesisState'deposits :: !(Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Deposit),
                               _GenesisState'votes :: !(Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Vote),
                               _GenesisState'proposals :: !(Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Proposal),
                               _GenesisState'depositParams :: !(Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.DepositParams),
                               _GenesisState'votingParams :: !(Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.VotingParams),
                               _GenesisState'tallyParams :: !(Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.TallyParams),
                               _GenesisState'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenesisState where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenesisState "startingProposalId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'startingProposalId
           (\ x__ y__ -> x__ {_GenesisState'startingProposalId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "deposits" [Proto.Cosmos.Gov.V1beta1.Gov.Deposit] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'deposits
           (\ x__ y__ -> x__ {_GenesisState'deposits = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'deposits" (Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Deposit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'deposits
           (\ x__ y__ -> x__ {_GenesisState'deposits = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "votes" [Proto.Cosmos.Gov.V1beta1.Gov.Vote] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'votes (\ x__ y__ -> x__ {_GenesisState'votes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'votes" (Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Vote) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'votes (\ x__ y__ -> x__ {_GenesisState'votes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "proposals" [Proto.Cosmos.Gov.V1beta1.Gov.Proposal] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'proposals
           (\ x__ y__ -> x__ {_GenesisState'proposals = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'proposals" (Data.Vector.Vector Proto.Cosmos.Gov.V1beta1.Gov.Proposal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'proposals
           (\ x__ y__ -> x__ {_GenesisState'proposals = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "depositParams" Proto.Cosmos.Gov.V1beta1.Gov.DepositParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'depositParams
           (\ x__ y__ -> x__ {_GenesisState'depositParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenesisState "maybe'depositParams" (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.DepositParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'depositParams
           (\ x__ y__ -> x__ {_GenesisState'depositParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "votingParams" Proto.Cosmos.Gov.V1beta1.Gov.VotingParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'votingParams
           (\ x__ y__ -> x__ {_GenesisState'votingParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenesisState "maybe'votingParams" (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.VotingParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'votingParams
           (\ x__ y__ -> x__ {_GenesisState'votingParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "tallyParams" Proto.Cosmos.Gov.V1beta1.Gov.TallyParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'tallyParams
           (\ x__ y__ -> x__ {_GenesisState'tallyParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenesisState "maybe'tallyParams" (Prelude.Maybe Proto.Cosmos.Gov.V1beta1.Gov.TallyParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'tallyParams
           (\ x__ y__ -> x__ {_GenesisState'tallyParams = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenesisState where
  messageName _ = Data.Text.pack "cosmos.gov.v1beta1.GenesisState"
  packedMessageDescriptor _
    = "\n\
      \\fGenesisState\DC20\n\
      \\DC4starting_proposal_id\CAN\SOH \SOH(\EOTR\DC2startingProposalId\DC2N\n\
      \\bdeposits\CAN\STX \ETX(\v2\ESC.cosmos.gov.v1beta1.DepositR\bdepositsB\NAK\200\222\US\NUL\170\223\US\bDeposits\168\231\176*\SOH\DC2B\n\
      \\ENQvotes\CAN\ETX \ETX(\v2\CAN.cosmos.gov.v1beta1.VoteR\ENQvotesB\DC2\200\222\US\NUL\170\223\US\ENQVotes\168\231\176*\SOH\DC2R\n\
      \\tproposals\CAN\EOT \ETX(\v2\FS.cosmos.gov.v1beta1.ProposalR\tproposalsB\SYN\200\222\US\NUL\170\223\US\tProposals\168\231\176*\SOH\DC2S\n\
      \\SOdeposit_params\CAN\ENQ \SOH(\v2!.cosmos.gov.v1beta1.DepositParamsR\rdepositParamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2P\n\
      \\rvoting_params\CAN\ACK \SOH(\v2 .cosmos.gov.v1beta1.VotingParamsR\fvotingParamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2M\n\
      \\ftally_params\CAN\a \SOH(\v2\US.cosmos.gov.v1beta1.TallyParamsR\vtallyParamsB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        startingProposalId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "starting_proposal_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"startingProposalId")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        deposits__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deposits"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.Deposit)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"deposits")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        votes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "votes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.Vote)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"votes")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        proposals__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposals"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.Proposal)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"proposals")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        depositParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deposit_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.DepositParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'depositParams")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        votingParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voting_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.VotingParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'votingParams")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        tallyParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tally_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1beta1.Gov.TallyParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tallyParams")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, startingProposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, deposits__field_descriptor),
           (Data.ProtoLens.Tag 3, votes__field_descriptor),
           (Data.ProtoLens.Tag 4, proposals__field_descriptor),
           (Data.ProtoLens.Tag 5, depositParams__field_descriptor),
           (Data.ProtoLens.Tag 6, votingParams__field_descriptor),
           (Data.ProtoLens.Tag 7, tallyParams__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenesisState'_unknownFields
        (\ x__ y__ -> x__ {_GenesisState'_unknownFields = y__})
  defMessage
    = GenesisState'_constructor
        {_GenesisState'startingProposalId = Data.ProtoLens.fieldDefault,
         _GenesisState'deposits = Data.Vector.Generic.empty,
         _GenesisState'votes = Data.Vector.Generic.empty,
         _GenesisState'proposals = Data.Vector.Generic.empty,
         _GenesisState'depositParams = Prelude.Nothing,
         _GenesisState'votingParams = Prelude.Nothing,
         _GenesisState'tallyParams = Prelude.Nothing,
         _GenesisState'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenesisState
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Gov.V1beta1.Gov.Deposit
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Gov.V1beta1.Gov.Proposal
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Gov.V1beta1.Gov.Vote
                   -> Data.ProtoLens.Encoding.Bytes.Parser GenesisState
        loop x mutable'deposits mutable'proposals mutable'votes
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'deposits <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'deposits)
                      frozen'proposals <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'proposals)
                      frozen'votes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'votes)
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
                              (Data.ProtoLens.Field.field @"vec'deposits") frozen'deposits
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'proposals") frozen'proposals
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'votes") frozen'votes x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "starting_proposal_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startingProposalId") y x)
                                  mutable'deposits mutable'proposals mutable'votes
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "deposits"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'deposits y)
                                loop x v mutable'proposals mutable'votes
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "votes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'votes y)
                                loop x mutable'deposits mutable'proposals v
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "proposals"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'proposals y)
                                loop x mutable'deposits v mutable'votes
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deposit_params"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"depositParams") y x)
                                  mutable'deposits mutable'proposals mutable'votes
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "voting_params"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"votingParams") y x)
                                  mutable'deposits mutable'proposals mutable'votes
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tally_params"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tallyParams") y x)
                                  mutable'deposits mutable'proposals mutable'votes
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'deposits mutable'proposals mutable'votes
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'deposits <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'proposals <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'votes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'deposits mutable'proposals
                mutable'votes)
          "GenesisState"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"startingProposalId") _x
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
                      (Data.ProtoLens.Field.field @"vec'deposits") _x))
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'votes") _x))
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
                            (Data.ProtoLens.Field.field @"vec'proposals") _x))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'depositParams") _x
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
                                   (Data.ProtoLens.Field.field @"maybe'votingParams") _x
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
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'tallyParams") _x
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
instance Control.DeepSeq.NFData GenesisState where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenesisState'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GenesisState'startingProposalId x__)
                (Control.DeepSeq.deepseq
                   (_GenesisState'deposits x__)
                   (Control.DeepSeq.deepseq
                      (_GenesisState'votes x__)
                      (Control.DeepSeq.deepseq
                         (_GenesisState'proposals x__)
                         (Control.DeepSeq.deepseq
                            (_GenesisState'depositParams x__)
                            (Control.DeepSeq.deepseq
                               (_GenesisState'votingParams x__)
                               (Control.DeepSeq.deepseq (_GenesisState'tallyParams x__) ())))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ cosmos/gov/v1beta1/genesis.proto\DC2\DC2cosmos.gov.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\FScosmos/gov/v1beta1/gov.proto\SUB\DC1amino/amino.proto\"\158\EOT\n\
    \\fGenesisState\DC20\n\
    \\DC4starting_proposal_id\CAN\SOH \SOH(\EOTR\DC2startingProposalId\DC2N\n\
    \\bdeposits\CAN\STX \ETX(\v2\ESC.cosmos.gov.v1beta1.DepositR\bdepositsB\NAK\200\222\US\NUL\170\223\US\bDeposits\168\231\176*\SOH\DC2B\n\
    \\ENQvotes\CAN\ETX \ETX(\v2\CAN.cosmos.gov.v1beta1.VoteR\ENQvotesB\DC2\200\222\US\NUL\170\223\US\ENQVotes\168\231\176*\SOH\DC2R\n\
    \\tproposals\CAN\EOT \ETX(\v2\FS.cosmos.gov.v1beta1.ProposalR\tproposalsB\SYN\200\222\US\NUL\170\223\US\tProposals\168\231\176*\SOH\DC2S\n\
    \\SOdeposit_params\CAN\ENQ \SOH(\v2!.cosmos.gov.v1beta1.DepositParamsR\rdepositParamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2P\n\
    \\rvoting_params\CAN\ACK \SOH(\v2 .cosmos.gov.v1beta1.VotingParamsR\fvotingParamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2M\n\
    \\ftally_params\CAN\a \SOH(\v2\US.cosmos.gov.v1beta1.TallyParamsR\vtallyParamsB\t\200\222\US\NUL\168\231\176*\SOHB2Z0github.com/cosmos/cosmos-sdk/x/gov/types/v1beta1J\189\n\
    \\n\
    \\ACK\DC2\EOT\NUL\NUL\GS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULG\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NULG\n\
    \B\n\
    \\STX\EOT\NUL\DC2\EOT\v\NUL\GS\SOH\SUB6 GenesisState defines the gov module's genesis state.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\v\b\DC4\n\
    \G\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\r\STX\"\SUB: starting_proposal_id is the ID of the starting proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\r\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\r\t\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\r !\n\
    \E\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\SI\STX\DLEk\SUB7 deposits defines all the deposits present at genesis.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\SI\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SI\DC3\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SI\RS\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\DLE\ACKj\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\245\251\ETX\DC2\ETX\DLE\a,\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\DLE.J\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX\DLELi\n\
    \?\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\DC2\STX\DC3h\SUB1 votes defines all the votes present at genesis.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\DC2\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC2\DLE\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC2\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX\DC3\ACKg\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\245\251\ETX\DC2\ETX\DC3\a)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX\DC3+G\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\245\140\166\ENQ\DC2\ETX\DC3If\n\
    \G\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\NAK\STX\SYNl\SUB9 proposals defines all the proposals present at genesis.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\NAK\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\NAK\DC4\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\NAK !\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX\SYN\ACKk\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\245\251\ETX\DC2\ETX\SYN\a-\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\233\251\ETX\DC2\ETX\SYN/K\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\ETX\b\245\140\166\ENQ\DC2\ETX\SYNMj\n\
    \G\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\CAN\STXa\SUB: params defines all the parameters of related to deposit.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\CAN\STX\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\CAN\DLE\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\CAN!\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX\CAN#`\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\233\251\ETX\DC2\ETX\CAN$@\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\EOT\b\245\140\166\ENQ\DC2\ETX\CANB_\n\
    \F\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\SUB\STX_\SUB9 params defines all the parameters of related to voting.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX\SUB\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\SUB\SI\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\SUB\US \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\ETX\SUB!^\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\233\251\ETX\DC2\ETX\SUB\">\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\ENQ\b\245\140\166\ENQ\DC2\ETX\SUB@]\n\
    \E\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\FS\STX]\SUB8 params defines all the parameters of related to tally.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX\FS\STX\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\FS\SO\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\FS\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\b\DC2\ETX\FS\US\\\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ACK\b\233\251\ETX\DC2\ETX\FS <\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\ACK\b\245\140\166\ENQ\DC2\ETX\FS>[b\ACKproto3"