{- This file was auto-generated from greenfield/challenge/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Challenge.Tx (
        Msg(..), MsgAttest(), MsgAttestResponse(), MsgSubmit(),
        MsgSubmitResponse(), MsgUpdateParams(), MsgUpdateParamsResponse()
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
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Greenfield.Challenge.Params
import qualified Proto.Greenfield.Challenge.Types
{- | Fields :
     
         * 'Proto.Greenfield.Challenge.Tx_Fields.submitter' @:: Lens' MsgAttest Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Tx_Fields.challengeId' @:: Lens' MsgAttest Data.Word.Word64@
         * 'Proto.Greenfield.Challenge.Tx_Fields.objectId' @:: Lens' MsgAttest Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Tx_Fields.spOperatorAddress' @:: Lens' MsgAttest Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Tx_Fields.voteResult' @:: Lens' MsgAttest Proto.Greenfield.Challenge.Types.VoteResult@
         * 'Proto.Greenfield.Challenge.Tx_Fields.challengerAddress' @:: Lens' MsgAttest Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Tx_Fields.voteValidatorSet' @:: Lens' MsgAttest [Data.Word.Word64]@
         * 'Proto.Greenfield.Challenge.Tx_Fields.vec'voteValidatorSet' @:: Lens' MsgAttest (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Greenfield.Challenge.Tx_Fields.voteAggSignature' @:: Lens' MsgAttest Data.ByteString.ByteString@ -}
data MsgAttest
  = MsgAttest'_constructor {_MsgAttest'submitter :: !Data.Text.Text,
                            _MsgAttest'challengeId :: !Data.Word.Word64,
                            _MsgAttest'objectId :: !Data.Text.Text,
                            _MsgAttest'spOperatorAddress :: !Data.Text.Text,
                            _MsgAttest'voteResult :: !Proto.Greenfield.Challenge.Types.VoteResult,
                            _MsgAttest'challengerAddress :: !Data.Text.Text,
                            _MsgAttest'voteValidatorSet :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                            _MsgAttest'voteAggSignature :: !Data.ByteString.ByteString,
                            _MsgAttest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgAttest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgAttest "submitter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgAttest'submitter
           (\ x__ y__ -> x__ {_MsgAttest'submitter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgAttest "challengeId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgAttest'challengeId
           (\ x__ y__ -> x__ {_MsgAttest'challengeId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgAttest "objectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgAttest'objectId (\ x__ y__ -> x__ {_MsgAttest'objectId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgAttest "spOperatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgAttest'spOperatorAddress
           (\ x__ y__ -> x__ {_MsgAttest'spOperatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgAttest "voteResult" Proto.Greenfield.Challenge.Types.VoteResult where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgAttest'voteResult
           (\ x__ y__ -> x__ {_MsgAttest'voteResult = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgAttest "challengerAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgAttest'challengerAddress
           (\ x__ y__ -> x__ {_MsgAttest'challengerAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgAttest "voteValidatorSet" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgAttest'voteValidatorSet
           (\ x__ y__ -> x__ {_MsgAttest'voteValidatorSet = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgAttest "vec'voteValidatorSet" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgAttest'voteValidatorSet
           (\ x__ y__ -> x__ {_MsgAttest'voteValidatorSet = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgAttest "voteAggSignature" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgAttest'voteAggSignature
           (\ x__ y__ -> x__ {_MsgAttest'voteAggSignature = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgAttest where
  messageName _ = Data.Text.pack "greenfield.challenge.MsgAttest"
  packedMessageDescriptor _
    = "\n\
      \\tMsgAttest\DC26\n\
      \\tsubmitter\CAN\SOH \SOH(\tR\tsubmitterB\CAN\210\180-\DC4cosmos.AddressString\DC2!\n\
      \\fchallenge_id\CAN\STX \SOH(\EOTR\vchallengeId\DC28\n\
      \\tobject_id\CAN\ETX \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2.\n\
      \\DC3sp_operator_address\CAN\EOT \SOH(\tR\DC1spOperatorAddress\DC2A\n\
      \\vvote_result\CAN\ENQ \SOH(\SO2 .greenfield.challenge.VoteResultR\n\
      \voteResult\DC2-\n\
      \\DC2challenger_address\CAN\ACK \SOH(\tR\DC1challengerAddress\DC2,\n\
      \\DC2vote_validator_set\CAN\a \ETX(\ACKR\DLEvoteValidatorSet\DC2,\n\
      \\DC2vote_agg_signature\CAN\b \SOH(\fR\DLEvoteAggSignature:\SO\130\231\176*\tsubmitter"
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
              Data.ProtoLens.FieldDescriptor MsgAttest
        challengeId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "challenge_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"challengeId")) ::
              Data.ProtoLens.FieldDescriptor MsgAttest
        objectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectId")) ::
              Data.ProtoLens.FieldDescriptor MsgAttest
        spOperatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sp_operator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"spOperatorAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgAttest
        voteResult__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vote_result"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Challenge.Types.VoteResult)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"voteResult")) ::
              Data.ProtoLens.FieldDescriptor MsgAttest
        challengerAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "challenger_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"challengerAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgAttest
        voteValidatorSet__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vote_validator_set"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Fixed64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"voteValidatorSet")) ::
              Data.ProtoLens.FieldDescriptor MsgAttest
        voteAggSignature__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vote_agg_signature"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"voteAggSignature")) ::
              Data.ProtoLens.FieldDescriptor MsgAttest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, submitter__field_descriptor),
           (Data.ProtoLens.Tag 2, challengeId__field_descriptor),
           (Data.ProtoLens.Tag 3, objectId__field_descriptor),
           (Data.ProtoLens.Tag 4, spOperatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 5, voteResult__field_descriptor),
           (Data.ProtoLens.Tag 6, challengerAddress__field_descriptor),
           (Data.ProtoLens.Tag 7, voteValidatorSet__field_descriptor),
           (Data.ProtoLens.Tag 8, voteAggSignature__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgAttest'_unknownFields
        (\ x__ y__ -> x__ {_MsgAttest'_unknownFields = y__})
  defMessage
    = MsgAttest'_constructor
        {_MsgAttest'submitter = Data.ProtoLens.fieldDefault,
         _MsgAttest'challengeId = Data.ProtoLens.fieldDefault,
         _MsgAttest'objectId = Data.ProtoLens.fieldDefault,
         _MsgAttest'spOperatorAddress = Data.ProtoLens.fieldDefault,
         _MsgAttest'voteResult = Data.ProtoLens.fieldDefault,
         _MsgAttest'challengerAddress = Data.ProtoLens.fieldDefault,
         _MsgAttest'voteValidatorSet = Data.Vector.Generic.empty,
         _MsgAttest'voteAggSignature = Data.ProtoLens.fieldDefault,
         _MsgAttest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgAttest
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgAttest
        loop x mutable'voteValidatorSet
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'voteValidatorSet <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'voteValidatorSet)
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
                              (Data.ProtoLens.Field.field @"vec'voteValidatorSet")
                              frozen'voteValidatorSet x))
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
                                  mutable'voteValidatorSet
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "challenge_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"challengeId") y x)
                                  mutable'voteValidatorSet
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
                                       "object_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectId") y x)
                                  mutable'voteValidatorSet
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
                                       "sp_operator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"spOperatorAddress") y x)
                                  mutable'voteValidatorSet
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "vote_result"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"voteResult") y x)
                                  mutable'voteValidatorSet
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
                                       "challenger_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"challengerAddress") y x)
                                  mutable'voteValidatorSet
                        57
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getFixed64
                                        "vote_validator_set"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'voteValidatorSet y)
                                loop x v
                        58
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getFixed64
                                                                    "vote_validator_set"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'voteValidatorSet)
                                loop x y
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "vote_agg_signature"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"voteAggSignature") y x)
                                  mutable'voteValidatorSet
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'voteValidatorSet
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'voteValidatorSet <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'voteValidatorSet)
          "MsgAttest"
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
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"challengeId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"objectId") _x
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
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"spOperatorAddress") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"voteResult") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"challengerAddress") _x
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
                                  p = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'voteValidatorSet") _x
                                in
                                  if Data.Vector.Generic.null p then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           (Data.ProtoLens.Encoding.Bytes.runBuilder
                                              (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                 Data.ProtoLens.Encoding.Bytes.putFixed64 p))))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"voteAggSignature") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData MsgAttest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgAttest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgAttest'submitter x__)
                (Control.DeepSeq.deepseq
                   (_MsgAttest'challengeId x__)
                   (Control.DeepSeq.deepseq
                      (_MsgAttest'objectId x__)
                      (Control.DeepSeq.deepseq
                         (_MsgAttest'spOperatorAddress x__)
                         (Control.DeepSeq.deepseq
                            (_MsgAttest'voteResult x__)
                            (Control.DeepSeq.deepseq
                               (_MsgAttest'challengerAddress x__)
                               (Control.DeepSeq.deepseq
                                  (_MsgAttest'voteValidatorSet x__)
                                  (Control.DeepSeq.deepseq
                                     (_MsgAttest'voteAggSignature x__) ()))))))))
{- | Fields :
      -}
data MsgAttestResponse
  = MsgAttestResponse'_constructor {_MsgAttestResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgAttestResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgAttestResponse where
  messageName _
    = Data.Text.pack "greenfield.challenge.MsgAttestResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1MsgAttestResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgAttestResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgAttestResponse'_unknownFields = y__})
  defMessage
    = MsgAttestResponse'_constructor
        {_MsgAttestResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgAttestResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgAttestResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgAttestResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgAttestResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgAttestResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Challenge.Tx_Fields.challenger' @:: Lens' MsgSubmit Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Tx_Fields.spOperatorAddress' @:: Lens' MsgSubmit Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Tx_Fields.bucketName' @:: Lens' MsgSubmit Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Tx_Fields.objectName' @:: Lens' MsgSubmit Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Tx_Fields.segmentIndex' @:: Lens' MsgSubmit Data.Word.Word32@
         * 'Proto.Greenfield.Challenge.Tx_Fields.randomIndex' @:: Lens' MsgSubmit Prelude.Bool@ -}
data MsgSubmit
  = MsgSubmit'_constructor {_MsgSubmit'challenger :: !Data.Text.Text,
                            _MsgSubmit'spOperatorAddress :: !Data.Text.Text,
                            _MsgSubmit'bucketName :: !Data.Text.Text,
                            _MsgSubmit'objectName :: !Data.Text.Text,
                            _MsgSubmit'segmentIndex :: !Data.Word.Word32,
                            _MsgSubmit'randomIndex :: !Prelude.Bool,
                            _MsgSubmit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSubmit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgSubmit "challenger" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmit'challenger
           (\ x__ y__ -> x__ {_MsgSubmit'challenger = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmit "spOperatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmit'spOperatorAddress
           (\ x__ y__ -> x__ {_MsgSubmit'spOperatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmit "bucketName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmit'bucketName
           (\ x__ y__ -> x__ {_MsgSubmit'bucketName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmit "objectName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmit'objectName
           (\ x__ y__ -> x__ {_MsgSubmit'objectName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmit "segmentIndex" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmit'segmentIndex
           (\ x__ y__ -> x__ {_MsgSubmit'segmentIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgSubmit "randomIndex" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgSubmit'randomIndex
           (\ x__ y__ -> x__ {_MsgSubmit'randomIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgSubmit where
  messageName _ = Data.Text.pack "greenfield.challenge.MsgSubmit"
  packedMessageDescriptor _
    = "\n\
      \\tMsgSubmit\DC28\n\
      \\n\
      \challenger\CAN\SOH \SOH(\tR\n\
      \challengerB\CAN\210\180-\DC4cosmos.AddressString\DC2H\n\
      \\DC3sp_operator_address\CAN\STX \SOH(\tR\DC1spOperatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
      \\vbucket_name\CAN\ETX \SOH(\tR\n\
      \bucketName\DC2\US\n\
      \\vobject_name\CAN\EOT \SOH(\tR\n\
      \objectName\DC2#\n\
      \\rsegment_index\CAN\ENQ \SOH(\rR\fsegmentIndex\DC2!\n\
      \\frandom_index\CAN\ACK \SOH(\bR\vrandomIndex:\SI\130\231\176*\n\
      \challenger"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        challenger__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "challenger"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"challenger")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmit
        spOperatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sp_operator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"spOperatorAddress")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmit
        bucketName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bucket_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bucketName")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmit
        objectName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "object_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"objectName")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmit
        segmentIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "segment_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"segmentIndex")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmit
        randomIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "random_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"randomIndex")) ::
              Data.ProtoLens.FieldDescriptor MsgSubmit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, challenger__field_descriptor),
           (Data.ProtoLens.Tag 2, spOperatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, bucketName__field_descriptor),
           (Data.ProtoLens.Tag 4, objectName__field_descriptor),
           (Data.ProtoLens.Tag 5, segmentIndex__field_descriptor),
           (Data.ProtoLens.Tag 6, randomIndex__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSubmit'_unknownFields
        (\ x__ y__ -> x__ {_MsgSubmit'_unknownFields = y__})
  defMessage
    = MsgSubmit'_constructor
        {_MsgSubmit'challenger = Data.ProtoLens.fieldDefault,
         _MsgSubmit'spOperatorAddress = Data.ProtoLens.fieldDefault,
         _MsgSubmit'bucketName = Data.ProtoLens.fieldDefault,
         _MsgSubmit'objectName = Data.ProtoLens.fieldDefault,
         _MsgSubmit'segmentIndex = Data.ProtoLens.fieldDefault,
         _MsgSubmit'randomIndex = Data.ProtoLens.fieldDefault,
         _MsgSubmit'_unknownFields = []}
  parseMessage
    = let
        loop :: MsgSubmit -> Data.ProtoLens.Encoding.Bytes.Parser MsgSubmit
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
                                       "challenger"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"challenger") y x)
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
                                       "sp_operator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"spOperatorAddress") y x)
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
                                       "bucket_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bucketName") y x)
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
                                       "object_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"objectName") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "segment_index"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"segmentIndex") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "random_index"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"randomIndex") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgSubmit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"challenger") _x
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
                         (Data.ProtoLens.Field.field @"spOperatorAddress") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"bucketName") _x
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
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"objectName") _x
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"segmentIndex") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"randomIndex") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (\ b -> if b then 1 else 0) _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData MsgSubmit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSubmit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgSubmit'challenger x__)
                (Control.DeepSeq.deepseq
                   (_MsgSubmit'spOperatorAddress x__)
                   (Control.DeepSeq.deepseq
                      (_MsgSubmit'bucketName x__)
                      (Control.DeepSeq.deepseq
                         (_MsgSubmit'objectName x__)
                         (Control.DeepSeq.deepseq
                            (_MsgSubmit'segmentIndex x__)
                            (Control.DeepSeq.deepseq (_MsgSubmit'randomIndex x__) ()))))))
{- | Fields :
      -}
data MsgSubmitResponse
  = MsgSubmitResponse'_constructor {_MsgSubmitResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgSubmitResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgSubmitResponse where
  messageName _
    = Data.Text.pack "greenfield.challenge.MsgSubmitResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1MsgSubmitResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgSubmitResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgSubmitResponse'_unknownFields = y__})
  defMessage
    = MsgSubmitResponse'_constructor
        {_MsgSubmitResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgSubmitResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgSubmitResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgSubmitResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgSubmitResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgSubmitResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Challenge.Tx_Fields.authority' @:: Lens' MsgUpdateParams Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Tx_Fields.params' @:: Lens' MsgUpdateParams Proto.Greenfield.Challenge.Params.Params@
         * 'Proto.Greenfield.Challenge.Tx_Fields.maybe'params' @:: Lens' MsgUpdateParams (Prelude.Maybe Proto.Greenfield.Challenge.Params.Params)@ -}
data MsgUpdateParams
  = MsgUpdateParams'_constructor {_MsgUpdateParams'authority :: !Data.Text.Text,
                                  _MsgUpdateParams'params :: !(Prelude.Maybe Proto.Greenfield.Challenge.Params.Params),
                                  _MsgUpdateParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgUpdateParams "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'authority
           (\ x__ y__ -> x__ {_MsgUpdateParams'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgUpdateParams "params" Proto.Greenfield.Challenge.Params.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgUpdateParams "maybe'params" (Prelude.Maybe Proto.Greenfield.Challenge.Params.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgUpdateParams'params
           (\ x__ y__ -> x__ {_MsgUpdateParams'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgUpdateParams where
  messageName _
    = Data.Text.pack "greenfield.challenge.MsgUpdateParams"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgUpdateParams\DC26\n\
      \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2:\n\
      \\ACKparams\CAN\STX \SOH(\v2\FS.greenfield.challenge.ParamsR\ACKparamsB\EOT\200\222\US\NUL:\SO\130\231\176*\tauthority"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        authority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authority")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateParams
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Challenge.Params.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor MsgUpdateParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authority__field_descriptor),
           (Data.ProtoLens.Tag 2, params__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateParams'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateParams'_unknownFields = y__})
  defMessage
    = MsgUpdateParams'_constructor
        {_MsgUpdateParams'authority = Data.ProtoLens.fieldDefault,
         _MsgUpdateParams'params = Prelude.Nothing,
         _MsgUpdateParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateParams
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateParams
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
                                       "authority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"authority") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "params"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"params") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgUpdateParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"authority") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'params") _x
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
instance Control.DeepSeq.NFData MsgUpdateParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateParams'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgUpdateParams'authority x__)
                (Control.DeepSeq.deepseq (_MsgUpdateParams'params x__) ()))
{- | Fields :
      -}
data MsgUpdateParamsResponse
  = MsgUpdateParamsResponse'_constructor {_MsgUpdateParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgUpdateParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgUpdateParamsResponse where
  messageName _
    = Data.Text.pack "greenfield.challenge.MsgUpdateParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\ETBMsgUpdateParamsResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgUpdateParamsResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgUpdateParamsResponse'_unknownFields = y__})
  defMessage
    = MsgUpdateParamsResponse'_constructor
        {_MsgUpdateParamsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgUpdateParamsResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgUpdateParamsResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgUpdateParamsResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgUpdateParamsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgUpdateParamsResponse'_unknownFields x__) ()
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "greenfield.challenge"
  type ServiceMethods Msg = '["attest", "submit", "updateParams"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2R\n\
      \\ACKSubmit\DC2\US.greenfield.challenge.MsgSubmit\SUB'.greenfield.challenge.MsgSubmitResponse\DC2R\n\
      \\ACKAttest\DC2\US.greenfield.challenge.MsgAttest\SUB'.greenfield.challenge.MsgAttestResponse\DC2d\n\
      \\fUpdateParams\DC2%.greenfield.challenge.MsgUpdateParams\SUB-.greenfield.challenge.MsgUpdateParamsResponse"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "submit" where
  type MethodName Msg "submit" = "Submit"
  type MethodInput Msg "submit" = MsgSubmit
  type MethodOutput Msg "submit" = MsgSubmitResponse
  type MethodStreamingType Msg "submit" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "attest" where
  type MethodName Msg "attest" = "Attest"
  type MethodInput Msg "attest" = MsgAttest
  type MethodOutput Msg "attest" = MsgAttestResponse
  type MethodStreamingType Msg "attest" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "updateParams" where
  type MethodName Msg "updateParams" = "UpdateParams"
  type MethodInput Msg "updateParams" = MsgUpdateParams
  type MethodOutput Msg "updateParams" = MsgUpdateParamsResponse
  type MethodStreamingType Msg "updateParams" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\GSgreenfield/challenge/tx.proto\DC2\DC4greenfield.challenge\SUB\ETBcosmos/msg/v1/msg.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB!greenfield/challenge/params.proto\SUB greenfield/challenge/types.proto\"\170\STX\n\
    \\tMsgSubmit\DC28\n\
    \\n\
    \challenger\CAN\SOH \SOH(\tR\n\
    \challengerB\CAN\210\180-\DC4cosmos.AddressString\DC2H\n\
    \\DC3sp_operator_address\CAN\STX \SOH(\tR\DC1spOperatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2\US\n\
    \\vbucket_name\CAN\ETX \SOH(\tR\n\
    \bucketName\DC2\US\n\
    \\vobject_name\CAN\EOT \SOH(\tR\n\
    \objectName\DC2#\n\
    \\rsegment_index\CAN\ENQ \SOH(\rR\fsegmentIndex\DC2!\n\
    \\frandom_index\CAN\ACK \SOH(\bR\vrandomIndex:\SI\130\231\176*\n\
    \challenger\"\DC3\n\
    \\DC1MsgSubmitResponse\"\174\ETX\n\
    \\tMsgAttest\DC26\n\
    \\tsubmitter\CAN\SOH \SOH(\tR\tsubmitterB\CAN\210\180-\DC4cosmos.AddressString\DC2!\n\
    \\fchallenge_id\CAN\STX \SOH(\EOTR\vchallengeId\DC28\n\
    \\tobject_id\CAN\ETX \SOH(\tR\bobjectIdB\ESC\200\222\US\NUL\218\222\US\EOTUint\210\180-\vcosmos.Uint\DC2.\n\
    \\DC3sp_operator_address\CAN\EOT \SOH(\tR\DC1spOperatorAddress\DC2A\n\
    \\vvote_result\CAN\ENQ \SOH(\SO2 .greenfield.challenge.VoteResultR\n\
    \voteResult\DC2-\n\
    \\DC2challenger_address\CAN\ACK \SOH(\tR\DC1challengerAddress\DC2,\n\
    \\DC2vote_validator_set\CAN\a \ETX(\ACKR\DLEvoteValidatorSet\DC2,\n\
    \\DC2vote_agg_signature\CAN\b \SOH(\fR\DLEvoteAggSignature:\SO\130\231\176*\tsubmitter\"\DC3\n\
    \\DC1MsgAttestResponse\"\149\SOH\n\
    \\SIMsgUpdateParams\DC26\n\
    \\tauthority\CAN\SOH \SOH(\tR\tauthorityB\CAN\210\180-\DC4cosmos.AddressString\DC2:\n\
    \\ACKparams\CAN\STX \SOH(\v2\FS.greenfield.challenge.ParamsR\ACKparamsB\EOT\200\222\US\NUL:\SO\130\231\176*\tauthority\"\EM\n\
    \\ETBMsgUpdateParamsResponse2\147\STX\n\
    \\ETXMsg\DC2R\n\
    \\ACKSubmit\DC2\US.greenfield.challenge.MsgSubmit\SUB'.greenfield.challenge.MsgSubmitResponse\DC2R\n\
    \\ACKAttest\DC2\US.greenfield.challenge.MsgAttest\SUB'.greenfield.challenge.MsgAttestResponse\DC2d\n\
    \\fUpdateParams\DC2%.greenfield.challenge.MsgUpdateParams\SUB-.greenfield.challenge.MsgUpdateParamsResponseB3Z1github.com/bnb-chain/greenfield/x/challenge/typesJ\201\CAN\n\
    \\ACK\DC2\EOT\NUL\NULe\"\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL!\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL\RS\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULH\n\
    \H\n\
    \\STX\b\v\DC2\ETX\v\NULH2= this line is used by starport scaffolding # proto/tx/import\n\
    \\n\
    \*\n\
    \\STX\ACK\NUL\DC2\EOT\SO\NUL\CAN\SOH\SUB\RS Msg defines the Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\SO\b\v\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\SI\STX4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\SI\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\SI\r\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\SI!2\n\
    \\v\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\DLE\STX4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DLE\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DLE\r\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DLE!2\n\
    \\233\SOH\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX\SYN\STXF\SUB\159\SOH UpdateParams defines a governance operation for updating the x/challenge module parameters.\n\
    \ The authority is defined in the keeper.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\": this line is used by starport scaffolding # proto/tx/rpc\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\SYN\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\SYN\DC3\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\SYN-D\n\
    \F\n\
    \\STX\EOT\NUL\DC2\EOT\ESC\NUL/\SOH\SUB: MsgSubmit defines the message for submitting challenges.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ESC\b\DC1\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\FS\STX/\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX\FS\STX/\n\
    \&\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\US\STXI\SUB\EM The challenger address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\US\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\US\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\US\CANH\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\US\EMG\n\
    \5\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\"\STXR\SUB( The storage provider to be challenged.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\"\t\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\"\US \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\"!Q\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\"\"P\n\
    \>\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX%\STX\EM\SUB1 The bucket of the object info to be challenged.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX%\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX%\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX%\ETB\CAN\n\
    \<\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX(\STX\EM\SUB/ The name of the object info to be challenged.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX(\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX(\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX(\ETB\CAN\n\
    \H\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX+\STX\ESC\SUB; The index of segment/piece to challenge, start from zero.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX+\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX+\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX+\EM\SUB\n\
    \A\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX.\STX\CAN\SUB4 Randomly pick a segment/piece to challenge or not.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX.\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX.\a\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX.\SYN\ETB\n\
    \A\n\
    \\STX\EOT\SOH\DC2\ETX2\NUL\FS\SUB6 MsgSubmitResponse defines the response of MsgSubmit.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX2\b\EM\n\
    \E\n\
    \\STX\EOT\STX\DC2\EOT5\NULS\SOH\SUB9 MsgSubmit defines the message for attesting challenges.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX5\b\DC1\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX6\STX.\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETX6\STX.\n\
    \%\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX9\STXH\SUB\CAN The submitter address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX9\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX9\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX9\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX9\ETBG\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX9\CANF\n\
    \'\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX<\STX\SUB\SUB\SUB The id of the challenge.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX<\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX<\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX<\CAN\EM\n\
    \*\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT?\STXC\EOT\SUB\FS The id of the object info.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX?\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX?\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX?\NAK\SYN\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\EOT?\ETBC\ETX\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\202\214\ENQ\DC2\ETX@\EOT)\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\235\251\ETX\DC2\ETXA\EOT#\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\233\251\ETX\DC2\ETXB\EOT \n\
    \5\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETXF\STX!\SUB( The storage provider to be challenged.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETXF\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETXF\t\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETXF\US \n\
    \.\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETXI\STX\GS\SUB! Vote result of the attestation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\ETXI\STX\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETXI\r\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETXI\ESC\FS\n\
    \L\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETXL\STX \SUB? The challenger who submits the challenge, which can be empty.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETXL\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETXL\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETXL\RS\US\n\
    \>\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETXO\STX*\SUB1 The validators participated in the attestation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ENQ\DC2\ETXO\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETXO\DC3%\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETXO()\n\
    \@\n\
    \\EOT\EOT\STX\STX\a\DC2\ETXR\STX\US\SUB3 The aggregated BLS signature from the validators.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ENQ\DC2\ETXR\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\ETXR\b\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\ETXR\GS\RS\n\
    \A\n\
    \\STX\EOT\ETX\DC2\ETXV\NUL\FS\SUB6 MsgAttest defines the response of MsgAttestResponse.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXV\b\EM\n\
    \C\n\
    \\STX\EOT\EOT\DC2\EOTY\NULb\SOH\SUB7 MsgUpdateParams is the Msg/UpdateParams request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXY\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXZ\STX.\n\
    \\SI\n\
    \\b\EOT\EOT\a\240\140\166\ENQ\NUL\DC2\ETXZ\STX.\n\
    \h\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX]\STXH\SUB[ authority is the address that controls the module (defaults to x/gov unless overwritten).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX]\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX]\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX]\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETX]\ETBG\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETX]\CANF\n\
    \k\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXa\STX3\SUB^ params defines the x/challenge parameters to update.\n\
    \ NOTE: All parameters must be supplied.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETXa\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXa\t\SI\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXa\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ETXa\DC42\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\233\251\ETX\DC2\ETXa\NAK1\n\
    \l\n\
    \\STX\EOT\ENQ\DC2\ETXe\NUL\"\SUBa MsgUpdateParamsResponse defines the response structure for executing a MsgUpdateParams message.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXe\b\USb\ACKproto3"