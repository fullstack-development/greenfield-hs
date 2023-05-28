{- This file was auto-generated from cosmos/slashing/v1beta1/genesis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Slashing.V1beta1.Genesis (
        GenesisState(), MissedBlock(), SigningInfo(),
        ValidatorMissedBlocks()
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
import qualified Proto.Cosmos.Slashing.V1beta1.Slashing
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Slashing.V1beta1.Genesis_Fields.params' @:: Lens' GenesisState Proto.Cosmos.Slashing.V1beta1.Slashing.Params@
         * 'Proto.Cosmos.Slashing.V1beta1.Genesis_Fields.maybe'params' @:: Lens' GenesisState (Prelude.Maybe Proto.Cosmos.Slashing.V1beta1.Slashing.Params)@
         * 'Proto.Cosmos.Slashing.V1beta1.Genesis_Fields.signingInfos' @:: Lens' GenesisState [SigningInfo]@
         * 'Proto.Cosmos.Slashing.V1beta1.Genesis_Fields.vec'signingInfos' @:: Lens' GenesisState (Data.Vector.Vector SigningInfo)@
         * 'Proto.Cosmos.Slashing.V1beta1.Genesis_Fields.missedBlocks' @:: Lens' GenesisState [ValidatorMissedBlocks]@
         * 'Proto.Cosmos.Slashing.V1beta1.Genesis_Fields.vec'missedBlocks' @:: Lens' GenesisState (Data.Vector.Vector ValidatorMissedBlocks)@ -}
data GenesisState
  = GenesisState'_constructor {_GenesisState'params :: !(Prelude.Maybe Proto.Cosmos.Slashing.V1beta1.Slashing.Params),
                               _GenesisState'signingInfos :: !(Data.Vector.Vector SigningInfo),
                               _GenesisState'missedBlocks :: !(Data.Vector.Vector ValidatorMissedBlocks),
                               _GenesisState'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenesisState where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenesisState "params" Proto.Cosmos.Slashing.V1beta1.Slashing.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'params
           (\ x__ y__ -> x__ {_GenesisState'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenesisState "maybe'params" (Prelude.Maybe Proto.Cosmos.Slashing.V1beta1.Slashing.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'params
           (\ x__ y__ -> x__ {_GenesisState'params = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "signingInfos" [SigningInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'signingInfos
           (\ x__ y__ -> x__ {_GenesisState'signingInfos = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'signingInfos" (Data.Vector.Vector SigningInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'signingInfos
           (\ x__ y__ -> x__ {_GenesisState'signingInfos = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "missedBlocks" [ValidatorMissedBlocks] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'missedBlocks
           (\ x__ y__ -> x__ {_GenesisState'missedBlocks = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'missedBlocks" (Data.Vector.Vector ValidatorMissedBlocks) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'missedBlocks
           (\ x__ y__ -> x__ {_GenesisState'missedBlocks = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenesisState where
  messageName _
    = Data.Text.pack "cosmos.slashing.v1beta1.GenesisState"
  packedMessageDescriptor _
    = "\n\
      \\fGenesisState\DC2B\n\
      \\ACKparams\CAN\SOH \SOH(\v2\US.cosmos.slashing.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2T\n\
      \\rsigning_infos\CAN\STX \ETX(\v2$.cosmos.slashing.v1beta1.SigningInfoR\fsigningInfosB\t\200\222\US\NUL\168\231\176*\SOH\DC2^\n\
      \\rmissed_blocks\CAN\ETX \ETX(\v2..cosmos.slashing.v1beta1.ValidatorMissedBlocksR\fmissedBlocksB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Slashing.V1beta1.Slashing.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        signingInfos__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signing_infos"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SigningInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"signingInfos")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        missedBlocks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "missed_blocks"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ValidatorMissedBlocks)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"missedBlocks")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, params__field_descriptor),
           (Data.ProtoLens.Tag 2, signingInfos__field_descriptor),
           (Data.ProtoLens.Tag 3, missedBlocks__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenesisState'_unknownFields
        (\ x__ y__ -> x__ {_GenesisState'_unknownFields = y__})
  defMessage
    = GenesisState'_constructor
        {_GenesisState'params = Prelude.Nothing,
         _GenesisState'signingInfos = Data.Vector.Generic.empty,
         _GenesisState'missedBlocks = Data.Vector.Generic.empty,
         _GenesisState'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenesisState
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ValidatorMissedBlocks
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SigningInfo
                -> Data.ProtoLens.Encoding.Bytes.Parser GenesisState
        loop x mutable'missedBlocks mutable'signingInfos
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'missedBlocks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'missedBlocks)
                      frozen'signingInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'signingInfos)
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
                              (Data.ProtoLens.Field.field @"vec'missedBlocks")
                              frozen'missedBlocks
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'signingInfos")
                                 frozen'signingInfos x)))
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
                                  mutable'missedBlocks mutable'signingInfos
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "signing_infos"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'signingInfos y)
                                loop x mutable'missedBlocks v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "missed_blocks"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'missedBlocks y)
                                loop x v mutable'signingInfos
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'missedBlocks mutable'signingInfos
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'missedBlocks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'signingInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'missedBlocks
                mutable'signingInfos)
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
                      (Data.ProtoLens.Field.field @"vec'signingInfos") _x))
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
                         (Data.ProtoLens.Field.field @"vec'missedBlocks") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData GenesisState where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenesisState'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GenesisState'params x__)
                (Control.DeepSeq.deepseq
                   (_GenesisState'signingInfos x__)
                   (Control.DeepSeq.deepseq (_GenesisState'missedBlocks x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Slashing.V1beta1.Genesis_Fields.index' @:: Lens' MissedBlock Data.Int.Int64@
         * 'Proto.Cosmos.Slashing.V1beta1.Genesis_Fields.missed' @:: Lens' MissedBlock Prelude.Bool@ -}
data MissedBlock
  = MissedBlock'_constructor {_MissedBlock'index :: !Data.Int.Int64,
                              _MissedBlock'missed :: !Prelude.Bool,
                              _MissedBlock'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MissedBlock where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MissedBlock "index" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MissedBlock'index (\ x__ y__ -> x__ {_MissedBlock'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MissedBlock "missed" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MissedBlock'missed (\ x__ y__ -> x__ {_MissedBlock'missed = y__}))
        Prelude.id
instance Data.ProtoLens.Message MissedBlock where
  messageName _
    = Data.Text.pack "cosmos.slashing.v1beta1.MissedBlock"
  packedMessageDescriptor _
    = "\n\
      \\vMissedBlock\DC2\DC4\n\
      \\ENQindex\CAN\SOH \SOH(\ETXR\ENQindex\DC2\SYN\n\
      \\ACKmissed\CAN\STX \SOH(\bR\ACKmissed"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor MissedBlock
        missed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "missed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"missed")) ::
              Data.ProtoLens.FieldDescriptor MissedBlock
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, index__field_descriptor),
           (Data.ProtoLens.Tag 2, missed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MissedBlock'_unknownFields
        (\ x__ y__ -> x__ {_MissedBlock'_unknownFields = y__})
  defMessage
    = MissedBlock'_constructor
        {_MissedBlock'index = Data.ProtoLens.fieldDefault,
         _MissedBlock'missed = Data.ProtoLens.fieldDefault,
         _MissedBlock'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MissedBlock -> Data.ProtoLens.Encoding.Bytes.Parser MissedBlock
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
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "missed"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"missed") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MissedBlock"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"missed") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MissedBlock where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MissedBlock'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MissedBlock'index x__)
                (Control.DeepSeq.deepseq (_MissedBlock'missed x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Slashing.V1beta1.Genesis_Fields.address' @:: Lens' SigningInfo Data.Text.Text@
         * 'Proto.Cosmos.Slashing.V1beta1.Genesis_Fields.validatorSigningInfo' @:: Lens' SigningInfo Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo@
         * 'Proto.Cosmos.Slashing.V1beta1.Genesis_Fields.maybe'validatorSigningInfo' @:: Lens' SigningInfo (Prelude.Maybe Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo)@ -}
data SigningInfo
  = SigningInfo'_constructor {_SigningInfo'address :: !Data.Text.Text,
                              _SigningInfo'validatorSigningInfo :: !(Prelude.Maybe Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo),
                              _SigningInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SigningInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SigningInfo "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SigningInfo'address
           (\ x__ y__ -> x__ {_SigningInfo'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SigningInfo "validatorSigningInfo" Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SigningInfo'validatorSigningInfo
           (\ x__ y__ -> x__ {_SigningInfo'validatorSigningInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SigningInfo "maybe'validatorSigningInfo" (Prelude.Maybe Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SigningInfo'validatorSigningInfo
           (\ x__ y__ -> x__ {_SigningInfo'validatorSigningInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Message SigningInfo where
  messageName _
    = Data.Text.pack "cosmos.slashing.v1beta1.SigningInfo"
  packedMessageDescriptor _
    = "\n\
      \\vSigningInfo\DC2;\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB!\210\180-\GScosmos.ConsensusAddressString\DC2n\n\
      \\SYNvalidator_signing_info\CAN\STX \SOH(\v2-.cosmos.slashing.v1beta1.ValidatorSigningInfoR\DC4validatorSigningInfoB\t\200\222\US\NUL\168\231\176*\SOH"
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
              Data.ProtoLens.FieldDescriptor SigningInfo
        validatorSigningInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_signing_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Slashing.V1beta1.Slashing.ValidatorSigningInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'validatorSigningInfo")) ::
              Data.ProtoLens.FieldDescriptor SigningInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, validatorSigningInfo__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SigningInfo'_unknownFields
        (\ x__ y__ -> x__ {_SigningInfo'_unknownFields = y__})
  defMessage
    = SigningInfo'_constructor
        {_SigningInfo'address = Data.ProtoLens.fieldDefault,
         _SigningInfo'validatorSigningInfo = Prelude.Nothing,
         _SigningInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SigningInfo -> Data.ProtoLens.Encoding.Bytes.Parser SigningInfo
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "validator_signing_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorSigningInfo") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SigningInfo"
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'validatorSigningInfo") _x
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
instance Control.DeepSeq.NFData SigningInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SigningInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SigningInfo'address x__)
                (Control.DeepSeq.deepseq
                   (_SigningInfo'validatorSigningInfo x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Slashing.V1beta1.Genesis_Fields.address' @:: Lens' ValidatorMissedBlocks Data.Text.Text@
         * 'Proto.Cosmos.Slashing.V1beta1.Genesis_Fields.missedBlocks' @:: Lens' ValidatorMissedBlocks [MissedBlock]@
         * 'Proto.Cosmos.Slashing.V1beta1.Genesis_Fields.vec'missedBlocks' @:: Lens' ValidatorMissedBlocks (Data.Vector.Vector MissedBlock)@ -}
data ValidatorMissedBlocks
  = ValidatorMissedBlocks'_constructor {_ValidatorMissedBlocks'address :: !Data.Text.Text,
                                        _ValidatorMissedBlocks'missedBlocks :: !(Data.Vector.Vector MissedBlock),
                                        _ValidatorMissedBlocks'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ValidatorMissedBlocks where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ValidatorMissedBlocks "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorMissedBlocks'address
           (\ x__ y__ -> x__ {_ValidatorMissedBlocks'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ValidatorMissedBlocks "missedBlocks" [MissedBlock] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorMissedBlocks'missedBlocks
           (\ x__ y__ -> x__ {_ValidatorMissedBlocks'missedBlocks = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ValidatorMissedBlocks "vec'missedBlocks" (Data.Vector.Vector MissedBlock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ValidatorMissedBlocks'missedBlocks
           (\ x__ y__ -> x__ {_ValidatorMissedBlocks'missedBlocks = y__}))
        Prelude.id
instance Data.ProtoLens.Message ValidatorMissedBlocks where
  messageName _
    = Data.Text.pack "cosmos.slashing.v1beta1.ValidatorMissedBlocks"
  packedMessageDescriptor _
    = "\n\
      \\NAKValidatorMissedBlocks\DC2;\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB!\210\180-\GScosmos.ConsensusAddressString\DC2T\n\
      \\rmissed_blocks\CAN\STX \ETX(\v2$.cosmos.slashing.v1beta1.MissedBlockR\fmissedBlocksB\t\200\222\US\NUL\168\231\176*\SOH"
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
              Data.ProtoLens.FieldDescriptor ValidatorMissedBlocks
        missedBlocks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "missed_blocks"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor MissedBlock)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"missedBlocks")) ::
              Data.ProtoLens.FieldDescriptor ValidatorMissedBlocks
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, missedBlocks__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ValidatorMissedBlocks'_unknownFields
        (\ x__ y__ -> x__ {_ValidatorMissedBlocks'_unknownFields = y__})
  defMessage
    = ValidatorMissedBlocks'_constructor
        {_ValidatorMissedBlocks'address = Data.ProtoLens.fieldDefault,
         _ValidatorMissedBlocks'missedBlocks = Data.Vector.Generic.empty,
         _ValidatorMissedBlocks'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ValidatorMissedBlocks
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld MissedBlock
             -> Data.ProtoLens.Encoding.Bytes.Parser ValidatorMissedBlocks
        loop x mutable'missedBlocks
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'missedBlocks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'missedBlocks)
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
                              (Data.ProtoLens.Field.field @"vec'missedBlocks")
                              frozen'missedBlocks x))
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                                  mutable'missedBlocks
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "missed_blocks"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'missedBlocks y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'missedBlocks
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'missedBlocks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'missedBlocks)
          "ValidatorMissedBlocks"
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
                      (Data.ProtoLens.Field.field @"vec'missedBlocks") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ValidatorMissedBlocks where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ValidatorMissedBlocks'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ValidatorMissedBlocks'address x__)
                (Control.DeepSeq.deepseq
                   (_ValidatorMissedBlocks'missedBlocks x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \%cosmos/slashing/v1beta1/genesis.proto\DC2\ETBcosmos.slashing.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB&cosmos/slashing/v1beta1/slashing.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC1amino/amino.proto\"\136\STX\n\
    \\fGenesisState\DC2B\n\
    \\ACKparams\CAN\SOH \SOH(\v2\US.cosmos.slashing.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH\DC2T\n\
    \\rsigning_infos\CAN\STX \ETX(\v2$.cosmos.slashing.v1beta1.SigningInfoR\fsigningInfosB\t\200\222\US\NUL\168\231\176*\SOH\DC2^\n\
    \\rmissed_blocks\CAN\ETX \ETX(\v2..cosmos.slashing.v1beta1.ValidatorMissedBlocksR\fmissedBlocksB\t\200\222\US\NUL\168\231\176*\SOH\"\186\SOH\n\
    \\vSigningInfo\DC2;\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB!\210\180-\GScosmos.ConsensusAddressString\DC2n\n\
    \\SYNvalidator_signing_info\CAN\STX \SOH(\v2-.cosmos.slashing.v1beta1.ValidatorSigningInfoR\DC4validatorSigningInfoB\t\200\222\US\NUL\168\231\176*\SOH\"\170\SOH\n\
    \\NAKValidatorMissedBlocks\DC2;\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB!\210\180-\GScosmos.ConsensusAddressString\DC2T\n\
    \\rmissed_blocks\CAN\STX \ETX(\v2$.cosmos.slashing.v1beta1.MissedBlockR\fmissedBlocksB\t\200\222\US\NUL\168\231\176*\SOH\";\n\
    \\vMissedBlock\DC2\DC4\n\
    \\ENQindex\CAN\SOH \SOH(\ETXR\ENQindex\DC2\SYN\n\
    \\ACKmissed\CAN\STX \SOH(\bR\ACKmissedB/Z-github.com/cosmos/cosmos-sdk/x/slashing/typesJ\171\SO\n\
    \\ACK\DC2\EOT\NUL\NUL/\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL \n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULD\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NULD\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL0\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL\ESC\n\
    \G\n\
    \\STX\EOT\NUL\DC2\EOT\v\NUL\SYN\SOH\SUB; GenesisState defines the slashing module's genesis state.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\v\b\DC4\n\
    \?\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\r\STXR\SUB2 params defines all the parameters of the module.\n\
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
    \c\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC1\STXg\SUBV signing_infos represents a map between validator addresses and their\n\
    \ signing infos.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DC1\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC1\ETB$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC1'(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\DC1)f\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\DC1*F\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX\DC1He\n\
    \c\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\NAK\STXq\SUBV missed_blocks represents a map between validator addresses and their\n\
    \ missed blocks.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\NAK\v \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\NAK!.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\NAK12\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX\NAK3p\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX\NAK4P\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\245\140\166\ENQ\DC2\ETX\NAKRo\n\
    \Q\n\
    \\STX\EOT\SOH\DC2\EOT\EM\NUL\RS\SOH\SUBE SigningInfo stores validator signing info of corresponding address.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\EM\b\DC3\n\
    \0\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\ESC\STXO\SUB# address is the validator address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\ESC\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\ESC\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX\ESC\NAKN\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\202\214\ENQ\DC2\ETX\ESC\SYNM\n\
    \T\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\GS\STXp\SUBG validator_signing_info represents the signing info of this validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\GS\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\GS\ETB-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\GS01\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX\GS2o\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\233\251\ETX\DC2\ETX\GS3O\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\SOH\b\245\140\166\ENQ\DC2\ETX\GSQn\n\
    \^\n\
    \\STX\EOT\STX\DC2\EOT\"\NUL'\SOH\SUBR ValidatorMissedBlocks contains array of missed blocks of corresponding\n\
    \ address.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\"\b\GS\n\
    \0\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX$\STXO\SUB# address is the validator address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX$\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX$\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX$\NAKN\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX$\SYNM\n\
    \K\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX&\STXg\SUB> missed_blocks is an array of missed blocks by the validator.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX&\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX&\ETB$\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX&'(\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETX&)f\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\233\251\ETX\DC2\ETX&*F\n\
    \\DLE\n\
    \\t\EOT\STX\STX\SOH\b\245\140\166\ENQ\DC2\ETX&He\n\
    \G\n\
    \\STX\EOT\ETX\DC2\EOT*\NUL/\SOH\SUB; MissedBlock contains height and missed status as boolean.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX*\b\DC3\n\
    \A\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX,\STX\DC2\SUB4 index is the height at which the block was missed.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX,\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX,\b\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX,\DLE\DC1\n\
    \+\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX.\STX\DC2\SUB\RS missed is the missed status.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX.\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX.\a\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX.\DLE\DC1b\ACKproto3"