{- This file was auto-generated from greenfield/challenge/params.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Challenge.Params (
        Params()
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
{- | Fields :
     
         * 'Proto.Greenfield.Challenge.Params_Fields.challengeCountPerBlock' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Greenfield.Challenge.Params_Fields.challengeKeepAlivePeriod' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Greenfield.Challenge.Params_Fields.slashCoolingOffPeriod' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Greenfield.Challenge.Params_Fields.slashAmountSizeRate' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Params_Fields.slashAmountMin' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Params_Fields.slashAmountMax' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Params_Fields.rewardValidatorRatio' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Params_Fields.rewardSubmitterRatio' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Params_Fields.rewardSubmitterThreshold' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Params_Fields.heartbeatInterval' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Greenfield.Challenge.Params_Fields.attestationInturnInterval' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Greenfield.Challenge.Params_Fields.attestationKeptCount' @:: Lens' Params Data.Word.Word64@ -}
data Params
  = Params'_constructor {_Params'challengeCountPerBlock :: !Data.Word.Word64,
                         _Params'challengeKeepAlivePeriod :: !Data.Word.Word64,
                         _Params'slashCoolingOffPeriod :: !Data.Word.Word64,
                         _Params'slashAmountSizeRate :: !Data.Text.Text,
                         _Params'slashAmountMin :: !Data.Text.Text,
                         _Params'slashAmountMax :: !Data.Text.Text,
                         _Params'rewardValidatorRatio :: !Data.Text.Text,
                         _Params'rewardSubmitterRatio :: !Data.Text.Text,
                         _Params'rewardSubmitterThreshold :: !Data.Text.Text,
                         _Params'heartbeatInterval :: !Data.Word.Word64,
                         _Params'attestationInturnInterval :: !Data.Word.Word64,
                         _Params'attestationKeptCount :: !Data.Word.Word64,
                         _Params'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Params where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Params "challengeCountPerBlock" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'challengeCountPerBlock
           (\ x__ y__ -> x__ {_Params'challengeCountPerBlock = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "challengeKeepAlivePeriod" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'challengeKeepAlivePeriod
           (\ x__ y__ -> x__ {_Params'challengeKeepAlivePeriod = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "slashCoolingOffPeriod" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'slashCoolingOffPeriod
           (\ x__ y__ -> x__ {_Params'slashCoolingOffPeriod = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "slashAmountSizeRate" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'slashAmountSizeRate
           (\ x__ y__ -> x__ {_Params'slashAmountSizeRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "slashAmountMin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'slashAmountMin
           (\ x__ y__ -> x__ {_Params'slashAmountMin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "slashAmountMax" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'slashAmountMax
           (\ x__ y__ -> x__ {_Params'slashAmountMax = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "rewardValidatorRatio" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'rewardValidatorRatio
           (\ x__ y__ -> x__ {_Params'rewardValidatorRatio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "rewardSubmitterRatio" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'rewardSubmitterRatio
           (\ x__ y__ -> x__ {_Params'rewardSubmitterRatio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "rewardSubmitterThreshold" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'rewardSubmitterThreshold
           (\ x__ y__ -> x__ {_Params'rewardSubmitterThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "heartbeatInterval" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'heartbeatInterval
           (\ x__ y__ -> x__ {_Params'heartbeatInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "attestationInturnInterval" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'attestationInturnInterval
           (\ x__ y__ -> x__ {_Params'attestationInturnInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "attestationKeptCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'attestationKeptCount
           (\ x__ y__ -> x__ {_Params'attestationKeptCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message Params where
  messageName _ = Data.Text.pack "greenfield.challenge.Params"
  packedMessageDescriptor _
    = "\n\
      \\ACKParams\DC2_\n\
      \\EMchallenge_count_per_block\CAN\SOH \SOH(\EOTR\SYNchallengeCountPerBlockB$\242\222\US yaml:\"challenge_count_per_block\"\DC2e\n\
      \\ESCchallenge_keep_alive_period\CAN\STX \SOH(\EOTR\CANchallengeKeepAlivePeriodB&\242\222\US\"yaml:\"challenge_keep_alive_period\"\DC2\\\n\
      \\CANslash_cooling_off_period\CAN\ETX \SOH(\EOTR\NAKslashCoolingOffPeriodB#\242\222\US\USyaml:\"slash_cooling_off_period\"\DC2\132\SOH\n\
      \\SYNslash_amount_size_rate\CAN\EOT \SOH(\tR\DC3slashAmountSizeRateBO\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\242\222\US\GSyaml:\"slash_amount_size_rate\"\DC2f\n\
      \\DLEslash_amount_min\CAN\ENQ \SOH(\tR\SOslashAmountMinB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2f\n\
      \\DLEslash_amount_max\CAN\ACK \SOH(\tR\SOslashAmountMaxB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2\133\SOH\n\
      \\SYNreward_validator_ratio\CAN\a \SOH(\tR\DC4rewardValidatorRatioBO\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\242\222\US\GSyaml:\"reward_validator_ratio\"\DC2\134\SOH\n\
      \\SYNreward_submitter_ratio\CAN\b \SOH(\tR\DC4rewardSubmitterRatioBP\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\242\222\US\RSyaml:\"reward_challenger_ratio\"\DC2z\n\
      \\SUBreward_submitter_threshold\CAN\t \SOH(\tR\CANrewardSubmitterThresholdB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2L\n\
      \\DC2heartbeat_interval\CAN\n\
      \ \SOH(\EOTR\DC1heartbeatIntervalB\GS\242\222\US\EMyaml:\"heartbeat_interval\"\DC2f\n\
      \\ESCattestation_inturn_interval\CAN\v \SOH(\EOTR\EMattestationInturnIntervalB&\242\222\US\"yaml:\"attestation_inturn_interval\"\DC2W\n\
      \\SYNattestation_kept_count\CAN\f \SOH(\EOTR\DC4attestationKeptCountB!\242\222\US\GSyaml:\"attestation_kept_count\":\EOT\152\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        challengeCountPerBlock__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "challenge_count_per_block"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"challengeCountPerBlock")) ::
              Data.ProtoLens.FieldDescriptor Params
        challengeKeepAlivePeriod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "challenge_keep_alive_period"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"challengeKeepAlivePeriod")) ::
              Data.ProtoLens.FieldDescriptor Params
        slashCoolingOffPeriod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "slash_cooling_off_period"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"slashCoolingOffPeriod")) ::
              Data.ProtoLens.FieldDescriptor Params
        slashAmountSizeRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "slash_amount_size_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"slashAmountSizeRate")) ::
              Data.ProtoLens.FieldDescriptor Params
        slashAmountMin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "slash_amount_min"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"slashAmountMin")) ::
              Data.ProtoLens.FieldDescriptor Params
        slashAmountMax__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "slash_amount_max"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"slashAmountMax")) ::
              Data.ProtoLens.FieldDescriptor Params
        rewardValidatorRatio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reward_validator_ratio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rewardValidatorRatio")) ::
              Data.ProtoLens.FieldDescriptor Params
        rewardSubmitterRatio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reward_submitter_ratio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rewardSubmitterRatio")) ::
              Data.ProtoLens.FieldDescriptor Params
        rewardSubmitterThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reward_submitter_threshold"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rewardSubmitterThreshold")) ::
              Data.ProtoLens.FieldDescriptor Params
        heartbeatInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heartbeat_interval"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"heartbeatInterval")) ::
              Data.ProtoLens.FieldDescriptor Params
        attestationInturnInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attestation_inturn_interval"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"attestationInturnInterval")) ::
              Data.ProtoLens.FieldDescriptor Params
        attestationKeptCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attestation_kept_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"attestationKeptCount")) ::
              Data.ProtoLens.FieldDescriptor Params
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, challengeCountPerBlock__field_descriptor),
           (Data.ProtoLens.Tag 2, challengeKeepAlivePeriod__field_descriptor),
           (Data.ProtoLens.Tag 3, slashCoolingOffPeriod__field_descriptor),
           (Data.ProtoLens.Tag 4, slashAmountSizeRate__field_descriptor),
           (Data.ProtoLens.Tag 5, slashAmountMin__field_descriptor),
           (Data.ProtoLens.Tag 6, slashAmountMax__field_descriptor),
           (Data.ProtoLens.Tag 7, rewardValidatorRatio__field_descriptor),
           (Data.ProtoLens.Tag 8, rewardSubmitterRatio__field_descriptor),
           (Data.ProtoLens.Tag 9, rewardSubmitterThreshold__field_descriptor),
           (Data.ProtoLens.Tag 10, heartbeatInterval__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            attestationInturnInterval__field_descriptor),
           (Data.ProtoLens.Tag 12, attestationKeptCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Params'_unknownFields
        (\ x__ y__ -> x__ {_Params'_unknownFields = y__})
  defMessage
    = Params'_constructor
        {_Params'challengeCountPerBlock = Data.ProtoLens.fieldDefault,
         _Params'challengeKeepAlivePeriod = Data.ProtoLens.fieldDefault,
         _Params'slashCoolingOffPeriod = Data.ProtoLens.fieldDefault,
         _Params'slashAmountSizeRate = Data.ProtoLens.fieldDefault,
         _Params'slashAmountMin = Data.ProtoLens.fieldDefault,
         _Params'slashAmountMax = Data.ProtoLens.fieldDefault,
         _Params'rewardValidatorRatio = Data.ProtoLens.fieldDefault,
         _Params'rewardSubmitterRatio = Data.ProtoLens.fieldDefault,
         _Params'rewardSubmitterThreshold = Data.ProtoLens.fieldDefault,
         _Params'heartbeatInterval = Data.ProtoLens.fieldDefault,
         _Params'attestationInturnInterval = Data.ProtoLens.fieldDefault,
         _Params'attestationKeptCount = Data.ProtoLens.fieldDefault,
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "challenge_count_per_block"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"challengeCountPerBlock") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "challenge_keep_alive_period"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"challengeKeepAlivePeriod") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "slash_cooling_off_period"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"slashCoolingOffPeriod") y x)
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
                                       "slash_amount_size_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"slashAmountSizeRate") y x)
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
                                       "slash_amount_min"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"slashAmountMin") y x)
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
                                       "slash_amount_max"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"slashAmountMax") y x)
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
                                       "reward_validator_ratio"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rewardValidatorRatio") y x)
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
                                       "reward_submitter_ratio"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rewardSubmitterRatio") y x)
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
                                       "reward_submitter_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rewardSubmitterThreshold") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "heartbeat_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"heartbeatInterval") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "attestation_inturn_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"attestationInturnInterval") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "attestation_kept_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"attestationKeptCount") y x)
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
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"challengeCountPerBlock") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"challengeKeepAlivePeriod") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"slashCoolingOffPeriod") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"slashAmountSizeRate") _x
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
                                  (Data.ProtoLens.Field.field @"slashAmountMin") _x
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
                                     (Data.ProtoLens.Field.field @"slashAmountMax") _x
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
                                        (Data.ProtoLens.Field.field @"rewardValidatorRatio") _x
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
                                           (Data.ProtoLens.Field.field @"rewardSubmitterRatio") _x
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
                                              (Data.ProtoLens.Field.field
                                                 @"rewardSubmitterThreshold")
                                              _x
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
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"heartbeatInterval")
                                                 _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"attestationInturnInterval")
                                                    _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"attestationKeptCount")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                 (Lens.Family2.view
                                                    Data.ProtoLens.unknownFields _x)))))))))))))
instance Control.DeepSeq.NFData Params where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Params'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Params'challengeCountPerBlock x__)
                (Control.DeepSeq.deepseq
                   (_Params'challengeKeepAlivePeriod x__)
                   (Control.DeepSeq.deepseq
                      (_Params'slashCoolingOffPeriod x__)
                      (Control.DeepSeq.deepseq
                         (_Params'slashAmountSizeRate x__)
                         (Control.DeepSeq.deepseq
                            (_Params'slashAmountMin x__)
                            (Control.DeepSeq.deepseq
                               (_Params'slashAmountMax x__)
                               (Control.DeepSeq.deepseq
                                  (_Params'rewardValidatorRatio x__)
                                  (Control.DeepSeq.deepseq
                                     (_Params'rewardSubmitterRatio x__)
                                     (Control.DeepSeq.deepseq
                                        (_Params'rewardSubmitterThreshold x__)
                                        (Control.DeepSeq.deepseq
                                           (_Params'heartbeatInterval x__)
                                           (Control.DeepSeq.deepseq
                                              (_Params'attestationInturnInterval x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Params'attestationKeptCount x__) ()))))))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!greenfield/challenge/params.proto\DC2\DC4greenfield.challenge\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\"\167\n\
    \\n\
    \\ACKParams\DC2_\n\
    \\EMchallenge_count_per_block\CAN\SOH \SOH(\EOTR\SYNchallengeCountPerBlockB$\242\222\US yaml:\"challenge_count_per_block\"\DC2e\n\
    \\ESCchallenge_keep_alive_period\CAN\STX \SOH(\EOTR\CANchallengeKeepAlivePeriodB&\242\222\US\"yaml:\"challenge_keep_alive_period\"\DC2\\\n\
    \\CANslash_cooling_off_period\CAN\ETX \SOH(\EOTR\NAKslashCoolingOffPeriodB#\242\222\US\USyaml:\"slash_cooling_off_period\"\DC2\132\SOH\n\
    \\SYNslash_amount_size_rate\CAN\EOT \SOH(\tR\DC3slashAmountSizeRateBO\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\242\222\US\GSyaml:\"slash_amount_size_rate\"\DC2f\n\
    \\DLEslash_amount_min\CAN\ENQ \SOH(\tR\SOslashAmountMinB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2f\n\
    \\DLEslash_amount_max\CAN\ACK \SOH(\tR\SOslashAmountMaxB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2\133\SOH\n\
    \\SYNreward_validator_ratio\CAN\a \SOH(\tR\DC4rewardValidatorRatioBO\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\242\222\US\GSyaml:\"reward_validator_ratio\"\DC2\134\SOH\n\
    \\SYNreward_submitter_ratio\CAN\b \SOH(\tR\DC4rewardSubmitterRatioBP\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\242\222\US\RSyaml:\"reward_challenger_ratio\"\DC2z\n\
    \\SUBreward_submitter_threshold\CAN\t \SOH(\tR\CANrewardSubmitterThresholdB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2L\n\
    \\DC2heartbeat_interval\CAN\n\
    \ \SOH(\EOTR\DC1heartbeatIntervalB\GS\242\222\US\EMyaml:\"heartbeat_interval\"\DC2f\n\
    \\ESCattestation_inturn_interval\CAN\v \SOH(\EOTR\EMattestationInturnIntervalB&\242\222\US\"yaml:\"attestation_inturn_interval\"\DC2W\n\
    \\SYNattestation_kept_count\CAN\f \SOH(\EOTR\DC4attestationKeptCountB!\242\222\US\GSyaml:\"attestation_kept_count\":\EOT\152\160\US\NULB3Z1github.com/bnb-chain/greenfield/x/challenge/typesJ\151\DC2\n\
    \\ACK\DC2\EOT\NUL\NULG\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NULH\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ACK\NULH\n\
    \;\n\
    \\STX\EOT\NUL\DC2\EOT\t\NULG\SOH\SUB/ Params defines the parameters for the module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\t\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\n\
    \\STX.\n\
    \\r\n\
    \\ACK\EOT\NUL\a\131\244\ETX\DC2\ETX\n\
    \\STX.\n\
    \n\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\r\STXe\SUBa Challenges which will be emitted in each block, including user submitted or randomly triggered.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\r\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\r\t\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\r%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\r'd\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\238\251\ETX\DC2\ETX\r(c\n\
    \k\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DLE\STXi\SUB^ Challenges will be expired after the period, including user submitted or randomly triggered.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DLE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DLE\t$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DLE'(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\DLE)h\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\238\251\ETX\DC2\ETX\DLE*g\n\
    \}\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DC3\STXc\SUBp The count of blocks to stand for the period in which the same storage and object info cannot be slashed again.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\DC3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DC3\t!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DC3$%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX\DC3&b\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\238\251\ETX\DC2\ETX\DC3'a\n\
    \q\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\SYN\STX\SUB\EOT\SUBc The slash coin amount will be calculated from the size of object info, and adjusted by this rate.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\SYN\t\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\SYN\"#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\EOT\SYN$\SUB\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\238\251\ETX\DC2\ETX\ETB\EOT<\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\235\251\ETX\DC2\ETX\CAN\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\233\251\ETX\DC2\ETX\EM\EOT \n\
    \)\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT\GS\STX!\EOT\SUB\ESC The minimal slash amount.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\GS\t\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\GS\FS\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\EOT\GS\RS!\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\202\214\ENQ\DC2\ETX\RS\EOT(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\235\251\ETX\DC2\ETX\US\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\233\251\ETX\DC2\ETX \EOT \n\
    \)\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT$\STX(\EOT\SUB\ESC The maximum slash amount.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX$\t\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX$\FS\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\EOT$\RS(\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\202\214\ENQ\DC2\ETX%\EOT(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\235\251\ETX\DC2\ETX&\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\233\251\ETX\DC2\ETX'\EOT \n\
    \K\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOT+\STX/\EOT\SUB= The ratio of slash amount to reward all current validators.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX+\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX+\t\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX+\"#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\b\DC2\EOT+$/\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ACK\b\238\251\ETX\DC2\ETX,\EOT<\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ACK\b\235\251\ETX\DC2\ETX-\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ACK\b\233\251\ETX\DC2\ETX.\EOT \n\
    \K\n\
    \\EOT\EOT\NUL\STX\a\DC2\EOT2\STX6\EOT\SUB= The ratio of reward amount to reward attestation submitter.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX2\t\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX2\"#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\b\DC2\EOT2$6\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\a\b\238\251\ETX\DC2\ETX3\EOT=\n\
    \\SI\n\
    \\b\EOT\NUL\STX\a\b\235\251\ETX\DC2\ETX4\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\a\b\233\251\ETX\DC2\ETX5\EOT \n\
    \Q\n\
    \\EOT\EOT\NUL\STX\b\DC2\EOT9\STX=\EOT\SUBC The reward amount to submitter will be adjusted by the threshold.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETX9\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX9\t#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX9&'\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\b\DC2\EOT9(=\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\b\b\202\214\ENQ\DC2\ETX:\EOT(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\b\b\235\251\ETX\DC2\ETX;\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\b\b\233\251\ETX\DC2\ETX<\EOT \n\
    \i\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETX@\STXX\SUB\\ Heartbeat interval, based on challenge id, defines the frequency of heartbeat attestation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ENQ\DC2\ETX@\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETX@\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETX@\RS \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\b\DC2\ETX@!W\n\
    \\SI\n\
    \\b\EOT\NUL\STX\t\b\238\251\ETX\DC2\ETX@\"V\n\
    \S\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETXC\STXj\SUBF The time duration for each submitter to submit attestations in turn.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ENQ\DC2\ETXC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETXC\t$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETXC')\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\b\DC2\ETXC*i\n\
    \\SI\n\
    \\b\EOT\NUL\STX\n\
    \\b\238\251\ETX\DC2\ETXC+h\n\
    \Z\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETXF\STX`\SUBM The number of kept attested challenge ids, which can be queried by clients.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ENQ\DC2\ETXF\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETXF\t\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETXF\"$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\b\DC2\ETXF%_\n\
    \\SI\n\
    \\b\EOT\NUL\STX\v\b\238\251\ETX\DC2\ETXF&^b\ACKproto3"