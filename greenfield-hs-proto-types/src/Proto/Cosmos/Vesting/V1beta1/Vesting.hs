{- This file was auto-generated from cosmos/vesting/v1beta1/vesting.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Vesting.V1beta1.Vesting (
        BaseVestingAccount(), ContinuousVestingAccount(),
        DelayedVestingAccount(), Period(), PeriodicVestingAccount(),
        PermanentLockedAccount()
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
import qualified Proto.Cosmos.Auth.V1beta1.Auth
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.baseAccount' @:: Lens' BaseVestingAccount Proto.Cosmos.Auth.V1beta1.Auth.BaseAccount@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.maybe'baseAccount' @:: Lens' BaseVestingAccount (Prelude.Maybe Proto.Cosmos.Auth.V1beta1.Auth.BaseAccount)@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.originalVesting' @:: Lens' BaseVestingAccount [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.vec'originalVesting' @:: Lens' BaseVestingAccount (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.delegatedFree' @:: Lens' BaseVestingAccount [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.vec'delegatedFree' @:: Lens' BaseVestingAccount (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.delegatedVesting' @:: Lens' BaseVestingAccount [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.vec'delegatedVesting' @:: Lens' BaseVestingAccount (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.endTime' @:: Lens' BaseVestingAccount Data.Int.Int64@ -}
data BaseVestingAccount
  = BaseVestingAccount'_constructor {_BaseVestingAccount'baseAccount :: !(Prelude.Maybe Proto.Cosmos.Auth.V1beta1.Auth.BaseAccount),
                                     _BaseVestingAccount'originalVesting :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                     _BaseVestingAccount'delegatedFree :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                     _BaseVestingAccount'delegatedVesting :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                     _BaseVestingAccount'endTime :: !Data.Int.Int64,
                                     _BaseVestingAccount'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BaseVestingAccount where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BaseVestingAccount "baseAccount" Proto.Cosmos.Auth.V1beta1.Auth.BaseAccount where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BaseVestingAccount'baseAccount
           (\ x__ y__ -> x__ {_BaseVestingAccount'baseAccount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BaseVestingAccount "maybe'baseAccount" (Prelude.Maybe Proto.Cosmos.Auth.V1beta1.Auth.BaseAccount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BaseVestingAccount'baseAccount
           (\ x__ y__ -> x__ {_BaseVestingAccount'baseAccount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BaseVestingAccount "originalVesting" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BaseVestingAccount'originalVesting
           (\ x__ y__ -> x__ {_BaseVestingAccount'originalVesting = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField BaseVestingAccount "vec'originalVesting" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BaseVestingAccount'originalVesting
           (\ x__ y__ -> x__ {_BaseVestingAccount'originalVesting = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BaseVestingAccount "delegatedFree" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BaseVestingAccount'delegatedFree
           (\ x__ y__ -> x__ {_BaseVestingAccount'delegatedFree = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField BaseVestingAccount "vec'delegatedFree" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BaseVestingAccount'delegatedFree
           (\ x__ y__ -> x__ {_BaseVestingAccount'delegatedFree = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BaseVestingAccount "delegatedVesting" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BaseVestingAccount'delegatedVesting
           (\ x__ y__ -> x__ {_BaseVestingAccount'delegatedVesting = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField BaseVestingAccount "vec'delegatedVesting" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BaseVestingAccount'delegatedVesting
           (\ x__ y__ -> x__ {_BaseVestingAccount'delegatedVesting = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BaseVestingAccount "endTime" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BaseVestingAccount'endTime
           (\ x__ y__ -> x__ {_BaseVestingAccount'endTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message BaseVestingAccount where
  messageName _
    = Data.Text.pack "cosmos.vesting.v1beta1.BaseVestingAccount"
  packedMessageDescriptor _
    = "\n\
      \\DC2BaseVestingAccount\DC2I\n\
      \\fbase_account\CAN\SOH \SOH(\v2 .cosmos.auth.v1beta1.BaseAccountR\vbaseAccountB\EOT\208\222\US\SOH\DC2\140\SOH\n\
      \\DLEoriginal_vesting\CAN\STX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\SIoriginalVestingBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2\136\SOH\n\
      \\SOdelegated_free\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\rdelegatedFreeBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2\142\SOH\n\
      \\DC1delegated_vesting\CAN\EOT \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\DLEdelegatedVestingBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2\EM\n\
      \\bend_time\CAN\ENQ \SOH(\ETXR\aendTime:&\136\160\US\NUL\138\231\176*\GScosmos-sdk/BaseVestingAccount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        baseAccount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "base_account"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Auth.V1beta1.Auth.BaseAccount)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'baseAccount")) ::
              Data.ProtoLens.FieldDescriptor BaseVestingAccount
        originalVesting__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "original_vesting"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"originalVesting")) ::
              Data.ProtoLens.FieldDescriptor BaseVestingAccount
        delegatedFree__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegated_free"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"delegatedFree")) ::
              Data.ProtoLens.FieldDescriptor BaseVestingAccount
        delegatedVesting__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delegated_vesting"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"delegatedVesting")) ::
              Data.ProtoLens.FieldDescriptor BaseVestingAccount
        endTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end_time"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"endTime")) ::
              Data.ProtoLens.FieldDescriptor BaseVestingAccount
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, baseAccount__field_descriptor),
           (Data.ProtoLens.Tag 2, originalVesting__field_descriptor),
           (Data.ProtoLens.Tag 3, delegatedFree__field_descriptor),
           (Data.ProtoLens.Tag 4, delegatedVesting__field_descriptor),
           (Data.ProtoLens.Tag 5, endTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BaseVestingAccount'_unknownFields
        (\ x__ y__ -> x__ {_BaseVestingAccount'_unknownFields = y__})
  defMessage
    = BaseVestingAccount'_constructor
        {_BaseVestingAccount'baseAccount = Prelude.Nothing,
         _BaseVestingAccount'originalVesting = Data.Vector.Generic.empty,
         _BaseVestingAccount'delegatedFree = Data.Vector.Generic.empty,
         _BaseVestingAccount'delegatedVesting = Data.Vector.Generic.empty,
         _BaseVestingAccount'endTime = Data.ProtoLens.fieldDefault,
         _BaseVestingAccount'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BaseVestingAccount
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
                   -> Data.ProtoLens.Encoding.Bytes.Parser BaseVestingAccount
        loop
          x
          mutable'delegatedFree
          mutable'delegatedVesting
          mutable'originalVesting
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'delegatedFree <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'delegatedFree)
                      frozen'delegatedVesting <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'delegatedVesting)
                      frozen'originalVesting <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'originalVesting)
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
                              (Data.ProtoLens.Field.field @"vec'delegatedFree")
                              frozen'delegatedFree
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'delegatedVesting")
                                 frozen'delegatedVesting
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'originalVesting")
                                    frozen'originalVesting x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "base_account"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"baseAccount") y x)
                                  mutable'delegatedFree mutable'delegatedVesting
                                  mutable'originalVesting
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "original_vesting"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'originalVesting y)
                                loop x mutable'delegatedFree mutable'delegatedVesting v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "delegated_free"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'delegatedFree y)
                                loop x v mutable'delegatedVesting mutable'originalVesting
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "delegated_vesting"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'delegatedVesting y)
                                loop x mutable'delegatedFree v mutable'originalVesting
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "end_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endTime") y x)
                                  mutable'delegatedFree mutable'delegatedVesting
                                  mutable'originalVesting
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'delegatedFree mutable'delegatedVesting
                                  mutable'originalVesting
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'delegatedFree <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              mutable'delegatedVesting <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              mutable'originalVesting <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'delegatedFree
                mutable'delegatedVesting mutable'originalVesting)
          "BaseVestingAccount"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'baseAccount") _x
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
                      (Data.ProtoLens.Field.field @"vec'originalVesting") _x))
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
                         (Data.ProtoLens.Field.field @"vec'delegatedFree") _x))
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
                            (Data.ProtoLens.Field.field @"vec'delegatedVesting") _x))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endTime") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData BaseVestingAccount where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BaseVestingAccount'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BaseVestingAccount'baseAccount x__)
                (Control.DeepSeq.deepseq
                   (_BaseVestingAccount'originalVesting x__)
                   (Control.DeepSeq.deepseq
                      (_BaseVestingAccount'delegatedFree x__)
                      (Control.DeepSeq.deepseq
                         (_BaseVestingAccount'delegatedVesting x__)
                         (Control.DeepSeq.deepseq (_BaseVestingAccount'endTime x__) ())))))
{- | Fields :
     
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.baseVestingAccount' @:: Lens' ContinuousVestingAccount BaseVestingAccount@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.maybe'baseVestingAccount' @:: Lens' ContinuousVestingAccount (Prelude.Maybe BaseVestingAccount)@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.startTime' @:: Lens' ContinuousVestingAccount Data.Int.Int64@ -}
data ContinuousVestingAccount
  = ContinuousVestingAccount'_constructor {_ContinuousVestingAccount'baseVestingAccount :: !(Prelude.Maybe BaseVestingAccount),
                                           _ContinuousVestingAccount'startTime :: !Data.Int.Int64,
                                           _ContinuousVestingAccount'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ContinuousVestingAccount where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ContinuousVestingAccount "baseVestingAccount" BaseVestingAccount where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinuousVestingAccount'baseVestingAccount
           (\ x__ y__
              -> x__ {_ContinuousVestingAccount'baseVestingAccount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ContinuousVestingAccount "maybe'baseVestingAccount" (Prelude.Maybe BaseVestingAccount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinuousVestingAccount'baseVestingAccount
           (\ x__ y__
              -> x__ {_ContinuousVestingAccount'baseVestingAccount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ContinuousVestingAccount "startTime" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ContinuousVestingAccount'startTime
           (\ x__ y__ -> x__ {_ContinuousVestingAccount'startTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message ContinuousVestingAccount where
  messageName _
    = Data.Text.pack "cosmos.vesting.v1beta1.ContinuousVestingAccount"
  packedMessageDescriptor _
    = "\n\
      \\CANContinuousVestingAccount\DC2b\n\
      \\DC4base_vesting_account\CAN\SOH \SOH(\v2*.cosmos.vesting.v1beta1.BaseVestingAccountR\DC2baseVestingAccountB\EOT\208\222\US\SOH\DC2\GS\n\
      \\n\
      \start_time\CAN\STX \SOH(\ETXR\tstartTime:,\136\160\US\NUL\138\231\176*#cosmos-sdk/ContinuousVestingAccount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        baseVestingAccount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "base_vesting_account"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BaseVestingAccount)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'baseVestingAccount")) ::
              Data.ProtoLens.FieldDescriptor ContinuousVestingAccount
        startTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_time"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"startTime")) ::
              Data.ProtoLens.FieldDescriptor ContinuousVestingAccount
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, baseVestingAccount__field_descriptor),
           (Data.ProtoLens.Tag 2, startTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ContinuousVestingAccount'_unknownFields
        (\ x__ y__ -> x__ {_ContinuousVestingAccount'_unknownFields = y__})
  defMessage
    = ContinuousVestingAccount'_constructor
        {_ContinuousVestingAccount'baseVestingAccount = Prelude.Nothing,
         _ContinuousVestingAccount'startTime = Data.ProtoLens.fieldDefault,
         _ContinuousVestingAccount'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ContinuousVestingAccount
          -> Data.ProtoLens.Encoding.Bytes.Parser ContinuousVestingAccount
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
                                       "base_vesting_account"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"baseVestingAccount") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "start_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startTime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ContinuousVestingAccount"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'baseVestingAccount") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"startTime") _x
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
instance Control.DeepSeq.NFData ContinuousVestingAccount where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ContinuousVestingAccount'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ContinuousVestingAccount'baseVestingAccount x__)
                (Control.DeepSeq.deepseq
                   (_ContinuousVestingAccount'startTime x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.baseVestingAccount' @:: Lens' DelayedVestingAccount BaseVestingAccount@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.maybe'baseVestingAccount' @:: Lens' DelayedVestingAccount (Prelude.Maybe BaseVestingAccount)@ -}
data DelayedVestingAccount
  = DelayedVestingAccount'_constructor {_DelayedVestingAccount'baseVestingAccount :: !(Prelude.Maybe BaseVestingAccount),
                                        _DelayedVestingAccount'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DelayedVestingAccount where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DelayedVestingAccount "baseVestingAccount" BaseVestingAccount where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelayedVestingAccount'baseVestingAccount
           (\ x__ y__
              -> x__ {_DelayedVestingAccount'baseVestingAccount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DelayedVestingAccount "maybe'baseVestingAccount" (Prelude.Maybe BaseVestingAccount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DelayedVestingAccount'baseVestingAccount
           (\ x__ y__
              -> x__ {_DelayedVestingAccount'baseVestingAccount = y__}))
        Prelude.id
instance Data.ProtoLens.Message DelayedVestingAccount where
  messageName _
    = Data.Text.pack "cosmos.vesting.v1beta1.DelayedVestingAccount"
  packedMessageDescriptor _
    = "\n\
      \\NAKDelayedVestingAccount\DC2b\n\
      \\DC4base_vesting_account\CAN\SOH \SOH(\v2*.cosmos.vesting.v1beta1.BaseVestingAccountR\DC2baseVestingAccountB\EOT\208\222\US\SOH:)\136\160\US\NUL\138\231\176* cosmos-sdk/DelayedVestingAccount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        baseVestingAccount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "base_vesting_account"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BaseVestingAccount)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'baseVestingAccount")) ::
              Data.ProtoLens.FieldDescriptor DelayedVestingAccount
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, baseVestingAccount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DelayedVestingAccount'_unknownFields
        (\ x__ y__ -> x__ {_DelayedVestingAccount'_unknownFields = y__})
  defMessage
    = DelayedVestingAccount'_constructor
        {_DelayedVestingAccount'baseVestingAccount = Prelude.Nothing,
         _DelayedVestingAccount'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DelayedVestingAccount
          -> Data.ProtoLens.Encoding.Bytes.Parser DelayedVestingAccount
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
                                       "base_vesting_account"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"baseVestingAccount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DelayedVestingAccount"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'baseVestingAccount") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DelayedVestingAccount where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DelayedVestingAccount'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DelayedVestingAccount'baseVestingAccount x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.length' @:: Lens' Period Data.Int.Int64@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.amount' @:: Lens' Period [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.vec'amount' @:: Lens' Period (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data Period
  = Period'_constructor {_Period'length :: !Data.Int.Int64,
                         _Period'amount :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                         _Period'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Period where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Period "length" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Period'length (\ x__ y__ -> x__ {_Period'length = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Period "amount" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Period'amount (\ x__ y__ -> x__ {_Period'amount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Period "vec'amount" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Period'amount (\ x__ y__ -> x__ {_Period'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message Period where
  messageName _ = Data.Text.pack "cosmos.vesting.v1beta1.Period"
  packedMessageDescriptor _
    = "\n\
      \\ACKPeriod\DC2\SYN\n\
      \\ACKlength\CAN\SOH \SOH(\ETXR\ACKlength\DC2y\n\
      \\ACKamount\CAN\STX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        length__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "length"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"length")) ::
              Data.ProtoLens.FieldDescriptor Period
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor Period
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, length__field_descriptor),
           (Data.ProtoLens.Tag 2, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Period'_unknownFields
        (\ x__ y__ -> x__ {_Period'_unknownFields = y__})
  defMessage
    = Period'_constructor
        {_Period'length = Data.ProtoLens.fieldDefault,
         _Period'amount = Data.Vector.Generic.empty,
         _Period'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Period
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser Period
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
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "length"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"length") y x)
                                  mutable'amount
                        18
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
          "Period"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"length") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'amount") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Period where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Period'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Period'length x__)
                (Control.DeepSeq.deepseq (_Period'amount x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.baseVestingAccount' @:: Lens' PeriodicVestingAccount BaseVestingAccount@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.maybe'baseVestingAccount' @:: Lens' PeriodicVestingAccount (Prelude.Maybe BaseVestingAccount)@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.startTime' @:: Lens' PeriodicVestingAccount Data.Int.Int64@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.vestingPeriods' @:: Lens' PeriodicVestingAccount [Period]@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.vec'vestingPeriods' @:: Lens' PeriodicVestingAccount (Data.Vector.Vector Period)@ -}
data PeriodicVestingAccount
  = PeriodicVestingAccount'_constructor {_PeriodicVestingAccount'baseVestingAccount :: !(Prelude.Maybe BaseVestingAccount),
                                         _PeriodicVestingAccount'startTime :: !Data.Int.Int64,
                                         _PeriodicVestingAccount'vestingPeriods :: !(Data.Vector.Vector Period),
                                         _PeriodicVestingAccount'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PeriodicVestingAccount where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PeriodicVestingAccount "baseVestingAccount" BaseVestingAccount where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeriodicVestingAccount'baseVestingAccount
           (\ x__ y__
              -> x__ {_PeriodicVestingAccount'baseVestingAccount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PeriodicVestingAccount "maybe'baseVestingAccount" (Prelude.Maybe BaseVestingAccount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeriodicVestingAccount'baseVestingAccount
           (\ x__ y__
              -> x__ {_PeriodicVestingAccount'baseVestingAccount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PeriodicVestingAccount "startTime" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeriodicVestingAccount'startTime
           (\ x__ y__ -> x__ {_PeriodicVestingAccount'startTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PeriodicVestingAccount "vestingPeriods" [Period] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeriodicVestingAccount'vestingPeriods
           (\ x__ y__ -> x__ {_PeriodicVestingAccount'vestingPeriods = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField PeriodicVestingAccount "vec'vestingPeriods" (Data.Vector.Vector Period) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeriodicVestingAccount'vestingPeriods
           (\ x__ y__ -> x__ {_PeriodicVestingAccount'vestingPeriods = y__}))
        Prelude.id
instance Data.ProtoLens.Message PeriodicVestingAccount where
  messageName _
    = Data.Text.pack "cosmos.vesting.v1beta1.PeriodicVestingAccount"
  packedMessageDescriptor _
    = "\n\
      \\SYNPeriodicVestingAccount\DC2b\n\
      \\DC4base_vesting_account\CAN\SOH \SOH(\v2*.cosmos.vesting.v1beta1.BaseVestingAccountR\DC2baseVestingAccountB\EOT\208\222\US\SOH\DC2\GS\n\
      \\n\
      \start_time\CAN\STX \SOH(\ETXR\tstartTime\DC2R\n\
      \\SIvesting_periods\CAN\ETX \ETX(\v2\RS.cosmos.vesting.v1beta1.PeriodR\SOvestingPeriodsB\t\200\222\US\NUL\168\231\176*\SOH:*\136\160\US\NUL\138\231\176*!cosmos-sdk/PeriodicVestingAccount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        baseVestingAccount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "base_vesting_account"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BaseVestingAccount)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'baseVestingAccount")) ::
              Data.ProtoLens.FieldDescriptor PeriodicVestingAccount
        startTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_time"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"startTime")) ::
              Data.ProtoLens.FieldDescriptor PeriodicVestingAccount
        vestingPeriods__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vesting_periods"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Period)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"vestingPeriods")) ::
              Data.ProtoLens.FieldDescriptor PeriodicVestingAccount
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, baseVestingAccount__field_descriptor),
           (Data.ProtoLens.Tag 2, startTime__field_descriptor),
           (Data.ProtoLens.Tag 3, vestingPeriods__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PeriodicVestingAccount'_unknownFields
        (\ x__ y__ -> x__ {_PeriodicVestingAccount'_unknownFields = y__})
  defMessage
    = PeriodicVestingAccount'_constructor
        {_PeriodicVestingAccount'baseVestingAccount = Prelude.Nothing,
         _PeriodicVestingAccount'startTime = Data.ProtoLens.fieldDefault,
         _PeriodicVestingAccount'vestingPeriods = Data.Vector.Generic.empty,
         _PeriodicVestingAccount'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PeriodicVestingAccount
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Period
             -> Data.ProtoLens.Encoding.Bytes.Parser PeriodicVestingAccount
        loop x mutable'vestingPeriods
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'vestingPeriods <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'vestingPeriods)
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
                              (Data.ProtoLens.Field.field @"vec'vestingPeriods")
                              frozen'vestingPeriods x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "base_vesting_account"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"baseVestingAccount") y x)
                                  mutable'vestingPeriods
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "start_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startTime") y x)
                                  mutable'vestingPeriods
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "vesting_periods"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'vestingPeriods y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'vestingPeriods
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'vestingPeriods <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'vestingPeriods)
          "PeriodicVestingAccount"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'baseVestingAccount") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"startTime") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                         (Data.ProtoLens.Field.field @"vec'vestingPeriods") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData PeriodicVestingAccount where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PeriodicVestingAccount'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PeriodicVestingAccount'baseVestingAccount x__)
                (Control.DeepSeq.deepseq
                   (_PeriodicVestingAccount'startTime x__)
                   (Control.DeepSeq.deepseq
                      (_PeriodicVestingAccount'vestingPeriods x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.baseVestingAccount' @:: Lens' PermanentLockedAccount BaseVestingAccount@
         * 'Proto.Cosmos.Vesting.V1beta1.Vesting_Fields.maybe'baseVestingAccount' @:: Lens' PermanentLockedAccount (Prelude.Maybe BaseVestingAccount)@ -}
data PermanentLockedAccount
  = PermanentLockedAccount'_constructor {_PermanentLockedAccount'baseVestingAccount :: !(Prelude.Maybe BaseVestingAccount),
                                         _PermanentLockedAccount'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PermanentLockedAccount where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PermanentLockedAccount "baseVestingAccount" BaseVestingAccount where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PermanentLockedAccount'baseVestingAccount
           (\ x__ y__
              -> x__ {_PermanentLockedAccount'baseVestingAccount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PermanentLockedAccount "maybe'baseVestingAccount" (Prelude.Maybe BaseVestingAccount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PermanentLockedAccount'baseVestingAccount
           (\ x__ y__
              -> x__ {_PermanentLockedAccount'baseVestingAccount = y__}))
        Prelude.id
instance Data.ProtoLens.Message PermanentLockedAccount where
  messageName _
    = Data.Text.pack "cosmos.vesting.v1beta1.PermanentLockedAccount"
  packedMessageDescriptor _
    = "\n\
      \\SYNPermanentLockedAccount\DC2b\n\
      \\DC4base_vesting_account\CAN\SOH \SOH(\v2*.cosmos.vesting.v1beta1.BaseVestingAccountR\DC2baseVestingAccountB\EOT\208\222\US\SOH:*\136\160\US\NUL\138\231\176*!cosmos-sdk/PermanentLockedAccount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        baseVestingAccount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "base_vesting_account"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BaseVestingAccount)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'baseVestingAccount")) ::
              Data.ProtoLens.FieldDescriptor PermanentLockedAccount
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, baseVestingAccount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PermanentLockedAccount'_unknownFields
        (\ x__ y__ -> x__ {_PermanentLockedAccount'_unknownFields = y__})
  defMessage
    = PermanentLockedAccount'_constructor
        {_PermanentLockedAccount'baseVestingAccount = Prelude.Nothing,
         _PermanentLockedAccount'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PermanentLockedAccount
          -> Data.ProtoLens.Encoding.Bytes.Parser PermanentLockedAccount
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
                                       "base_vesting_account"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"baseVestingAccount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PermanentLockedAccount"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'baseVestingAccount") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PermanentLockedAccount where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PermanentLockedAccount'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PermanentLockedAccount'baseVestingAccount x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \$cosmos/vesting/v1beta1/vesting.proto\DC2\SYNcosmos.vesting.v1beta1\SUB\DC1amino/amino.proto\SUB\DC4gogoproto/gogo.proto\SUB\RScosmos/base/v1beta1/coin.proto\SUB\RScosmos/auth/v1beta1/auth.proto\"\205\EOT\n\
    \\DC2BaseVestingAccount\DC2I\n\
    \\fbase_account\CAN\SOH \SOH(\v2 .cosmos.auth.v1beta1.BaseAccountR\vbaseAccountB\EOT\208\222\US\SOH\DC2\140\SOH\n\
    \\DLEoriginal_vesting\CAN\STX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\SIoriginalVestingBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2\136\SOH\n\
    \\SOdelegated_free\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\rdelegatedFreeBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2\142\SOH\n\
    \\DC1delegated_vesting\CAN\EOT \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\DLEdelegatedVestingBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2\EM\n\
    \\bend_time\CAN\ENQ \SOH(\ETXR\aendTime:&\136\160\US\NUL\138\231\176*\GScosmos-sdk/BaseVestingAccount\"\203\SOH\n\
    \\CANContinuousVestingAccount\DC2b\n\
    \\DC4base_vesting_account\CAN\SOH \SOH(\v2*.cosmos.vesting.v1beta1.BaseVestingAccountR\DC2baseVestingAccountB\EOT\208\222\US\SOH\DC2\GS\n\
    \\n\
    \start_time\CAN\STX \SOH(\ETXR\tstartTime:,\136\160\US\NUL\138\231\176*#cosmos-sdk/ContinuousVestingAccount\"\166\SOH\n\
    \\NAKDelayedVestingAccount\DC2b\n\
    \\DC4base_vesting_account\CAN\SOH \SOH(\v2*.cosmos.vesting.v1beta1.BaseVestingAccountR\DC2baseVestingAccountB\EOT\208\222\US\SOH:)\136\160\US\NUL\138\231\176* cosmos-sdk/DelayedVestingAccount\"\155\SOH\n\
    \\ACKPeriod\DC2\SYN\n\
    \\ACKlength\CAN\SOH \SOH(\ETXR\ACKlength\DC2y\n\
    \\ACKamount\CAN\STX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\"\155\STX\n\
    \\SYNPeriodicVestingAccount\DC2b\n\
    \\DC4base_vesting_account\CAN\SOH \SOH(\v2*.cosmos.vesting.v1beta1.BaseVestingAccountR\DC2baseVestingAccountB\EOT\208\222\US\SOH\DC2\GS\n\
    \\n\
    \start_time\CAN\STX \SOH(\ETXR\tstartTime\DC2R\n\
    \\SIvesting_periods\CAN\ETX \ETX(\v2\RS.cosmos.vesting.v1beta1.PeriodR\SOvestingPeriodsB\t\200\222\US\NUL\168\231\176*\SOH:*\136\160\US\NUL\138\231\176*!cosmos-sdk/PeriodicVestingAccount\"\168\SOH\n\
    \\SYNPermanentLockedAccount\DC2b\n\
    \\DC4base_vesting_account\CAN\SOH \SOH(\v2*.cosmos.vesting.v1beta1.BaseVestingAccountR\DC2baseVestingAccountB\EOT\208\222\US\SOH:*\136\160\US\NUL\138\231\176*!cosmos-sdk/PermanentLockedAccountB3Z1github.com/cosmos/cosmos-sdk/x/auth/vesting/typesJ\171\ETB\n\
    \\ACK\DC2\EOT\NUL\NUL]\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\US\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL(\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULH\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NULH\n\
    \\159\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\f\NUL%\SOH\SUB\146\SOH BaseVestingAccount implements the VestingAccount interface. It contains all\n\
    \ the necessary fields needed for any vesting account implementation.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\f\b\SUB\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\r\STXG\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\r\STXG\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SO\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\129\244\ETX\DC2\ETX\SO\STX-\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DLE\STXT\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DLE\STX!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DLE\".\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DLE78\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\DLE9S\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\234\251\ETX\DC2\ETX\DLE:R\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\DC1\STX\SYN\EOT\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DC1\v#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC1$4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC178\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\EOT\DC19\SYN\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\DC2\EOT$\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\245\140\166\ENQ\DC2\ETX\DC3\EOT#\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\243\140\166\ENQ\DC2\ETX\DC4\EOT-\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\245\251\ETX\DC2\ETX\NAK\EOTI\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\ETB\STX\FS\EOT\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\ETB\v#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\ETB$2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\ETB56\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\EOT\ETB7\FS\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX\CAN\EOT$\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\245\140\166\ENQ\DC2\ETX\EM\EOT#\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\243\140\166\ENQ\DC2\ETX\SUB\EOT-\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\245\251\ETX\DC2\ETX\ESC\EOTI\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\GS\STX\"\EOT\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\GS\v#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\GS$5\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\GS89\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\EOT\GS:\"\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\233\251\ETX\DC2\ETX\RS\EOT$\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\ETX\b\245\140\166\ENQ\DC2\ETX\US\EOT#\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\ETX\b\243\140\166\ENQ\DC2\ETX \EOT-\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\245\251\ETX\DC2\ETX!\EOTI\n\
    \@\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX$\STX\NAK\SUB3 Vesting end time, as unix timestamp (in seconds).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX$\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX$\b\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX$\DC3\DC4\n\
    \\153\SOH\n\
    \\STX\EOT\SOH\DC2\EOT)\NUL0\SOH\SUB\140\SOH ContinuousVestingAccount implements the VestingAccount interface. It\n\
    \ continuously vests by unlocking coins linearly with respect to time.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX)\b \n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX*\STXM\n\
    \\SO\n\
    \\a\EOT\SOH\a\241\140\166\ENQ\DC2\ETX*\STXM\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX+\STX-\n\
    \\r\n\
    \\ACK\EOT\SOH\a\129\244\ETX\DC2\ETX+\STX-\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX-\STXI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX-\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX-\NAK)\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX-,-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX-.H\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\234\251\ETX\DC2\ETX-/G\n\
    \B\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX/\STX\ETB\SUB5 Vesting start time, as unix timestamp (in seconds).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX/\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX/\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX/\NAK\SYN\n\
    \\197\SOH\n\
    \\STX\EOT\STX\DC2\EOT5\NUL:\SOH\SUB\184\SOH DelayedVestingAccount implements the VestingAccount interface. It vests all\n\
    \ coins after a specific time, but non prior. In other words, it keeps them\n\
    \ locked until a specified time.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX5\b\GS\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX6\STXJ\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETX6\STXJ\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX7\STX-\n\
    \\r\n\
    \\ACK\EOT\STX\a\129\244\ETX\DC2\ETX7\STX-\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX9\STXI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX9\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX9\NAK)\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX9,-\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX9.H\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\234\251\ETX\DC2\ETX9/G\n\
    \Q\n\
    \\STX\EOT\ETX\DC2\EOT=\NULF\SOH\SUBE Period defines a length of time and amount of coins that will vest.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX=\b\SO\n\
    \*\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX?\STX/\SUB\GS Period duration in seconds.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX?\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX?\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX?-.\n\
    \\f\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT@\STXE\EOT\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX@\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX@\v#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX@$*\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX@-.\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\EOT@/E\ETX\n\
    \\SI\n\
    \\b\EOT\ETX\STX\SOH\b\233\251\ETX\DC2\ETXA\EOT$\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\SOH\b\245\140\166\ENQ\DC2\ETXB\EOT#\n\
    \\DLE\n\
    \\t\EOT\ETX\STX\SOH\b\243\140\166\ENQ\DC2\ETXC\EOT-\n\
    \\SI\n\
    \\b\EOT\ETX\STX\SOH\b\245\251\ETX\DC2\ETXD\EOTI\n\
    \\150\SOH\n\
    \\STX\EOT\EOT\DC2\EOTJ\NULQ\SOH\SUB\137\SOH PeriodicVestingAccount implements the VestingAccount interface. It\n\
    \ periodically vests by unlocking coins during each specified period.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXJ\b\RS\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXK\STXK\n\
    \\SO\n\
    \\a\EOT\EOT\a\241\140\166\ENQ\DC2\ETXK\STXK\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXL\STX-\n\
    \\r\n\
    \\ACK\EOT\EOT\a\129\244\ETX\DC2\ETXL\STX-\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXN\STXI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETXN\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXN\NAK)\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXN,-\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXN.H\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\234\251\ETX\DC2\ETXN/G\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXO\STX.\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXO\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXO\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXO,-\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXP\STXl\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETXP\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\ETXP\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXP\NAK$\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXP,-\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\b\DC2\ETXP.k\n\
    \\SI\n\
    \\b\EOT\EOT\STX\STX\b\233\251\ETX\DC2\ETXP/K\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\STX\b\245\140\166\ENQ\DC2\ETXPMj\n\
    \\135\STX\n\
    \\STX\EOT\ENQ\DC2\EOTX\NUL]\SOH\SUB\250\SOH PermanentLockedAccount implements the VestingAccount interface. It does\n\
    \ not ever release coins, locking them indefinitely. Coins in this account can\n\
    \ still be used for delegating and for governance votes even while locked.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXX\b\RS\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\a\DC2\ETXY\STXK\n\
    \\SO\n\
    \\a\EOT\ENQ\a\241\140\166\ENQ\DC2\ETXY\STXK\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\a\DC2\ETXZ\STX-\n\
    \\r\n\
    \\ACK\EOT\ENQ\a\129\244\ETX\DC2\ETXZ\STX-\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX\\\STXI\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\ETX\\\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX\\\NAK)\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX\\,-\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\b\DC2\ETX\\.H\n\
    \\SI\n\
    \\b\EOT\ENQ\STX\NUL\b\234\251\ETX\DC2\ETX\\/Gb\ACKproto3"