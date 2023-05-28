{- This file was auto-generated from greenfield/challenge/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Challenge.Query (
        Query(..), QueryInturnAttestationSubmitterRequest(),
        QueryInturnAttestationSubmitterResponse(),
        QueryLatestAttestedChallengesRequest(),
        QueryLatestAttestedChallengesResponse(), QueryParamsRequest(),
        QueryParamsResponse(), SubmitInterval()
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
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
import qualified Proto.Greenfield.Challenge.Params
import qualified Proto.Greenfield.Challenge.Types
{- | Fields :
      -}
data QueryInturnAttestationSubmitterRequest
  = QueryInturnAttestationSubmitterRequest'_constructor {_QueryInturnAttestationSubmitterRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryInturnAttestationSubmitterRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QueryInturnAttestationSubmitterRequest where
  messageName _
    = Data.Text.pack
        "greenfield.challenge.QueryInturnAttestationSubmitterRequest"
  packedMessageDescriptor _
    = "\n\
      \&QueryInturnAttestationSubmitterRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryInturnAttestationSubmitterRequest'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryInturnAttestationSubmitterRequest'_unknownFields = y__})
  defMessage
    = QueryInturnAttestationSubmitterRequest'_constructor
        {_QueryInturnAttestationSubmitterRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryInturnAttestationSubmitterRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryInturnAttestationSubmitterRequest
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
          "QueryInturnAttestationSubmitterRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QueryInturnAttestationSubmitterRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryInturnAttestationSubmitterRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Challenge.Query_Fields.blsPubKey' @:: Lens' QueryInturnAttestationSubmitterResponse Data.Text.Text@
         * 'Proto.Greenfield.Challenge.Query_Fields.submitInterval' @:: Lens' QueryInturnAttestationSubmitterResponse SubmitInterval@
         * 'Proto.Greenfield.Challenge.Query_Fields.maybe'submitInterval' @:: Lens' QueryInturnAttestationSubmitterResponse (Prelude.Maybe SubmitInterval)@ -}
data QueryInturnAttestationSubmitterResponse
  = QueryInturnAttestationSubmitterResponse'_constructor {_QueryInturnAttestationSubmitterResponse'blsPubKey :: !Data.Text.Text,
                                                          _QueryInturnAttestationSubmitterResponse'submitInterval :: !(Prelude.Maybe SubmitInterval),
                                                          _QueryInturnAttestationSubmitterResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryInturnAttestationSubmitterResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryInturnAttestationSubmitterResponse "blsPubKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryInturnAttestationSubmitterResponse'blsPubKey
           (\ x__ y__
              -> x__ {_QueryInturnAttestationSubmitterResponse'blsPubKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QueryInturnAttestationSubmitterResponse "submitInterval" SubmitInterval where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryInturnAttestationSubmitterResponse'submitInterval
           (\ x__ y__
              -> x__
                   {_QueryInturnAttestationSubmitterResponse'submitInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryInturnAttestationSubmitterResponse "maybe'submitInterval" (Prelude.Maybe SubmitInterval) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryInturnAttestationSubmitterResponse'submitInterval
           (\ x__ y__
              -> x__
                   {_QueryInturnAttestationSubmitterResponse'submitInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryInturnAttestationSubmitterResponse where
  messageName _
    = Data.Text.pack
        "greenfield.challenge.QueryInturnAttestationSubmitterResponse"
  packedMessageDescriptor _
    = "\n\
      \'QueryInturnAttestationSubmitterResponse\DC2\RS\n\
      \\vbls_pub_key\CAN\SOH \SOH(\tR\tblsPubKey\DC2M\n\
      \\SIsubmit_interval\CAN\STX \SOH(\v2$.greenfield.challenge.SubmitIntervalR\SOsubmitInterval"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        blsPubKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bls_pub_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blsPubKey")) ::
              Data.ProtoLens.FieldDescriptor QueryInturnAttestationSubmitterResponse
        submitInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "submit_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SubmitInterval)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'submitInterval")) ::
              Data.ProtoLens.FieldDescriptor QueryInturnAttestationSubmitterResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, blsPubKey__field_descriptor),
           (Data.ProtoLens.Tag 2, submitInterval__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryInturnAttestationSubmitterResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryInturnAttestationSubmitterResponse'_unknownFields = y__})
  defMessage
    = QueryInturnAttestationSubmitterResponse'_constructor
        {_QueryInturnAttestationSubmitterResponse'blsPubKey = Data.ProtoLens.fieldDefault,
         _QueryInturnAttestationSubmitterResponse'submitInterval = Prelude.Nothing,
         _QueryInturnAttestationSubmitterResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryInturnAttestationSubmitterResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryInturnAttestationSubmitterResponse
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
                                       "bls_pub_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"blsPubKey") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "submit_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"submitInterval") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryInturnAttestationSubmitterResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"blsPubKey") _x
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
                       (Data.ProtoLens.Field.field @"maybe'submitInterval") _x
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
instance Control.DeepSeq.NFData QueryInturnAttestationSubmitterResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryInturnAttestationSubmitterResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryInturnAttestationSubmitterResponse'blsPubKey x__)
                (Control.DeepSeq.deepseq
                   (_QueryInturnAttestationSubmitterResponse'submitInterval x__) ()))
{- | Fields :
      -}
data QueryLatestAttestedChallengesRequest
  = QueryLatestAttestedChallengesRequest'_constructor {_QueryLatestAttestedChallengesRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryLatestAttestedChallengesRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QueryLatestAttestedChallengesRequest where
  messageName _
    = Data.Text.pack
        "greenfield.challenge.QueryLatestAttestedChallengesRequest"
  packedMessageDescriptor _
    = "\n\
      \$QueryLatestAttestedChallengesRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryLatestAttestedChallengesRequest'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryLatestAttestedChallengesRequest'_unknownFields = y__})
  defMessage
    = QueryLatestAttestedChallengesRequest'_constructor
        {_QueryLatestAttestedChallengesRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryLatestAttestedChallengesRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryLatestAttestedChallengesRequest
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
          "QueryLatestAttestedChallengesRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QueryLatestAttestedChallengesRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryLatestAttestedChallengesRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Challenge.Query_Fields.challengeIds' @:: Lens' QueryLatestAttestedChallengesResponse [Data.Word.Word64]@
         * 'Proto.Greenfield.Challenge.Query_Fields.vec'challengeIds' @:: Lens' QueryLatestAttestedChallengesResponse (Data.Vector.Unboxed.Vector Data.Word.Word64)@ -}
data QueryLatestAttestedChallengesResponse
  = QueryLatestAttestedChallengesResponse'_constructor {_QueryLatestAttestedChallengesResponse'challengeIds :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                                        _QueryLatestAttestedChallengesResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryLatestAttestedChallengesResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryLatestAttestedChallengesResponse "challengeIds" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryLatestAttestedChallengesResponse'challengeIds
           (\ x__ y__
              -> x__
                   {_QueryLatestAttestedChallengesResponse'challengeIds = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryLatestAttestedChallengesResponse "vec'challengeIds" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryLatestAttestedChallengesResponse'challengeIds
           (\ x__ y__
              -> x__
                   {_QueryLatestAttestedChallengesResponse'challengeIds = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryLatestAttestedChallengesResponse where
  messageName _
    = Data.Text.pack
        "greenfield.challenge.QueryLatestAttestedChallengesResponse"
  packedMessageDescriptor _
    = "\n\
      \%QueryLatestAttestedChallengesResponse\DC2\"\n\
      \\fchallengeIds\CAN\SOH \ETX(\EOTR\fchallengeIds"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        challengeIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "challengeIds"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"challengeIds")) ::
              Data.ProtoLens.FieldDescriptor QueryLatestAttestedChallengesResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, challengeIds__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryLatestAttestedChallengesResponse'_unknownFields
        (\ x__ y__
           -> x__
                {_QueryLatestAttestedChallengesResponse'_unknownFields = y__})
  defMessage
    = QueryLatestAttestedChallengesResponse'_constructor
        {_QueryLatestAttestedChallengesResponse'challengeIds = Data.Vector.Generic.empty,
         _QueryLatestAttestedChallengesResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryLatestAttestedChallengesResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryLatestAttestedChallengesResponse
        loop x mutable'challengeIds
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'challengeIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'challengeIds)
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
                              (Data.ProtoLens.Field.field @"vec'challengeIds")
                              frozen'challengeIds x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "challengeIds"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'challengeIds y)
                                loop x v
                        10
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
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "challengeIds"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'challengeIds)
                                loop x y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'challengeIds
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'challengeIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'challengeIds)
          "QueryLatestAttestedChallengesResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                p = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'challengeIds") _x
              in
                if Data.Vector.Generic.null p then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         (Data.ProtoLens.Encoding.Bytes.runBuilder
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               Data.ProtoLens.Encoding.Bytes.putVarInt p))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryLatestAttestedChallengesResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryLatestAttestedChallengesResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryLatestAttestedChallengesResponse'challengeIds x__) ())
{- | Fields :
      -}
data QueryParamsRequest
  = QueryParamsRequest'_constructor {_QueryParamsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QueryParamsRequest where
  messageName _
    = Data.Text.pack "greenfield.challenge.QueryParamsRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2QueryParamsRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryParamsRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryParamsRequest'_unknownFields = y__})
  defMessage
    = QueryParamsRequest'_constructor
        {_QueryParamsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryParamsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryParamsRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryParamsRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QueryParamsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryParamsRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Greenfield.Challenge.Query_Fields.params' @:: Lens' QueryParamsResponse Proto.Greenfield.Challenge.Params.Params@
         * 'Proto.Greenfield.Challenge.Query_Fields.maybe'params' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Greenfield.Challenge.Params.Params)@ -}
data QueryParamsResponse
  = QueryParamsResponse'_constructor {_QueryParamsResponse'params :: !(Prelude.Maybe Proto.Greenfield.Challenge.Params.Params),
                                      _QueryParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsResponse "params" Proto.Greenfield.Challenge.Params.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'params" (Prelude.Maybe Proto.Greenfield.Challenge.Params.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsResponse where
  messageName _
    = Data.Text.pack "greenfield.challenge.QueryParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryParamsResponse\DC2:\n\
      \\ACKparams\CAN\SOH \SOH(\v2\FS.greenfield.challenge.ParamsR\ACKparamsB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Greenfield.Challenge.Params.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor QueryParamsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, params__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryParamsResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryParamsResponse'_unknownFields = y__})
  defMessage
    = QueryParamsResponse'_constructor
        {_QueryParamsResponse'params = Prelude.Nothing,
         _QueryParamsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryParamsResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryParamsResponse
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
          (do loop Data.ProtoLens.defMessage) "QueryParamsResponse"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryParamsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryParamsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryParamsResponse'params x__) ())
{- | Fields :
     
         * 'Proto.Greenfield.Challenge.Query_Fields.start' @:: Lens' SubmitInterval Data.Word.Word64@
         * 'Proto.Greenfield.Challenge.Query_Fields.end' @:: Lens' SubmitInterval Data.Word.Word64@ -}
data SubmitInterval
  = SubmitInterval'_constructor {_SubmitInterval'start :: !Data.Word.Word64,
                                 _SubmitInterval'end :: !Data.Word.Word64,
                                 _SubmitInterval'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SubmitInterval where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SubmitInterval "start" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubmitInterval'start
           (\ x__ y__ -> x__ {_SubmitInterval'start = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SubmitInterval "end" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubmitInterval'end (\ x__ y__ -> x__ {_SubmitInterval'end = y__}))
        Prelude.id
instance Data.ProtoLens.Message SubmitInterval where
  messageName _
    = Data.Text.pack "greenfield.challenge.SubmitInterval"
  packedMessageDescriptor _
    = "\n\
      \\SOSubmitInterval\DC2\DC4\n\
      \\ENQstart\CAN\SOH \SOH(\EOTR\ENQstart\DC2\DLE\n\
      \\ETXend\CAN\STX \SOH(\EOTR\ETXend"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        start__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"start")) ::
              Data.ProtoLens.FieldDescriptor SubmitInterval
        end__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"end")) ::
              Data.ProtoLens.FieldDescriptor SubmitInterval
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, start__field_descriptor),
           (Data.ProtoLens.Tag 2, end__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SubmitInterval'_unknownFields
        (\ x__ y__ -> x__ {_SubmitInterval'_unknownFields = y__})
  defMessage
    = SubmitInterval'_constructor
        {_SubmitInterval'start = Data.ProtoLens.fieldDefault,
         _SubmitInterval'end = Data.ProtoLens.fieldDefault,
         _SubmitInterval'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SubmitInterval
          -> Data.ProtoLens.Encoding.Bytes.Parser SubmitInterval
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "start"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"start") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "end"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"end") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SubmitInterval"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"start") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"end") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SubmitInterval where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SubmitInterval'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SubmitInterval'start x__)
                (Control.DeepSeq.deepseq (_SubmitInterval'end x__) ()))
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "greenfield.challenge"
  type ServiceMethods Query = '["inturnAttestationSubmitter",
                                "latestAttestedChallenges",
                                "params"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\131\SOH\n\
      \\ACKParams\DC2(.greenfield.challenge.QueryParamsRequest\SUB).greenfield.challenge.QueryParamsResponse\"$\130\211\228\147\STX\RS\DC2\FS/greenfield/challenge/params\DC2\204\SOH\n\
      \\CANLatestAttestedChallenges\DC2:.greenfield.challenge.QueryLatestAttestedChallengesRequest\SUB;.greenfield.challenge.QueryLatestAttestedChallengesResponse\"7\130\211\228\147\STX1\DC2//greenfield/challenge/latest_attested_challenge\DC2\213\SOH\n\
      \\SUBInturnAttestationSubmitter\DC2<.greenfield.challenge.QueryInturnAttestationSubmitterRequest\SUB=.greenfield.challenge.QueryInturnAttestationSubmitterResponse\":\130\211\228\147\STX4\DC22/greenfield/challenge/inturn_attestation_submitter"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "params" where
  type MethodName Query "params" = "Params"
  type MethodInput Query "params" = QueryParamsRequest
  type MethodOutput Query "params" = QueryParamsResponse
  type MethodStreamingType Query "params" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "latestAttestedChallenges" where
  type MethodName Query "latestAttestedChallenges" = "LatestAttestedChallenges"
  type MethodInput Query "latestAttestedChallenges" = QueryLatestAttestedChallengesRequest
  type MethodOutput Query "latestAttestedChallenges" = QueryLatestAttestedChallengesResponse
  type MethodStreamingType Query "latestAttestedChallenges" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "inturnAttestationSubmitter" where
  type MethodName Query "inturnAttestationSubmitter" = "InturnAttestationSubmitter"
  type MethodInput Query "inturnAttestationSubmitter" = QueryInturnAttestationSubmitterRequest
  type MethodOutput Query "inturnAttestationSubmitter" = QueryInturnAttestationSubmitterResponse
  type MethodStreamingType Query "inturnAttestationSubmitter" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ greenfield/challenge/query.proto\DC2\DC4greenfield.challenge\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\FSgoogle/api/annotations.proto\SUB!greenfield/challenge/params.proto\SUB greenfield/challenge/types.proto\"\DC4\n\
    \\DC2QueryParamsRequest\"Q\n\
    \\DC3QueryParamsResponse\DC2:\n\
    \\ACKparams\CAN\SOH \SOH(\v2\FS.greenfield.challenge.ParamsR\ACKparamsB\EOT\200\222\US\NUL\"&\n\
    \$QueryLatestAttestedChallengesRequest\"K\n\
    \%QueryLatestAttestedChallengesResponse\DC2\"\n\
    \\fchallengeIds\CAN\SOH \ETX(\EOTR\fchallengeIds\"(\n\
    \&QueryInturnAttestationSubmitterRequest\"\152\SOH\n\
    \'QueryInturnAttestationSubmitterResponse\DC2\RS\n\
    \\vbls_pub_key\CAN\SOH \SOH(\tR\tblsPubKey\DC2M\n\
    \\SIsubmit_interval\CAN\STX \SOH(\v2$.greenfield.challenge.SubmitIntervalR\SOsubmitInterval\"8\n\
    \\SOSubmitInterval\DC2\DC4\n\
    \\ENQstart\CAN\SOH \SOH(\EOTR\ENQstart\DC2\DLE\n\
    \\ETXend\CAN\STX \SOH(\EOTR\ETXend2\180\EOT\n\
    \\ENQQuery\DC2\131\SOH\n\
    \\ACKParams\DC2(.greenfield.challenge.QueryParamsRequest\SUB).greenfield.challenge.QueryParamsResponse\"$\130\211\228\147\STX\RS\DC2\FS/greenfield/challenge/params\DC2\204\SOH\n\
    \\CANLatestAttestedChallenges\DC2:.greenfield.challenge.QueryLatestAttestedChallengesRequest\SUB;.greenfield.challenge.QueryLatestAttestedChallengesResponse\"7\130\211\228\147\STX1\DC2//greenfield/challenge/latest_attested_challenge\DC2\213\SOH\n\
    \\SUBInturnAttestationSubmitter\DC2<.greenfield.challenge.QueryInturnAttestationSubmitterRequest\SUB=.greenfield.challenge.QueryInturnAttestationSubmitterResponse\":\130\211\228\147\STX4\DC22/greenfield/challenge/inturn_attestation_submitterB3Z1github.com/bnb-chain/greenfield/x/challenge/typesJ\241\SO\n\
    \\ACK\DC2\EOT\NUL\NUL?\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL\RS\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL&\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULH\n\
    \:\n\
    \\STX\b\v\DC2\ETX\r\NULH2/ this line is used by starport scaffolding # 1\n\
    \\n\
    \5\n\
    \\STX\ACK\NUL\DC2\EOT\DLE\NUL\US\SOH\SUB) Query defines the gRPC querier service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\DLE\b\r\n\
    \@\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\DC2\STX\DC4\ETX\SUB2 Parameters queries the parameters of the module.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC2\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC2\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC2*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\DC3\EOTB\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\DC3\EOTB\n\
    \:\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\SYN\STX\CAN\ETX\SUB, Queries the latest attested challenge ids.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\SYN\ACK\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\SYN\USC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\SYNNs\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\ETB\EOTU\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\ETB\EOTU\n\
    \.\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\SUB\STX\FS\ETX\SUB  Queries the inturn challenger.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\SUB\ACK \n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\SUB!G\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\SUBRy\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\ESC\EOTX\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX\ESC\EOTX\n\
    \P\n\
    \\STX\EOT\NUL\DC2\ETX\"\NUL\GS\SUBE QueryParamsRequest is request type for the Query/Params RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\"\b\SUB\n\
    \S\n\
    \\STX\EOT\SOH\DC2\EOT%\NUL(\SOH\SUBG QueryParamsResponse is response type for the Query/Params RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX%\b\ESC\n\
    \>\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX'\STX3\SUB1 params holds all the parameters of this module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX'\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX'\t\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX'\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX'\DC42\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\ETX'\NAK1\n\
    \t\n\
    \\STX\EOT\STX\DC2\ETX+\NUL/\SUBi QueryLatestAttestedChallengesRequest is request type for the Query/LatestAttestedChallenges RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX+\b,\n\
    \w\n\
    \\STX\EOT\ETX\DC2\EOT.\NUL0\SOH\SUBk QueryLatestAttestedChallengesResponse is response type for the Query/LatestAttestedChallenges RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX.\b-\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX/\STX#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX/\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX/\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX/!\"\n\
    \x\n\
    \\STX\EOT\EOT\DC2\ETX3\NUL1\SUBm QueryInturnAttestationSubmitterRequest is request type for the Query/InturnAttestationSubmitter RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX3\b.\n\
    \{\n\
    \\STX\EOT\ENQ\DC2\EOT6\NUL9\SOH\SUBo QueryInturnAttestationSubmitterResponse is response type for the Query/InturnAttestationSubmitter RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX6\b/\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX7\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX7\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX7\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX7\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX8\STX%\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\ETX8\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX8\DC1 \n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX8#$\n\
    \n\n\
    \\STX\EOT\ACK\DC2\EOT<\NUL?\SOH\SUBb SubmitInterval holds start and end (exclusive) (i.e., [start, end)) time of in turn attestation.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX<\b\SYN\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX=\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX=\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX=\t\SO\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX=\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX>\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETX>\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX>\t\f\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX>\SI\DLEb\ACKproto3"