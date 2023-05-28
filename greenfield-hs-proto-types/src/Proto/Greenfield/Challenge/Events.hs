{- This file was auto-generated from greenfield/challenge/events.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Challenge.Events (
        EventAttestChallenge(), EventStartChallenge()
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Greenfield.Challenge.Types
{- | Fields :
     
         * 'Proto.Greenfield.Challenge.Events_Fields.challengeId' @:: Lens' EventAttestChallenge Data.Word.Word64@
         * 'Proto.Greenfield.Challenge.Events_Fields.result' @:: Lens' EventAttestChallenge Proto.Greenfield.Challenge.Types.VoteResult@
         * 'Proto.Greenfield.Challenge.Events_Fields.spOperatorAddress' @:: Lens' EventAttestChallenge Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Events_Fields.slashAmount' @:: Lens' EventAttestChallenge Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Events_Fields.challengerAddress' @:: Lens' EventAttestChallenge Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Events_Fields.challengerRewardAmount' @:: Lens' EventAttestChallenge Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Events_Fields.submitterAddress' @:: Lens' EventAttestChallenge Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Events_Fields.submitterRewardAmount' @:: Lens' EventAttestChallenge Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Events_Fields.validatorRewardAmount' @:: Lens' EventAttestChallenge Data.Text.Text@ -}
data EventAttestChallenge
  = EventAttestChallenge'_constructor {_EventAttestChallenge'challengeId :: !Data.Word.Word64,
                                       _EventAttestChallenge'result :: !Proto.Greenfield.Challenge.Types.VoteResult,
                                       _EventAttestChallenge'spOperatorAddress :: !Data.Text.Text,
                                       _EventAttestChallenge'slashAmount :: !Data.Text.Text,
                                       _EventAttestChallenge'challengerAddress :: !Data.Text.Text,
                                       _EventAttestChallenge'challengerRewardAmount :: !Data.Text.Text,
                                       _EventAttestChallenge'submitterAddress :: !Data.Text.Text,
                                       _EventAttestChallenge'submitterRewardAmount :: !Data.Text.Text,
                                       _EventAttestChallenge'validatorRewardAmount :: !Data.Text.Text,
                                       _EventAttestChallenge'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventAttestChallenge where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventAttestChallenge "challengeId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventAttestChallenge'challengeId
           (\ x__ y__ -> x__ {_EventAttestChallenge'challengeId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventAttestChallenge "result" Proto.Greenfield.Challenge.Types.VoteResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventAttestChallenge'result
           (\ x__ y__ -> x__ {_EventAttestChallenge'result = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventAttestChallenge "spOperatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventAttestChallenge'spOperatorAddress
           (\ x__ y__ -> x__ {_EventAttestChallenge'spOperatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventAttestChallenge "slashAmount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventAttestChallenge'slashAmount
           (\ x__ y__ -> x__ {_EventAttestChallenge'slashAmount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventAttestChallenge "challengerAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventAttestChallenge'challengerAddress
           (\ x__ y__ -> x__ {_EventAttestChallenge'challengerAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventAttestChallenge "challengerRewardAmount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventAttestChallenge'challengerRewardAmount
           (\ x__ y__
              -> x__ {_EventAttestChallenge'challengerRewardAmount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventAttestChallenge "submitterAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventAttestChallenge'submitterAddress
           (\ x__ y__ -> x__ {_EventAttestChallenge'submitterAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventAttestChallenge "submitterRewardAmount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventAttestChallenge'submitterRewardAmount
           (\ x__ y__
              -> x__ {_EventAttestChallenge'submitterRewardAmount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventAttestChallenge "validatorRewardAmount" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventAttestChallenge'validatorRewardAmount
           (\ x__ y__
              -> x__ {_EventAttestChallenge'validatorRewardAmount = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventAttestChallenge where
  messageName _
    = Data.Text.pack "greenfield.challenge.EventAttestChallenge"
  packedMessageDescriptor _
    = "\n\
      \\DC4EventAttestChallenge\DC2!\n\
      \\fchallenge_id\CAN\SOH \SOH(\EOTR\vchallengeId\DC28\n\
      \\ACKresult\CAN\STX \SOH(\SO2 .greenfield.challenge.VoteResultR\ACKresult\DC2H\n\
      \\DC3sp_operator_address\CAN\ETX \SOH(\tR\DC1spOperatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2!\n\
      \\fslash_amount\CAN\EOT \SOH(\tR\vslashAmount\DC2G\n\
      \\DC2challenger_address\CAN\ENQ \SOH(\tR\DC1challengerAddressB\CAN\210\180-\DC4cosmos.AddressString\DC28\n\
      \\CANchallenger_reward_amount\CAN\ACK \SOH(\tR\SYNchallengerRewardAmount\DC2E\n\
      \\DC1submitter_address\CAN\a \SOH(\tR\DLEsubmitterAddressB\CAN\210\180-\DC4cosmos.AddressString\DC26\n\
      \\ETBsubmitter_reward_amount\CAN\b \SOH(\tR\NAKsubmitterRewardAmount\DC26\n\
      \\ETBvalidator_reward_amount\CAN\n\
      \ \SOH(\tR\NAKvalidatorRewardAmount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        challengeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "challenge_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"challengeId")) ::
              Data.ProtoLens.FieldDescriptor EventAttestChallenge
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Challenge.Types.VoteResult)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"result")) ::
              Data.ProtoLens.FieldDescriptor EventAttestChallenge
        spOperatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sp_operator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"spOperatorAddress")) ::
              Data.ProtoLens.FieldDescriptor EventAttestChallenge
        slashAmount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "slash_amount"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"slashAmount")) ::
              Data.ProtoLens.FieldDescriptor EventAttestChallenge
        challengerAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "challenger_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"challengerAddress")) ::
              Data.ProtoLens.FieldDescriptor EventAttestChallenge
        challengerRewardAmount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "challenger_reward_amount"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"challengerRewardAmount")) ::
              Data.ProtoLens.FieldDescriptor EventAttestChallenge
        submitterAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "submitter_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"submitterAddress")) ::
              Data.ProtoLens.FieldDescriptor EventAttestChallenge
        submitterRewardAmount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "submitter_reward_amount"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"submitterRewardAmount")) ::
              Data.ProtoLens.FieldDescriptor EventAttestChallenge
        validatorRewardAmount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_reward_amount"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorRewardAmount")) ::
              Data.ProtoLens.FieldDescriptor EventAttestChallenge
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, challengeId__field_descriptor),
           (Data.ProtoLens.Tag 2, result__field_descriptor),
           (Data.ProtoLens.Tag 3, spOperatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 4, slashAmount__field_descriptor),
           (Data.ProtoLens.Tag 5, challengerAddress__field_descriptor),
           (Data.ProtoLens.Tag 6, challengerRewardAmount__field_descriptor),
           (Data.ProtoLens.Tag 7, submitterAddress__field_descriptor),
           (Data.ProtoLens.Tag 8, submitterRewardAmount__field_descriptor),
           (Data.ProtoLens.Tag 10, validatorRewardAmount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventAttestChallenge'_unknownFields
        (\ x__ y__ -> x__ {_EventAttestChallenge'_unknownFields = y__})
  defMessage
    = EventAttestChallenge'_constructor
        {_EventAttestChallenge'challengeId = Data.ProtoLens.fieldDefault,
         _EventAttestChallenge'result = Data.ProtoLens.fieldDefault,
         _EventAttestChallenge'spOperatorAddress = Data.ProtoLens.fieldDefault,
         _EventAttestChallenge'slashAmount = Data.ProtoLens.fieldDefault,
         _EventAttestChallenge'challengerAddress = Data.ProtoLens.fieldDefault,
         _EventAttestChallenge'challengerRewardAmount = Data.ProtoLens.fieldDefault,
         _EventAttestChallenge'submitterAddress = Data.ProtoLens.fieldDefault,
         _EventAttestChallenge'submitterRewardAmount = Data.ProtoLens.fieldDefault,
         _EventAttestChallenge'validatorRewardAmount = Data.ProtoLens.fieldDefault,
         _EventAttestChallenge'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventAttestChallenge
          -> Data.ProtoLens.Encoding.Bytes.Parser EventAttestChallenge
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "challenge_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"challengeId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "result"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"result") y x)
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
                                       "sp_operator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"spOperatorAddress") y x)
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
                                       "slash_amount"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"slashAmount") y x)
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
                                       "challenger_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"challengerAddress") y x)
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
                                       "challenger_reward_amount"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"challengerRewardAmount") y x)
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
                                       "submitter_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"submitterAddress") y x)
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
                                       "submitter_reward_amount"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"submitterRewardAmount") y x)
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
                                       "validator_reward_amount"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorRewardAmount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventAttestChallenge"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"challengeId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"result") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"spOperatorAddress") _x
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"slashAmount") _x
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
                                  (Data.ProtoLens.Field.field @"challengerAddress") _x
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
                                     (Data.ProtoLens.Field.field @"challengerRewardAmount") _x
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
                                        (Data.ProtoLens.Field.field @"submitterAddress") _x
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
                                           (Data.ProtoLens.Field.field @"submitterRewardAmount") _x
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
                                              (Data.ProtoLens.Field.field @"validatorRewardAmount")
                                              _x
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
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData EventAttestChallenge where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventAttestChallenge'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventAttestChallenge'challengeId x__)
                (Control.DeepSeq.deepseq
                   (_EventAttestChallenge'result x__)
                   (Control.DeepSeq.deepseq
                      (_EventAttestChallenge'spOperatorAddress x__)
                      (Control.DeepSeq.deepseq
                         (_EventAttestChallenge'slashAmount x__)
                         (Control.DeepSeq.deepseq
                            (_EventAttestChallenge'challengerAddress x__)
                            (Control.DeepSeq.deepseq
                               (_EventAttestChallenge'challengerRewardAmount x__)
                               (Control.DeepSeq.deepseq
                                  (_EventAttestChallenge'submitterAddress x__)
                                  (Control.DeepSeq.deepseq
                                     (_EventAttestChallenge'submitterRewardAmount x__)
                                     (Control.DeepSeq.deepseq
                                        (_EventAttestChallenge'validatorRewardAmount x__)
                                        ())))))))))
{- | Fields :
     
         * 'Proto.Greenfield.Challenge.Events_Fields.challengeId' @:: Lens' EventStartChallenge Data.Word.Word64@
         * 'Proto.Greenfield.Challenge.Events_Fields.objectId' @:: Lens' EventStartChallenge Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Events_Fields.segmentIndex' @:: Lens' EventStartChallenge Data.Word.Word32@
         * 'Proto.Greenfield.Challenge.Events_Fields.spOperatorAddress' @:: Lens' EventStartChallenge Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Events_Fields.redundancyIndex' @:: Lens' EventStartChallenge Data.Int.Int32@
         * 'Proto.Greenfield.Challenge.Events_Fields.challengerAddress' @:: Lens' EventStartChallenge Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Events_Fields.expiredHeight' @:: Lens' EventStartChallenge Data.Word.Word64@ -}
data EventStartChallenge
  = EventStartChallenge'_constructor {_EventStartChallenge'challengeId :: !Data.Word.Word64,
                                      _EventStartChallenge'objectId :: !Data.Text.Text,
                                      _EventStartChallenge'segmentIndex :: !Data.Word.Word32,
                                      _EventStartChallenge'spOperatorAddress :: !Data.Text.Text,
                                      _EventStartChallenge'redundancyIndex :: !Data.Int.Int32,
                                      _EventStartChallenge'challengerAddress :: !Data.Text.Text,
                                      _EventStartChallenge'expiredHeight :: !Data.Word.Word64,
                                      _EventStartChallenge'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EventStartChallenge where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EventStartChallenge "challengeId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStartChallenge'challengeId
           (\ x__ y__ -> x__ {_EventStartChallenge'challengeId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventStartChallenge "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStartChallenge'objectId
           (\ x__ y__ -> x__ {_EventStartChallenge'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventStartChallenge "segmentIndex" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStartChallenge'segmentIndex
           (\ x__ y__ -> x__ {_EventStartChallenge'segmentIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventStartChallenge "spOperatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStartChallenge'spOperatorAddress
           (\ x__ y__ -> x__ {_EventStartChallenge'spOperatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventStartChallenge "redundancyIndex" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStartChallenge'redundancyIndex
           (\ x__ y__ -> x__ {_EventStartChallenge'redundancyIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventStartChallenge "challengerAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStartChallenge'challengerAddress
           (\ x__ y__ -> x__ {_EventStartChallenge'challengerAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField EventStartChallenge "expiredHeight" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _EventStartChallenge'expiredHeight
           (\ x__ y__ -> x__ {_EventStartChallenge'expiredHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Message EventStartChallenge where
  messageName _
    = Data.Text.pack "greenfield.challenge.EventStartChallenge"
  packedMessageDescriptor _
    = "\n\
      \\DC3EventStartChallenge\DC2!\n\
      \\fchallenge_id\CAN\SOH \SOH(\EOTR\vchallengeId\DC28\n\
      \\tobject_id\CAN\STX \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2#\n\
      \\rsegment_index\CAN\ETX \SOH(\rR\fsegmentIndex\DC2H\n\
      \\DC3sp_operator_address\CAN\EOT \SOH(\tR\DC1spOperatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2)\n\
      \\DLEredundancy_index\CAN\ENQ \SOH(\ENQR\SIredundancyIndex\DC2G\n\
      \\DC2challenger_address\CAN\ACK \SOH(\tR\DC1challengerAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2%\n\
      \\SOexpired_height\CAN\a \SOH(\EOTR\rexpiredHeight"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        challengeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "challenge_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"challengeId")) ::
              Data.ProtoLens.FieldDescriptor EventStartChallenge
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor EventStartChallenge
        segmentIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "segment_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"segmentIndex")) ::
              Data.ProtoLens.FieldDescriptor EventStartChallenge
        spOperatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sp_operator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"spOperatorAddress")) ::
              Data.ProtoLens.FieldDescriptor EventStartChallenge
        redundancyIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "redundancy_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"redundancyIndex")) ::
              Data.ProtoLens.FieldDescriptor EventStartChallenge
        challengerAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "challenger_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"challengerAddress")) ::
              Data.ProtoLens.FieldDescriptor EventStartChallenge
        expiredHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expired_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"expiredHeight")) ::
              Data.ProtoLens.FieldDescriptor EventStartChallenge
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, challengeId__field_descriptor),
           (Data.ProtoLens.Tag 2, objectId__field_descriptor),
           (Data.ProtoLens.Tag 3, segmentIndex__field_descriptor),
           (Data.ProtoLens.Tag 4, spOperatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 5, redundancyIndex__field_descriptor),
           (Data.ProtoLens.Tag 6, challengerAddress__field_descriptor),
           (Data.ProtoLens.Tag 7, expiredHeight__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EventStartChallenge'_unknownFields
        (\ x__ y__ -> x__ {_EventStartChallenge'_unknownFields = y__})
  defMessage
    = EventStartChallenge'_constructor
        {_EventStartChallenge'challengeId = Data.ProtoLens.fieldDefault,
         _EventStartChallenge'objectId = Data.ProtoLens.fieldDefault,
         _EventStartChallenge'segmentIndex = Data.ProtoLens.fieldDefault,
         _EventStartChallenge'spOperatorAddress = Data.ProtoLens.fieldDefault,
         _EventStartChallenge'redundancyIndex = Data.ProtoLens.fieldDefault,
         _EventStartChallenge'challengerAddress = Data.ProtoLens.fieldDefault,
         _EventStartChallenge'expiredHeight = Data.ProtoLens.fieldDefault,
         _EventStartChallenge'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EventStartChallenge
          -> Data.ProtoLens.Encoding.Bytes.Parser EventStartChallenge
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "challenge_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"challengeId") y x)
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
                                       "object_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectId") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "segment_index"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"segmentIndex") y x)
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
                                       "sp_operator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"spOperatorAddress") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "redundancy_index"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"redundancyIndex") y x)
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
                                       "challenger_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"challengerAddress") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "expired_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"expiredHeight") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EventStartChallenge"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"challengeId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"objectId") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"segmentIndex") _x
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
                               (Data.ProtoLens.Field.field @"spOperatorAddress") _x
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
                                  (Data.ProtoLens.Field.field @"redundancyIndex") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"challengerAddress") _x
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
                                        (Data.ProtoLens.Field.field @"expiredHeight") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData EventStartChallenge where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_EventStartChallenge'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_EventStartChallenge'challengeId x__)
                (Control.DeepSeq.deepseq
                   (_EventStartChallenge'objectId x__)
                   (Control.DeepSeq.deepseq
                      (_EventStartChallenge'segmentIndex x__)
                      (Control.DeepSeq.deepseq
                         (_EventStartChallenge'spOperatorAddress x__)
                         (Control.DeepSeq.deepseq
                            (_EventStartChallenge'redundancyIndex x__)
                            (Control.DeepSeq.deepseq
                               (_EventStartChallenge'challengerAddress x__)
                               (Control.DeepSeq.deepseq
                                  (_EventStartChallenge'expiredHeight x__) ())))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!greenfield/challenge/events.proto\DC2\DC4greenfield.challenge\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB greenfield/challenge/types.proto\"\252\STX\n\
    \\DC3EventStartChallenge\DC2!\n\
    \\fchallenge_id\CAN\SOH \SOH(\EOTR\vchallengeId\DC28\n\
    \\tobject_id\CAN\STX \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2#\n\
    \\rsegment_index\CAN\ETX \SOH(\rR\fsegmentIndex\DC2H\n\
    \\DC3sp_operator_address\CAN\EOT \SOH(\tR\DC1spOperatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2)\n\
    \\DLEredundancy_index\CAN\ENQ \SOH(\ENQR\SIredundancyIndex\DC2G\n\
    \\DC2challenger_address\CAN\ACK \SOH(\tR\DC1challengerAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2%\n\
    \\SOexpired_height\CAN\a \SOH(\EOTR\rexpiredHeight\"\154\EOT\n\
    \\DC4EventAttestChallenge\DC2!\n\
    \\fchallenge_id\CAN\SOH \SOH(\EOTR\vchallengeId\DC28\n\
    \\ACKresult\CAN\STX \SOH(\SO2 .greenfield.challenge.VoteResultR\ACKresult\DC2H\n\
    \\DC3sp_operator_address\CAN\ETX \SOH(\tR\DC1spOperatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2!\n\
    \\fslash_amount\CAN\EOT \SOH(\tR\vslashAmount\DC2G\n\
    \\DC2challenger_address\CAN\ENQ \SOH(\tR\DC1challengerAddressB\CAN\210\180-\DC4cosmos.AddressString\DC28\n\
    \\CANchallenger_reward_amount\CAN\ACK \SOH(\tR\SYNchallengerRewardAmount\DC2E\n\
    \\DC1submitter_address\CAN\a \SOH(\tR\DLEsubmitterAddressB\CAN\210\180-\DC4cosmos.AddressString\DC26\n\
    \\ETBsubmitter_reward_amount\CAN\b \SOH(\tR\NAKsubmitterRewardAmount\DC26\n\
    \\ETBvalidator_reward_amount\CAN\n\
    \ \SOH(\tR\NAKvalidatorRewardAmountB3Z1github.com/bnb-chain/greenfield/x/challenge/typesJ\149\DLE\n\
    \\ACK\DC2\EOT\NUL\NULA\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULH\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\a\NULH\n\
    \J\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL#\SOH\SUB> EventStartChallenge to indicate a challenge has bee created.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\ESC\n\
    \E\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\f\STX\SUB\SUB8 The id of challenge, which is generated by blockchain.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\f\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\f\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\f\CAN\EM\n\
    \7\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\SI\STX\DC3\EOT\SUB) The id of object info to be challenged.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SI\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SI\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\EOT\SI\ETB\DC3\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\DLE\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\235\251\ETX\DC2\ETX\DC1\EOT#\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\DC2\EOT \n\
    \:\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\SYN\STX\ESC\SUB- The segment/piece index of the object info.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\SYN\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\SYN\EM\SUB\n\
    \5\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\EM\STXR\SUB( The storage provider to be challenged.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\EM\t\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\EM\US \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX\EM!Q\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\202\214\ENQ\DC2\ETX\EM\"P\n\
    \U\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\FS\STX\GS\SUBH The redundancy index, which comes from the index of storage providers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\FS\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\FS\b\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\FS\ESC\FS\n\
    \8\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\US\STXQ\SUB+ The challenger who submits the challenge.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\US\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\US\RS\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\ETX\US P\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\202\214\ENQ\DC2\ETX\US!O\n\
    \>\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\"\STX\FS\SUB1 The challenge will be expired after this height\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\"\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\"\SUB\ESC\n\
    \M\n\
    \\STX\EOT\SOH\DC2\EOT&\NULA\SOH\SUBA EventAttestChallenge to indicate a challenge has been attested.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX&\b\FS\n\
    \#\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX(\STX\SUB\SUB\SYN The id of challenge.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX(\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX(\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX(\CAN\EM\n\
    \'\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX+\STX\CAN\SUB\SUB The result of challenge.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX+\STX\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX+\r\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX+\SYN\ETB\n\
    \4\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX.\STXR\SUB' The slashed storage provider address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX.\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX.\t\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX.\US \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\ETX.!Q\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\202\214\ENQ\DC2\ETX.\"P\n\
    \<\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX1\STX\SUB\SUB/ The slashed amount from the storage provider.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX1\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX1\CAN\EM\n\
    \)\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX4\STXQ\SUB\FS The address of challenger.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX4\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX4\RS\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\b\DC2\ETX4 P\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\202\214\ENQ\DC2\ETX4!O\n\
    \3\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX7\STX&\SUB& The reward amount to the challenger.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX7\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX7\t!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX7$%\n\
    \:\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX:\STXP\SUB- The submitter of the challenge attestation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ENQ\DC2\ETX:\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX:\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX:\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\b\DC2\ETX:\USO\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ACK\b\202\214\ENQ\DC2\ETX: N\n\
    \2\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETX=\STX%\SUB% The reward amount to the submitter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\ETX=\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETX=\t \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETX=#$\n\
    \;\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETX@\STX&\SUB. The reward amount to all current validators.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ENQ\DC2\ETX@\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETX@\t \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETX@#%b\ACKproto3"