{- This file was auto-generated from cosmos/mint/v1beta1/mint.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Mint.V1beta1.Mint (
        Minter(), Params()
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Mint.V1beta1.Mint_Fields.inflation' @:: Lens' Minter Data.Text.Text@
         * 'Proto.Cosmos.Mint.V1beta1.Mint_Fields.annualProvisions' @:: Lens' Minter Data.Text.Text@ -}
data Minter
  = Minter'_constructor {_Minter'inflation :: !Data.Text.Text,
                         _Minter'annualProvisions :: !Data.Text.Text,
                         _Minter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Minter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Minter "inflation" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Minter'inflation (\ x__ y__ -> x__ {_Minter'inflation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Minter "annualProvisions" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Minter'annualProvisions
           (\ x__ y__ -> x__ {_Minter'annualProvisions = y__}))
        Prelude.id
instance Data.ProtoLens.Message Minter where
  messageName _ = Data.Text.pack "cosmos.mint.v1beta1.Minter"
  packedMessageDescriptor _
    = "\n\
      \\ACKMinter\DC2Z\n\
      \\tinflation\CAN\SOH \SOH(\tR\tinflationB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\DC2i\n\
      \\DC1annual_provisions\CAN\STX \SOH(\tR\DLEannualProvisionsB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        inflation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inflation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"inflation")) ::
              Data.ProtoLens.FieldDescriptor Minter
        annualProvisions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "annual_provisions"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"annualProvisions")) ::
              Data.ProtoLens.FieldDescriptor Minter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, inflation__field_descriptor),
           (Data.ProtoLens.Tag 2, annualProvisions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Minter'_unknownFields
        (\ x__ y__ -> x__ {_Minter'_unknownFields = y__})
  defMessage
    = Minter'_constructor
        {_Minter'inflation = Data.ProtoLens.fieldDefault,
         _Minter'annualProvisions = Data.ProtoLens.fieldDefault,
         _Minter'_unknownFields = []}
  parseMessage
    = let
        loop :: Minter -> Data.ProtoLens.Encoding.Bytes.Parser Minter
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
                                       "inflation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"inflation") y x)
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
                                       "annual_provisions"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"annualProvisions") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Minter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"inflation") _x
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
                         (Data.ProtoLens.Field.field @"annualProvisions") _x
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
instance Control.DeepSeq.NFData Minter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Minter'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Minter'inflation x__)
                (Control.DeepSeq.deepseq (_Minter'annualProvisions x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Mint.V1beta1.Mint_Fields.mintDenom' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Mint.V1beta1.Mint_Fields.inflationRateChange' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Mint.V1beta1.Mint_Fields.inflationMax' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Mint.V1beta1.Mint_Fields.inflationMin' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Mint.V1beta1.Mint_Fields.goalBonded' @:: Lens' Params Data.Text.Text@
         * 'Proto.Cosmos.Mint.V1beta1.Mint_Fields.blocksPerYear' @:: Lens' Params Data.Word.Word64@ -}
data Params
  = Params'_constructor {_Params'mintDenom :: !Data.Text.Text,
                         _Params'inflationRateChange :: !Data.Text.Text,
                         _Params'inflationMax :: !Data.Text.Text,
                         _Params'inflationMin :: !Data.Text.Text,
                         _Params'goalBonded :: !Data.Text.Text,
                         _Params'blocksPerYear :: !Data.Word.Word64,
                         _Params'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Params where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Params "mintDenom" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'mintDenom (\ x__ y__ -> x__ {_Params'mintDenom = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "inflationRateChange" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'inflationRateChange
           (\ x__ y__ -> x__ {_Params'inflationRateChange = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "inflationMax" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'inflationMax
           (\ x__ y__ -> x__ {_Params'inflationMax = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "inflationMin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'inflationMin
           (\ x__ y__ -> x__ {_Params'inflationMin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "goalBonded" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'goalBonded (\ x__ y__ -> x__ {_Params'goalBonded = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "blocksPerYear" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'blocksPerYear
           (\ x__ y__ -> x__ {_Params'blocksPerYear = y__}))
        Prelude.id
instance Data.ProtoLens.Message Params where
  messageName _ = Data.Text.pack "cosmos.mint.v1beta1.Params"
  packedMessageDescriptor _
    = "\n\
      \\ACKParams\DC2\GS\n\
      \\n\
      \mint_denom\CAN\SOH \SOH(\tR\tmintDenom\DC2u\n\
      \\NAKinflation_rate_change\CAN\STX \SOH(\tR\DC3inflationRateChangeBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\168\231\176*\SOH\DC2f\n\
      \\rinflation_max\CAN\ETX \SOH(\tR\finflationMaxBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\168\231\176*\SOH\DC2f\n\
      \\rinflation_min\CAN\EOT \SOH(\tR\finflationMinBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\168\231\176*\SOH\DC2b\n\
      \\vgoal_bonded\CAN\ENQ \SOH(\tR\n\
      \goalBondedBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\168\231\176*\SOH\DC2&\n\
      \\SIblocks_per_year\CAN\ACK \SOH(\EOTR\rblocksPerYear:\GS\138\231\176*\CANcosmos-sdk/x/mint/Params"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        mintDenom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mint_denom"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"mintDenom")) ::
              Data.ProtoLens.FieldDescriptor Params
        inflationRateChange__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inflation_rate_change"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"inflationRateChange")) ::
              Data.ProtoLens.FieldDescriptor Params
        inflationMax__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inflation_max"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"inflationMax")) ::
              Data.ProtoLens.FieldDescriptor Params
        inflationMin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inflation_min"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"inflationMin")) ::
              Data.ProtoLens.FieldDescriptor Params
        goalBonded__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "goal_bonded"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"goalBonded")) ::
              Data.ProtoLens.FieldDescriptor Params
        blocksPerYear__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "blocks_per_year"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blocksPerYear")) ::
              Data.ProtoLens.FieldDescriptor Params
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, mintDenom__field_descriptor),
           (Data.ProtoLens.Tag 2, inflationRateChange__field_descriptor),
           (Data.ProtoLens.Tag 3, inflationMax__field_descriptor),
           (Data.ProtoLens.Tag 4, inflationMin__field_descriptor),
           (Data.ProtoLens.Tag 5, goalBonded__field_descriptor),
           (Data.ProtoLens.Tag 6, blocksPerYear__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Params'_unknownFields
        (\ x__ y__ -> x__ {_Params'_unknownFields = y__})
  defMessage
    = Params'_constructor
        {_Params'mintDenom = Data.ProtoLens.fieldDefault,
         _Params'inflationRateChange = Data.ProtoLens.fieldDefault,
         _Params'inflationMax = Data.ProtoLens.fieldDefault,
         _Params'inflationMin = Data.ProtoLens.fieldDefault,
         _Params'goalBonded = Data.ProtoLens.fieldDefault,
         _Params'blocksPerYear = Data.ProtoLens.fieldDefault,
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
                                       "mint_denom"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mintDenom") y x)
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
                                       "inflation_rate_change"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"inflationRateChange") y x)
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
                                       "inflation_max"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"inflationMax") y x)
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
                                       "inflation_min"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"inflationMin") y x)
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
                                       "goal_bonded"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"goalBonded") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "blocks_per_year"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"blocksPerYear") y x)
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
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"mintDenom") _x
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
                         (Data.ProtoLens.Field.field @"inflationRateChange") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"inflationMax") _x
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"inflationMin") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"goalBonded") _x
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
                                     (Data.ProtoLens.Field.field @"blocksPerYear") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData Params where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Params'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Params'mintDenom x__)
                (Control.DeepSeq.deepseq
                   (_Params'inflationRateChange x__)
                   (Control.DeepSeq.deepseq
                      (_Params'inflationMax x__)
                      (Control.DeepSeq.deepseq
                         (_Params'inflationMin x__)
                         (Control.DeepSeq.deepseq
                            (_Params'goalBonded x__)
                            (Control.DeepSeq.deepseq (_Params'blocksPerYear x__) ()))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RScosmos/mint/v1beta1/mint.proto\DC2\DC3cosmos.mint.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"\207\SOH\n\
    \\ACKMinter\DC2Z\n\
    \\tinflation\CAN\SOH \SOH(\tR\tinflationB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\DC2i\n\
    \\DC1annual_provisions\CAN\STX \SOH(\tR\DLEannualProvisionsB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\"\153\EOT\n\
    \\ACKParams\DC2\GS\n\
    \\n\
    \mint_denom\CAN\SOH \SOH(\tR\tmintDenom\DC2u\n\
    \\NAKinflation_rate_change\CAN\STX \SOH(\tR\DC3inflationRateChangeBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\168\231\176*\SOH\DC2f\n\
    \\rinflation_max\CAN\ETX \SOH(\tR\finflationMaxBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\168\231\176*\SOH\DC2f\n\
    \\rinflation_min\CAN\EOT \SOH(\tR\finflationMinBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\168\231\176*\SOH\DC2b\n\
    \\vgoal_bonded\CAN\ENQ \SOH(\tR\n\
    \goalBondedBA\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\168\231\176*\SOH\DC2&\n\
    \\SIblocks_per_year\CAN\ACK \SOH(\EOTR\rblocksPerYear:\GS\138\231\176*\CANcosmos-sdk/x/mint/ParamsB+Z)github.com/cosmos/cosmos-sdk/x/mint/typesJ\138\v\n\
    \\ACK\DC2\EOT\NUL\NUL=\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\FS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NUL@\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NUL@\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL\ESC\n\
    \2\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL\ETB\SOH\SUB& Minter represents the minting state.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\SO\n\
    \-\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\f\STX\DLE\EOT\SUB\US current annual inflation rate\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\f\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\f\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\f\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\EOT\f\ETB\DLE\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\r\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\235\251\ETX\DC2\ETX\SO\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\SI\EOT\"\n\
    \2\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\DC2\STX\SYN\EOT\SUB$ current annual expected provisions\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC2\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC2\GS\RS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\EOT\DC2\US\SYN\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\DC3\EOT)\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\235\251\ETX\DC2\ETX\DC4\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\NAK\EOT\"\n\
    \B\n\
    \\STX\EOT\SOH\DC2\EOT\SUB\NUL=\SOH\SUB6 Params defines the parameters for the x/mint module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SUB\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX\ESC\STX3\n\
    \\SO\n\
    \\a\EOT\SOH\a\241\140\166\ENQ\DC2\ETX\ESC\STX3\n\
    \#\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\RS\STX\CAN\SUB\SYN type of coin to mint\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\RS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\RS\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\RS\SYN\ETB\n\
    \7\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT \STX%\EOT\SUB) maximum annual change in inflation rate\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX \STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX \t\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX !\"\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\EOT #%\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\202\214\ENQ\DC2\ETX!\EOT)\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\235\251\ETX\DC2\ETX\"\EOTE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\233\251\ETX\DC2\ETX#\EOT\"\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\SOH\b\245\140\166\ENQ\DC2\ETX$\EOT!\n\
    \&\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT'\STX,\EOT\SUB\CAN maximum inflation rate\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX'\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX'\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX'\EM\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\EOT'\ESC,\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\202\214\ENQ\DC2\ETX(\EOT)\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\235\251\ETX\DC2\ETX)\EOTE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\233\251\ETX\DC2\ETX*\EOT\"\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\STX\b\245\140\166\ENQ\DC2\ETX+\EOT!\n\
    \&\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT.\STX3\EOT\SUB\CAN minimum inflation rate\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX.\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX.\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX.\EM\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\b\DC2\EOT.\ESC3\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\202\214\ENQ\DC2\ETX/\EOT)\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\235\251\ETX\DC2\ETX0\EOTE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\233\251\ETX\DC2\ETX1\EOT\"\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\ETX\b\245\140\166\ENQ\DC2\ETX2\EOT!\n\
    \,\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\EOT5\STX:\EOT\SUB\RS goal of percent bonded atoms\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX5\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX5\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX5\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\b\DC2\EOT5\EM:\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\202\214\ENQ\DC2\ETX6\EOT)\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\235\251\ETX\DC2\ETX7\EOTE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\233\251\ETX\DC2\ETX8\EOT\"\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\EOT\b\245\140\166\ENQ\DC2\ETX9\EOT!\n\
    \'\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX<\STX\GS\SUB\SUB expected blocks per year\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX<\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX<\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX<\ESC\FSb\ACKproto3"