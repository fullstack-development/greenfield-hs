{- This file was auto-generated from greenfield/bridge/params.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Bridge.Params (
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
     
         * 'Proto.Greenfield.Bridge.Params_Fields.transferOutRelayerFee' @:: Lens' Params Data.Text.Text@
         * 'Proto.Greenfield.Bridge.Params_Fields.transferOutAckRelayerFee' @:: Lens' Params Data.Text.Text@ -}
data Params
  = Params'_constructor {_Params'transferOutRelayerFee :: !Data.Text.Text,
                         _Params'transferOutAckRelayerFee :: !Data.Text.Text,
                         _Params'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Params where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Params "transferOutRelayerFee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'transferOutRelayerFee
           (\ x__ y__ -> x__ {_Params'transferOutRelayerFee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Params "transferOutAckRelayerFee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Params'transferOutAckRelayerFee
           (\ x__ y__ -> x__ {_Params'transferOutAckRelayerFee = y__}))
        Prelude.id
instance Data.ProtoLens.Message Params where
  messageName _ = Data.Text.pack "greenfield.bridge.Params"
  packedMessageDescriptor _
    = "\n\
      \\ACKParams\DC2u\n\
      \\CANtransfer_out_relayer_fee\CAN\SOH \SOH(\tR\NAKtransferOutRelayerFeeB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2|\n\
      \\FStransfer_out_ack_relayer_fee\CAN\STX \SOH(\tR\CANtransferOutAckRelayerFeeB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        transferOutRelayerFee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transfer_out_relayer_fee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"transferOutRelayerFee")) ::
              Data.ProtoLens.FieldDescriptor Params
        transferOutAckRelayerFee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transfer_out_ack_relayer_fee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"transferOutAckRelayerFee")) ::
              Data.ProtoLens.FieldDescriptor Params
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, transferOutRelayerFee__field_descriptor),
           (Data.ProtoLens.Tag 2, transferOutAckRelayerFee__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Params'_unknownFields
        (\ x__ y__ -> x__ {_Params'_unknownFields = y__})
  defMessage
    = Params'_constructor
        {_Params'transferOutRelayerFee = Data.ProtoLens.fieldDefault,
         _Params'transferOutAckRelayerFee = Data.ProtoLens.fieldDefault,
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
                                       "transfer_out_relayer_fee"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"transferOutRelayerFee") y x)
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
                                       "transfer_out_ack_relayer_fee"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"transferOutAckRelayerFee") y x)
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
                      (Data.ProtoLens.Field.field @"transferOutRelayerFee") _x
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
                         (Data.ProtoLens.Field.field @"transferOutAckRelayerFee") _x
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
instance Control.DeepSeq.NFData Params where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Params'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Params'transferOutRelayerFee x__)
                (Control.DeepSeq.deepseq
                   (_Params'transferOutAckRelayerFee x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RSgreenfield/bridge/params.proto\DC2\DC1greenfield.bridge\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\"\253\SOH\n\
    \\ACKParams\DC2u\n\
    \\CANtransfer_out_relayer_fee\CAN\SOH \SOH(\tR\NAKtransferOutRelayerFeeB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2|\n\
    \\FStransfer_out_ack_relayer_fee\CAN\STX \SOH(\tR\CANtransferOutAckRelayerFeeB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.IntB0Z.github.com/bnb-chain/greenfield/x/bridge/typesJ\137\EOT\n\
    \\ACK\DC2\EOT\NUL\NUL\SYN\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\SUB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NULE\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ACK\NULE\n\
    \;\n\
    \\STX\EOT\NUL\DC2\EOT\t\NUL\SYN\SOH\SUB/ Params defines the parameters for the module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\t\b\SO\n\
    \?\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\v\STX\SI\EOT\SUB1 Relayer fee for the cross chain transfer out tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\v\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\v\t!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\v$%\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\EOT\v&\SI\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\f\EOT(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\235\251\ETX\DC2\ETX\r\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\SO\EOT \n\
    \^\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\DC1\STX\NAK\EOT\SUBP Relayer fee for the ACK or FAIL_ACK package of the cross chain transfer out tx\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC1\t%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC1()\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\EOT\DC1*\NAK\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\DC2\EOT(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\235\251\ETX\DC2\ETX\DC3\EOTE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\233\251\ETX\DC2\ETX\DC4\EOT b\ACKproto3"