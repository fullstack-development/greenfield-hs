{- This file was auto-generated from greenfield/sp/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Greenfield.Sp.Types (
        Description(), RewardInfo(), SecondarySpStorePrice(),
        SpStoragePrice(), Status(..), Status(), Status'UnrecognizedValue,
        StorageProvider()
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
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Types_Fields.moniker' @:: Lens' Description Data.Text.Text@
         * 'Proto.Greenfield.Sp.Types_Fields.identity' @:: Lens' Description Data.Text.Text@
         * 'Proto.Greenfield.Sp.Types_Fields.website' @:: Lens' Description Data.Text.Text@
         * 'Proto.Greenfield.Sp.Types_Fields.securityContact' @:: Lens' Description Data.Text.Text@
         * 'Proto.Greenfield.Sp.Types_Fields.details' @:: Lens' Description Data.Text.Text@ -}
data Description
  = Description'_constructor {_Description'moniker :: !Data.Text.Text,
                              _Description'identity :: !Data.Text.Text,
                              _Description'website :: !Data.Text.Text,
                              _Description'securityContact :: !Data.Text.Text,
                              _Description'details :: !Data.Text.Text,
                              _Description'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Description where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Description "moniker" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Description'moniker
           (\ x__ y__ -> x__ {_Description'moniker = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Description "identity" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Description'identity
           (\ x__ y__ -> x__ {_Description'identity = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Description "website" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Description'website
           (\ x__ y__ -> x__ {_Description'website = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Description "securityContact" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Description'securityContact
           (\ x__ y__ -> x__ {_Description'securityContact = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Description "details" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Description'details
           (\ x__ y__ -> x__ {_Description'details = y__}))
        Prelude.id
instance Data.ProtoLens.Message Description where
  messageName _ = Data.Text.pack "greenfield.sp.Description"
  packedMessageDescriptor _
    = "\n\
      \\vDescription\DC2\CAN\n\
      \\amoniker\CAN\SOH \SOH(\tR\amoniker\DC2\SUB\n\
      \\bidentity\CAN\STX \SOH(\tR\bidentity\DC2\CAN\n\
      \\awebsite\CAN\ETX \SOH(\tR\awebsite\DC2)\n\
      \\DLEsecurity_contact\CAN\EOT \SOH(\tR\SIsecurityContact\DC2\CAN\n\
      \\adetails\CAN\ENQ \SOH(\tR\adetails"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        moniker__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "moniker"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"moniker")) ::
              Data.ProtoLens.FieldDescriptor Description
        identity__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identity"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"identity")) ::
              Data.ProtoLens.FieldDescriptor Description
        website__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "website"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"website")) ::
              Data.ProtoLens.FieldDescriptor Description
        securityContact__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "security_contact"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"securityContact")) ::
              Data.ProtoLens.FieldDescriptor Description
        details__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "details"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"details")) ::
              Data.ProtoLens.FieldDescriptor Description
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, moniker__field_descriptor),
           (Data.ProtoLens.Tag 2, identity__field_descriptor),
           (Data.ProtoLens.Tag 3, website__field_descriptor),
           (Data.ProtoLens.Tag 4, securityContact__field_descriptor),
           (Data.ProtoLens.Tag 5, details__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Description'_unknownFields
        (\ x__ y__ -> x__ {_Description'_unknownFields = y__})
  defMessage
    = Description'_constructor
        {_Description'moniker = Data.ProtoLens.fieldDefault,
         _Description'identity = Data.ProtoLens.fieldDefault,
         _Description'website = Data.ProtoLens.fieldDefault,
         _Description'securityContact = Data.ProtoLens.fieldDefault,
         _Description'details = Data.ProtoLens.fieldDefault,
         _Description'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Description -> Data.ProtoLens.Encoding.Bytes.Parser Description
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
                                       "moniker"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"moniker") y x)
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
                                       "identity"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identity") y x)
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
                                       "website"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"website") y x)
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
                                       "security_contact"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"securityContact") y x)
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
                                       "details"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"details") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Description"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"moniker") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"identity") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"website") _x
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
                               (Data.ProtoLens.Field.field @"securityContact") _x
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
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"details") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Description where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Description'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Description'moniker x__)
                (Control.DeepSeq.deepseq
                   (_Description'identity x__)
                   (Control.DeepSeq.deepseq
                      (_Description'website x__)
                      (Control.DeepSeq.deepseq
                         (_Description'securityContact x__)
                         (Control.DeepSeq.deepseq (_Description'details x__) ())))))
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Types_Fields.address' @:: Lens' RewardInfo Data.Text.Text@
         * 'Proto.Greenfield.Sp.Types_Fields.amount' @:: Lens' RewardInfo Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Greenfield.Sp.Types_Fields.maybe'amount' @:: Lens' RewardInfo (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@ -}
data RewardInfo
  = RewardInfo'_constructor {_RewardInfo'address :: !Data.Text.Text,
                             _RewardInfo'amount :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                             _RewardInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RewardInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RewardInfo "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RewardInfo'address (\ x__ y__ -> x__ {_RewardInfo'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RewardInfo "amount" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RewardInfo'amount (\ x__ y__ -> x__ {_RewardInfo'amount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RewardInfo "maybe'amount" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RewardInfo'amount (\ x__ y__ -> x__ {_RewardInfo'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Message RewardInfo where
  messageName _ = Data.Text.pack "greenfield.sp.RewardInfo"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \RewardInfo\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
      \\ACKamount\CAN\STX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\EOT\200\222\US\NUL"
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
              Data.ProtoLens.FieldDescriptor RewardInfo
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'amount")) ::
              Data.ProtoLens.FieldDescriptor RewardInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, amount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RewardInfo'_unknownFields
        (\ x__ y__ -> x__ {_RewardInfo'_unknownFields = y__})
  defMessage
    = RewardInfo'_constructor
        {_RewardInfo'address = Data.ProtoLens.fieldDefault,
         _RewardInfo'amount = Prelude.Nothing,
         _RewardInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RewardInfo -> Data.ProtoLens.Encoding.Bytes.Parser RewardInfo
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
                                       "amount"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"amount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RewardInfo"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'amount") _x
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
instance Control.DeepSeq.NFData RewardInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RewardInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RewardInfo'address x__)
                (Control.DeepSeq.deepseq (_RewardInfo'amount x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Types_Fields.updateTimeSec' @:: Lens' SecondarySpStorePrice Data.Int.Int64@
         * 'Proto.Greenfield.Sp.Types_Fields.storePrice' @:: Lens' SecondarySpStorePrice Data.Text.Text@ -}
data SecondarySpStorePrice
  = SecondarySpStorePrice'_constructor {_SecondarySpStorePrice'updateTimeSec :: !Data.Int.Int64,
                                        _SecondarySpStorePrice'storePrice :: !Data.Text.Text,
                                        _SecondarySpStorePrice'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SecondarySpStorePrice where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SecondarySpStorePrice "updateTimeSec" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecondarySpStorePrice'updateTimeSec
           (\ x__ y__ -> x__ {_SecondarySpStorePrice'updateTimeSec = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SecondarySpStorePrice "storePrice" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SecondarySpStorePrice'storePrice
           (\ x__ y__ -> x__ {_SecondarySpStorePrice'storePrice = y__}))
        Prelude.id
instance Data.ProtoLens.Message SecondarySpStorePrice where
  messageName _
    = Data.Text.pack "greenfield.sp.SecondarySpStorePrice"
  packedMessageDescriptor _
    = "\n\
      \\NAKSecondarySpStorePrice\DC2&\n\
      \\SIupdate_time_sec\CAN\SOH \SOH(\ETXR\rupdateTimeSec\DC2]\n\
      \\vstore_price\CAN\STX \SOH(\tR\n\
      \storePriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        updateTimeSec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_time_sec"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"updateTimeSec")) ::
              Data.ProtoLens.FieldDescriptor SecondarySpStorePrice
        storePrice__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "store_price"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"storePrice")) ::
              Data.ProtoLens.FieldDescriptor SecondarySpStorePrice
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, updateTimeSec__field_descriptor),
           (Data.ProtoLens.Tag 2, storePrice__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SecondarySpStorePrice'_unknownFields
        (\ x__ y__ -> x__ {_SecondarySpStorePrice'_unknownFields = y__})
  defMessage
    = SecondarySpStorePrice'_constructor
        {_SecondarySpStorePrice'updateTimeSec = Data.ProtoLens.fieldDefault,
         _SecondarySpStorePrice'storePrice = Data.ProtoLens.fieldDefault,
         _SecondarySpStorePrice'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SecondarySpStorePrice
          -> Data.ProtoLens.Encoding.Bytes.Parser SecondarySpStorePrice
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
                                       "update_time_sec"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"updateTimeSec") y x)
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
                                       "store_price"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"storePrice") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SecondarySpStorePrice"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"updateTimeSec") _x
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
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"storePrice") _x
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
instance Control.DeepSeq.NFData SecondarySpStorePrice where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SecondarySpStorePrice'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SecondarySpStorePrice'updateTimeSec x__)
                (Control.DeepSeq.deepseq
                   (_SecondarySpStorePrice'storePrice x__) ()))
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Types_Fields.spAddress' @:: Lens' SpStoragePrice Data.Text.Text@
         * 'Proto.Greenfield.Sp.Types_Fields.updateTimeSec' @:: Lens' SpStoragePrice Data.Int.Int64@
         * 'Proto.Greenfield.Sp.Types_Fields.readPrice' @:: Lens' SpStoragePrice Data.Text.Text@
         * 'Proto.Greenfield.Sp.Types_Fields.freeReadQuota' @:: Lens' SpStoragePrice Data.Word.Word64@
         * 'Proto.Greenfield.Sp.Types_Fields.storePrice' @:: Lens' SpStoragePrice Data.Text.Text@ -}
data SpStoragePrice
  = SpStoragePrice'_constructor {_SpStoragePrice'spAddress :: !Data.Text.Text,
                                 _SpStoragePrice'updateTimeSec :: !Data.Int.Int64,
                                 _SpStoragePrice'readPrice :: !Data.Text.Text,
                                 _SpStoragePrice'freeReadQuota :: !Data.Word.Word64,
                                 _SpStoragePrice'storePrice :: !Data.Text.Text,
                                 _SpStoragePrice'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SpStoragePrice where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SpStoragePrice "spAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SpStoragePrice'spAddress
           (\ x__ y__ -> x__ {_SpStoragePrice'spAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SpStoragePrice "updateTimeSec" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SpStoragePrice'updateTimeSec
           (\ x__ y__ -> x__ {_SpStoragePrice'updateTimeSec = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SpStoragePrice "readPrice" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SpStoragePrice'readPrice
           (\ x__ y__ -> x__ {_SpStoragePrice'readPrice = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SpStoragePrice "freeReadQuota" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SpStoragePrice'freeReadQuota
           (\ x__ y__ -> x__ {_SpStoragePrice'freeReadQuota = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SpStoragePrice "storePrice" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SpStoragePrice'storePrice
           (\ x__ y__ -> x__ {_SpStoragePrice'storePrice = y__}))
        Prelude.id
instance Data.ProtoLens.Message SpStoragePrice where
  messageName _ = Data.Text.pack "greenfield.sp.SpStoragePrice"
  packedMessageDescriptor _
    = "\n\
      \\SOSpStoragePrice\DC27\n\
      \\n\
      \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2&\n\
      \\SIupdate_time_sec\CAN\STX \SOH(\ETXR\rupdateTimeSec\DC2[\n\
      \\n\
      \read_price\CAN\ETX \SOH(\tR\treadPriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec\DC2&\n\
      \\SIfree_read_quota\CAN\EOT \SOH(\EOTR\rfreeReadQuota\DC2]\n\
      \\vstore_price\CAN\ENQ \SOH(\tR\n\
      \storePriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
      \cosmos.Dec"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        spAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sp_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"spAddress")) ::
              Data.ProtoLens.FieldDescriptor SpStoragePrice
        updateTimeSec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_time_sec"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"updateTimeSec")) ::
              Data.ProtoLens.FieldDescriptor SpStoragePrice
        readPrice__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_price"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"readPrice")) ::
              Data.ProtoLens.FieldDescriptor SpStoragePrice
        freeReadQuota__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "free_read_quota"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"freeReadQuota")) ::
              Data.ProtoLens.FieldDescriptor SpStoragePrice
        storePrice__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "store_price"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"storePrice")) ::
              Data.ProtoLens.FieldDescriptor SpStoragePrice
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, updateTimeSec__field_descriptor),
           (Data.ProtoLens.Tag 3, readPrice__field_descriptor),
           (Data.ProtoLens.Tag 4, freeReadQuota__field_descriptor),
           (Data.ProtoLens.Tag 5, storePrice__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SpStoragePrice'_unknownFields
        (\ x__ y__ -> x__ {_SpStoragePrice'_unknownFields = y__})
  defMessage
    = SpStoragePrice'_constructor
        {_SpStoragePrice'spAddress = Data.ProtoLens.fieldDefault,
         _SpStoragePrice'updateTimeSec = Data.ProtoLens.fieldDefault,
         _SpStoragePrice'readPrice = Data.ProtoLens.fieldDefault,
         _SpStoragePrice'freeReadQuota = Data.ProtoLens.fieldDefault,
         _SpStoragePrice'storePrice = Data.ProtoLens.fieldDefault,
         _SpStoragePrice'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SpStoragePrice
          -> Data.ProtoLens.Encoding.Bytes.Parser SpStoragePrice
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
                                       "sp_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"spAddress") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "update_time_sec"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"updateTimeSec") y x)
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
                                       "read_price"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"readPrice") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "free_read_quota"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"freeReadQuota") y x)
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
                                       "store_price"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"storePrice") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SpStoragePrice"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"spAddress") _x
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
                         (Data.ProtoLens.Field.field @"updateTimeSec") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"readPrice") _x
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
                               (Data.ProtoLens.Field.field @"freeReadQuota") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"storePrice") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData SpStoragePrice where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SpStoragePrice'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SpStoragePrice'spAddress x__)
                (Control.DeepSeq.deepseq
                   (_SpStoragePrice'updateTimeSec x__)
                   (Control.DeepSeq.deepseq
                      (_SpStoragePrice'readPrice x__)
                      (Control.DeepSeq.deepseq
                         (_SpStoragePrice'freeReadQuota x__)
                         (Control.DeepSeq.deepseq (_SpStoragePrice'storePrice x__) ())))))
newtype Status'UnrecognizedValue
  = Status'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Status
  = STATUS_IN_SERVICE |
    STATUS_IN_JAILED |
    STATUS_GRACEFUL_EXITING |
    STATUS_OUT_OF_SERVICE |
    Status'Unrecognized !Status'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Status where
  maybeToEnum 0 = Prelude.Just STATUS_IN_SERVICE
  maybeToEnum 1 = Prelude.Just STATUS_IN_JAILED
  maybeToEnum 2 = Prelude.Just STATUS_GRACEFUL_EXITING
  maybeToEnum 3 = Prelude.Just STATUS_OUT_OF_SERVICE
  maybeToEnum k
    = Prelude.Just
        (Status'Unrecognized
           (Status'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum STATUS_IN_SERVICE = "STATUS_IN_SERVICE"
  showEnum STATUS_IN_JAILED = "STATUS_IN_JAILED"
  showEnum STATUS_GRACEFUL_EXITING = "STATUS_GRACEFUL_EXITING"
  showEnum STATUS_OUT_OF_SERVICE = "STATUS_OUT_OF_SERVICE"
  showEnum (Status'Unrecognized (Status'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "STATUS_IN_SERVICE"
    = Prelude.Just STATUS_IN_SERVICE
    | (Prelude.==) k "STATUS_IN_JAILED" = Prelude.Just STATUS_IN_JAILED
    | (Prelude.==) k "STATUS_GRACEFUL_EXITING"
    = Prelude.Just STATUS_GRACEFUL_EXITING
    | (Prelude.==) k "STATUS_OUT_OF_SERVICE"
    = Prelude.Just STATUS_OUT_OF_SERVICE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Status where
  minBound = STATUS_IN_SERVICE
  maxBound = STATUS_OUT_OF_SERVICE
instance Prelude.Enum Status where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Status: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum STATUS_IN_SERVICE = 0
  fromEnum STATUS_IN_JAILED = 1
  fromEnum STATUS_GRACEFUL_EXITING = 2
  fromEnum STATUS_OUT_OF_SERVICE = 3
  fromEnum (Status'Unrecognized (Status'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ STATUS_OUT_OF_SERVICE
    = Prelude.error
        "Status.succ: bad argument STATUS_OUT_OF_SERVICE. This value would be out of bounds."
  succ STATUS_IN_SERVICE = STATUS_IN_JAILED
  succ STATUS_IN_JAILED = STATUS_GRACEFUL_EXITING
  succ STATUS_GRACEFUL_EXITING = STATUS_OUT_OF_SERVICE
  succ (Status'Unrecognized _)
    = Prelude.error "Status.succ: bad argument: unrecognized value"
  pred STATUS_IN_SERVICE
    = Prelude.error
        "Status.pred: bad argument STATUS_IN_SERVICE. This value would be out of bounds."
  pred STATUS_IN_JAILED = STATUS_IN_SERVICE
  pred STATUS_GRACEFUL_EXITING = STATUS_IN_JAILED
  pred STATUS_OUT_OF_SERVICE = STATUS_GRACEFUL_EXITING
  pred (Status'Unrecognized _)
    = Prelude.error "Status.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Status where
  fieldDefault = STATUS_IN_SERVICE
instance Control.DeepSeq.NFData Status where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Greenfield.Sp.Types_Fields.operatorAddress' @:: Lens' StorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Types_Fields.fundingAddress' @:: Lens' StorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Types_Fields.sealAddress' @:: Lens' StorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Types_Fields.approvalAddress' @:: Lens' StorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Types_Fields.gcAddress' @:: Lens' StorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Types_Fields.totalDeposit' @:: Lens' StorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Types_Fields.status' @:: Lens' StorageProvider Status@
         * 'Proto.Greenfield.Sp.Types_Fields.endpoint' @:: Lens' StorageProvider Data.Text.Text@
         * 'Proto.Greenfield.Sp.Types_Fields.description' @:: Lens' StorageProvider Description@
         * 'Proto.Greenfield.Sp.Types_Fields.maybe'description' @:: Lens' StorageProvider (Prelude.Maybe Description)@ -}
data StorageProvider
  = StorageProvider'_constructor {_StorageProvider'operatorAddress :: !Data.Text.Text,
                                  _StorageProvider'fundingAddress :: !Data.Text.Text,
                                  _StorageProvider'sealAddress :: !Data.Text.Text,
                                  _StorageProvider'approvalAddress :: !Data.Text.Text,
                                  _StorageProvider'gcAddress :: !Data.Text.Text,
                                  _StorageProvider'totalDeposit :: !Data.Text.Text,
                                  _StorageProvider'status :: !Status,
                                  _StorageProvider'endpoint :: !Data.Text.Text,
                                  _StorageProvider'description :: !(Prelude.Maybe Description),
                                  _StorageProvider'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StorageProvider where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StorageProvider "operatorAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StorageProvider'operatorAddress
           (\ x__ y__ -> x__ {_StorageProvider'operatorAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StorageProvider "fundingAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StorageProvider'fundingAddress
           (\ x__ y__ -> x__ {_StorageProvider'fundingAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StorageProvider "sealAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StorageProvider'sealAddress
           (\ x__ y__ -> x__ {_StorageProvider'sealAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StorageProvider "approvalAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StorageProvider'approvalAddress
           (\ x__ y__ -> x__ {_StorageProvider'approvalAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StorageProvider "gcAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StorageProvider'gcAddress
           (\ x__ y__ -> x__ {_StorageProvider'gcAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StorageProvider "totalDeposit" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StorageProvider'totalDeposit
           (\ x__ y__ -> x__ {_StorageProvider'totalDeposit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StorageProvider "status" Status where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StorageProvider'status
           (\ x__ y__ -> x__ {_StorageProvider'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StorageProvider "endpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StorageProvider'endpoint
           (\ x__ y__ -> x__ {_StorageProvider'endpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StorageProvider "description" Description where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StorageProvider'description
           (\ x__ y__ -> x__ {_StorageProvider'description = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StorageProvider "maybe'description" (Prelude.Maybe Description) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StorageProvider'description
           (\ x__ y__ -> x__ {_StorageProvider'description = y__}))
        Prelude.id
instance Data.ProtoLens.Message StorageProvider where
  messageName _ = Data.Text.pack "greenfield.sp.StorageProvider"
  packedMessageDescriptor _
    = "\n\
      \\SIStorageProvider\DC2C\n\
      \\DLEoperator_address\CAN\SOH \SOH(\tR\SIoperatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2A\n\
      \\SIfunding_address\CAN\STX \SOH(\tR\SOfundingAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2;\n\
      \\fseal_address\CAN\ETX \SOH(\tR\vsealAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
      \\DLEapproval_address\CAN\EOT \SOH(\tR\SIapprovalAddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
      \\n\
      \gc_address\CAN\ENQ \SOH(\tR\tgcAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2a\n\
      \\rtotal_deposit\CAN\ACK \SOH(\tR\ftotalDepositB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
      \cosmos.Int\DC2-\n\
      \\ACKstatus\CAN\a \SOH(\SO2\NAK.greenfield.sp.StatusR\ACKstatus\DC2\SUB\n\
      \\bendpoint\CAN\b \SOH(\tR\bendpoint\DC2B\n\
      \\vdescription\CAN\t \SOH(\v2\SUB.greenfield.sp.DescriptionR\vdescriptionB\EOT\200\222\US\NUL"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operatorAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operator_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"operatorAddress")) ::
              Data.ProtoLens.FieldDescriptor StorageProvider
        fundingAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "funding_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fundingAddress")) ::
              Data.ProtoLens.FieldDescriptor StorageProvider
        sealAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seal_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sealAddress")) ::
              Data.ProtoLens.FieldDescriptor StorageProvider
        approvalAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "approval_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"approvalAddress")) ::
              Data.ProtoLens.FieldDescriptor StorageProvider
        gcAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gc_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"gcAddress")) ::
              Data.ProtoLens.FieldDescriptor StorageProvider
        totalDeposit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_deposit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"totalDeposit")) ::
              Data.ProtoLens.FieldDescriptor StorageProvider
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Status)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor StorageProvider
        endpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"endpoint")) ::
              Data.ProtoLens.FieldDescriptor StorageProvider
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Description)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'description")) ::
              Data.ProtoLens.FieldDescriptor StorageProvider
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operatorAddress__field_descriptor),
           (Data.ProtoLens.Tag 2, fundingAddress__field_descriptor),
           (Data.ProtoLens.Tag 3, sealAddress__field_descriptor),
           (Data.ProtoLens.Tag 4, approvalAddress__field_descriptor),
           (Data.ProtoLens.Tag 5, gcAddress__field_descriptor),
           (Data.ProtoLens.Tag 6, totalDeposit__field_descriptor),
           (Data.ProtoLens.Tag 7, status__field_descriptor),
           (Data.ProtoLens.Tag 8, endpoint__field_descriptor),
           (Data.ProtoLens.Tag 9, description__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StorageProvider'_unknownFields
        (\ x__ y__ -> x__ {_StorageProvider'_unknownFields = y__})
  defMessage
    = StorageProvider'_constructor
        {_StorageProvider'operatorAddress = Data.ProtoLens.fieldDefault,
         _StorageProvider'fundingAddress = Data.ProtoLens.fieldDefault,
         _StorageProvider'sealAddress = Data.ProtoLens.fieldDefault,
         _StorageProvider'approvalAddress = Data.ProtoLens.fieldDefault,
         _StorageProvider'gcAddress = Data.ProtoLens.fieldDefault,
         _StorageProvider'totalDeposit = Data.ProtoLens.fieldDefault,
         _StorageProvider'status = Data.ProtoLens.fieldDefault,
         _StorageProvider'endpoint = Data.ProtoLens.fieldDefault,
         _StorageProvider'description = Prelude.Nothing,
         _StorageProvider'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StorageProvider
          -> Data.ProtoLens.Encoding.Bytes.Parser StorageProvider
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
                                       "operator_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"operatorAddress") y x)
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
                                       "funding_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fundingAddress") y x)
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
                                       "seal_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sealAddress") y x)
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
                                       "approval_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"approvalAddress") y x)
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
                                       "gc_address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gcAddress") y x)
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
                                       "total_deposit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalDeposit") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "endpoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"endpoint") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StorageProvider"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"operatorAddress") _x
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
                         (Data.ProtoLens.Field.field @"fundingAddress") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"sealAddress") _x
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
                               (Data.ProtoLens.Field.field @"approvalAddress") _x
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
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"gcAddress") _x
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
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"totalDeposit") _x
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
                                  _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral)
                                           Prelude.fromEnum _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"endpoint") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8 _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'description") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData StorageProvider where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StorageProvider'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StorageProvider'operatorAddress x__)
                (Control.DeepSeq.deepseq
                   (_StorageProvider'fundingAddress x__)
                   (Control.DeepSeq.deepseq
                      (_StorageProvider'sealAddress x__)
                      (Control.DeepSeq.deepseq
                         (_StorageProvider'approvalAddress x__)
                         (Control.DeepSeq.deepseq
                            (_StorageProvider'gcAddress x__)
                            (Control.DeepSeq.deepseq
                               (_StorageProvider'totalDeposit x__)
                               (Control.DeepSeq.deepseq
                                  (_StorageProvider'status x__)
                                  (Control.DeepSeq.deepseq
                                     (_StorageProvider'endpoint x__)
                                     (Control.DeepSeq.deepseq
                                        (_StorageProvider'description x__) ())))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\EMgreenfield/sp/types.proto\DC2\rgreenfield.sp\SUB\RScosmos/base/v1beta1/coin.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\"\162\SOH\n\
    \\vDescription\DC2\CAN\n\
    \\amoniker\CAN\SOH \SOH(\tR\amoniker\DC2\SUB\n\
    \\bidentity\CAN\STX \SOH(\tR\bidentity\DC2\CAN\n\
    \\awebsite\CAN\ETX \SOH(\tR\awebsite\DC2)\n\
    \\DLEsecurity_contact\CAN\EOT \SOH(\tR\SIsecurityContact\DC2\CAN\n\
    \\adetails\CAN\ENQ \SOH(\tR\adetails\"\198\EOT\n\
    \\SIStorageProvider\DC2C\n\
    \\DLEoperator_address\CAN\SOH \SOH(\tR\SIoperatorAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2A\n\
    \\SIfunding_address\CAN\STX \SOH(\tR\SOfundingAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2;\n\
    \\fseal_address\CAN\ETX \SOH(\tR\vsealAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2C\n\
    \\DLEapproval_address\CAN\EOT \SOH(\tR\SIapprovalAddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
    \\n\
    \gc_address\CAN\ENQ \SOH(\tR\tgcAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2a\n\
    \\rtotal_deposit\CAN\ACK \SOH(\tR\ftotalDepositB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Int\210\180-\n\
    \cosmos.Int\DC2-\n\
    \\ACKstatus\CAN\a \SOH(\SO2\NAK.greenfield.sp.StatusR\ACKstatus\DC2\SUB\n\
    \\bendpoint\CAN\b \SOH(\tR\bendpoint\DC2B\n\
    \\vdescription\CAN\t \SOH(\v2\SUB.greenfield.sp.DescriptionR\vdescriptionB\EOT\200\222\US\NUL\"y\n\
    \\n\
    \RewardInfo\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC27\n\
    \\ACKamount\CAN\STX \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB\EOT\200\222\US\NUL\"\213\STX\n\
    \\SOSpStoragePrice\DC27\n\
    \\n\
    \sp_address\CAN\SOH \SOH(\tR\tspAddressB\CAN\210\180-\DC4cosmos.AddressString\DC2&\n\
    \\SIupdate_time_sec\CAN\STX \SOH(\ETXR\rupdateTimeSec\DC2[\n\
    \\n\
    \read_price\CAN\ETX \SOH(\tR\treadPriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\DC2&\n\
    \\SIfree_read_quota\CAN\EOT \SOH(\EOTR\rfreeReadQuota\DC2]\n\
    \\vstore_price\CAN\ENQ \SOH(\tR\n\
    \storePriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec\"\158\SOH\n\
    \\NAKSecondarySpStorePrice\DC2&\n\
    \\SIupdate_time_sec\CAN\SOH \SOH(\ETXR\rupdateTimeSec\DC2]\n\
    \\vstore_price\CAN\STX \SOH(\tR\n\
    \storePriceB<\200\222\US\NUL\218\222\US&github.com/cosmos/cosmos-sdk/types.Dec\210\180-\n\
    \cosmos.Dec*s\n\
    \\ACKStatus\DC2\NAK\n\
    \\DC1STATUS_IN_SERVICE\DLE\NUL\DC2\DC4\n\
    \\DLESTATUS_IN_JAILED\DLE\SOH\DC2\ESC\n\
    \\ETBSTATUS_GRACEFUL_EXITING\DLE\STX\DC2\EM\n\
    \\NAKSTATUS_OUT_OF_SERVICE\DLE\ETX\SUB\EOT\136\163\RS\NULB,Z*github.com/bnb-chain/greenfield/x/sp/typesJ\176\RS\n\
    \\ACK\DC2\EOT\NUL\NUL`\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL\RS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULA\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\a\NULA\n\
    \A\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL\NAK\SOH\SUB5 Description defines a storage provider description.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\DC3\n\
    \M\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\f\STX\NAK\SUB@ moniker defines a human-readable name for the storage provider\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\f\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\f\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\f\DC3\DC4\n\
    \V\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SO\STX\SYN\SUBI identity defines an optional identity signature (ex. UPort or Keybase).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SO\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SO\DC4\NAK\n\
    \8\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\DLE\STX\NAK\SUB+ website defines an optional website link.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\DLE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\DLE\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\DLE\DC3\DC4\n\
    \O\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\DC2\STX\RS\SUBB security_contact defines an optional email for security contact.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\DC2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\DC2\t\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\DC2\FS\GS\n\
    \5\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\DC4\STX\NAK\SUB( details define other optional details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\DC4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\DC4\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\DC4\DC3\DC4\n\
    \9\n\
    \\STX\ENQ\NUL\DC2\EOT\CAN\NUL\US\SOH\SUB- Status is the status of a storage provider.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\CAN\ENQ\v\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\ETX\DC2\ETX\EM\STX1\n\
    \\r\n\
    \\ACK\ENQ\NUL\ETX\177\228\ETX\DC2\ETX\EM\STX1\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\ESC\STX\CAN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\ESC\STX\DC3\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\ESC\SYN\ETB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX\FS\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX\FS\STX\DC2\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX\FS\NAK\SYN\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX\GS\STX\RS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX\GS\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX\GS\FS\GS\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX\RS\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX\RS\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX\RS\SUB\ESC\n\
    \G\n\
    \\STX\EOT\SOH\DC2\EOT\"\NUL9\SOH\SUB; StorageProvider defines the meta info of storage provider\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\"\b\ETB\n\
    \\134\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX$\STXO\SUBy operator_address defines the account address of the storage provider's operator; It also is the unique index key of sp.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX$\t\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX$\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX$\RSN\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\202\214\ENQ\DC2\ETX$\USM\n\
    \r\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX&\STXN\SUBe funding_address defines one of the storage provider's accounts which is used to deposit and reward.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX&\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX&\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX&\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX&\GSM\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\202\214\ENQ\DC2\ETX&\RSL\n\
    \f\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX(\STXK\SUBY seal_address defines one of the storage provider's accounts which is used to SealObject\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX(\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX(\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX(\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\ETX(\SUBJ\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\202\214\ENQ\DC2\ETX(\ESCI\n\
    \\144\SOH\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX*\STXO\SUB\130\SOH approval_address defines one of the storage provider's accounts which is used to approve use's createBucket/createObject request\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX*\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX*\t\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX*\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\b\DC2\ETX*\RSN\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\202\214\ENQ\DC2\ETX*\USM\n\
    \f\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX,\STXI\SUBY gc_address defines one of the storage provider's accounts which is used for gc purpose.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX,\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX,\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX,\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\b\DC2\ETX,\CANH\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\202\214\ENQ\DC2\ETX,\EMG\n\
    \j\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\EOT.\STX2\EOT\SUB\\ total_deposit defines the number of tokens deposited by this storage provider for staking.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX.\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX.\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX.\EM\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\b\DC2\EOT.\ESC2\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ENQ\b\202\214\ENQ\DC2\ETX/\EOT(\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ENQ\b\235\251\ETX\DC2\ETX0\EOTE\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ENQ\b\233\251\ETX\DC2\ETX1\EOT \n\
    \Q\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX4\STX\DC4\SUBD status defines the current service status of this storage provider\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETX4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX4\t\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX4\DC2\DC3\n\
    \M\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETX6\STX\SYN\SUB@ endpoint define the storage provider's network service address\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\ETX6\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETX6\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETX6\DC4\NAK\n\
    \R\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETX8\STX=\SUBE description defines the description terms for the storage provider.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ACK\DC2\ETX8\STX\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETX8\SO\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETX8\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\b\DC2\ETX8\RS<\n\
    \\SI\n\
    \\b\EOT\SOH\STX\b\b\233\251\ETX\DC2\ETX8\US;\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT;\NUL>\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX;\b\DC2\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX<\STXF\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX<\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX<\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX<\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX<\NAKE\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX<\SYND\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX=\STXE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX=\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX=\ESC!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX=$%\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETX=&D\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\233\251\ETX\DC2\ETX='C\n\
    \,\n\
    \\STX\EOT\ETX\DC2\EOTA\NULT\SOH\SUB  storage price of a specific sp\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXA\b\SYN\n\
    \\EM\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXC\STXI\SUB\f sp address\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXC\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXC\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETXC\CANH\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\202\214\ENQ\DC2\ETXC\EMG\n\
    \5\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXE\STX\FS\SUB( update time, unix timestamp in seconds\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETXE\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXE\b\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXE\SUB\ESC\n\
    \6\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOTG\STXK\EOT\SUB( read price, in bnb wei per charge byte\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETXG\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXG\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXG\SYN\ETB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\b\DC2\EOTG\CANK\ETX\n\
    \\SI\n\
    \\b\EOT\ETX\STX\STX\b\202\214\ENQ\DC2\ETXH\EOT(\n\
    \\SI\n\
    \\b\EOT\ETX\STX\STX\b\235\251\ETX\DC2\ETXI\EOTE\n\
    \\SI\n\
    \\b\EOT\ETX\STX\STX\b\233\251\ETX\DC2\ETXJ\EOT \n\
    \'\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETXM\STX\GS\SUB\SUB free read quota, in byte\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETXM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETXM\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETXM\ESC\FS\n\
    \7\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\EOTO\STXS\EOT\SUB) store price, in bnb wei per charge byte\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETXO\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETXO\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETXO\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\b\DC2\EOTO\EMS\ETX\n\
    \\SI\n\
    \\b\EOT\ETX\STX\EOT\b\202\214\ENQ\DC2\ETXP\EOT(\n\
    \\SI\n\
    \\b\EOT\ETX\STX\EOT\b\235\251\ETX\DC2\ETXQ\EOTE\n\
    \\SI\n\
    \\b\EOT\ETX\STX\EOT\b\233\251\ETX\DC2\ETXR\EOT \n\
    \N\n\
    \\STX\EOT\EOT\DC2\EOTW\NUL`\SOH\SUBB global secondary sp store price, the price for all secondary sps\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXW\b\GS\n\
    \5\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXY\STX\FS\SUB( update time, unix timestamp in seconds\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXY\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXY\b\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXY\SUB\ESC\n\
    \7\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT[\STX_\EOT\SUB) store price, in bnb wei per charge byte\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX[\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX[\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX[\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\EOT[\EM_\ETX\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\202\214\ENQ\DC2\ETX\\\EOT(\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\235\251\ETX\DC2\ETX]\EOTE\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\233\251\ETX\DC2\ETX^\EOT b\ACKproto3"