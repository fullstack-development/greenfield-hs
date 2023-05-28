{- This file was auto-generated from cosmos/feegrant/v1beta1/feegrant.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Feegrant.V1beta1.Feegrant (
        AllowedMsgAllowance(), BasicAllowance(), Grant(),
        PeriodicAllowance()
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
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
{- | Fields :
     
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.allowance' @:: Lens' AllowedMsgAllowance Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.maybe'allowance' @:: Lens' AllowedMsgAllowance (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.allowedMessages' @:: Lens' AllowedMsgAllowance [Data.Text.Text]@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.vec'allowedMessages' @:: Lens' AllowedMsgAllowance (Data.Vector.Vector Data.Text.Text)@ -}
data AllowedMsgAllowance
  = AllowedMsgAllowance'_constructor {_AllowedMsgAllowance'allowance :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                      _AllowedMsgAllowance'allowedMessages :: !(Data.Vector.Vector Data.Text.Text),
                                      _AllowedMsgAllowance'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AllowedMsgAllowance where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AllowedMsgAllowance "allowance" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllowedMsgAllowance'allowance
           (\ x__ y__ -> x__ {_AllowedMsgAllowance'allowance = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AllowedMsgAllowance "maybe'allowance" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllowedMsgAllowance'allowance
           (\ x__ y__ -> x__ {_AllowedMsgAllowance'allowance = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AllowedMsgAllowance "allowedMessages" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllowedMsgAllowance'allowedMessages
           (\ x__ y__ -> x__ {_AllowedMsgAllowance'allowedMessages = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AllowedMsgAllowance "vec'allowedMessages" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AllowedMsgAllowance'allowedMessages
           (\ x__ y__ -> x__ {_AllowedMsgAllowance'allowedMessages = y__}))
        Prelude.id
instance Data.ProtoLens.Message AllowedMsgAllowance where
  messageName _
    = Data.Text.pack "cosmos.feegrant.v1beta1.AllowedMsgAllowance"
  packedMessageDescriptor _
    = "\n\
      \\DC3AllowedMsgAllowance\DC2]\n\
      \\tallowance\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\tallowanceB)\202\180-%cosmos.feegrant.v1beta1.FeeAllowanceI\DC2)\n\
      \\DLEallowed_messages\CAN\STX \ETX(\tR\SIallowedMessages:P\136\160\US\NUL\202\180-%cosmos.feegrant.v1beta1.FeeAllowanceI\138\231\176*\RScosmos-sdk/AllowedMsgAllowance"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        allowance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allowance"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'allowance")) ::
              Data.ProtoLens.FieldDescriptor AllowedMsgAllowance
        allowedMessages__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allowed_messages"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"allowedMessages")) ::
              Data.ProtoLens.FieldDescriptor AllowedMsgAllowance
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, allowance__field_descriptor),
           (Data.ProtoLens.Tag 2, allowedMessages__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AllowedMsgAllowance'_unknownFields
        (\ x__ y__ -> x__ {_AllowedMsgAllowance'_unknownFields = y__})
  defMessage
    = AllowedMsgAllowance'_constructor
        {_AllowedMsgAllowance'allowance = Prelude.Nothing,
         _AllowedMsgAllowance'allowedMessages = Data.Vector.Generic.empty,
         _AllowedMsgAllowance'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AllowedMsgAllowance
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser AllowedMsgAllowance
        loop x mutable'allowedMessages
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'allowedMessages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'allowedMessages)
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
                              (Data.ProtoLens.Field.field @"vec'allowedMessages")
                              frozen'allowedMessages x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "allowance"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"allowance") y x)
                                  mutable'allowedMessages
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "allowed_messages"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'allowedMessages y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'allowedMessages
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'allowedMessages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'allowedMessages)
          "AllowedMsgAllowance"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'allowance") _x
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
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.Text.Encoding.encodeUtf8 _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'allowedMessages") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AllowedMsgAllowance where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AllowedMsgAllowance'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AllowedMsgAllowance'allowance x__)
                (Control.DeepSeq.deepseq
                   (_AllowedMsgAllowance'allowedMessages x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.spendLimit' @:: Lens' BasicAllowance [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.vec'spendLimit' @:: Lens' BasicAllowance (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.expiration' @:: Lens' BasicAllowance Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.maybe'expiration' @:: Lens' BasicAllowance (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data BasicAllowance
  = BasicAllowance'_constructor {_BasicAllowance'spendLimit :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                 _BasicAllowance'expiration :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                 _BasicAllowance'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BasicAllowance where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BasicAllowance "spendLimit" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BasicAllowance'spendLimit
           (\ x__ y__ -> x__ {_BasicAllowance'spendLimit = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField BasicAllowance "vec'spendLimit" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BasicAllowance'spendLimit
           (\ x__ y__ -> x__ {_BasicAllowance'spendLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BasicAllowance "expiration" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BasicAllowance'expiration
           (\ x__ y__ -> x__ {_BasicAllowance'expiration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BasicAllowance "maybe'expiration" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BasicAllowance'expiration
           (\ x__ y__ -> x__ {_BasicAllowance'expiration = y__}))
        Prelude.id
instance Data.ProtoLens.Message BasicAllowance where
  messageName _
    = Data.Text.pack "cosmos.feegrant.v1beta1.BasicAllowance"
  packedMessageDescriptor _
    = "\n\
      \\SOBasicAllowance\DC2\130\SOH\n\
      \\vspend_limit\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\n\
      \spendLimitBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2@\n\
      \\n\
      \expiration\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
      \expirationB\EOT\144\223\US\SOH:G\202\180-%cosmos.feegrant.v1beta1.FeeAllowanceI\138\231\176*\EMcosmos-sdk/BasicAllowance"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        spendLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "spend_limit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"spendLimit")) ::
              Data.ProtoLens.FieldDescriptor BasicAllowance
        expiration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expiration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expiration")) ::
              Data.ProtoLens.FieldDescriptor BasicAllowance
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spendLimit__field_descriptor),
           (Data.ProtoLens.Tag 2, expiration__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BasicAllowance'_unknownFields
        (\ x__ y__ -> x__ {_BasicAllowance'_unknownFields = y__})
  defMessage
    = BasicAllowance'_constructor
        {_BasicAllowance'spendLimit = Data.Vector.Generic.empty,
         _BasicAllowance'expiration = Prelude.Nothing,
         _BasicAllowance'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BasicAllowance
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser BasicAllowance
        loop x mutable'spendLimit
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'spendLimit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'spendLimit)
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
                              (Data.ProtoLens.Field.field @"vec'spendLimit") frozen'spendLimit
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "spend_limit"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'spendLimit y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "expiration"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"expiration") y x)
                                  mutable'spendLimit
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'spendLimit
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'spendLimit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'spendLimit)
          "BasicAllowance"
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
                   (Data.ProtoLens.Field.field @"vec'spendLimit") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'expiration") _x
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
instance Control.DeepSeq.NFData BasicAllowance where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BasicAllowance'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BasicAllowance'spendLimit x__)
                (Control.DeepSeq.deepseq (_BasicAllowance'expiration x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.granter' @:: Lens' Grant Data.Text.Text@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.grantee' @:: Lens' Grant Data.Text.Text@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.allowance' @:: Lens' Grant Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.maybe'allowance' @:: Lens' Grant (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data Grant
  = Grant'_constructor {_Grant'granter :: !Data.Text.Text,
                        _Grant'grantee :: !Data.Text.Text,
                        _Grant'allowance :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                        _Grant'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Grant where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Grant "granter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Grant'granter (\ x__ y__ -> x__ {_Grant'granter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Grant "grantee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Grant'grantee (\ x__ y__ -> x__ {_Grant'grantee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Grant "allowance" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Grant'allowance (\ x__ y__ -> x__ {_Grant'allowance = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Grant "maybe'allowance" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Grant'allowance (\ x__ y__ -> x__ {_Grant'allowance = y__}))
        Prelude.id
instance Data.ProtoLens.Message Grant where
  messageName _ = Data.Text.pack "cosmos.feegrant.v1beta1.Grant"
  packedMessageDescriptor _
    = "\n\
      \\ENQGrant\DC22\n\
      \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
      \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2]\n\
      \\tallowance\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\tallowanceB)\202\180-%cosmos.feegrant.v1beta1.FeeAllowanceI"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        granter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "granter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"granter")) ::
              Data.ProtoLens.FieldDescriptor Grant
        grantee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grantee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"grantee")) ::
              Data.ProtoLens.FieldDescriptor Grant
        allowance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allowance"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'allowance")) ::
              Data.ProtoLens.FieldDescriptor Grant
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, granter__field_descriptor),
           (Data.ProtoLens.Tag 2, grantee__field_descriptor),
           (Data.ProtoLens.Tag 3, allowance__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Grant'_unknownFields
        (\ x__ y__ -> x__ {_Grant'_unknownFields = y__})
  defMessage
    = Grant'_constructor
        {_Grant'granter = Data.ProtoLens.fieldDefault,
         _Grant'grantee = Data.ProtoLens.fieldDefault,
         _Grant'allowance = Prelude.Nothing, _Grant'_unknownFields = []}
  parseMessage
    = let
        loop :: Grant -> Data.ProtoLens.Encoding.Bytes.Parser Grant
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
                                       "granter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"granter") y x)
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
                                       "grantee"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"grantee") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "allowance"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"allowance") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Grant"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"granter") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"grantee") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'allowance") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Grant where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Grant'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Grant'granter x__)
                (Control.DeepSeq.deepseq
                   (_Grant'grantee x__)
                   (Control.DeepSeq.deepseq (_Grant'allowance x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.basic' @:: Lens' PeriodicAllowance BasicAllowance@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.maybe'basic' @:: Lens' PeriodicAllowance (Prelude.Maybe BasicAllowance)@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.period' @:: Lens' PeriodicAllowance Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.maybe'period' @:: Lens' PeriodicAllowance (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.periodSpendLimit' @:: Lens' PeriodicAllowance [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.vec'periodSpendLimit' @:: Lens' PeriodicAllowance (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.periodCanSpend' @:: Lens' PeriodicAllowance [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.vec'periodCanSpend' @:: Lens' PeriodicAllowance (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.periodReset' @:: Lens' PeriodicAllowance Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Cosmos.Feegrant.V1beta1.Feegrant_Fields.maybe'periodReset' @:: Lens' PeriodicAllowance (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@ -}
data PeriodicAllowance
  = PeriodicAllowance'_constructor {_PeriodicAllowance'basic :: !(Prelude.Maybe BasicAllowance),
                                    _PeriodicAllowance'period :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                    _PeriodicAllowance'periodSpendLimit :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                    _PeriodicAllowance'periodCanSpend :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                    _PeriodicAllowance'periodReset :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                    _PeriodicAllowance'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PeriodicAllowance where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PeriodicAllowance "basic" BasicAllowance where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeriodicAllowance'basic
           (\ x__ y__ -> x__ {_PeriodicAllowance'basic = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PeriodicAllowance "maybe'basic" (Prelude.Maybe BasicAllowance) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeriodicAllowance'basic
           (\ x__ y__ -> x__ {_PeriodicAllowance'basic = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PeriodicAllowance "period" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeriodicAllowance'period
           (\ x__ y__ -> x__ {_PeriodicAllowance'period = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PeriodicAllowance "maybe'period" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeriodicAllowance'period
           (\ x__ y__ -> x__ {_PeriodicAllowance'period = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PeriodicAllowance "periodSpendLimit" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeriodicAllowance'periodSpendLimit
           (\ x__ y__ -> x__ {_PeriodicAllowance'periodSpendLimit = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField PeriodicAllowance "vec'periodSpendLimit" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeriodicAllowance'periodSpendLimit
           (\ x__ y__ -> x__ {_PeriodicAllowance'periodSpendLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PeriodicAllowance "periodCanSpend" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeriodicAllowance'periodCanSpend
           (\ x__ y__ -> x__ {_PeriodicAllowance'periodCanSpend = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField PeriodicAllowance "vec'periodCanSpend" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeriodicAllowance'periodCanSpend
           (\ x__ y__ -> x__ {_PeriodicAllowance'periodCanSpend = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PeriodicAllowance "periodReset" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeriodicAllowance'periodReset
           (\ x__ y__ -> x__ {_PeriodicAllowance'periodReset = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PeriodicAllowance "maybe'periodReset" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PeriodicAllowance'periodReset
           (\ x__ y__ -> x__ {_PeriodicAllowance'periodReset = y__}))
        Prelude.id
instance Data.ProtoLens.Message PeriodicAllowance where
  messageName _
    = Data.Text.pack "cosmos.feegrant.v1beta1.PeriodicAllowance"
  packedMessageDescriptor _
    = "\n\
      \\DC1PeriodicAllowance\DC2H\n\
      \\ENQbasic\CAN\SOH \SOH(\v2'.cosmos.feegrant.v1beta1.BasicAllowanceR\ENQbasicB\t\200\222\US\NUL\168\231\176*\SOH\DC2@\n\
      \\ACKperiod\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\ACKperiodB\r\200\222\US\NUL\152\223\US\SOH\168\231\176*\SOH\DC2\143\SOH\n\
      \\DC2period_spend_limit\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\DLEperiodSpendLimitBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2\139\SOH\n\
      \\DLEperiod_can_spend\CAN\EOT \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\SOperiodCanSpendBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2L\n\
      \\fperiod_reset\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\vperiodResetB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH:J\202\180-%cosmos.feegrant.v1beta1.FeeAllowanceI\138\231\176*\FScosmos-sdk/PeriodicAllowance"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        basic__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "basic"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor BasicAllowance)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'basic")) ::
              Data.ProtoLens.FieldDescriptor PeriodicAllowance
        period__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "period"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'period")) ::
              Data.ProtoLens.FieldDescriptor PeriodicAllowance
        periodSpendLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "period_spend_limit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"periodSpendLimit")) ::
              Data.ProtoLens.FieldDescriptor PeriodicAllowance
        periodCanSpend__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "period_can_spend"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"periodCanSpend")) ::
              Data.ProtoLens.FieldDescriptor PeriodicAllowance
        periodReset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "period_reset"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'periodReset")) ::
              Data.ProtoLens.FieldDescriptor PeriodicAllowance
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, basic__field_descriptor),
           (Data.ProtoLens.Tag 2, period__field_descriptor),
           (Data.ProtoLens.Tag 3, periodSpendLimit__field_descriptor),
           (Data.ProtoLens.Tag 4, periodCanSpend__field_descriptor),
           (Data.ProtoLens.Tag 5, periodReset__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PeriodicAllowance'_unknownFields
        (\ x__ y__ -> x__ {_PeriodicAllowance'_unknownFields = y__})
  defMessage
    = PeriodicAllowance'_constructor
        {_PeriodicAllowance'basic = Prelude.Nothing,
         _PeriodicAllowance'period = Prelude.Nothing,
         _PeriodicAllowance'periodSpendLimit = Data.Vector.Generic.empty,
         _PeriodicAllowance'periodCanSpend = Data.Vector.Generic.empty,
         _PeriodicAllowance'periodReset = Prelude.Nothing,
         _PeriodicAllowance'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PeriodicAllowance
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
                -> Data.ProtoLens.Encoding.Bytes.Parser PeriodicAllowance
        loop x mutable'periodCanSpend mutable'periodSpendLimit
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'periodCanSpend <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'periodCanSpend)
                      frozen'periodSpendLimit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'periodSpendLimit)
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
                              (Data.ProtoLens.Field.field @"vec'periodCanSpend")
                              frozen'periodCanSpend
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'periodSpendLimit")
                                 frozen'periodSpendLimit x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "basic"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"basic") y x)
                                  mutable'periodCanSpend mutable'periodSpendLimit
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "period"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"period") y x)
                                  mutable'periodCanSpend mutable'periodSpendLimit
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "period_spend_limit"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'periodSpendLimit y)
                                loop x mutable'periodCanSpend v
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "period_can_spend"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'periodCanSpend y)
                                loop x v mutable'periodSpendLimit
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "period_reset"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"periodReset") y x)
                                  mutable'periodCanSpend mutable'periodSpendLimit
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'periodCanSpend mutable'periodSpendLimit
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'periodCanSpend <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              mutable'periodSpendLimit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'periodCanSpend
                mutable'periodSpendLimit)
          "PeriodicAllowance"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'basic") _x
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'period") _x
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
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'periodSpendLimit") _x))
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
                            (Data.ProtoLens.Field.field @"vec'periodCanSpend") _x))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'periodReset") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData PeriodicAllowance where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PeriodicAllowance'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PeriodicAllowance'basic x__)
                (Control.DeepSeq.deepseq
                   (_PeriodicAllowance'period x__)
                   (Control.DeepSeq.deepseq
                      (_PeriodicAllowance'periodSpendLimit x__)
                      (Control.DeepSeq.deepseq
                         (_PeriodicAllowance'periodCanSpend x__)
                         (Control.DeepSeq.deepseq
                            (_PeriodicAllowance'periodReset x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&cosmos/feegrant/v1beta1/feegrant.proto\DC2\ETBcosmos.feegrant.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\EMgoogle/protobuf/any.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\RScosmos/base/v1beta1/coin.proto\SUB\DC1amino/amino.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\RSgoogle/protobuf/duration.proto\"\160\STX\n\
    \\SOBasicAllowance\DC2\130\SOH\n\
    \\vspend_limit\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\n\
    \spendLimitBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2@\n\
    \\n\
    \expiration\CAN\STX \SOH(\v2\SUB.google.protobuf.TimestampR\n\
    \expirationB\EOT\144\223\US\SOH:G\202\180-%cosmos.feegrant.v1beta1.FeeAllowanceI\138\231\176*\EMcosmos-sdk/BasicAllowance\"\217\EOT\n\
    \\DC1PeriodicAllowance\DC2H\n\
    \\ENQbasic\CAN\SOH \SOH(\v2'.cosmos.feegrant.v1beta1.BasicAllowanceR\ENQbasicB\t\200\222\US\NUL\168\231\176*\SOH\DC2@\n\
    \\ACKperiod\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\ACKperiodB\r\200\222\US\NUL\152\223\US\SOH\168\231\176*\SOH\DC2\143\SOH\n\
    \\DC2period_spend_limit\CAN\ETX \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\DLEperiodSpendLimitBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2\139\SOH\n\
    \\DLEperiod_can_spend\CAN\EOT \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\SOperiodCanSpendBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC2L\n\
    \\fperiod_reset\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\vperiodResetB\r\200\222\US\NUL\144\223\US\SOH\168\231\176*\SOH:J\202\180-%cosmos.feegrant.v1beta1.FeeAllowanceI\138\231\176*\FScosmos-sdk/PeriodicAllowance\"\241\SOH\n\
    \\DC3AllowedMsgAllowance\DC2]\n\
    \\tallowance\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\tallowanceB)\202\180-%cosmos.feegrant.v1beta1.FeeAllowanceI\DC2)\n\
    \\DLEallowed_messages\CAN\STX \ETX(\tR\SIallowedMessages:P\136\160\US\NUL\202\180-%cosmos.feegrant.v1beta1.FeeAllowanceI\138\231\176*\RScosmos-sdk/AllowedMsgAllowance\"\206\SOH\n\
    \\ENQGrant\DC22\n\
    \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
    \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2]\n\
    \\tallowance\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\tallowanceB)\202\180-%cosmos.feegrant.v1beta1.FeeAllowanceIB\EMZ\ETBcosmossdk.io/x/feegrantJ\128\SUB\n\
    \\ACK\DC2\EOT\SOH\NUL_\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.43\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL)\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\n\
    \\NUL(\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL.\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\f\NUL.\n\
    \\159\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DLE\NUL \SOH\SUB\146\SOH BasicAllowance implements Allowance with a one-time grant of coins\n\
    \ that optionally expires. The grantee can use up to SpendLimit to cover fees.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DLE\b\SYN\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC1\STXW\n\
    \\SO\n\
    \\a\EOT\NUL\a\201\214\ENQ\NUL\DC2\ETX\DC1\STXW\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC2\STXK\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\DC2\STXK\n\
    \\222\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\ETB\STX\FS\EOT\SUB\207\SOH spend_limit specifies the maximum amount of coins that can be spent\n\
    \ by this allowance and will be updated as coins are spent. If it is\n\
    \ empty, there is no spend limit and any amount of coins can be spent.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ETB\v#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB$/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB23\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\EOT\ETB4\FS\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\CAN\EOT$\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\245\140\166\ENQ\DC2\ETX\EM\EOT#\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\243\140\166\ENQ\DC2\ETX\SUB\EOT-\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\245\251\ETX\DC2\ETX\ESC\EOTI\n\
    \P\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\US\STXH\SUBC expiration specifies an optional time when this allowance expires\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\US\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\US\FS&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\US)*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\US+G\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\242\251\ETX\DC2\ETX\US,F\n\
    \w\n\
    \\STX\EOT\SOH\DC2\EOT$\NULF\SOH\SUBk PeriodicAllowance extends Allowance to allow for both a maximum cap,\n\
    \ as well as a limit per time period.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX$\b\EM\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX%\STXW\n\
    \\SO\n\
    \\a\EOT\SOH\a\201\214\ENQ\NUL\DC2\ETX%\STXW\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX&\STXN\n\
    \\SO\n\
    \\a\EOT\SOH\a\241\140\166\ENQ\DC2\ETX&\STXN\n\
    \;\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX)\STXY\SUB. basic specifies a struct of `BasicAllowance`\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX)\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX)\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX)\EM\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX)\ESCX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\233\251\ETX\DC2\ETX)\FS8\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\NUL\b\245\140\166\ENQ\DC2\ETX):W\n\
    \\129\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT-\STX.d\SUBs period specifies the time duration in which period_spend_limit coins can\n\
    \ be spent before that allowance is reset\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX-\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX-\ESC!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX-$%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX.\ACKc\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\243\251\ETX\DC2\ETX.\a%\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\233\251\ETX\DC2\ETX.'C\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\SOH\b\245\140\166\ENQ\DC2\ETX.Eb\n\
    \i\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT2\STX7\EOT\SUB[ period_spend_limit specifies the maximum number of coins that can be spent\n\
    \ in the period\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX2\v#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX2$6\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX29:\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\EOT2;7\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\233\251\ETX\DC2\ETX3\EOT$\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\STX\b\245\140\166\ENQ\DC2\ETX4\EOT#\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\STX\b\243\140\166\ENQ\DC2\ETX5\EOT-\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\245\251\ETX\DC2\ETX6\EOTI\n\
    \e\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT:\STX?\EOT\SUBW period_can_spend is the number of coins left to be spent before the period_reset time\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETX:\v#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX:$4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX:78\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\b\DC2\EOT:9?\ETX\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\233\251\ETX\DC2\ETX;\EOT$\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\ETX\b\245\140\166\ENQ\DC2\ETX<\EOT#\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\ETX\b\243\140\166\ENQ\DC2\ETX=\EOT-\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\245\251\ETX\DC2\ETX>\EOTI\n\
    \\183\SOH\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\EOTD\STXE`\SUB\168\SOH period_reset is the time at which this period resets and a new one begins,\n\
    \ it is calculated from the start time of the first transaction after the\n\
    \ last period ended\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETXD\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETXD\FS(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETXD+,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\b\DC2\ETXE\ACK_\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\242\251\ETX\DC2\ETXE\a!\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\233\251\ETX\DC2\ETXE#?\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\EOT\b\245\140\166\ENQ\DC2\ETXEA^\n\
    \U\n\
    \\STX\EOT\STX\DC2\EOTI\NULS\SOH\SUBI AllowedMsgAllowance creates allowance only for specified message types.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXI\b\ESC\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXJ\STX5\n\
    \\r\n\
    \\ACK\EOT\STX\a\129\244\ETX\DC2\ETXJ\STX5\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXK\STXW\n\
    \\SO\n\
    \\a\EOT\STX\a\201\214\ENQ\NUL\DC2\ETXK\STXW\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETXL\STXP\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETXL\STXP\n\
    \H\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXO\STXq\SUB; allowance can be any of basic and periodic fee allowance.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXO\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXO\SYN\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXO\"#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETXO$p\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\201\214\ENQ\DC2\ETXO%o\n\
    \V\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXR\STX'\SUBI allowed_messages are the messages for which the grantee has the access.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETXR\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXR\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXR\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXR%&\n\
    \P\n\
    \\STX\EOT\ETX\DC2\EOTV\NUL_\SOH\SUBD Grant is stored in the KVStore to record a grant with full context\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXV\b\r\n\
    \W\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXX\STXF\SUBJ granter is the address of the user granting an allowance of their funds.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXX\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXX\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXX\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETXX\NAKE\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\202\214\ENQ\DC2\ETXX\SYND\n\
    \e\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX[\STXF\SUBX grantee is the address of the user being granted an allowance of another user's funds.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX[\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX[\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX[\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\ETX[\NAKE\n\
    \\SI\n\
    \\b\EOT\ETX\STX\SOH\b\202\214\ENQ\DC2\ETX[\SYND\n\
    \N\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX^\STXq\SUBA allowance can be any of basic, periodic, allowed fee allowance.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETX^\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX^\SYN\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX^\"#\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\b\DC2\ETX^$p\n\
    \\SI\n\
    \\b\EOT\ETX\STX\STX\b\201\214\ENQ\DC2\ETX^%ob\ACKproto3"