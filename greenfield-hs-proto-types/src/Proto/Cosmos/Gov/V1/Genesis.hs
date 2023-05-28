{- This file was auto-generated from cosmos/gov/v1/genesis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Gov.V1.Genesis (
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
import qualified Proto.Cosmos.Gov.V1.Gov
{- | Fields :
     
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.startingProposalId' @:: Lens' GenesisState Data.Word.Word64@
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.deposits' @:: Lens' GenesisState [Proto.Cosmos.Gov.V1.Gov.Deposit]@
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.vec'deposits' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Deposit)@
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.votes' @:: Lens' GenesisState [Proto.Cosmos.Gov.V1.Gov.Vote]@
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.vec'votes' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Vote)@
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.proposals' @:: Lens' GenesisState [Proto.Cosmos.Gov.V1.Gov.Proposal]@
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.vec'proposals' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Proposal)@
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.depositParams' @:: Lens' GenesisState Proto.Cosmos.Gov.V1.Gov.DepositParams@
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.maybe'depositParams' @:: Lens' GenesisState (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.DepositParams)@
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.votingParams' @:: Lens' GenesisState Proto.Cosmos.Gov.V1.Gov.VotingParams@
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.maybe'votingParams' @:: Lens' GenesisState (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.VotingParams)@
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.tallyParams' @:: Lens' GenesisState Proto.Cosmos.Gov.V1.Gov.TallyParams@
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.maybe'tallyParams' @:: Lens' GenesisState (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.TallyParams)@
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.params' @:: Lens' GenesisState Proto.Cosmos.Gov.V1.Gov.Params@
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.maybe'params' @:: Lens' GenesisState (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Params)@
         * 'Proto.Cosmos.Gov.V1.Genesis_Fields.constitution' @:: Lens' GenesisState Data.Text.Text@ -}
data GenesisState
  = GenesisState'_constructor {_GenesisState'startingProposalId :: !Data.Word.Word64,
                               _GenesisState'deposits :: !(Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Deposit),
                               _GenesisState'votes :: !(Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Vote),
                               _GenesisState'proposals :: !(Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Proposal),
                               _GenesisState'depositParams :: !(Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.DepositParams),
                               _GenesisState'votingParams :: !(Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.VotingParams),
                               _GenesisState'tallyParams :: !(Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.TallyParams),
                               _GenesisState'params :: !(Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Params),
                               _GenesisState'constitution :: !Data.Text.Text,
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
instance Data.ProtoLens.Field.HasField GenesisState "deposits" [Proto.Cosmos.Gov.V1.Gov.Deposit] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'deposits
           (\ x__ y__ -> x__ {_GenesisState'deposits = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'deposits" (Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Deposit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'deposits
           (\ x__ y__ -> x__ {_GenesisState'deposits = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "votes" [Proto.Cosmos.Gov.V1.Gov.Vote] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'votes (\ x__ y__ -> x__ {_GenesisState'votes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'votes" (Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Vote) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'votes (\ x__ y__ -> x__ {_GenesisState'votes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "proposals" [Proto.Cosmos.Gov.V1.Gov.Proposal] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'proposals
           (\ x__ y__ -> x__ {_GenesisState'proposals = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'proposals" (Data.Vector.Vector Proto.Cosmos.Gov.V1.Gov.Proposal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'proposals
           (\ x__ y__ -> x__ {_GenesisState'proposals = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "depositParams" Proto.Cosmos.Gov.V1.Gov.DepositParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'depositParams
           (\ x__ y__ -> x__ {_GenesisState'depositParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenesisState "maybe'depositParams" (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.DepositParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'depositParams
           (\ x__ y__ -> x__ {_GenesisState'depositParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "votingParams" Proto.Cosmos.Gov.V1.Gov.VotingParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'votingParams
           (\ x__ y__ -> x__ {_GenesisState'votingParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenesisState "maybe'votingParams" (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.VotingParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'votingParams
           (\ x__ y__ -> x__ {_GenesisState'votingParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "tallyParams" Proto.Cosmos.Gov.V1.Gov.TallyParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'tallyParams
           (\ x__ y__ -> x__ {_GenesisState'tallyParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenesisState "maybe'tallyParams" (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.TallyParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'tallyParams
           (\ x__ y__ -> x__ {_GenesisState'tallyParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "params" Proto.Cosmos.Gov.V1.Gov.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'params
           (\ x__ y__ -> x__ {_GenesisState'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenesisState "maybe'params" (Prelude.Maybe Proto.Cosmos.Gov.V1.Gov.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'params
           (\ x__ y__ -> x__ {_GenesisState'params = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "constitution" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'constitution
           (\ x__ y__ -> x__ {_GenesisState'constitution = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenesisState where
  messageName _ = Data.Text.pack "cosmos.gov.v1.GenesisState"
  packedMessageDescriptor _
    = "\n\
      \\fGenesisState\DC20\n\
      \\DC4starting_proposal_id\CAN\SOH \SOH(\EOTR\DC2startingProposalId\DC22\n\
      \\bdeposits\CAN\STX \ETX(\v2\SYN.cosmos.gov.v1.DepositR\bdeposits\DC2)\n\
      \\ENQvotes\CAN\ETX \ETX(\v2\DC3.cosmos.gov.v1.VoteR\ENQvotes\DC25\n\
      \\tproposals\CAN\EOT \ETX(\v2\ETB.cosmos.gov.v1.ProposalR\tproposals\DC2G\n\
      \\SOdeposit_params\CAN\ENQ \SOH(\v2\FS.cosmos.gov.v1.DepositParamsR\rdepositParamsB\STX\CAN\SOH\DC2D\n\
      \\rvoting_params\CAN\ACK \SOH(\v2\ESC.cosmos.gov.v1.VotingParamsR\fvotingParamsB\STX\CAN\SOH\DC2A\n\
      \\ftally_params\CAN\a \SOH(\v2\SUB.cosmos.gov.v1.TallyParamsR\vtallyParamsB\STX\CAN\SOH\DC2-\n\
      \\ACKparams\CAN\b \SOH(\v2\NAK.cosmos.gov.v1.ParamsR\ACKparams\DC2\"\n\
      \\fconstitution\CAN\t \SOH(\tR\fconstitution"
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
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.Deposit)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"deposits")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        votes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "votes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.Vote)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"votes")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        proposals__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposals"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.Proposal)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"proposals")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        depositParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deposit_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.DepositParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'depositParams")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        votingParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voting_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.VotingParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'votingParams")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        tallyParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tally_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.TallyParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tallyParams")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Gov.V1.Gov.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        constitution__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "constitution"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"constitution")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, startingProposalId__field_descriptor),
           (Data.ProtoLens.Tag 2, deposits__field_descriptor),
           (Data.ProtoLens.Tag 3, votes__field_descriptor),
           (Data.ProtoLens.Tag 4, proposals__field_descriptor),
           (Data.ProtoLens.Tag 5, depositParams__field_descriptor),
           (Data.ProtoLens.Tag 6, votingParams__field_descriptor),
           (Data.ProtoLens.Tag 7, tallyParams__field_descriptor),
           (Data.ProtoLens.Tag 8, params__field_descriptor),
           (Data.ProtoLens.Tag 9, constitution__field_descriptor)]
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
         _GenesisState'params = Prelude.Nothing,
         _GenesisState'constitution = Data.ProtoLens.fieldDefault,
         _GenesisState'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenesisState
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Gov.V1.Gov.Deposit
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Gov.V1.Gov.Proposal
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Gov.V1.Gov.Vote
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
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "params"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"params") y x)
                                  mutable'deposits mutable'proposals mutable'votes
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
                                       "constitution"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"constitution") y x)
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
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'params") _x
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
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"constitution") _x
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
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
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
                               (Control.DeepSeq.deepseq
                                  (_GenesisState'tallyParams x__)
                                  (Control.DeepSeq.deepseq
                                     (_GenesisState'params x__)
                                     (Control.DeepSeq.deepseq
                                        (_GenesisState'constitution x__) ())))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\ESCcosmos/gov/v1/genesis.proto\DC2\rcosmos.gov.v1\SUB\ETBcosmos/gov/v1/gov.proto\"\251\ETX\n\
    \\fGenesisState\DC20\n\
    \\DC4starting_proposal_id\CAN\SOH \SOH(\EOTR\DC2startingProposalId\DC22\n\
    \\bdeposits\CAN\STX \ETX(\v2\SYN.cosmos.gov.v1.DepositR\bdeposits\DC2)\n\
    \\ENQvotes\CAN\ETX \ETX(\v2\DC3.cosmos.gov.v1.VoteR\ENQvotes\DC25\n\
    \\tproposals\CAN\EOT \ETX(\v2\ETB.cosmos.gov.v1.ProposalR\tproposals\DC2G\n\
    \\SOdeposit_params\CAN\ENQ \SOH(\v2\FS.cosmos.gov.v1.DepositParamsR\rdepositParamsB\STX\CAN\SOH\DC2D\n\
    \\rvoting_params\CAN\ACK \SOH(\v2\ESC.cosmos.gov.v1.VotingParamsR\fvotingParamsB\STX\CAN\SOH\DC2A\n\
    \\ftally_params\CAN\a \SOH(\v2\SUB.cosmos.gov.v1.TallyParamsR\vtallyParamsB\STX\CAN\SOH\DC2-\n\
    \\ACKparams\CAN\b \SOH(\v2\NAK.cosmos.gov.v1.ParamsR\ACKparams\DC2\"\n\
    \\fconstitution\CAN\t \SOH(\tR\fconstitutionB-Z+github.com/cosmos/cosmos-sdk/x/gov/types/v1J\213\r\n\
    \\ACK\DC2\EOT\SOH\NUL'\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.46\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ETX\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULB\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\a\NULB\n\
    \B\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL'\SOH\SUB6 GenesisState defines the gov module's genesis state.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\DC4\n\
    \G\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\f\STX\"\SUB: starting_proposal_id is the ID of the starting proposal.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\f\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\f\t\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\f !\n\
    \D\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SO\STX \SUB7 deposits defines all the deposits present at genesis.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\SO\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SO\DC3\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SO\RS\US\n\
    \>\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DLE\STX\SUB\SUB1 votes defines all the votes present at genesis.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\DLE\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DLE\DLE\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DLE\CAN\EM\n\
    \F\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DC2\STX\"\SUB9 proposals defines all the proposals present at genesis.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\DC2\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DC2\DC4\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DC2 !\n\
    \|\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\NAK\STX7\SUBo Deprecated: Prefer to use `params` instead.\n\
    \ deposit_params defines all the paramaters of related to deposit.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\NAK\STX\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\NAK\DLE\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\NAK!\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX\NAK#6\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\EOT\b\ETX\DC2\ETX\NAK$5\n\
    \z\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\CAN\STX5\SUBm Deprecated: Prefer to use `params` instead.\n\
    \ voting_params defines all the paramaters of related to voting.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX\CAN\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\CAN\SI\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\CAN\US \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\ETX\CAN!4\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\ENQ\b\ETX\DC2\ETX\CAN\"3\n\
    \x\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\ESC\STX3\SUBk Deprecated: Prefer to use `params` instead.\n\
    \ tally_params defines all the paramaters of related to tally.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX\ESC\STX\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\ESC\SO\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\ESC\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\b\DC2\ETX\ESC\US2\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\ACK\b\ETX\DC2\ETX\ESC 1\n\
    \Z\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX\US\STX\DC4\SUBM params defines all the paramaters of x/gov module.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX\US\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX\US\DC2\DC3\n\
    \\202\STX\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX&\STX\SUB\SUB\188\STX The constitution allows builders to lay a foundation and define purpose.\n\
    \ This is an immutable string set in genesis.\n\
    \ There are no amendments, to go outside of scope, just fork.\n\
    \ constitution is an immutable string in genesis for a chain builder to lay out their vision, ideas and ideals.\n\
    \\n\
    \ Since: cosmos-sdk 0.50\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETX&\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX&\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX&\CAN\EMb\ACKproto3"