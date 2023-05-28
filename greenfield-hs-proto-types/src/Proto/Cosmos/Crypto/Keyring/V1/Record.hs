{- This file was auto-generated from cosmos/crypto/keyring/v1/record.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Crypto.Keyring.V1.Record (
        Record(), Record'Item(..), _Record'Local', _Record'Ledger',
        _Record'Multi', _Record'Offline', Record'Ledger(), Record'Local(),
        Record'Multi(), Record'Offline()
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
import qualified Proto.Cosmos.Crypto.Hd.V1.Hd
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
{- | Fields :
     
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.name' @:: Lens' Record Data.Text.Text@
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.pubKey' @:: Lens' Record Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.maybe'pubKey' @:: Lens' Record (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.maybe'item' @:: Lens' Record (Prelude.Maybe Record'Item)@
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.maybe'local' @:: Lens' Record (Prelude.Maybe Record'Local)@
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.local' @:: Lens' Record Record'Local@
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.maybe'ledger' @:: Lens' Record (Prelude.Maybe Record'Ledger)@
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.ledger' @:: Lens' Record Record'Ledger@
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.maybe'multi' @:: Lens' Record (Prelude.Maybe Record'Multi)@
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.multi' @:: Lens' Record Record'Multi@
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.maybe'offline' @:: Lens' Record (Prelude.Maybe Record'Offline)@
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.offline' @:: Lens' Record Record'Offline@ -}
data Record
  = Record'_constructor {_Record'name :: !Data.Text.Text,
                         _Record'pubKey :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                         _Record'item :: !(Prelude.Maybe Record'Item),
                         _Record'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Record where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Record'Item
  = Record'Local' !Record'Local |
    Record'Ledger' !Record'Ledger |
    Record'Multi' !Record'Multi |
    Record'Offline' !Record'Offline
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Record "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'name (\ x__ y__ -> x__ {_Record'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Record "pubKey" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'pubKey (\ x__ y__ -> x__ {_Record'pubKey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Record "maybe'pubKey" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'pubKey (\ x__ y__ -> x__ {_Record'pubKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Record "maybe'item" (Prelude.Maybe Record'Item) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'item (\ x__ y__ -> x__ {_Record'item = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Record "maybe'local" (Prelude.Maybe Record'Local) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'item (\ x__ y__ -> x__ {_Record'item = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Record'Local' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Record'Local' y__))
instance Data.ProtoLens.Field.HasField Record "local" Record'Local where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'item (\ x__ y__ -> x__ {_Record'item = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Record'Local' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Record'Local' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Record "maybe'ledger" (Prelude.Maybe Record'Ledger) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'item (\ x__ y__ -> x__ {_Record'item = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Record'Ledger' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Record'Ledger' y__))
instance Data.ProtoLens.Field.HasField Record "ledger" Record'Ledger where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'item (\ x__ y__ -> x__ {_Record'item = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Record'Ledger' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Record'Ledger' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Record "maybe'multi" (Prelude.Maybe Record'Multi) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'item (\ x__ y__ -> x__ {_Record'item = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Record'Multi' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Record'Multi' y__))
instance Data.ProtoLens.Field.HasField Record "multi" Record'Multi where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'item (\ x__ y__ -> x__ {_Record'item = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Record'Multi' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Record'Multi' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Record "maybe'offline" (Prelude.Maybe Record'Offline) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'item (\ x__ y__ -> x__ {_Record'item = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Record'Offline' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Record'Offline' y__))
instance Data.ProtoLens.Field.HasField Record "offline" Record'Offline where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'item (\ x__ y__ -> x__ {_Record'item = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Record'Offline' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Record'Offline' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Record where
  messageName _ = Data.Text.pack "cosmos.crypto.keyring.v1.Record"
  packedMessageDescriptor _
    = "\n\
      \\ACKRecord\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2-\n\
      \\apub_key\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ACKpubKey\DC2>\n\
      \\ENQlocal\CAN\ETX \SOH(\v2&.cosmos.crypto.keyring.v1.Record.LocalH\NULR\ENQlocal\DC2A\n\
      \\ACKledger\CAN\EOT \SOH(\v2'.cosmos.crypto.keyring.v1.Record.LedgerH\NULR\ACKledger\DC2>\n\
      \\ENQmulti\CAN\ENQ \SOH(\v2&.cosmos.crypto.keyring.v1.Record.MultiH\NULR\ENQmulti\DC2D\n\
      \\aoffline\CAN\ACK \SOH(\v2(.cosmos.crypto.keyring.v1.Record.OfflineH\NULR\aoffline\SUB8\n\
      \\ENQLocal\DC2/\n\
      \\bpriv_key\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\aprivKey\SUB>\n\
      \\ACKLedger\DC24\n\
      \\EOTpath\CAN\SOH \SOH(\v2 .cosmos.crypto.hd.v1.BIP44ParamsR\EOTpath\SUB\a\n\
      \\ENQMulti\SUB\t\n\
      \\aOfflineB\ACK\n\
      \\EOTitem"
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
              Data.ProtoLens.FieldDescriptor Record
        pubKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pub_key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pubKey")) ::
              Data.ProtoLens.FieldDescriptor Record
        local__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Record'Local)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'local")) ::
              Data.ProtoLens.FieldDescriptor Record
        ledger__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ledger"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Record'Ledger)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ledger")) ::
              Data.ProtoLens.FieldDescriptor Record
        multi__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "multi"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Record'Multi)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'multi")) ::
              Data.ProtoLens.FieldDescriptor Record
        offline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "offline"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Record'Offline)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'offline")) ::
              Data.ProtoLens.FieldDescriptor Record
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, pubKey__field_descriptor),
           (Data.ProtoLens.Tag 3, local__field_descriptor),
           (Data.ProtoLens.Tag 4, ledger__field_descriptor),
           (Data.ProtoLens.Tag 5, multi__field_descriptor),
           (Data.ProtoLens.Tag 6, offline__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Record'_unknownFields
        (\ x__ y__ -> x__ {_Record'_unknownFields = y__})
  defMessage
    = Record'_constructor
        {_Record'name = Data.ProtoLens.fieldDefault,
         _Record'pubKey = Prelude.Nothing, _Record'item = Prelude.Nothing,
         _Record'_unknownFields = []}
  parseMessage
    = let
        loop :: Record -> Data.ProtoLens.Encoding.Bytes.Parser Record
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pub_key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pubKey") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "local"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"local") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ledger"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ledger") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "multi"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"multi") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "offline"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"offline") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Record"
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pubKey") _x
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'item") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (Record'Local' v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (Record'Ledger' v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (Record'Multi' v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (Record'Offline' v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Record where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Record'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Record'name x__)
                (Control.DeepSeq.deepseq
                   (_Record'pubKey x__)
                   (Control.DeepSeq.deepseq (_Record'item x__) ())))
instance Control.DeepSeq.NFData Record'Item where
  rnf (Record'Local' x__) = Control.DeepSeq.rnf x__
  rnf (Record'Ledger' x__) = Control.DeepSeq.rnf x__
  rnf (Record'Multi' x__) = Control.DeepSeq.rnf x__
  rnf (Record'Offline' x__) = Control.DeepSeq.rnf x__
_Record'Local' ::
  Data.ProtoLens.Prism.Prism' Record'Item Record'Local
_Record'Local'
  = Data.ProtoLens.Prism.prism'
      Record'Local'
      (\ p__
         -> case p__ of
              (Record'Local' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Record'Ledger' ::
  Data.ProtoLens.Prism.Prism' Record'Item Record'Ledger
_Record'Ledger'
  = Data.ProtoLens.Prism.prism'
      Record'Ledger'
      (\ p__
         -> case p__ of
              (Record'Ledger' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Record'Multi' ::
  Data.ProtoLens.Prism.Prism' Record'Item Record'Multi
_Record'Multi'
  = Data.ProtoLens.Prism.prism'
      Record'Multi'
      (\ p__
         -> case p__ of
              (Record'Multi' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Record'Offline' ::
  Data.ProtoLens.Prism.Prism' Record'Item Record'Offline
_Record'Offline'
  = Data.ProtoLens.Prism.prism'
      Record'Offline'
      (\ p__
         -> case p__ of
              (Record'Offline' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.path' @:: Lens' Record'Ledger Proto.Cosmos.Crypto.Hd.V1.Hd.BIP44Params@
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.maybe'path' @:: Lens' Record'Ledger (Prelude.Maybe Proto.Cosmos.Crypto.Hd.V1.Hd.BIP44Params)@ -}
data Record'Ledger
  = Record'Ledger'_constructor {_Record'Ledger'path :: !(Prelude.Maybe Proto.Cosmos.Crypto.Hd.V1.Hd.BIP44Params),
                                _Record'Ledger'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Record'Ledger where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Record'Ledger "path" Proto.Cosmos.Crypto.Hd.V1.Hd.BIP44Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'Ledger'path (\ x__ y__ -> x__ {_Record'Ledger'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Record'Ledger "maybe'path" (Prelude.Maybe Proto.Cosmos.Crypto.Hd.V1.Hd.BIP44Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'Ledger'path (\ x__ y__ -> x__ {_Record'Ledger'path = y__}))
        Prelude.id
instance Data.ProtoLens.Message Record'Ledger where
  messageName _
    = Data.Text.pack "cosmos.crypto.keyring.v1.Record.Ledger"
  packedMessageDescriptor _
    = "\n\
      \\ACKLedger\DC24\n\
      \\EOTpath\CAN\SOH \SOH(\v2 .cosmos.crypto.hd.v1.BIP44ParamsR\EOTpath"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Crypto.Hd.V1.Hd.BIP44Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor Record'Ledger
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, path__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Record'Ledger'_unknownFields
        (\ x__ y__ -> x__ {_Record'Ledger'_unknownFields = y__})
  defMessage
    = Record'Ledger'_constructor
        {_Record'Ledger'path = Prelude.Nothing,
         _Record'Ledger'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Record'Ledger -> Data.ProtoLens.Encoding.Bytes.Parser Record'Ledger
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
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Ledger"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
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
instance Control.DeepSeq.NFData Record'Ledger where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Record'Ledger'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Record'Ledger'path x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.privKey' @:: Lens' Record'Local Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Crypto.Keyring.V1.Record_Fields.maybe'privKey' @:: Lens' Record'Local (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data Record'Local
  = Record'Local'_constructor {_Record'Local'privKey :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                               _Record'Local'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Record'Local where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Record'Local "privKey" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'Local'privKey
           (\ x__ y__ -> x__ {_Record'Local'privKey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Record'Local "maybe'privKey" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Record'Local'privKey
           (\ x__ y__ -> x__ {_Record'Local'privKey = y__}))
        Prelude.id
instance Data.ProtoLens.Message Record'Local where
  messageName _
    = Data.Text.pack "cosmos.crypto.keyring.v1.Record.Local"
  packedMessageDescriptor _
    = "\n\
      \\ENQLocal\DC2/\n\
      \\bpriv_key\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\aprivKey"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        privKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priv_key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'privKey")) ::
              Data.ProtoLens.FieldDescriptor Record'Local
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, privKey__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Record'Local'_unknownFields
        (\ x__ y__ -> x__ {_Record'Local'_unknownFields = y__})
  defMessage
    = Record'Local'_constructor
        {_Record'Local'privKey = Prelude.Nothing,
         _Record'Local'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Record'Local -> Data.ProtoLens.Encoding.Bytes.Parser Record'Local
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
                                       "priv_key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"privKey") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Local"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'privKey") _x
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
instance Control.DeepSeq.NFData Record'Local where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Record'Local'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Record'Local'privKey x__) ())
{- | Fields :
      -}
data Record'Multi
  = Record'Multi'_constructor {_Record'Multi'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Record'Multi where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message Record'Multi where
  messageName _
    = Data.Text.pack "cosmos.crypto.keyring.v1.Record.Multi"
  packedMessageDescriptor _
    = "\n\
      \\ENQMulti"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Record'Multi'_unknownFields
        (\ x__ y__ -> x__ {_Record'Multi'_unknownFields = y__})
  defMessage
    = Record'Multi'_constructor {_Record'Multi'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Record'Multi -> Data.ProtoLens.Encoding.Bytes.Parser Record'Multi
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
          (do loop Data.ProtoLens.defMessage) "Multi"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData Record'Multi where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_Record'Multi'_unknownFields x__) ()
{- | Fields :
      -}
data Record'Offline
  = Record'Offline'_constructor {_Record'Offline'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Record'Offline where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message Record'Offline where
  messageName _
    = Data.Text.pack "cosmos.crypto.keyring.v1.Record.Offline"
  packedMessageDescriptor _
    = "\n\
      \\aOffline"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Record'Offline'_unknownFields
        (\ x__ y__ -> x__ {_Record'Offline'_unknownFields = y__})
  defMessage
    = Record'Offline'_constructor {_Record'Offline'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Record'Offline
          -> Data.ProtoLens.Encoding.Bytes.Parser Record'Offline
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
          (do loop Data.ProtoLens.defMessage) "Offline"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData Record'Offline where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_Record'Offline'_unknownFields x__) ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \%cosmos/crypto/keyring/v1/record.proto\DC2\CANcosmos.crypto.keyring.v1\SUB\DC4gogoproto/gogo.proto\SUB\EMgoogle/protobuf/any.proto\SUB\FScosmos/crypto/hd/v1/hd.proto\"\234\ETX\n\
    \\ACKRecord\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2-\n\
    \\apub_key\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ACKpubKey\DC2>\n\
    \\ENQlocal\CAN\ETX \SOH(\v2&.cosmos.crypto.keyring.v1.Record.LocalH\NULR\ENQlocal\DC2A\n\
    \\ACKledger\CAN\EOT \SOH(\v2'.cosmos.crypto.keyring.v1.Record.LedgerH\NULR\ACKledger\DC2>\n\
    \\ENQmulti\CAN\ENQ \SOH(\v2&.cosmos.crypto.keyring.v1.Record.MultiH\NULR\ENQmulti\DC2D\n\
    \\aoffline\CAN\ACK \SOH(\v2(.cosmos.crypto.keyring.v1.Record.OfflineH\NULR\aoffline\SUB8\n\
    \\ENQLocal\DC2/\n\
    \\bpriv_key\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\aprivKey\SUB>\n\
    \\ACKLedger\DC24\n\
    \\EOTpath\CAN\SOH \SOH(\v2 .cosmos.crypto.hd.v1.BIP44ParamsR\EOTpath\SUB\a\n\
    \\ENQMulti\SUB\t\n\
    \\aOfflineB\ACK\n\
    \\EOTitemB5Z+github.com/cosmos/cosmos-sdk/crypto/keyring\200\225\RS\NUL\152\227\RS\NULJ\238\t\n\
    \\ACK\DC2\EOT\SOH\NUL/\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.46\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL&\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULW\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NULW\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL/\n\
    \\v\n\
    \\EOT\b\153\236\ETX\DC2\ETX\t\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL/\n\
    \\v\n\
    \\EOT\b\179\236\ETX\DC2\ETX\n\
    \\NUL/\n\
    \C\n\
    \\STX\EOT\NUL\DC2\EOT\r\NUL/\SOH\SUB7 Record is used for representing a key in the keyring.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\r\b\SO\n\
    \/\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SI\STX\DC2\SUB\" name represents a name of Record\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SI\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SI\DLE\DC1\n\
    \<\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC1\STX\"\SUB/ pub_key represents a public key in any format\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DC1\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC1\SYN\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC1 !\n\
    \:\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\DC4\STX\GS\ETX\SUB, Record contains one of the following items\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\DC4\b\f\n\
    \4\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\SYN\EOT\DC4\SUB' local stores the private key locally.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\SYN\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\SYN\n\
    \\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\SYN\DC2\DC3\n\
    \@\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\CAN\EOT\SYN\SUB3 ledger stores the information about a Ledger key.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX\CAN\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\CAN\DC4\NAK\n\
    \:\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\SUB\EOT\DC4\SUB- Multi does not store any other information.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\SUB\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\SUB\n\
    \\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\SUB\DC2\DC3\n\
    \<\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\FS\EOT\CAN\SUB/ Offline does not store any other information.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX\FS\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\FS\f\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\FS\SYN\ETB\n\
    \O\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT!\STX#\ETX\SUBA Item is a keyring item stored in a keyring backend.\n\
    \ Local item\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX!\n\
    \\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\"\EOT%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX\"\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\"\CAN \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\"#$\n\
    \\ESC\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT&\STX(\ETX\SUB\r Ledger item\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX&\n\
    \\DLE\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETX'\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ACK\DC2\ETX'\EOT\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX'\SYN\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX'\GS\RS\n\
    \\EM\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\ETX+\STX\DC2\SUB\f Multi item\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\ETX+\n\
    \\SI\n\
    \\ESC\n\
    \\EOT\EOT\NUL\ETX\ETX\DC2\ETX.\STX\DC4\SUB\SO Offline item\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\ETX\SOH\DC2\ETX.\n\
    \\DC1b\ACKproto3"