{- This file was auto-generated from greenfield/sp/params.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Sp.Params (
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
     
         * 'Proto.Greenfield.Sp.Params_Fields.depositDenom' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Sp.Params_Fields.minDeposit' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Sp.Params_Fields.secondarySpStorePriceRatio' @:: Lens' Params Data.Text.Text@ -}
data Params
  = Params'_constructor {_Params'depositDenom :: !Data.Text.Text,
                         _Params'minDeposit :: !Data.Text.Text,
                         _Params'secondarySpStorePriceRatio :: !Data.Text.Text,
                         _Params'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Params where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Params "depositDenom" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'depositDenom
           (\ x__ y__ -> x__ {_Params'depositDenom = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "minDeposit" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'minDeposit (\ x__ y__ -> x__ {_Params'minDeposit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "secondarySpStorePriceRatio" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'secondarySpStorePriceRatio
           (\ x__ y__ -> x__ {_Params'secondarySpStorePriceRatio = y__}))
        Prelude.id
instance Data.ProtoLens.Message Params where
  messageName _ = Data.Text.pack "greenfield.sp.Params"
  packedMessageDescriptor _
    = "\n\
      \\ACKParams\DC2#\n\
      \\rdeposit_denom\CAN\SOH \SOH(\tR\fdepositDenom\DC2]\n\
      \\vmin_deposit\CAN\STX \SOH(\tR\n\
      \minDepositB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2\128\SOH\n\
      \\RSsecondary_sp_store_price_ratio\CAN\ETX \SOH(\tR\SUBsecondarySpStorePriceRatioB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec:\b\152\160\US\NUL\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        depositDenom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deposit_denom"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"depositDenom")) ::
              Data.ProtoLens.FieldDescriptor Params
        minDeposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_deposit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"minDeposit")) ::
              Data.ProtoLens.FieldDescriptor Params
        secondarySpStorePriceRatio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "secondary_sp_store_price_ratio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"secondarySpStorePriceRatio")) ::
              Data.ProtoLens.FieldDescriptor Params
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, depositDenom__field_descriptor),
           (Data.ProtoLens.Tag 2, minDeposit__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            secondarySpStorePriceRatio__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Params'_unknownFields
        (\ x__ y__ -> x__ {_Params'_unknownFields = y__})
  defMessage
    = Params'_constructor
        {_Params'depositDenom = Data.ProtoLens.fieldDefault,
         _Params'minDeposit = Data.ProtoLens.fieldDefault,
         _Params'secondarySpStorePriceRatio = Data.ProtoLens.fieldDefault,
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
                                       "deposit_denom"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"depositDenom") y x)
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
                                       "min_deposit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"minDeposit") y x)
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
                                       "secondary_sp_store_price_ratio"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"secondarySpStorePriceRatio") y x)
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
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"depositDenom") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"minDeposit") _x
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
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"secondarySpStorePriceRatio") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Params where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Params'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Params'depositDenom x__)
                (Control.DeepSeq.deepseq
                   (_Params'minDeposit x__)
                   (Control.DeepSeq.deepseq
                      (_Params'secondarySpStorePriceRatio x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\SUBgreenfield/sp/params.proto\DC2\rgreenfield.sp\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\"\153\STX\n\
    \\ACKParams\DC2#\n\
    \\rdeposit_denom\CAN\SOH \SOH(\tR\fdepositDenom\DC2]\n\
    \\vmin_deposit\CAN\STX \SOH(\tR\n\
    \minDepositB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2\128\SOH\n\
    \\RSsecondary_sp_store_price_ratio\CAN\ETX \SOH(\tR\SUBsecondarySpStorePriceRatioB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec:\b\152\160\US\NUL\232\160\US\SOHB,Z*github.com/bnb-chain/greenfield/x/sp/typesJ\210\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\ESC\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NULA\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ACK\NULA\n\
    \;\n\
    \\STX\EOT\NUL\DC2\EOT\t\NUL\ESC\SOH\SUB/ Params defines the parameters for the module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\t\b\SO\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\n\
    \\STX\"\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETX\n\
    \\STX\"\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\v\STX.\n\
    \\r\n\
    \\ACK\EOT\NUL\a\131\244\ETX\DC2\ETX\v\STX.\n\
    \C\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SO\STX\ESC\SUB6 deposit_denom defines the staking coin denomination.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SO\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SO\EM\SUB\n\
    \U\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\DLE\STX\DC4\EOT\SUBG min_deposit defines the minimum deposit amount for storage providers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DLE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DLE\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DLE\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\EOT\DLE\EM\DC4\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\DC1\EOT(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\235\251\ETX\DC2\ETX\DC2\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\DC3\EOT \n\
    \l\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\SYN\STX\SUB\EOT\SUB^ the ratio of the store price of the secondary sp to the primary sp, the default value is 80%\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\SYN\t'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\SYN*+\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\EOT\SYN,\SUB\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\202\214\ENQ\DC2\ETX\ETB\EOT(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\235\251\ETX\DC2\ETX\CAN\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX\EM\EOT b\ACKproto3"