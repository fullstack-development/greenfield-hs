{- This file was auto-generated from cosmos/upgrade/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Upgrade.V1beta1.Query (
        Query(..), QueryAppliedPlanRequest(), QueryAppliedPlanResponse(),
        QueryAuthorityRequest(), QueryAuthorityResponse(),
        QueryCurrentPlanRequest(), QueryCurrentPlanResponse(),
        QueryModuleVersionsRequest(), QueryModuleVersionsResponse(),
        QueryUpgradedConsensusStateRequest(),
        QueryUpgradedConsensusStateResponse()
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
import qualified Proto.Cosmos.Upgrade.V1beta1.Upgrade
import qualified Proto.Google.Api.Annotations
{- | Fields :
     
         * 'Proto.Cosmos.Upgrade.V1beta1.Query_Fields.name' @:: Lens' QueryAppliedPlanRequest Data.Text.Text@ -}
data QueryAppliedPlanRequest
  = QueryAppliedPlanRequest'_constructor {_QueryAppliedPlanRequest'name :: !Data.Text.Text,
                                          _QueryAppliedPlanRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAppliedPlanRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAppliedPlanRequest "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAppliedPlanRequest'name
           (\ x__ y__ -> x__ {_QueryAppliedPlanRequest'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAppliedPlanRequest where
  messageName _
    = Data.Text.pack "cosmos.upgrade.v1beta1.QueryAppliedPlanRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryAppliedPlanRequest\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor QueryAppliedPlanRequest
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAppliedPlanRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryAppliedPlanRequest'_unknownFields = y__})
  defMessage
    = QueryAppliedPlanRequest'_constructor
        {_QueryAppliedPlanRequest'name = Data.ProtoLens.fieldDefault,
         _QueryAppliedPlanRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAppliedPlanRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAppliedPlanRequest
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryAppliedPlanRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryAppliedPlanRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAppliedPlanRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryAppliedPlanRequest'name x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Upgrade.V1beta1.Query_Fields.height' @:: Lens' QueryAppliedPlanResponse Data.Int.Int64@ -}
data QueryAppliedPlanResponse
  = QueryAppliedPlanResponse'_constructor {_QueryAppliedPlanResponse'height :: !Data.Int.Int64,
                                           _QueryAppliedPlanResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAppliedPlanResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAppliedPlanResponse "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAppliedPlanResponse'height
           (\ x__ y__ -> x__ {_QueryAppliedPlanResponse'height = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAppliedPlanResponse where
  messageName _
    = Data.Text.pack "cosmos.upgrade.v1beta1.QueryAppliedPlanResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryAppliedPlanResponse\DC2\SYN\n\
      \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor QueryAppliedPlanResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, height__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAppliedPlanResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryAppliedPlanResponse'_unknownFields = y__})
  defMessage
    = QueryAppliedPlanResponse'_constructor
        {_QueryAppliedPlanResponse'height = Data.ProtoLens.fieldDefault,
         _QueryAppliedPlanResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAppliedPlanResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAppliedPlanResponse
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
                                       "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryAppliedPlanResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryAppliedPlanResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAppliedPlanResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryAppliedPlanResponse'height x__) ())
{- | Fields :
      -}
data QueryAuthorityRequest
  = QueryAuthorityRequest'_constructor {_QueryAuthorityRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAuthorityRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QueryAuthorityRequest where
  messageName _
    = Data.Text.pack "cosmos.upgrade.v1beta1.QueryAuthorityRequest"
  packedMessageDescriptor _
    = "\n\
      \\NAKQueryAuthorityRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAuthorityRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryAuthorityRequest'_unknownFields = y__})
  defMessage
    = QueryAuthorityRequest'_constructor
        {_QueryAuthorityRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAuthorityRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAuthorityRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryAuthorityRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QueryAuthorityRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAuthorityRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Upgrade.V1beta1.Query_Fields.address' @:: Lens' QueryAuthorityResponse Data.Text.Text@ -}
data QueryAuthorityResponse
  = QueryAuthorityResponse'_constructor {_QueryAuthorityResponse'address :: !Data.Text.Text,
                                         _QueryAuthorityResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAuthorityResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAuthorityResponse "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAuthorityResponse'address
           (\ x__ y__ -> x__ {_QueryAuthorityResponse'address = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAuthorityResponse where
  messageName _
    = Data.Text.pack "cosmos.upgrade.v1beta1.QueryAuthorityResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNQueryAuthorityResponse\DC2\CAN\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddress"
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
              Data.ProtoLens.FieldDescriptor QueryAuthorityResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAuthorityResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryAuthorityResponse'_unknownFields = y__})
  defMessage
    = QueryAuthorityResponse'_constructor
        {_QueryAuthorityResponse'address = Data.ProtoLens.fieldDefault,
         _QueryAuthorityResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAuthorityResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAuthorityResponse
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryAuthorityResponse"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryAuthorityResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAuthorityResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryAuthorityResponse'address x__) ())
{- | Fields :
      -}
data QueryCurrentPlanRequest
  = QueryCurrentPlanRequest'_constructor {_QueryCurrentPlanRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryCurrentPlanRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QueryCurrentPlanRequest where
  messageName _
    = Data.Text.pack "cosmos.upgrade.v1beta1.QueryCurrentPlanRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBQueryCurrentPlanRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryCurrentPlanRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryCurrentPlanRequest'_unknownFields = y__})
  defMessage
    = QueryCurrentPlanRequest'_constructor
        {_QueryCurrentPlanRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryCurrentPlanRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryCurrentPlanRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryCurrentPlanRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QueryCurrentPlanRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryCurrentPlanRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Upgrade.V1beta1.Query_Fields.plan' @:: Lens' QueryCurrentPlanResponse Proto.Cosmos.Upgrade.V1beta1.Upgrade.Plan@
         * 'Proto.Cosmos.Upgrade.V1beta1.Query_Fields.maybe'plan' @:: Lens' QueryCurrentPlanResponse (Prelude.Maybe Proto.Cosmos.Upgrade.V1beta1.Upgrade.Plan)@ -}
data QueryCurrentPlanResponse
  = QueryCurrentPlanResponse'_constructor {_QueryCurrentPlanResponse'plan :: !(Prelude.Maybe Proto.Cosmos.Upgrade.V1beta1.Upgrade.Plan),
                                           _QueryCurrentPlanResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryCurrentPlanResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryCurrentPlanResponse "plan" Proto.Cosmos.Upgrade.V1beta1.Upgrade.Plan where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryCurrentPlanResponse'plan
           (\ x__ y__ -> x__ {_QueryCurrentPlanResponse'plan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryCurrentPlanResponse "maybe'plan" (Prelude.Maybe Proto.Cosmos.Upgrade.V1beta1.Upgrade.Plan) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryCurrentPlanResponse'plan
           (\ x__ y__ -> x__ {_QueryCurrentPlanResponse'plan = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryCurrentPlanResponse where
  messageName _
    = Data.Text.pack "cosmos.upgrade.v1beta1.QueryCurrentPlanResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryCurrentPlanResponse\DC20\n\
      \\EOTplan\CAN\SOH \SOH(\v2\FS.cosmos.upgrade.v1beta1.PlanR\EOTplan"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        plan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "plan"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Upgrade.V1beta1.Upgrade.Plan)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'plan")) ::
              Data.ProtoLens.FieldDescriptor QueryCurrentPlanResponse
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, plan__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryCurrentPlanResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryCurrentPlanResponse'_unknownFields = y__})
  defMessage
    = QueryCurrentPlanResponse'_constructor
        {_QueryCurrentPlanResponse'plan = Prelude.Nothing,
         _QueryCurrentPlanResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryCurrentPlanResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryCurrentPlanResponse
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
                                       "plan"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"plan") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryCurrentPlanResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'plan") _x
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
instance Control.DeepSeq.NFData QueryCurrentPlanResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryCurrentPlanResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryCurrentPlanResponse'plan x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Upgrade.V1beta1.Query_Fields.moduleName' @:: Lens' QueryModuleVersionsRequest Data.Text.Text@ -}
data QueryModuleVersionsRequest
  = QueryModuleVersionsRequest'_constructor {_QueryModuleVersionsRequest'moduleName :: !Data.Text.Text,
                                             _QueryModuleVersionsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryModuleVersionsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryModuleVersionsRequest "moduleName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryModuleVersionsRequest'moduleName
           (\ x__ y__ -> x__ {_QueryModuleVersionsRequest'moduleName = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryModuleVersionsRequest where
  messageName _
    = Data.Text.pack
        "cosmos.upgrade.v1beta1.QueryModuleVersionsRequest"
  packedMessageDescriptor _
    = "\n\
      \\SUBQueryModuleVersionsRequest\DC2\US\n\
      \\vmodule_name\CAN\SOH \SOH(\tR\n\
      \moduleName"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        moduleName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "module_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"moduleName")) ::
              Data.ProtoLens.FieldDescriptor QueryModuleVersionsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, moduleName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryModuleVersionsRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryModuleVersionsRequest'_unknownFields = y__})
  defMessage
    = QueryModuleVersionsRequest'_constructor
        {_QueryModuleVersionsRequest'moduleName = Data.ProtoLens.fieldDefault,
         _QueryModuleVersionsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryModuleVersionsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryModuleVersionsRequest
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
                                       "module_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"moduleName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryModuleVersionsRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"moduleName") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryModuleVersionsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryModuleVersionsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryModuleVersionsRequest'moduleName x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Upgrade.V1beta1.Query_Fields.moduleVersions' @:: Lens' QueryModuleVersionsResponse [Proto.Cosmos.Upgrade.V1beta1.Upgrade.ModuleVersion]@
         * 'Proto.Cosmos.Upgrade.V1beta1.Query_Fields.vec'moduleVersions' @:: Lens' QueryModuleVersionsResponse (Data.Vector.Vector Proto.Cosmos.Upgrade.V1beta1.Upgrade.ModuleVersion)@ -}
data QueryModuleVersionsResponse
  = QueryModuleVersionsResponse'_constructor {_QueryModuleVersionsResponse'moduleVersions :: !(Data.Vector.Vector Proto.Cosmos.Upgrade.V1beta1.Upgrade.ModuleVersion),
                                              _QueryModuleVersionsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryModuleVersionsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryModuleVersionsResponse "moduleVersions" [Proto.Cosmos.Upgrade.V1beta1.Upgrade.ModuleVersion] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryModuleVersionsResponse'moduleVersions
           (\ x__ y__
              -> x__ {_QueryModuleVersionsResponse'moduleVersions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField QueryModuleVersionsResponse "vec'moduleVersions" (Data.Vector.Vector Proto.Cosmos.Upgrade.V1beta1.Upgrade.ModuleVersion) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryModuleVersionsResponse'moduleVersions
           (\ x__ y__
              -> x__ {_QueryModuleVersionsResponse'moduleVersions = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryModuleVersionsResponse where
  messageName _
    = Data.Text.pack
        "cosmos.upgrade.v1beta1.QueryModuleVersionsResponse"
  packedMessageDescriptor _
    = "\n\
      \\ESCQueryModuleVersionsResponse\DC2N\n\
      \\SImodule_versions\CAN\SOH \ETX(\v2%.cosmos.upgrade.v1beta1.ModuleVersionR\SOmoduleVersions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        moduleVersions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "module_versions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Upgrade.V1beta1.Upgrade.ModuleVersion)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"moduleVersions")) ::
              Data.ProtoLens.FieldDescriptor QueryModuleVersionsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, moduleVersions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryModuleVersionsResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryModuleVersionsResponse'_unknownFields = y__})
  defMessage
    = QueryModuleVersionsResponse'_constructor
        {_QueryModuleVersionsResponse'moduleVersions = Data.Vector.Generic.empty,
         _QueryModuleVersionsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryModuleVersionsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Upgrade.V1beta1.Upgrade.ModuleVersion
             -> Data.ProtoLens.Encoding.Bytes.Parser QueryModuleVersionsResponse
        loop x mutable'moduleVersions
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'moduleVersions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'moduleVersions)
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
                              (Data.ProtoLens.Field.field @"vec'moduleVersions")
                              frozen'moduleVersions x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "module_versions"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'moduleVersions y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'moduleVersions
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'moduleVersions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'moduleVersions)
          "QueryModuleVersionsResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'moduleVersions") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryModuleVersionsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryModuleVersionsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryModuleVersionsResponse'moduleVersions x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Upgrade.V1beta1.Query_Fields.lastHeight' @:: Lens' QueryUpgradedConsensusStateRequest Data.Int.Int64@ -}
data QueryUpgradedConsensusStateRequest
  = QueryUpgradedConsensusStateRequest'_constructor {_QueryUpgradedConsensusStateRequest'lastHeight :: !Data.Int.Int64,
                                                     _QueryUpgradedConsensusStateRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryUpgradedConsensusStateRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryUpgradedConsensusStateRequest "lastHeight" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryUpgradedConsensusStateRequest'lastHeight
           (\ x__ y__
              -> x__ {_QueryUpgradedConsensusStateRequest'lastHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryUpgradedConsensusStateRequest where
  messageName _
    = Data.Text.pack
        "cosmos.upgrade.v1beta1.QueryUpgradedConsensusStateRequest"
  packedMessageDescriptor _
    = "\n\
      \\"QueryUpgradedConsensusStateRequest\DC2\US\n\
      \\vlast_height\CAN\SOH \SOH(\ETXR\n\
      \lastHeight:\STX\CAN\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        lastHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "last_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lastHeight")) ::
              Data.ProtoLens.FieldDescriptor QueryUpgradedConsensusStateRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, lastHeight__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryUpgradedConsensusStateRequest'_unknownFields
        (\ x__ y__
           -> x__ {_QueryUpgradedConsensusStateRequest'_unknownFields = y__})
  defMessage
    = QueryUpgradedConsensusStateRequest'_constructor
        {_QueryUpgradedConsensusStateRequest'lastHeight = Data.ProtoLens.fieldDefault,
         _QueryUpgradedConsensusStateRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryUpgradedConsensusStateRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryUpgradedConsensusStateRequest
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
                                       "last_height"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lastHeight") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryUpgradedConsensusStateRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"lastHeight") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryUpgradedConsensusStateRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryUpgradedConsensusStateRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryUpgradedConsensusStateRequest'lastHeight x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Upgrade.V1beta1.Query_Fields.upgradedConsensusState' @:: Lens' QueryUpgradedConsensusStateResponse Data.ByteString.ByteString@ -}
data QueryUpgradedConsensusStateResponse
  = QueryUpgradedConsensusStateResponse'_constructor {_QueryUpgradedConsensusStateResponse'upgradedConsensusState :: !Data.ByteString.ByteString,
                                                      _QueryUpgradedConsensusStateResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryUpgradedConsensusStateResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryUpgradedConsensusStateResponse "upgradedConsensusState" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryUpgradedConsensusStateResponse'upgradedConsensusState
           (\ x__ y__
              -> x__
                   {_QueryUpgradedConsensusStateResponse'upgradedConsensusState = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryUpgradedConsensusStateResponse where
  messageName _
    = Data.Text.pack
        "cosmos.upgrade.v1beta1.QueryUpgradedConsensusStateResponse"
  packedMessageDescriptor _
    = "\n\
      \#QueryUpgradedConsensusStateResponse\DC28\n\
      \\CANupgraded_consensus_state\CAN\STX \SOH(\fR\SYNupgradedConsensusState:\STX\CAN\SOHJ\EOT\b\SOH\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        upgradedConsensusState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upgraded_consensus_state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"upgradedConsensusState")) ::
              Data.ProtoLens.FieldDescriptor QueryUpgradedConsensusStateResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, upgradedConsensusState__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryUpgradedConsensusStateResponse'_unknownFields
        (\ x__ y__
           -> x__ {_QueryUpgradedConsensusStateResponse'_unknownFields = y__})
  defMessage
    = QueryUpgradedConsensusStateResponse'_constructor
        {_QueryUpgradedConsensusStateResponse'upgradedConsensusState = Data.ProtoLens.fieldDefault,
         _QueryUpgradedConsensusStateResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryUpgradedConsensusStateResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryUpgradedConsensusStateResponse
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "upgraded_consensus_state"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upgradedConsensusState") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "QueryUpgradedConsensusStateResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"upgradedConsensusState") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryUpgradedConsensusStateResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryUpgradedConsensusStateResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QueryUpgradedConsensusStateResponse'upgradedConsensusState x__)
                ())
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.upgrade.v1beta1"
  type ServiceMethods Query = '["appliedPlan",
                                "authority",
                                "currentPlan",
                                "moduleVersions",
                                "upgradedConsensusState"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\158\SOH\n\
      \\vCurrentPlan\DC2/.cosmos.upgrade.v1beta1.QueryCurrentPlanRequest\SUB0.cosmos.upgrade.v1beta1.QueryCurrentPlanResponse\",\130\211\228\147\STX&\DC2$/cosmos/upgrade/v1beta1/current_plan\DC2\165\SOH\n\
      \\vAppliedPlan\DC2/.cosmos.upgrade.v1beta1.QueryAppliedPlanRequest\SUB0.cosmos.upgrade.v1beta1.QueryAppliedPlanResponse\"3\130\211\228\147\STX-\DC2+/cosmos/upgrade/v1beta1/applied_plan/{name}\DC2\220\SOH\n\
      \\SYNUpgradedConsensusState\DC2:.cosmos.upgrade.v1beta1.QueryUpgradedConsensusStateRequest\SUB;.cosmos.upgrade.v1beta1.QueryUpgradedConsensusStateResponse\"I\136\STX\SOH\130\211\228\147\STX@\DC2>/cosmos/upgrade/v1beta1/upgraded_consensus_state/{last_height}\DC2\170\SOH\n\
      \\SOModuleVersions\DC22.cosmos.upgrade.v1beta1.QueryModuleVersionsRequest\SUB3.cosmos.upgrade.v1beta1.QueryModuleVersionsResponse\"/\130\211\228\147\STX)\DC2'/cosmos/upgrade/v1beta1/module_versions\DC2\149\SOH\n\
      \\tAuthority\DC2-.cosmos.upgrade.v1beta1.QueryAuthorityRequest\SUB..cosmos.upgrade.v1beta1.QueryAuthorityResponse\")\130\211\228\147\STX#\DC2!/cosmos/upgrade/v1beta1/authority"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "currentPlan" where
  type MethodName Query "currentPlan" = "CurrentPlan"
  type MethodInput Query "currentPlan" = QueryCurrentPlanRequest
  type MethodOutput Query "currentPlan" = QueryCurrentPlanResponse
  type MethodStreamingType Query "currentPlan" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "appliedPlan" where
  type MethodName Query "appliedPlan" = "AppliedPlan"
  type MethodInput Query "appliedPlan" = QueryAppliedPlanRequest
  type MethodOutput Query "appliedPlan" = QueryAppliedPlanResponse
  type MethodStreamingType Query "appliedPlan" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "upgradedConsensusState" where
  type MethodName Query "upgradedConsensusState" = "UpgradedConsensusState"
  type MethodInput Query "upgradedConsensusState" = QueryUpgradedConsensusStateRequest
  type MethodOutput Query "upgradedConsensusState" = QueryUpgradedConsensusStateResponse
  type MethodStreamingType Query "upgradedConsensusState" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "moduleVersions" where
  type MethodName Query "moduleVersions" = "ModuleVersions"
  type MethodInput Query "moduleVersions" = QueryModuleVersionsRequest
  type MethodOutput Query "moduleVersions" = QueryModuleVersionsResponse
  type MethodStreamingType Query "moduleVersions" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "authority" where
  type MethodName Query "authority" = "Authority"
  type MethodInput Query "authority" = QueryAuthorityRequest
  type MethodOutput Query "authority" = QueryAuthorityResponse
  type MethodStreamingType Query "authority" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"cosmos/upgrade/v1beta1/query.proto\DC2\SYNcosmos.upgrade.v1beta1\SUB\FSgoogle/api/annotations.proto\SUB$cosmos/upgrade/v1beta1/upgrade.proto\"\EM\n\
    \\ETBQueryCurrentPlanRequest\"L\n\
    \\CANQueryCurrentPlanResponse\DC20\n\
    \\EOTplan\CAN\SOH \SOH(\v2\FS.cosmos.upgrade.v1beta1.PlanR\EOTplan\"-\n\
    \\ETBQueryAppliedPlanRequest\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\"2\n\
    \\CANQueryAppliedPlanResponse\DC2\SYN\n\
    \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\"I\n\
    \\"QueryUpgradedConsensusStateRequest\DC2\US\n\
    \\vlast_height\CAN\SOH \SOH(\ETXR\n\
    \lastHeight:\STX\CAN\SOH\"i\n\
    \#QueryUpgradedConsensusStateResponse\DC28\n\
    \\CANupgraded_consensus_state\CAN\STX \SOH(\fR\SYNupgradedConsensusState:\STX\CAN\SOHJ\EOT\b\SOH\DLE\STX\"=\n\
    \\SUBQueryModuleVersionsRequest\DC2\US\n\
    \\vmodule_name\CAN\SOH \SOH(\tR\n\
    \moduleName\"m\n\
    \\ESCQueryModuleVersionsResponse\DC2N\n\
    \\SImodule_versions\CAN\SOH \ETX(\v2%.cosmos.upgrade.v1beta1.ModuleVersionR\SOmoduleVersions\"\ETB\n\
    \\NAKQueryAuthorityRequest\"2\n\
    \\SYNQueryAuthorityResponse\DC2\CAN\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddress2\244\ACK\n\
    \\ENQQuery\DC2\158\SOH\n\
    \\vCurrentPlan\DC2/.cosmos.upgrade.v1beta1.QueryCurrentPlanRequest\SUB0.cosmos.upgrade.v1beta1.QueryCurrentPlanResponse\",\130\211\228\147\STX&\DC2$/cosmos/upgrade/v1beta1/current_plan\DC2\165\SOH\n\
    \\vAppliedPlan\DC2/.cosmos.upgrade.v1beta1.QueryAppliedPlanRequest\SUB0.cosmos.upgrade.v1beta1.QueryAppliedPlanResponse\"3\130\211\228\147\STX-\DC2+/cosmos/upgrade/v1beta1/applied_plan/{name}\DC2\220\SOH\n\
    \\SYNUpgradedConsensusState\DC2:.cosmos.upgrade.v1beta1.QueryUpgradedConsensusStateRequest\SUB;.cosmos.upgrade.v1beta1.QueryUpgradedConsensusStateResponse\"I\136\STX\SOH\130\211\228\147\STX@\DC2>/cosmos/upgrade/v1beta1/upgraded_consensus_state/{last_height}\DC2\170\SOH\n\
    \\SOModuleVersions\DC22.cosmos.upgrade.v1beta1.QueryModuleVersionsRequest\SUB3.cosmos.upgrade.v1beta1.QueryModuleVersionsResponse\"/\130\211\228\147\STX)\DC2'/cosmos/upgrade/v1beta1/module_versions\DC2\149\SOH\n\
    \\tAuthority\DC2-.cosmos.upgrade.v1beta1.QueryAuthorityRequest\SUB..cosmos.upgrade.v1beta1.QueryAuthorityResponse\")\130\211\228\147\STX#\DC2!/cosmos/upgrade/v1beta1/authorityB\RSZ\FScosmossdk.io/x/upgrade/typesJ\212\FS\n\
    \\ACK\DC2\EOT\NUL\NULy\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\US\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL&\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ACK\NUL3\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ACK\NUL3\n\
    \=\n\
    \\STX\ACK\NUL\DC2\EOT\t\NUL,\SOH\SUB1 Query defines the gRPC upgrade querier service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\t\b\r\n\
    \=\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\v\STX\r\ETX\SUB/ CurrentPlan queries the current upgrade plan.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\v\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\v\DC2)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\v4L\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\f\EOTJ\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\f\EOTJ\n\
    \R\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\DLE\STX\DC2\ETX\SUBD AppliedPlan queries a previously applied upgrade plan by its name.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DLE\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DLE\DC2)\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DLE4L\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\DC1\EOTQ\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\DC1\EOTQ\n\
    \\188\ETX\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\SUB\STX\GS\ETX\SUB\173\ETX UpgradedConsensusState queries the consensus state that will serve\n\
    \ as a trusted kernel for the next version of this chain. It will only be\n\
    \ stored at the last height of this chain.\n\
    \ UpgradedConsensusState RPC not supported with legacy querier\n\
    \ This rpc is deprecated now that IBC has its own replacement\n\
    \ (https://github.com/cosmos/ibc-go/blob/2c880a22e9f9cc75f62b527ca94aa75ce1106001/proto/ibc/core/client/v1/query.proto#L54)\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\SUB\ACK\FS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\SUB\GS?\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\SUBJm\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\ESC\EOT(\n\
    \\r\n\
    \\ACK\ACK\NUL\STX\STX\EOT!\DC2\ETX\ESC\EOT(\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\FS\EOTd\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX\FS\EOTd\n\
    \g\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\EOT\"\STX$\ETX\SUBY ModuleVersions queries the list of module versions from state.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\"\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\"\NAK/\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\":U\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\ETX#\EOTM\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ETX\EOT\176\202\188\"\STX\DC2\ETX#\EOTM\n\
    \_\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\EOT)\STX+\ETX\SUBQ Returns the account with authority to conduct upgrades\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX)\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX)\DLE%\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX)0F\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX*\EOTG\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\EOT\EOT\176\202\188\"\STX\DC2\ETX*\EOTG\n\
    \_\n\
    \\STX\EOT\NUL\DC2\ETX0\NUL\"\SUBT QueryCurrentPlanRequest is the request type for the Query/CurrentPlan RPC\n\
    \ method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX0\b\US\n\
    \b\n\
    \\STX\EOT\SOH\DC2\EOT4\NUL7\SOH\SUBV QueryCurrentPlanResponse is the response type for the Query/CurrentPlan RPC\n\
    \ method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX4\b \n\
    \0\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX6\STX\DLE\SUB# plan is the current upgrade plan.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX6\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX6\a\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX6\SO\SI\n\
    \`\n\
    \\STX\EOT\STX\DC2\EOT;\NUL>\SOH\SUBT QueryCurrentPlanRequest is the request type for the Query/AppliedPlan RPC\n\
    \ method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX;\b\US\n\
    \A\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX=\STX\DC2\SUB4 name is the name of the applied plan to query for.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX=\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX=\t\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX=\DLE\DC1\n\
    \b\n\
    \\STX\EOT\ETX\DC2\EOTB\NULE\SOH\SUBV QueryAppliedPlanResponse is the response type for the Query/AppliedPlan RPC\n\
    \ method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXB\b \n\
    \H\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXD\STX\DC3\SUB; height is the block height at which the plan was applied.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXD\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXD\b\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXD\DC1\DC2\n\
    \v\n\
    \\STX\EOT\EOT\DC2\EOTI\NULO\SOH\SUBj QueryUpgradedConsensusStateRequest is the request type for the Query/UpgradedConsensusState\n\
    \ RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXI\b*\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXJ\STX\ESC\n\
    \\v\n\
    \\EOT\EOT\EOT\a\ETX\DC2\ETXJ\STX\ESC\n\
    \\137\SOH\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXN\STX\CAN\SUB| last height of the current chain must be sent in request\n\
    \ as this is the height under which next consensus state is stored\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXN\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXN\b\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXN\SYN\ETB\n\
    \x\n\
    \\STX\EOT\ENQ\DC2\EOTS\NULY\SOH\SUBl QueryUpgradedConsensusStateResponse is the response type for the Query/UpgradedConsensusState\n\
    \ RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXS\b+\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\a\DC2\ETXT\STX\ESC\n\
    \\v\n\
    \\EOT\EOT\ENQ\a\ETX\DC2\ETXT\STX\ESC\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\t\DC2\ETXU\STX\r\n\
    \\v\n\
    \\EOT\EOT\ENQ\t\NUL\DC2\ETXU\v\f\n\
    \\f\n\
    \\ENQ\EOT\ENQ\t\NUL\SOH\DC2\ETXU\v\f\n\
    \\f\n\
    \\ENQ\EOT\ENQ\t\NUL\STX\DC2\ETXU\v\f\n\
    \%\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXX\STX%\SUB\CAN Since: cosmos-sdk 0.43\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXX\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXX\b \n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXX#$\n\
    \\DEL\n\
    \\STX\EOT\ACK\DC2\EOT_\NULd\SOH\SUBs QueryModuleVersionsRequest is the request type for the Query/ModuleVersions\n\
    \ RPC method.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX_\b\"\n\
    \\171\SOH\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXc\STX\EM\SUB\157\SOH module_name is a field to query a specific module\n\
    \ consensus version from state. Leaving this empty will\n\
    \ fetch the full list of module versions from state\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETXc\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXc\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXc\ETB\CAN\n\
    \\129\SOH\n\
    \\STX\EOT\a\DC2\EOTj\NULm\SOH\SUBu QueryModuleVersionsResponse is the response type for the Query/ModuleVersions\n\
    \ RPC method.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXj\b#\n\
    \W\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXl\STX-\SUBJ module_versions is a list of module names with their consensus versions.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETXl\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\ETXl\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXl\EM(\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXl+,\n\
    \c\n\
    \\STX\EOT\b\DC2\ETXr\NUL \SUBX QueryAuthorityRequest is the request type for Query/Authority\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXr\b\GS\n\
    \f\n\
    \\STX\EOT\t\DC2\EOTw\NULy\SOH\SUBZ QueryAuthorityResponse is the response type for Query/Authority\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXw\b\RS\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXx\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETXx\STX\b\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXx\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXx\DC3\DC4b\ACKproto3"