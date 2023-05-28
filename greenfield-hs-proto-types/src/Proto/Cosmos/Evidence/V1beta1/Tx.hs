{- This file was auto-generated from cosmos/evidence/v1beta1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Evidence.V1beta1.Tx (
        Msg(..), MsgSubmitEvidence(), MsgSubmitEvidenceResponse()
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
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
{- | Fields :
     
         * 'Proto.Cosmos.Evidence.V1beta1.Tx_Fields.submitter' @:: Lens' MsgSubmitEvidence Data.Text.Text@
         * 'Proto.Cosmos.Evidence.V1beta1.Tx_Fields.evidence' @:: Lens' MsgSubmitEvidence Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Evidence.V1beta1.Tx_Fields.maybe'evidence' @:: Lens' MsgSubmitEvidence (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data MsgSubmitEvidence
  = MsgSubmitEvidence'_constructor {_MsgSubmitEvidence'submitter :: !Data.Text.Text,
                                    _MsgSubmitEvidence'evidence :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                    _MsgSubmitEvidence'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSubmitEvidence where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgSubmitEvidence "submitter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitEvidence'submitter
           (\ x__ y__ -> x__ {_MsgSubmitEvidence'submitter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmitEvidence "evidence" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitEvidence'evidence
           (\ x__ y__ -> x__ {_MsgSubmitEvidence'evidence = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgSubmitEvidence "maybe'evidence" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitEvidence'evidence
           (\ x__ y__ -> x__ {_MsgSubmitEvidence'evidence = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgSubmitEvidence where
  messageName _
    = Data.Text.pack "cosmos.evidence.v1beta1.MsgSubmitEvidence"
  packedMessageDescriptor _
    = "\n\
      \\DC1MsgSubmitEvidence\DC26\n\
      \\tsubmitter\CAN\SOH \SOH(\tR\tsubmitterB\CAN\210\180-\DC4cosmos.AddressString\DC2V\n\
      \\bevidence\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\bevidenceB$\202\180- cosmos.evidence.v1beta1.Evidence:7\136\160\US\NUL\232\160\US\NUL\130\231\176*\tsubmitter\138\231\176*\FScosmos-sdk/MsgSubmitEvidence"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        submitter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "submitter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"submitter")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitEvidence
        evidence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "evidence"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'evidence")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitEvidence
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, submitter__field_descriptor),
           (Data.ProtoLens.Tag 2, evidence__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSubmitEvidence'_unknownFields
        (\ x__ y__ -> x__ {_MsgSubmitEvidence'_unknownFields = y__})
  defMessage
    = MsgSubmitEvidence'_constructor
        {_MsgSubmitEvidence'submitter = Data.ProtoLens.fieldDefault,
         _MsgSubmitEvidence'evidence = Prelude.Nothing,
         _MsgSubmitEvidence'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSubmitEvidence
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgSubmitEvidence
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
                                       "submitter"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"submitter") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "evidence"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"evidence") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgSubmitEvidence"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"submitter") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'evidence") _x
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
instance Control.DeepSeq.NFData MsgSubmitEvidence where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSubmitEvidence'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgSubmitEvidence'submitter x__)
                (Control.DeepSeq.deepseq (_MsgSubmitEvidence'evidence x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Evidence.V1beta1.Tx_Fields.hash' @:: Lens' MsgSubmitEvidenceResponse Data.ByteString.ByteString@ -}
data MsgSubmitEvidenceResponse
  = MsgSubmitEvidenceResponse'_constructor {_MsgSubmitEvidenceResponse'hash :: !Data.ByteString.ByteString,
                                            _MsgSubmitEvidenceResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSubmitEvidenceResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgSubmitEvidenceResponse "hash" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmitEvidenceResponse'hash
           (\ x__ y__ -> x__ {_MsgSubmitEvidenceResponse'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgSubmitEvidenceResponse where
  messageName _
    = Data.Text.pack
        "cosmos.evidence.v1beta1.MsgSubmitEvidenceResponse"
  packedMessageDescriptor _
    = "\n\
      \\EMMsgSubmitEvidenceResponse\DC2\DC2\n\
      \\EOThash\CAN\EOT \SOH(\fR\EOThash"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hash")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmitEvidenceResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 4, hash__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSubmitEvidenceResponse'_unknownFields
        (\ x__ y__
           -> x__ {_MsgSubmitEvidenceResponse'_unknownFields = y__})
  defMessage
    = MsgSubmitEvidenceResponse'_constructor
        {_MsgSubmitEvidenceResponse'hash = Data.ProtoLens.fieldDefault,
         _MsgSubmitEvidenceResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSubmitEvidenceResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgSubmitEvidenceResponse
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
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgSubmitEvidenceResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hash") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgSubmitEvidenceResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSubmitEvidenceResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MsgSubmitEvidenceResponse'hash x__) ())
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "cosmos.evidence.v1beta1"
  type ServiceMethods Msg = '["submitEvidence"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2p\n\
      \\SOSubmitEvidence\DC2*.cosmos.evidence.v1beta1.MsgSubmitEvidence\SUB2.cosmos.evidence.v1beta1.MsgSubmitEvidenceResponse\SUB\ENQ\128\231\176*\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "submitEvidence" where
  type MethodName Msg "submitEvidence" = "SubmitEvidence"
  type MethodInput Msg "submitEvidence" = MsgSubmitEvidence
  type MethodOutput Msg "submitEvidence" = MsgSubmitEvidenceResponse
  type MethodStreamingType Msg "submitEvidence" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ cosmos/evidence/v1beta1/tx.proto\DC2\ETBcosmos.evidence.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\EMgoogle/protobuf/any.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\ETBcosmos/msg/v1/msg.proto\SUB\DC1amino/amino.proto\"\220\SOH\n\
    \\DC1MsgSubmitEvidence\DC26\n\
    \\tsubmitter\CAN\SOH \SOH(\tR\tsubmitterB\CAN\210\180-\DC4cosmos.AddressString\DC2V\n\
    \\bevidence\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\bevidenceB$\202\180- cosmos.evidence.v1beta1.Evidence:7\136\160\US\NUL\232\160\US\NUL\130\231\176*\tsubmitter\138\231\176*\FScosmos-sdk/MsgSubmitEvidence\"/\n\
    \\EMMsgSubmitEvidenceResponse\DC2\DC2\n\
    \\EOThash\CAN\EOT \SOH(\fR\EOThash2~\n\
    \\ETXMsg\DC2p\n\
    \\SOSubmitEvidence\DC2*.cosmos.evidence.v1beta1.MsgSubmitEvidence\SUB2.cosmos.evidence.v1beta1.MsgSubmitEvidenceResponse\SUB\ENQ\128\231\176*\SOHB#Z\GScosmossdk.io/x/evidence/types\168\226\RS\SOHJ\251\b\n\
    \\ACK\DC2\EOT\NUL\NUL)\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL \n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NUL?\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NUL?\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL$\n\
    \\v\n\
    \\EOT\b\165\236\ETX\DC2\ETX\EOT\NUL$\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ACK\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL!\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL\ESC\n\
    \3\n\
    \\STX\ACK\NUL\DC2\EOT\r\NUL\DC3\SOH\SUB' Msg defines the evidence Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\r\b\v\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\SO\STX(\n\
    \\SO\n\
    \\a\ACK\NUL\ETX\240\140\166\ENQ\DC2\ETX\SO\STX(\n\
    \{\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\DC2\STXL\SUBn SubmitEvidence submits an arbitrary Evidence of misbehavior such as equivocation or\n\
    \ counterfactual signing.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC2\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC2\NAK&\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC21J\n\
    \\161\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL#\SOH\SUB\148\SOH MsgSubmitEvidence represents a message that supports submitting arbitrary\n\
    \ Evidence of misbehavior such as equivocation or counterfactual signing.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\EM\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\CAN\STX.\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX\CAN\STX.\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\EM\STXA\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\EM\STXA\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\ESC\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\141\244\ETX\DC2\ETX\ESC\STX-\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\FS\STX-\n\
    \\r\n\
    \\ACK\EOT\NUL\a\129\244\ETX\DC2\ETX\FS\STX-\n\
    \C\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\US\STXH\SUB6 submitter is the signer account address of evidence.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\US\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\US\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\US\ETBG\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\US\CANF\n\
    \<\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\"\STXk\SUB/ evidence defines the evidence of misbehavior.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\"\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\"\SYN\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\"!\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\"#j\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\201\214\ENQ\DC2\ETX\"$i\n\
    \U\n\
    \\STX\EOT\SOH\DC2\EOT&\NUL)\SOH\SUBI MsgSubmitEvidenceResponse defines the Msg/SubmitEvidence response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX&\b!\n\
    \5\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX(\STX\DC1\SUB( hash defines the hash of the evidence.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX(\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX(\b\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX(\SI\DLEb\ACKproto3"