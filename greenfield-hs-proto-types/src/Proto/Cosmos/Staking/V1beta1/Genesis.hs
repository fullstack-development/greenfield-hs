{- This file was auto-generated from cosmos/staking/v1beta1/genesis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Staking.V1beta1.Genesis (
        GenesisState(), LastValidatorPower()
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
import qualified Proto.Cosmos.Staking.V1beta1.Staking
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.params' @:: Lens' GenesisState Proto.Cosmos.Staking.V1beta1.Staking.Params@
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.maybe'params' @:: Lens' GenesisState (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Params)@
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.lastTotalPower' @:: Lens' GenesisState Data.ByteString.ByteString@
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.lastValidatorPowers' @:: Lens' GenesisState [LastValidatorPower]@
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.vec'lastValidatorPowers' @:: Lens' GenesisState (Data.Vector.Vector LastValidatorPower)@
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.validators' @:: Lens' GenesisState [Proto.Cosmos.Staking.V1beta1.Staking.Validator]@
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.vec'validators' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.Validator)@
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.delegations' @:: Lens' GenesisState [Proto.Cosmos.Staking.V1beta1.Staking.Delegation]@
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.vec'delegations' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.Delegation)@
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.unbondingDelegations' @:: Lens' GenesisState [Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation]@
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.vec'unbondingDelegations' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation)@
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.redelegations' @:: Lens' GenesisState [Proto.Cosmos.Staking.V1beta1.Staking.Redelegation]@
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.vec'redelegations' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.Redelegation)@
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.exported' @:: Lens' GenesisState Prelude.Bool@ -}
data GenesisState
  = GenesisState'_constructor {_GenesisState'params :: !(Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Params),
                               _GenesisState'lastTotalPower :: !Data.ByteString.ByteString,
                               _GenesisState'lastValidatorPowers :: !(Data.Vector.Vector LastValidatorPower),
                               _GenesisState'validators :: !(Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.Validator),
                               _GenesisState'delegations :: !(Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.Delegation),
                               _GenesisState'unbondingDelegations :: !(Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation),
                               _GenesisState'redelegations :: !(Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.Redelegation),
                               _GenesisState'exported :: !Prelude.Bool,
                               _GenesisState'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenesisState where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenesisState "params" Proto.Cosmos.Staking.V1beta1.Staking.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'params
           (\ x__ y__ -> x__ {_GenesisState'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenesisState "maybe'params" (Prelude.Maybe Proto.Cosmos.Staking.V1beta1.Staking.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'params
           (\ x__ y__ -> x__ {_GenesisState'params = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "lastTotalPower" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'lastTotalPower
           (\ x__ y__ -> x__ {_GenesisState'lastTotalPower = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "lastValidatorPowers" [LastValidatorPower] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'lastValidatorPowers
           (\ x__ y__ -> x__ {_GenesisState'lastValidatorPowers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'lastValidatorPowers" (Data.Vector.Vector LastValidatorPower) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'lastValidatorPowers
           (\ x__ y__ -> x__ {_GenesisState'lastValidatorPowers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "validators" [Proto.Cosmos.Staking.V1beta1.Staking.Validator] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'validators
           (\ x__ y__ -> x__ {_GenesisState'validators = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'validators" (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.Validator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'validators
           (\ x__ y__ -> x__ {_GenesisState'validators = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "delegations" [Proto.Cosmos.Staking.V1beta1.Staking.Delegation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'delegations
           (\ x__ y__ -> x__ {_GenesisState'delegations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'delegations" (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.Delegation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'delegations
           (\ x__ y__ -> x__ {_GenesisState'delegations = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "unbondingDelegations" [Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'unbondingDelegations
           (\ x__ y__ -> x__ {_GenesisState'unbondingDelegations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'unbondingDelegations" (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'unbondingDelegations
           (\ x__ y__ -> x__ {_GenesisState'unbondingDelegations = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "redelegations" [Proto.Cosmos.Staking.V1beta1.Staking.Redelegation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'redelegations
           (\ x__ y__ -> x__ {_GenesisState'redelegations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'redelegations" (Data.Vector.Vector Proto.Cosmos.Staking.V1beta1.Staking.Redelegation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'redelegations
           (\ x__ y__ -> x__ {_GenesisState'redelegations = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "exported" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'exported
           (\ x__ y__ -> x__ {_GenesisState'exported = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenesisState where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.GenesisState"
  packedMessageDescriptor _
    = "\n\
      \\fGenesisState\DC2A\n\
      \\ACKparams\CAN\SOH \SOH(\v2\RS.cosmos.staking.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2]\n\
      \\DLElast_total_power\CAN\STX \SOH(\fR\SOlastTotalPowerB3\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\168\231\176*\SOH\DC2i\n\
      \\NAKlast_validator_powers\CAN\ETX \ETX(\v2*.cosmos.staking.v1beta1.LastValidatorPowerR\DC3lastValidatorPowersB\t\200\222\US\NUL\168\231\176*\SOH\DC2L\n\
      \\n\
      \validators\CAN\EOT \ETX(\v2!.cosmos.staking.v1beta1.ValidatorR\n\
      \validatorsB\t\200\222\US\NUL\168\231\176*\SOH\DC2O\n\
      \\vdelegations\CAN\ENQ \ETX(\v2\".cosmos.staking.v1beta1.DelegationR\vdelegationsB\t\200\222\US\NUL\168\231\176*\SOH\DC2k\n\
      \\NAKunbonding_delegations\CAN\ACK \ETX(\v2+.cosmos.staking.v1beta1.UnbondingDelegationR\DC4unbondingDelegationsB\t\200\222\US\NUL\168\231\176*\SOH\DC2U\n\
      \\rredelegations\CAN\a \ETX(\v2$.cosmos.staking.v1beta1.RedelegationR\rredelegationsB\t\200\222\US\NUL\168\231\176*\SOH\DC2\SUB\n\
      \\bexported\CAN\b \SOH(\bR\bexported"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        lastTotalPower__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_total_power"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastTotalPower")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        lastValidatorPowers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_validator_powers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor LastValidatorPower)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"lastValidatorPowers")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        validators__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validators"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.Validator)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"validators")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        delegations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.Delegation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"delegations")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        unbondingDelegations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unbonding_delegations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"unbondingDelegations")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        redelegations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "redelegations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Staking.V1beta1.Staking.Redelegation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"redelegations")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        exported__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exported"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"exported")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, params__field_descriptor),
           (Data.ProtoLens.Tag 2, lastTotalPower__field_descriptor),
           (Data.ProtoLens.Tag 3, lastValidatorPowers__field_descriptor),
           (Data.ProtoLens.Tag 4, validators__field_descriptor),
           (Data.ProtoLens.Tag 5, delegations__field_descriptor),
           (Data.ProtoLens.Tag 6, unbondingDelegations__field_descriptor),
           (Data.ProtoLens.Tag 7, redelegations__field_descriptor),
           (Data.ProtoLens.Tag 8, exported__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenesisState'_unknownFields
        (\ x__ y__ -> x__ {_GenesisState'_unknownFields = y__})
  defMessage
    = GenesisState'_constructor
        {_GenesisState'params = Prelude.Nothing,
         _GenesisState'lastTotalPower = Data.ProtoLens.fieldDefault,
         _GenesisState'lastValidatorPowers = Data.Vector.Generic.empty,
         _GenesisState'validators = Data.Vector.Generic.empty,
         _GenesisState'delegations = Data.Vector.Generic.empty,
         _GenesisState'unbondingDelegations = Data.Vector.Generic.empty,
         _GenesisState'redelegations = Data.Vector.Generic.empty,
         _GenesisState'exported = Data.ProtoLens.fieldDefault,
         _GenesisState'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenesisState
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Staking.V1beta1.Staking.Delegation
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld LastValidatorPower
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Staking.V1beta1.Staking.Redelegation
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Staking.V1beta1.Staking.UnbondingDelegation
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Staking.V1beta1.Staking.Validator
                         -> Data.ProtoLens.Encoding.Bytes.Parser GenesisState
        loop
          x
          mutable'delegations
          mutable'lastValidatorPowers
          mutable'redelegations
          mutable'unbondingDelegations
          mutable'validators
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'delegations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'delegations)
                      frozen'lastValidatorPowers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'lastValidatorPowers)
                      frozen'redelegations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'redelegations)
                      frozen'unbondingDelegations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'unbondingDelegations)
                      frozen'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'validators)
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
                              (Data.ProtoLens.Field.field @"vec'delegations") frozen'delegations
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'lastValidatorPowers")
                                 frozen'lastValidatorPowers
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'redelegations")
                                    frozen'redelegations
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'unbondingDelegations")
                                       frozen'unbondingDelegations
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'validators")
                                          frozen'validators x))))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "params"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"params") y x)
                                  mutable'delegations mutable'lastValidatorPowers
                                  mutable'redelegations mutable'unbondingDelegations
                                  mutable'validators
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "last_total_power"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lastTotalPower") y x)
                                  mutable'delegations mutable'lastValidatorPowers
                                  mutable'redelegations mutable'unbondingDelegations
                                  mutable'validators
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "last_validator_powers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'lastValidatorPowers y)
                                loop
                                  x mutable'delegations v mutable'redelegations
                                  mutable'unbondingDelegations mutable'validators
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "validators"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'validators y)
                                loop
                                  x mutable'delegations mutable'lastValidatorPowers
                                  mutable'redelegations mutable'unbondingDelegations v
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "delegations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'delegations y)
                                loop
                                  x v mutable'lastValidatorPowers mutable'redelegations
                                  mutable'unbondingDelegations mutable'validators
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "unbonding_delegations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'unbondingDelegations y)
                                loop
                                  x mutable'delegations mutable'lastValidatorPowers
                                  mutable'redelegations v mutable'validators
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "redelegations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'redelegations y)
                                loop
                                  x mutable'delegations mutable'lastValidatorPowers v
                                  mutable'unbondingDelegations mutable'validators
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "exported"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"exported") y x)
                                  mutable'delegations mutable'lastValidatorPowers
                                  mutable'redelegations mutable'unbondingDelegations
                                  mutable'validators
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'delegations mutable'lastValidatorPowers
                                  mutable'redelegations mutable'unbondingDelegations
                                  mutable'validators
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'delegations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'lastValidatorPowers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              mutable'redelegations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              mutable'unbondingDelegations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              mutable'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'delegations
                mutable'lastValidatorPowers mutable'redelegations
                mutable'unbondingDelegations mutable'validators)
          "GenesisState"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'params") _x
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
                         (Data.ProtoLens.Field.field @"lastTotalPower") _x
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
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'lastValidatorPowers") _x))
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
                            (Data.ProtoLens.Field.field @"vec'validators") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'delegations") _x))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
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
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'unbondingDelegations") _x))
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
                                     (Data.ProtoLens.Field.field @"vec'redelegations") _x))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"exported") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (\ b -> if b then 1 else 0) _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData GenesisState where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenesisState'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GenesisState'params x__)
                (Control.DeepSeq.deepseq
                   (_GenesisState'lastTotalPower x__)
                   (Control.DeepSeq.deepseq
                      (_GenesisState'lastValidatorPowers x__)
                      (Control.DeepSeq.deepseq
                         (_GenesisState'validators x__)
                         (Control.DeepSeq.deepseq
                            (_GenesisState'delegations x__)
                            (Control.DeepSeq.deepseq
                               (_GenesisState'unbondingDelegations x__)
                               (Control.DeepSeq.deepseq
                                  (_GenesisState'redelegations x__)
                                  (Control.DeepSeq.deepseq (_GenesisState'exported x__) ()))))))))
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.address' @:: Lens' LastValidatorPower Data.Text.Text@
         * 'Proto.Cosmos.Staking.V1beta1.Genesis_Fields.power' @:: Lens' LastValidatorPower Data.Int.Int64@ -}
data LastValidatorPower
  = LastValidatorPower'_constructor {_LastValidatorPower'address :: !Data.Text.Text,
                                     _LastValidatorPower'power :: !Data.Int.Int64,
                                     _LastValidatorPower'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LastValidatorPower where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LastValidatorPower "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LastValidatorPower'address
           (\ x__ y__ -> x__ {_LastValidatorPower'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LastValidatorPower "power" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LastValidatorPower'power
           (\ x__ y__ -> x__ {_LastValidatorPower'power = y__}))
        Prelude.id
instance Data.ProtoLens.Message LastValidatorPower where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.LastValidatorPower"
  packedMessageDescriptor _
    = "\n\
      \\DC2LastValidatorPower\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\DC4\n\
      \\ENQpower\CAN\STX \SOH(\ETXR\ENQpower:\b\136\160\US\NUL\232\160\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor LastValidatorPower
        power__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "power"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"power")) ::
              Data.ProtoLens.FieldDescriptor LastValidatorPower
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, power__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LastValidatorPower'_unknownFields
        (\ x__ y__ -> x__ {_LastValidatorPower'_unknownFields = y__})
  defMessage
    = LastValidatorPower'_constructor
        {_LastValidatorPower'address = Data.ProtoLens.fieldDefault,
         _LastValidatorPower'power = Data.ProtoLens.fieldDefault,
         _LastValidatorPower'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LastValidatorPower
          -> Data.ProtoLens.Encoding.Bytes.Parser LastValidatorPower
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
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "power"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"power") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LastValidatorPower"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"address") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"power") _x
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
instance Control.DeepSeq.NFData LastValidatorPower where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LastValidatorPower'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LastValidatorPower'address x__)
                (Control.DeepSeq.deepseq (_LastValidatorPower'power x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$cosmos/staking/v1beta1/genesis.proto\DC2\SYNcosmos.staking.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB$cosmos/staking/v1beta1/staking.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"\154\ENQ\n\
    \\fGenesisState\DC2A\n\
    \\ACKparams\CAN\SOH \SOH(\v2\RS.cosmos.staking.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2]\n\
    \\DLElast_total_power\CAN\STX \SOH(\fR\SOlastTotalPowerB3\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\168\231\176*\SOH\DC2i\n\
    \\NAKlast_validator_powers\CAN\ETX \ETX(\v2*.cosmos.staking.v1beta1.LastValidatorPowerR\DC3lastValidatorPowersB\t\200\222\US\NUL\168\231\176*\SOH\DC2L\n\
    \\n\
    \validators\CAN\EOT \ETX(\v2!.cosmos.staking.v1beta1.ValidatorR\n\
    \validatorsB\t\200\222\US\NUL\168\231\176*\SOH\DC2O\n\
    \\vdelegations\CAN\ENQ \ETX(\v2\".cosmos.staking.v1beta1.DelegationR\vdelegationsB\t\200\222\US\NUL\168\231\176*\SOH\DC2k\n\
    \\NAKunbonding_delegations\CAN\ACK \ETX(\v2+.cosmos.staking.v1beta1.UnbondingDelegationR\DC4unbondingDelegationsB\t\200\222\US\NUL\168\231\176*\SOH\DC2U\n\
    \\rredelegations\CAN\a \ETX(\v2$.cosmos.staking.v1beta1.RedelegationR\rredelegationsB\t\200\222\US\NUL\168\231\176*\SOH\DC2\SUB\n\
    \\bexported\CAN\b \SOH(\bR\bexported\"h\n\
    \\DC2LastValidatorPower\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\DC4\n\
    \\ENQpower\CAN\STX \SOH(\ETXR\ENQpower:\b\136\160\US\NUL\232\160\US\NULB.Z,github.com/cosmos/cosmos-sdk/x/staking/typesJ\157\SI\n\
    \\ACK\DC2\EOT\NUL\NUL4\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\US\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULC\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NULC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL.\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL\ESC\n\
    \F\n\
    \\STX\EOT\NUL\DC2\EOT\v\NUL(\SOH\SUB: GenesisState defines the staking module's genesis state.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\v\b\DC4\n\
    \G\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\r\STXR\SUB: params defines all the parameters of related to deposit.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\r\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\r\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\r\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\r\DC4Q\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\r\NAK1\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\245\140\166\ENQ\DC2\ETX\r3P\n\
    \s\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\DC1\STX\NAK\EOT\SUBe last_total_power tracks the total amounts of bonded tokens recorded during\n\
    \ the previous end block.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC1\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC1\b\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC1\ESC\FS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\EOT\DC1\GS\NAK\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\235\251\ETX\DC2\ETX\DC2\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\DC3\EOT\"\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX\DC4\EOT!\n\
    \\DEL\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\EM\STXv\SUBr last_validator_powers is a special index that provides a historical list\n\
    \ of the last-block's bonded validators.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\EM\v\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\EM\RS3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\EM67\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX\EM8u\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX\EM9U\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\245\140\166\ENQ\DC2\ETX\EMWt\n\
    \?\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\FS\STXb\SUB2 validators defines the validator set at genesis.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\FS\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\FS\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\FS\"#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX\FS$a\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\233\251\ETX\DC2\ETX\FS%A\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\ETX\b\245\140\166\ENQ\DC2\ETX\FSC`\n\
    \E\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\US\STXd\SUB8 delegations defines the delegations active at genesis.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\US\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\US\SYN!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\US$%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX\US&c\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\233\251\ETX\DC2\ETX\US'C\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\EOT\b\245\140\166\ENQ\DC2\ETX\USEb\n\
    \Y\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\"\STXw\SUBL unbonding_delegations defines the unbonding delegations active at genesis.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX\"\v\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\"\US4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\"78\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\ETX\"9v\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\233\251\ETX\DC2\ETX\":V\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\ENQ\b\245\140\166\ENQ\DC2\ETX\"Xu\n\
    \I\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX%\STXh\SUB< redelegations defines the redelegations active at genesis.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX%\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX%\CAN%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX%()\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\b\DC2\ETX%*g\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ACK\b\233\251\ETX\DC2\ETX%+G\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\ACK\b\245\140\166\ENQ\DC2\ETX%If\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX'\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX'\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX'\a\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX'\DC2\DC3\n\
    \I\n\
    \\STX\EOT\SOH\DC2\EOT+\NUL4\SOH\SUB= LastValidatorPower required for validator set update logic.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX+\b\SUB\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX,\STX-\n\
    \\r\n\
    \\ACK\EOT\SOH\a\141\244\ETX\DC2\ETX,\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX-\STX-\n\
    \\r\n\
    \\ACK\EOT\SOH\a\129\244\ETX\DC2\ETX-\STX-\n\
    \7\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX0\STXF\SUB* address is the address of the validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX0\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX0\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX0\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX0\NAKE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\202\214\ENQ\DC2\ETX0\SYND\n\
    \8\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX3\STX\DC2\SUB+ power defines the power of the validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX3\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX3\b\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX3\DLE\DC1b\ACKproto3"