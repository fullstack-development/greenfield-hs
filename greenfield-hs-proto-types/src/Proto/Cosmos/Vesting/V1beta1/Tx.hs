{- This file was auto-generated from cosmos/vesting/v1beta1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Vesting.V1beta1.Tx (
        Msg(..), MsgCreatePeriodicVestingAccount(),
        MsgCreatePeriodicVestingAccountResponse(),
        MsgCreatePermanentLockedAccount(),
        MsgCreatePermanentLockedAccountResponse(),
        MsgCreateVestingAccount(), MsgCreateVestingAccountResponse()
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
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.Cosmos.Vesting.V1beta1.Vesting
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Vesting.V1beta1.Tx_Fields.fromAddress' @:: Lens' MsgCreatePeriodicVestingAccount Data.Text.Text@
         * 'Proto.Cosmos.Vesting.V1beta1.Tx_Fields.toAddress' @:: Lens' MsgCreatePeriodicVestingAccount Data.Text.Text@
         * 'Proto.Cosmos.Vesting.V1beta1.Tx_Fields.startTime' @:: Lens' MsgCreatePeriodicVestingAccount Data.Int.Int64@
         * 'Proto.Cosmos.Vesting.V1beta1.Tx_Fields.vestingPeriods' @:: Lens' MsgCreatePeriodicVestingAccount [Proto.Cosmos.Vesting.V1beta1.Vesting.Period]@
         * 'Proto.Cosmos.Vesting.V1beta1.Tx_Fields.vec'vestingPeriods' @:: Lens' MsgCreatePeriodicVestingAccount (Data.Vector.Vector Proto.Cosmos.Vesting.V1beta1.Vesting.Period)@ -}
data MsgCreatePeriodicVestingAccount
  = MsgCreatePeriodicVestingAccount'_constructor {_MsgCreatePeriodicVestingAccount'fromAddress :: !Data.Text.Text,
                                                  _MsgCreatePeriodicVestingAccount'toAddress :: !Data.Text.Text,
                                                  _MsgCreatePeriodicVestingAccount'startTime :: !Data.Int.Int64,
                                                  _MsgCreatePeriodicVestingAccount'vestingPeriods :: !(Data.Vector.Vector Proto.Cosmos.Vesting.V1beta1.Vesting.Period),
                                                  _MsgCreatePeriodicVestingAccount'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreatePeriodicVestingAccount where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreatePeriodicVestingAccount "fromAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreatePeriodicVestingAccount'fromAddress
           (\ x__ y__
              -> x__ {_MsgCreatePeriodicVestingAccount'fromAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreatePeriodicVestingAccount "toAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreatePeriodicVestingAccount'toAddress
           (\ x__ y__
              -> x__ {_MsgCreatePeriodicVestingAccount'toAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreatePeriodicVestingAccount "startTime" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreatePeriodicVestingAccount'startTime
           (\ x__ y__
              -> x__ {_MsgCreatePeriodicVestingAccount'startTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreatePeriodicVestingAccount "vestingPeriods" [Proto.Cosmos.Vesting.V1beta1.Vesting.Period] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreatePeriodicVestingAccount'vestingPeriods
           (\ x__ y__
              -> x__ {_MsgCreatePeriodicVestingAccount'vestingPeriods = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgCreatePeriodicVestingAccount "vec'vestingPeriods" (Data.Vector.Vector Proto.Cosmos.Vesting.V1beta1.Vesting.Period) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreatePeriodicVestingAccount'vestingPeriods
           (\ x__ y__
              -> x__ {_MsgCreatePeriodicVestingAccount'vestingPeriods = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreatePeriodicVestingAccount where
  messageName _
    = Data.Text.pack
        "cosmos.vesting.v1beta1.MsgCreatePeriodicVestingAccount"
  packedMessageDescriptor _
    = "\n\
      \\USMsgCreatePeriodicVestingAccount\DC2!\n\
      \\ffrom_address\CAN\SOH \SOH(\tR\vfromAddress\DC2\GS\n\
      \\n\
      \to_address\CAN\STX \SOH(\tR\ttoAddress\DC2\GS\n\
      \\n\
      \start_time\CAN\ETX \SOH(\ETXR\tstartTime\DC2R\n\
      \\SIvesting_periods\CAN\EOT \ETX(\v2\RS.cosmos.vesting.v1beta1.PeriodR\SOvestingPeriodsB\t\200\222\US\NUL\168\231\176*\SOH:?\232\160\US\NUL\130\231\176*\ffrom_address\138\231\176*%cosmos-sdk/MsgCreatePeriodVestAccount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fromAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "from_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fromAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreatePeriodicVestingAccount
        toAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "to_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"toAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreatePeriodicVestingAccount
        startTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_time"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"startTime")) ::
              Data.ProtoLens.FieldDescriptor MsgCreatePeriodicVestingAccount
        vestingPeriods__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vesting_periods"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Vesting.V1beta1.Vesting.Period)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"vestingPeriods")) ::
              Data.ProtoLens.FieldDescriptor MsgCreatePeriodicVestingAccount
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fromAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, toAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, startTime__field_descriptor),
           (Data.ProtoLens.Tag 4, vestingPeriods__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreatePeriodicVestingAccount'_unknownFields
        (\ x__ y__
           -> x__ {_MsgCreatePeriodicVestingAccount'_unknownFields = y__})
  defMessage
    = MsgCreatePeriodicVestingAccount'_constructor
        {_MsgCreatePeriodicVestingAccount'fromAddress = Data.ProtoLens.fieldDefault,
         _MsgCreatePeriodicVestingAccount'toAddress = Data.ProtoLens.fieldDefault,
         _MsgCreatePeriodicVestingAccount'startTime = Data.ProtoLens.fieldDefault,
         _MsgCreatePeriodicVestingAccount'vestingPeriods = Data.Vector.Generic.empty,
         _MsgCreatePeriodicVestingAccount'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreatePeriodicVestingAccount
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Vesting.V1beta1.Vesting.Period
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreatePeriodicVestingAccount
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "from_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fromAddress") y x)
                                  mutable'vestingPeriods
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
                                       "to_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"toAddress") y x)
                                  mutable'vestingPeriods
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "start_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startTime") y x)
                                  mutable'vestingPeriods
                        34
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
          "MsgCreatePeriodicVestingAccount"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"fromAddress") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"toAddress") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"startTime") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                            (Data.ProtoLens.Field.field @"vec'vestingPeriods") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MsgCreatePeriodicVestingAccount where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreatePeriodicVestingAccount'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCreatePeriodicVestingAccount'fromAddress x__)
                (Control.DeepSeq.deepseq
                   (_MsgCreatePeriodicVestingAccount'toAddress x__)
                   (Control.DeepSeq.deepseq
                      (_MsgCreatePeriodicVestingAccount'startTime x__)
                      (Control.DeepSeq.deepseq
                         (_MsgCreatePeriodicVestingAccount'vestingPeriods x__) ()))))
{- | Fields :
      -}
data MsgCreatePeriodicVestingAccountResponse
  = MsgCreatePeriodicVestingAccountResponse'_constructor {_MsgCreatePeriodicVestingAccountResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreatePeriodicVestingAccountResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgCreatePeriodicVestingAccountResponse where
  messageName _
    = Data.Text.pack
        "cosmos.vesting.v1beta1.MsgCreatePeriodicVestingAccountResponse"
  packedMessageDescriptor _
    = "\n\
      \'MsgCreatePeriodicVestingAccountResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreatePeriodicVestingAccountResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_MsgCreatePeriodicVestingAccountResponse'_unknownFields = y__})
  defMessage
    = MsgCreatePeriodicVestingAccountResponse'_constructor
        {_MsgCreatePeriodicVestingAccountResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreatePeriodicVestingAccountResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreatePeriodicVestingAccountResponse
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
          (do loop Data.ProtoLens.defMessage)
          "MsgCreatePeriodicVestingAccountResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgCreatePeriodicVestingAccountResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreatePeriodicVestingAccountResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Vesting.V1beta1.Tx_Fields.fromAddress' @:: Lens' MsgCreatePermanentLockedAccount Data.Text.Text@
         * 'Proto.Cosmos.Vesting.V1beta1.Tx_Fields.toAddress' @:: Lens' MsgCreatePermanentLockedAccount Data.Text.Text@
         * 'Proto.Cosmos.Vesting.V1beta1.Tx_Fields.amount' @:: Lens' MsgCreatePermanentLockedAccount [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Vesting.V1beta1.Tx_Fields.vec'amount' @:: Lens' MsgCreatePermanentLockedAccount (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data MsgCreatePermanentLockedAccount
  = MsgCreatePermanentLockedAccount'_constructor {_MsgCreatePermanentLockedAccount'fromAddress :: !Data.Text.Text,
                                                  _MsgCreatePermanentLockedAccount'toAddress :: !Data.Text.Text,
                                                  _MsgCreatePermanentLockedAccount'amount :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                                  _MsgCreatePermanentLockedAccount'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreatePermanentLockedAccount where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreatePermanentLockedAccount "fromAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreatePermanentLockedAccount'fromAddress
           (\ x__ y__
              -> x__ {_MsgCreatePermanentLockedAccount'fromAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreatePermanentLockedAccount "toAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreatePermanentLockedAccount'toAddress
           (\ x__ y__
              -> x__ {_MsgCreatePermanentLockedAccount'toAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreatePermanentLockedAccount "amount" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreatePermanentLockedAccount'amount
           (\ x__ y__ -> x__ {_MsgCreatePermanentLockedAccount'amount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgCreatePermanentLockedAccount "vec'amount" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreatePermanentLockedAccount'amount
           (\ x__ y__ -> x__ {_MsgCreatePermanentLockedAccount'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreatePermanentLockedAccount where
  messageName _
    = Data.Text.pack
        "cosmos.vesting.v1beta1.MsgCreatePermanentLockedAccount"
  packedMessageDescriptor _
    = "\n\
      \\USMsgCreatePermanentLockedAccount\DC2:\n\
      \\ffrom_address\CAN\SOH \SOH(\tR\vfromAddressB\ETB\242\222\US\DC3yaml:\"from_address\"\DC24\n\
      \\n\
      \to_address\CAN\STX \SOH(\tR\ttoAddressB\NAK\242\222\US\DC1yaml:\"to_address\"\DC2y\n\
      \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:?\232\160\US\SOH\130\231\176*\ffrom_address\138\231\176*%cosmos-sdk/MsgCreatePermLockedAccount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fromAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "from_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fromAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreatePermanentLockedAccount
        toAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "to_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"toAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreatePermanentLockedAccount
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor MsgCreatePermanentLockedAccount
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fromAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, toAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreatePermanentLockedAccount'_unknownFields
        (\ x__ y__
           -> x__ {_MsgCreatePermanentLockedAccount'_unknownFields = y__})
  defMessage
    = MsgCreatePermanentLockedAccount'_constructor
        {_MsgCreatePermanentLockedAccount'fromAddress = Data.ProtoLens.fieldDefault,
         _MsgCreatePermanentLockedAccount'toAddress = Data.ProtoLens.fieldDefault,
         _MsgCreatePermanentLockedAccount'amount = Data.Vector.Generic.empty,
         _MsgCreatePermanentLockedAccount'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreatePermanentLockedAccount
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreatePermanentLockedAccount
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
                                       "from_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fromAddress") y x)
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
                                       "to_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"toAddress") y x)
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
          "MsgCreatePermanentLockedAccount"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"fromAddress") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"toAddress") _x
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
instance Control.DeepSeq.NFData MsgCreatePermanentLockedAccount where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreatePermanentLockedAccount'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCreatePermanentLockedAccount'fromAddress x__)
                (Control.DeepSeq.deepseq
                   (_MsgCreatePermanentLockedAccount'toAddress x__)
                   (Control.DeepSeq.deepseq
                      (_MsgCreatePermanentLockedAccount'amount x__) ())))
{- | Fields :
      -}
data MsgCreatePermanentLockedAccountResponse
  = MsgCreatePermanentLockedAccountResponse'_constructor {_MsgCreatePermanentLockedAccountResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreatePermanentLockedAccountResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgCreatePermanentLockedAccountResponse where
  messageName _
    = Data.Text.pack
        "cosmos.vesting.v1beta1.MsgCreatePermanentLockedAccountResponse"
  packedMessageDescriptor _
    = "\n\
      \'MsgCreatePermanentLockedAccountResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreatePermanentLockedAccountResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_MsgCreatePermanentLockedAccountResponse'_unknownFields = y__})
  defMessage
    = MsgCreatePermanentLockedAccountResponse'_constructor
        {_MsgCreatePermanentLockedAccountResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreatePermanentLockedAccountResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreatePermanentLockedAccountResponse
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
          (do loop Data.ProtoLens.defMessage)
          "MsgCreatePermanentLockedAccountResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgCreatePermanentLockedAccountResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreatePermanentLockedAccountResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Vesting.V1beta1.Tx_Fields.fromAddress' @:: Lens' MsgCreateVestingAccount Data.Text.Text@
         * 'Proto.Cosmos.Vesting.V1beta1.Tx_Fields.toAddress' @:: Lens' MsgCreateVestingAccount Data.Text.Text@
         * 'Proto.Cosmos.Vesting.V1beta1.Tx_Fields.amount' @:: Lens' MsgCreateVestingAccount [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Vesting.V1beta1.Tx_Fields.vec'amount' @:: Lens' MsgCreateVestingAccount (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Vesting.V1beta1.Tx_Fields.endTime' @:: Lens' MsgCreateVestingAccount Data.Int.Int64@
         * 'Proto.Cosmos.Vesting.V1beta1.Tx_Fields.delayed' @:: Lens' MsgCreateVestingAccount Prelude.Bool@ -}
data MsgCreateVestingAccount
  = MsgCreateVestingAccount'_constructor {_MsgCreateVestingAccount'fromAddress :: !Data.Text.Text,
                                          _MsgCreateVestingAccount'toAddress :: !Data.Text.Text,
                                          _MsgCreateVestingAccount'amount :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                          _MsgCreateVestingAccount'endTime :: !Data.Int.Int64,
                                          _MsgCreateVestingAccount'delayed :: !Prelude.Bool,
                                          _MsgCreateVestingAccount'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateVestingAccount where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgCreateVestingAccount "fromAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateVestingAccount'fromAddress
           (\ x__ y__ -> x__ {_MsgCreateVestingAccount'fromAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateVestingAccount "toAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateVestingAccount'toAddress
           (\ x__ y__ -> x__ {_MsgCreateVestingAccount'toAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateVestingAccount "amount" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateVestingAccount'amount
           (\ x__ y__ -> x__ {_MsgCreateVestingAccount'amount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgCreateVestingAccount "vec'amount" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateVestingAccount'amount
           (\ x__ y__ -> x__ {_MsgCreateVestingAccount'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateVestingAccount "endTime" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateVestingAccount'endTime
           (\ x__ y__ -> x__ {_MsgCreateVestingAccount'endTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgCreateVestingAccount "delayed" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgCreateVestingAccount'delayed
           (\ x__ y__ -> x__ {_MsgCreateVestingAccount'delayed = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgCreateVestingAccount where
  messageName _
    = Data.Text.pack "cosmos.vesting.v1beta1.MsgCreateVestingAccount"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgCreateVestingAccount\DC2;\n\
      \\ffrom_address\CAN\SOH \SOH(\tR\vfromAddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
      \\n\
      \to_address\CAN\STX \SOH(\tR\ttoAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2y\n\
      \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2\EM\n\
      \\bend_time\CAN\EOT \SOH(\ETXR\aendTime\DC2\CAN\n\
      \\adelayed\CAN\ENQ \SOH(\bR\adelayed:<\232\160\US\SOH\130\231\176*\ffrom_address\138\231\176*\"cosmos-sdk/MsgCreateVestingAccount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fromAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "from_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fromAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateVestingAccount
        toAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "to_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"toAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateVestingAccount
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateVestingAccount
        endTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end_time"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"endTime")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateVestingAccount
        delayed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delayed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"delayed")) ::
              Data.ProtoLens.FieldDescriptor MsgCreateVestingAccount
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fromAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, toAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, amount__field_descriptor),
           (Data.ProtoLens.Tag 4, endTime__field_descriptor),
           (Data.ProtoLens.Tag 5, delayed__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateVestingAccount'_unknownFields
        (\ x__ y__ -> x__ {_MsgCreateVestingAccount'_unknownFields = y__})
  defMessage
    = MsgCreateVestingAccount'_constructor
        {_MsgCreateVestingAccount'fromAddress = Data.ProtoLens.fieldDefault,
         _MsgCreateVestingAccount'toAddress = Data.ProtoLens.fieldDefault,
         _MsgCreateVestingAccount'amount = Data.Vector.Generic.empty,
         _MsgCreateVestingAccount'endTime = Data.ProtoLens.fieldDefault,
         _MsgCreateVestingAccount'delayed = Data.ProtoLens.fieldDefault,
         _MsgCreateVestingAccount'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateVestingAccount
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateVestingAccount
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
                                       "from_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fromAddress") y x)
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
                                       "to_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"toAddress") y x)
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
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "end_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endTime") y x)
                                  mutable'amount
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "delayed"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"delayed") y x)
                                  mutable'amount
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
          "MsgCreateVestingAccount"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"fromAddress") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"toAddress") _x
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
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"endTime") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"delayed") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0) _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData MsgCreateVestingAccount where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateVestingAccount'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgCreateVestingAccount'fromAddress x__)
                (Control.DeepSeq.deepseq
                   (_MsgCreateVestingAccount'toAddress x__)
                   (Control.DeepSeq.deepseq
                      (_MsgCreateVestingAccount'amount x__)
                      (Control.DeepSeq.deepseq
                         (_MsgCreateVestingAccount'endTime x__)
                         (Control.DeepSeq.deepseq
                            (_MsgCreateVestingAccount'delayed x__) ())))))
{- | Fields :
      -}
data MsgCreateVestingAccountResponse
  = MsgCreateVestingAccountResponse'_constructor {_MsgCreateVestingAccountResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgCreateVestingAccountResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgCreateVestingAccountResponse where
  messageName _
    = Data.Text.pack
        "cosmos.vesting.v1beta1.MsgCreateVestingAccountResponse"
  packedMessageDescriptor _
    = "\n\
      \\USMsgCreateVestingAccountResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgCreateVestingAccountResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgCreateVestingAccountResponse'_unknownFields = y__})
  defMessage
    = MsgCreateVestingAccountResponse'_constructor
        {_MsgCreateVestingAccountResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgCreateVestingAccountResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgCreateVestingAccountResponse
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
          (do loop Data.ProtoLens.defMessage)
          "MsgCreateVestingAccountResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgCreateVestingAccountResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgCreateVestingAccountResponse'_unknownFields x__) ()
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "cosmos.vesting.v1beta1"
  type ServiceMethods Msg = '["createPeriodicVestingAccount",
                              "createPermanentLockedAccount",
                              "createVestingAccount"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2\128\SOH\n\
      \\DC4CreateVestingAccount\DC2/.cosmos.vesting.v1beta1.MsgCreateVestingAccount\SUB7.cosmos.vesting.v1beta1.MsgCreateVestingAccountResponse\DC2\152\SOH\n\
      \\FSCreatePermanentLockedAccount\DC27.cosmos.vesting.v1beta1.MsgCreatePermanentLockedAccount\SUB?.cosmos.vesting.v1beta1.MsgCreatePermanentLockedAccountResponse\DC2\152\SOH\n\
      \\FSCreatePeriodicVestingAccount\DC27.cosmos.vesting.v1beta1.MsgCreatePeriodicVestingAccount\SUB?.cosmos.vesting.v1beta1.MsgCreatePeriodicVestingAccountResponse\SUB\ENQ\128\231\176*\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "createVestingAccount" where
  type MethodName Msg "createVestingAccount" = "CreateVestingAccount"
  type MethodInput Msg "createVestingAccount" = MsgCreateVestingAccount
  type MethodOutput Msg "createVestingAccount" = MsgCreateVestingAccountResponse
  type MethodStreamingType Msg "createVestingAccount" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "createPermanentLockedAccount" where
  type MethodName Msg "createPermanentLockedAccount" = "CreatePermanentLockedAccount"
  type MethodInput Msg "createPermanentLockedAccount" = MsgCreatePermanentLockedAccount
  type MethodOutput Msg "createPermanentLockedAccount" = MsgCreatePermanentLockedAccountResponse
  type MethodStreamingType Msg "createPermanentLockedAccount" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "createPeriodicVestingAccount" where
  type MethodName Msg "createPeriodicVestingAccount" = "CreatePeriodicVestingAccount"
  type MethodInput Msg "createPeriodicVestingAccount" = MsgCreatePeriodicVestingAccount
  type MethodOutput Msg "createPeriodicVestingAccount" = MsgCreatePeriodicVestingAccountResponse
  type MethodStreamingType Msg "createPeriodicVestingAccount" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\UScosmos/vesting/v1beta1/tx.proto\DC2\SYNcosmos.vesting.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\RScosmos/base/v1beta1/coin.proto\SUB\EMcosmos_proto/cosmos.proto\SUB$cosmos/vesting/v1beta1/vesting.proto\SUB\ETBcosmos/msg/v1/msg.proto\SUB\DC1amino/amino.proto\"\253\STX\n\
    \\ETBMsgCreateVestingAccount\DC2;\n\
    \\ffrom_address\CAN\SOH \SOH(\tR\vfromAddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
    \\n\
    \to_address\CAN\STX \SOH(\tR\ttoAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2y\n\
    \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2\EM\n\
    \\bend_time\CAN\EOT \SOH(\ETXR\aendTime\DC2\CAN\n\
    \\adelayed\CAN\ENQ \SOH(\bR\adelayed:<\232\160\US\SOH\130\231\176*\ffrom_address\138\231\176*\"cosmos-sdk/MsgCreateVestingAccount\"!\n\
    \\USMsgCreateVestingAccountResponse\"\207\STX\n\
    \\USMsgCreatePermanentLockedAccount\DC2:\n\
    \\ffrom_address\CAN\SOH \SOH(\tR\vfromAddressB\ETB\242\222\US\DC3yaml:\"from_address\"\DC24\n\
    \\n\
    \to_address\CAN\STX \SOH(\tR\ttoAddressB\NAK\242\222\US\DC1yaml:\"to_address\"\DC2y\n\
    \\ACKamount\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH:?\232\160\US\SOH\130\231\176*\ffrom_address\138\231\176*%cosmos-sdk/MsgCreatePermLockedAccount\")\n\
    \'MsgCreatePermanentLockedAccountResponse\"\151\STX\n\
    \\USMsgCreatePeriodicVestingAccount\DC2!\n\
    \\ffrom_address\CAN\SOH \SOH(\tR\vfromAddress\DC2\GS\n\
    \\n\
    \to_address\CAN\STX \SOH(\tR\ttoAddress\DC2\GS\n\
    \\n\
    \start_time\CAN\ETX \SOH(\ETXR\tstartTime\DC2R\n\
    \\SIvesting_periods\CAN\EOT \ETX(\v2\RS.cosmos.vesting.v1beta1.PeriodR\SOvestingPeriodsB\t\200\222\US\NUL\168\231\176*\SOH:?\232\160\US\NUL\130\231\176*\ffrom_address\138\231\176*%cosmos-sdk/MsgCreatePeriodVestAccount\")\n\
    \'MsgCreatePeriodicVestingAccountResponse2\197\ETX\n\
    \\ETXMsg\DC2\128\SOH\n\
    \\DC4CreateVestingAccount\DC2/.cosmos.vesting.v1beta1.MsgCreateVestingAccount\SUB7.cosmos.vesting.v1beta1.MsgCreateVestingAccountResponse\DC2\152\SOH\n\
    \\FSCreatePermanentLockedAccount\DC27.cosmos.vesting.v1beta1.MsgCreatePermanentLockedAccount\SUB?.cosmos.vesting.v1beta1.MsgCreatePermanentLockedAccountResponse\DC2\152\SOH\n\
    \\FSCreatePeriodicVestingAccount\DC27.cosmos.vesting.v1beta1.MsgCreatePeriodicVestingAccount\SUB?.cosmos.vesting.v1beta1.MsgCreatePeriodicVestingAccountResponse\SUB\ENQ\128\231\176*\SOHB3Z1github.com/cosmos/cosmos-sdk/x/auth/vesting/typesJ\215\SYN\n\
    \\ACK\DC2\EOT\NUL\NULe2\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\US\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL.\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL!\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULH\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\n\
    \\NULH\n\
    \/\n\
    \\STX\ACK\NUL\DC2\EOT\r\NUL\GS\SOH\SUB# Msg defines the bank Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\r\b\v\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\SO\STX(\n\
    \\SO\n\
    \\a\ACK\NUL\ETX\240\140\166\ENQ\DC2\ETX\SO\STX(\n\
    \^\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DC2\STX^\SUBQ CreateVestingAccount defines a method that enables creating a vesting\n\
    \ account.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC2\ACK\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC2\ESC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC2=\\\n\
    \\136\SOH\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\ETB\STXv\SUB{ CreatePermanentLockedAccount defines a method that enables creating a permanent\n\
    \ locked account.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\ETB\ACK\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\ETB#B\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\ETBMt\n\
    \\136\SOH\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX\FS\STXv\SUB{ CreatePeriodicVestingAccount defines a method that enables creating a\n\
    \ periodic vesting account.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\FS\ACK\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\FS#B\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\FSMt\n\
    \a\n\
    \\STX\EOT\NUL\DC2\EOT!\NUL3\SOH\SUBU MsgCreateVestingAccount defines a message that enables creating a vesting\n\
    \ account.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX!\b\US\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\"\STX1\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX\"\STX1\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX#\STXG\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX#\STXG\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX%\STX\"\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETX%\STX\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX'\STX`\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX'\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX'\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX'-.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX'/_\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX'0^\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX(\STX`\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX(\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX(\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX(-.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX(/_\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX(0^\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT)\STX.\EOT\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX)\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX)\v#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX)$*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX)-.\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\EOT)/.\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX*\EOT$\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\245\140\166\ENQ\DC2\ETX+\EOT#\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\243\140\166\ENQ\DC2\ETX,\EOT-\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\245\251\ETX\DC2\ETX-\EOTI\n\
    \8\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX1\STX\NAK\SUB+ end of vesting as unix time (in seconds).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX1\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX1\b\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX1\DC3\DC4\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX2\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX2\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX2\b\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX2\DC3\DC4\n\
    \`\n\
    \\STX\EOT\SOH\DC2\ETX6\NUL*\SUBU MsgCreateVestingAccountResponse defines the Msg/CreateVestingAccount response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX6\b'\n\
    \\139\SOH\n\
    \\STX\EOT\STX\DC2\EOT<\NULI\SOH\SUB\DEL MsgCreatePermanentLockedAccount defines a message that enables creating a permanent\n\
    \ locked account.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX<\b'\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX=\STX1\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETX=\STX1\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX>\STXJ\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETX>\STXJ\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX?\STX'\n\
    \\r\n\
    \\ACK\EOT\STX\a\141\244\ETX\DC2\ETX?\STX'\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXA\STX`\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETXA\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXA\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXA-.\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETXA/_\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\238\251\ETX\DC2\ETXA0^\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXB\STX^\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXB\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXB-.\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETXB/]\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\238\251\ETX\DC2\ETXB0\\\n\
    \\f\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOTC\STXH\EOT\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETXC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETXC\v#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXC$*\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXC-.\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\EOTC/H\ETX\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\233\251\ETX\DC2\ETXD\EOT$\n\
    \\DLE\n\
    \\t\EOT\STX\STX\STX\b\245\140\166\ENQ\DC2\ETXE\EOT#\n\
    \\DLE\n\
    \\t\EOT\STX\STX\STX\b\243\140\166\ENQ\DC2\ETXF\EOT-\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\245\251\ETX\DC2\ETXG\EOTI\n\
    \\137\SOH\n\
    \\STX\EOT\ETX\DC2\ETXN\NUL2\SUB~ MsgCreatePermanentLockedAccountResponse defines the Msg/CreatePermanentLockedAccount response type.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXN\b/\n\
    \z\n\
    \\STX\EOT\EOT\DC2\EOTT\NUL_\SOH\SUBn MsgCreateVestingAccount defines a message that enables creating a vesting\n\
    \ account.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXT\b'\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXU\STX1\n\
    \\SI\n\
    \\b\EOT\EOT\a\240\140\166\ENQ\NUL\DC2\ETXU\STX1\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXV\STXJ\n\
    \\SO\n\
    \\a\EOT\EOT\a\241\140\166\ENQ\DC2\ETXV\STXJ\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXX\STX#\n\
    \\r\n\
    \\ACK\EOT\EOT\a\141\244\ETX\DC2\ETXX\STX#\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXZ\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXZ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXZ\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXZ\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX[\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX[\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX[\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX[\CAN\EM\n\
    \:\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX]\STX&\SUB- start of vesting as unix time (in seconds).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX]\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX]\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX]$%\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX^\STXd\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\ETX^\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\ETX^\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX^\DC2!\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX^$%\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\b\DC2\ETX^&c\n\
    \\SI\n\
    \\b\EOT\EOT\STX\ETX\b\233\251\ETX\DC2\ETX^'C\n\
    \\DLE\n\
    \\t\EOT\EOT\STX\ETX\b\245\140\166\ENQ\DC2\ETX^Eb\n\
    \\130\SOH\n\
    \\STX\EOT\ENQ\DC2\ETXe\NUL2\SUBw MsgCreateVestingAccountResponse defines the Msg/CreatePeriodicVestingAccount\n\
    \ response type.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXe\b/b\ACKproto3"