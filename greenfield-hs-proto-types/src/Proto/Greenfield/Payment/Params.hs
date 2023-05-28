{- This file was auto-generated from greenfield/payment/params.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Payment.Params (
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
     
         * 'Proto.Greenfield.Payment.Params_Fields.reserveTime' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Greenfield.Payment.Params_Fields.paymentAccountCountLimit' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Greenfield.Payment.Params_Fields.forcedSettleTime' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Greenfield.Payment.Params_Fields.maxAutoForceSettleNum' @:: Lens' Params Data.Word.Word64@
         * 'Proto.Greenfield.Payment.Params_Fields.feeDenom' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Payment.Params_Fields.validatorTaxRate' @:: Lens' Params Data.Text.Text@ -}
data Params
  = Params'_constructor {_Params'reserveTime :: !Data.Word.Word64,
                         _Params'paymentAccountCountLimit :: !Data.Word.Word64,
                         _Params'forcedSettleTime :: !Data.Word.Word64,
                         _Params'maxAutoForceSettleNum :: !Data.Word.Word64,
                         _Params'feeDenom :: !Data.Text.Text,
                         _Params'validatorTaxRate :: !Data.Text.Text,
                         _Params'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Params where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Params "reserveTime" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'reserveTime (\ x__ y__ -> x__ {_Params'reserveTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "paymentAccountCountLimit" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'paymentAccountCountLimit
           (\ x__ y__ -> x__ {_Params'paymentAccountCountLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "forcedSettleTime" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'forcedSettleTime
           (\ x__ y__ -> x__ {_Params'forcedSettleTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "maxAutoForceSettleNum" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'maxAutoForceSettleNum
           (\ x__ y__ -> x__ {_Params'maxAutoForceSettleNum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "feeDenom" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'feeDenom (\ x__ y__ -> x__ {_Params'feeDenom = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "validatorTaxRate" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'validatorTaxRate
           (\ x__ y__ -> x__ {_Params'validatorTaxRate = y__}))
        Prelude.id
instance Data.ProtoLens.Message Params where
  messageName _ = Data.Text.pack "greenfield.payment.Params"
  packedMessageDescriptor _
    = "\n\
      \\ACKParams\DC2:\n\
      \\freserve_time\CAN\SOH \SOH(\EOTR\vreserveTimeB\ETB\242\222\US\DC3yaml:\"reserve_time\"\DC2e\n\
      \\ESCpayment_account_count_limit\CAN\STX \SOH(\EOTR\CANpaymentAccountCountLimitB&\242\222\US\"yaml:\"payment_account_count_limit\"\DC2K\n\
      \\DC2forced_settle_time\CAN\ETX \SOH(\EOTR\DLEforcedSettleTimeB\GS\242\222\US\EMyaml:\"forced_settle_time\"\DC2^\n\
      \\EMmax_auto_force_settle_num\CAN\EOT \SOH(\EOTR\NAKmaxAutoForceSettleNumB$\242\222\US yaml:\"max_auto_force_settle_num\"\DC21\n\
      \\tfee_denom\CAN\ENQ \SOH(\tR\bfeeDenomB\DC4\242\222\US\DLEyaml:\"fee_denom\"\DC2j\n\
      \\DC2validator_tax_rate\CAN\ACK \SOH(\tR\DLEvalidatorTaxRateB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        reserveTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reserve_time"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"reserveTime")) ::
              Data.ProtoLens.FieldDescriptor Params
        paymentAccountCountLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payment_account_count_limit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"paymentAccountCountLimit")) ::
              Data.ProtoLens.FieldDescriptor Params
        forcedSettleTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "forced_settle_time"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"forcedSettleTime")) ::
              Data.ProtoLens.FieldDescriptor Params
        maxAutoForceSettleNum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_auto_force_settle_num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"maxAutoForceSettleNum")) ::
              Data.ProtoLens.FieldDescriptor Params
        feeDenom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fee_denom"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"feeDenom")) ::
              Data.ProtoLens.FieldDescriptor Params
        validatorTaxRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validator_tax_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"validatorTaxRate")) ::
              Data.ProtoLens.FieldDescriptor Params
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, reserveTime__field_descriptor),
           (Data.ProtoLens.Tag 2, paymentAccountCountLimit__field_descriptor),
           (Data.ProtoLens.Tag 3, forcedSettleTime__field_descriptor),
           (Data.ProtoLens.Tag 4, maxAutoForceSettleNum__field_descriptor),
           (Data.ProtoLens.Tag 5, feeDenom__field_descriptor),
           (Data.ProtoLens.Tag 6, validatorTaxRate__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Params'_unknownFields
        (\ x__ y__ -> x__ {_Params'_unknownFields = y__})
  defMessage
    = Params'_constructor
        {_Params'reserveTime = Data.ProtoLens.fieldDefault,
         _Params'paymentAccountCountLimit = Data.ProtoLens.fieldDefault,
         _Params'forcedSettleTime = Data.ProtoLens.fieldDefault,
         _Params'maxAutoForceSettleNum = Data.ProtoLens.fieldDefault,
         _Params'feeDenom = Data.ProtoLens.fieldDefault,
         _Params'validatorTaxRate = Data.ProtoLens.fieldDefault,
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "reserve_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"reserveTime") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "payment_account_count_limit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"paymentAccountCountLimit") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "forced_settle_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"forcedSettleTime") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "max_auto_force_settle_num"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxAutoForceSettleNum") y x)
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
                                       "fee_denom"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"feeDenom") y x)
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
                                       "validator_tax_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"validatorTaxRate") y x)
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
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"reserveTime") _x
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
                         (Data.ProtoLens.Field.field @"paymentAccountCountLimit") _x
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
                            (Data.ProtoLens.Field.field @"forcedSettleTime") _x
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
                               (Data.ProtoLens.Field.field @"maxAutoForceSettleNum") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"feeDenom") _x
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
                                     (Data.ProtoLens.Field.field @"validatorTaxRate") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData Params where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Params'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Params'reserveTime x__)
                (Control.DeepSeq.deepseq
                   (_Params'paymentAccountCountLimit x__)
                   (Control.DeepSeq.deepseq
                      (_Params'forcedSettleTime x__)
                      (Control.DeepSeq.deepseq
                         (_Params'maxAutoForceSettleNum x__)
                         (Control.DeepSeq.deepseq
                            (_Params'feeDenom x__)
                            (Control.DeepSeq.deepseq (_Params'validatorTaxRate x__) ()))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\USgreenfield/payment/params.proto\DC2\DC2greenfield.payment\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\"\247\ETX\n\
    \\ACKParams\DC2:\n\
    \\freserve_time\CAN\SOH \SOH(\EOTR\vreserveTimeB\ETB\242\222\US\DC3yaml:\"reserve_time\"\DC2e\n\
    \\ESCpayment_account_count_limit\CAN\STX \SOH(\EOTR\CANpaymentAccountCountLimitB&\242\222\US\"yaml:\"payment_account_count_limit\"\DC2K\n\
    \\DC2forced_settle_time\CAN\ETX \SOH(\EOTR\DLEforcedSettleTimeB\GS\242\222\US\EMyaml:\"forced_settle_time\"\DC2^\n\
    \\EMmax_auto_force_settle_num\CAN\EOT \SOH(\EOTR\NAKmaxAutoForceSettleNumB$\242\222\US yaml:\"max_auto_force_settle_num\"\DC21\n\
    \\tfee_denom\CAN\ENQ \SOH(\tR\bfeeDenomB\DC4\242\222\US\DLEyaml:\"fee_denom\"\DC2j\n\
    \\DC2validator_tax_rate\CAN\ACK \SOH(\tR\DLEvalidatorTaxRateB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.DecB1Z/github.com/bnb-chain/greenfield/x/payment/typesJ\199\t\n\
    \\ACK\DC2\EOT\NUL\NUL\ESC\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NULF\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ACK\NULF\n\
    \;\n\
    \\STX\EOT\NUL\DC2\EOT\t\NUL\ESC\SOH\SUB/ Params defines the parameters for the module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\t\b\SO\n\
    \e\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\v\STXK\SUBX Time duration which the buffer balance need to be reserved for NetOutFlow e.g. 6 month\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\v\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\v\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\v\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\v\SUBJ\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\238\251\ETX\DC2\ETX\v\ESCI\n\
    \U\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\r\STXi\SUBH The maximum number of payment accounts that can be created by one user\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\r\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\r\t$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\r'(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\r)h\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\238\251\ETX\DC2\ETX\r*g\n\
    \\164\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DLE\STXW\SUB\150\SOH Time duration threshold of forced settlement.\n\
    \ If dynamic balance is less than NetOutFlowRate * forcedSettleTime, the account can be forced settled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\DLE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DLE\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DLE\RS\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX\DLE V\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\238\251\ETX\DC2\ETX\DLE!U\n\
    \V\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DC2\STXe\SUBI the maximum number of accounts that will be forced settled in one block\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\DC2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DC2\t\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DC2%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX\DC2'd\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\238\251\ETX\DC2\ETX\DC2(c\n\
    \9\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\DC4\STXE\SUB, The denom of fee charged in payment module\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\DC4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\DC4\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\DC4\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX\DC4\ETBD\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\238\251\ETX\DC2\ETX\DC4\CANC\n\
    \d\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT\SYN\STX\SUB\EOT\SUBV The tax rate to pay for validators in storage payment. The default value is 1%(0.01)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\SYN\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\SYN\RS\US\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\EOT\SYN \SUB\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\202\214\ENQ\DC2\ETX\ETB\EOT(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\235\251\ETX\DC2\ETX\CAN\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\233\251\ETX\DC2\ETX\EM\EOT b\ACKproto3"