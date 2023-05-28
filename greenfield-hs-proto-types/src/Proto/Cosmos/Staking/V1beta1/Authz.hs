{- This file was auto-generated from cosmos/staking/v1beta1/authz.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Staking.V1beta1.Authz (
        AuthorizationType(..), AuthorizationType(),
        AuthorizationType'UnrecognizedValue, StakeAuthorization(),
        StakeAuthorization'Validators'(..), _StakeAuthorization'AllowList,
        _StakeAuthorization'DenyList, StakeAuthorization'Validators()
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
newtype AuthorizationType'UnrecognizedValue
  = AuthorizationType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data AuthorizationType
  = AUTHORIZATION_TYPE_UNSPECIFIED |
    AUTHORIZATION_TYPE_DELEGATE |
    AUTHORIZATION_TYPE_UNDELEGATE |
    AUTHORIZATION_TYPE_REDELEGATE |
    AUTHORIZATION_TYPE_CANCEL_UNBONDING_DELEGATION |
    AuthorizationType'Unrecognized !AuthorizationType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum AuthorizationType where
  maybeToEnum 0 = Prelude.Just AUTHORIZATION_TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just AUTHORIZATION_TYPE_DELEGATE
  maybeToEnum 2 = Prelude.Just AUTHORIZATION_TYPE_UNDELEGATE
  maybeToEnum 3 = Prelude.Just AUTHORIZATION_TYPE_REDELEGATE
  maybeToEnum 4
    = Prelude.Just AUTHORIZATION_TYPE_CANCEL_UNBONDING_DELEGATION
  maybeToEnum k
    = Prelude.Just
        (AuthorizationType'Unrecognized
           (AuthorizationType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum AUTHORIZATION_TYPE_UNSPECIFIED
    = "AUTHORIZATION_TYPE_UNSPECIFIED"
  showEnum AUTHORIZATION_TYPE_DELEGATE
    = "AUTHORIZATION_TYPE_DELEGATE"
  showEnum AUTHORIZATION_TYPE_UNDELEGATE
    = "AUTHORIZATION_TYPE_UNDELEGATE"
  showEnum AUTHORIZATION_TYPE_REDELEGATE
    = "AUTHORIZATION_TYPE_REDELEGATE"
  showEnum AUTHORIZATION_TYPE_CANCEL_UNBONDING_DELEGATION
    = "AUTHORIZATION_TYPE_CANCEL_UNBONDING_DELEGATION"
  showEnum
    (AuthorizationType'Unrecognized (AuthorizationType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "AUTHORIZATION_TYPE_UNSPECIFIED"
    = Prelude.Just AUTHORIZATION_TYPE_UNSPECIFIED
    | (Prelude.==) k "AUTHORIZATION_TYPE_DELEGATE"
    = Prelude.Just AUTHORIZATION_TYPE_DELEGATE
    | (Prelude.==) k "AUTHORIZATION_TYPE_UNDELEGATE"
    = Prelude.Just AUTHORIZATION_TYPE_UNDELEGATE
    | (Prelude.==) k "AUTHORIZATION_TYPE_REDELEGATE"
    = Prelude.Just AUTHORIZATION_TYPE_REDELEGATE
    | (Prelude.==) k "AUTHORIZATION_TYPE_CANCEL_UNBONDING_DELEGATION"
    = Prelude.Just AUTHORIZATION_TYPE_CANCEL_UNBONDING_DELEGATION
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded AuthorizationType where
  minBound = AUTHORIZATION_TYPE_UNSPECIFIED
  maxBound = AUTHORIZATION_TYPE_CANCEL_UNBONDING_DELEGATION
instance Prelude.Enum AuthorizationType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum AuthorizationType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum AUTHORIZATION_TYPE_UNSPECIFIED = 0
  fromEnum AUTHORIZATION_TYPE_DELEGATE = 1
  fromEnum AUTHORIZATION_TYPE_UNDELEGATE = 2
  fromEnum AUTHORIZATION_TYPE_REDELEGATE = 3
  fromEnum AUTHORIZATION_TYPE_CANCEL_UNBONDING_DELEGATION = 4
  fromEnum
    (AuthorizationType'Unrecognized (AuthorizationType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ AUTHORIZATION_TYPE_CANCEL_UNBONDING_DELEGATION
    = Prelude.error
        "AuthorizationType.succ: bad argument AUTHORIZATION_TYPE_CANCEL_UNBONDING_DELEGATION. This value would be out of bounds."
  succ AUTHORIZATION_TYPE_UNSPECIFIED = AUTHORIZATION_TYPE_DELEGATE
  succ AUTHORIZATION_TYPE_DELEGATE = AUTHORIZATION_TYPE_UNDELEGATE
  succ AUTHORIZATION_TYPE_UNDELEGATE = AUTHORIZATION_TYPE_REDELEGATE
  succ AUTHORIZATION_TYPE_REDELEGATE
    = AUTHORIZATION_TYPE_CANCEL_UNBONDING_DELEGATION
  succ (AuthorizationType'Unrecognized _)
    = Prelude.error
        "AuthorizationType.succ: bad argument: unrecognized value"
  pred AUTHORIZATION_TYPE_UNSPECIFIED
    = Prelude.error
        "AuthorizationType.pred: bad argument AUTHORIZATION_TYPE_UNSPECIFIED. This value would be out of bounds."
  pred AUTHORIZATION_TYPE_DELEGATE = AUTHORIZATION_TYPE_UNSPECIFIED
  pred AUTHORIZATION_TYPE_UNDELEGATE = AUTHORIZATION_TYPE_DELEGATE
  pred AUTHORIZATION_TYPE_REDELEGATE = AUTHORIZATION_TYPE_UNDELEGATE
  pred AUTHORIZATION_TYPE_CANCEL_UNBONDING_DELEGATION
    = AUTHORIZATION_TYPE_REDELEGATE
  pred (AuthorizationType'Unrecognized _)
    = Prelude.error
        "AuthorizationType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault AuthorizationType where
  fieldDefault = AUTHORIZATION_TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData AuthorizationType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Authz_Fields.maxTokens' @:: Lens' StakeAuthorization Proto.Cosmos.Base.V1beta1.Coin.Coin@
         * 'Proto.Cosmos.Staking.V1beta1.Authz_Fields.maybe'maxTokens' @:: Lens' StakeAuthorization (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Staking.V1beta1.Authz_Fields.authorizationType' @:: Lens' StakeAuthorization AuthorizationType@
         * 'Proto.Cosmos.Staking.V1beta1.Authz_Fields.maybe'validators' @:: Lens' StakeAuthorization (Prelude.Maybe StakeAuthorization'Validators')@
         * 'Proto.Cosmos.Staking.V1beta1.Authz_Fields.maybe'allowList' @:: Lens' StakeAuthorization (Prelude.Maybe StakeAuthorization'Validators)@
         * 'Proto.Cosmos.Staking.V1beta1.Authz_Fields.allowList' @:: Lens' StakeAuthorization StakeAuthorization'Validators@
         * 'Proto.Cosmos.Staking.V1beta1.Authz_Fields.maybe'denyList' @:: Lens' StakeAuthorization (Prelude.Maybe StakeAuthorization'Validators)@
         * 'Proto.Cosmos.Staking.V1beta1.Authz_Fields.denyList' @:: Lens' StakeAuthorization StakeAuthorization'Validators@ -}
data StakeAuthorization
  = StakeAuthorization'_constructor {_StakeAuthorization'maxTokens :: !(Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                     _StakeAuthorization'authorizationType :: !AuthorizationType,
                                     _StakeAuthorization'validators :: !(Prelude.Maybe StakeAuthorization'Validators'),
                                     _StakeAuthorization'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StakeAuthorization where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data StakeAuthorization'Validators'
  = StakeAuthorization'AllowList !StakeAuthorization'Validators |
    StakeAuthorization'DenyList !StakeAuthorization'Validators
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField StakeAuthorization "maxTokens" Proto.Cosmos.Base.V1beta1.Coin.Coin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeAuthorization'maxTokens
           (\ x__ y__ -> x__ {_StakeAuthorization'maxTokens = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StakeAuthorization "maybe'maxTokens" (Prelude.Maybe Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeAuthorization'maxTokens
           (\ x__ y__ -> x__ {_StakeAuthorization'maxTokens = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StakeAuthorization "authorizationType" AuthorizationType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeAuthorization'authorizationType
           (\ x__ y__ -> x__ {_StakeAuthorization'authorizationType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StakeAuthorization "maybe'validators" (Prelude.Maybe StakeAuthorization'Validators') where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeAuthorization'validators
           (\ x__ y__ -> x__ {_StakeAuthorization'validators = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StakeAuthorization "maybe'allowList" (Prelude.Maybe StakeAuthorization'Validators) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeAuthorization'validators
           (\ x__ y__ -> x__ {_StakeAuthorization'validators = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StakeAuthorization'AllowList x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StakeAuthorization'AllowList y__))
instance Data.ProtoLens.Field.HasField StakeAuthorization "allowList" StakeAuthorization'Validators where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeAuthorization'validators
           (\ x__ y__ -> x__ {_StakeAuthorization'validators = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StakeAuthorization'AllowList x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StakeAuthorization'AllowList y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField StakeAuthorization "maybe'denyList" (Prelude.Maybe StakeAuthorization'Validators) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeAuthorization'validators
           (\ x__ y__ -> x__ {_StakeAuthorization'validators = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (StakeAuthorization'DenyList x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap StakeAuthorization'DenyList y__))
instance Data.ProtoLens.Field.HasField StakeAuthorization "denyList" StakeAuthorization'Validators where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeAuthorization'validators
           (\ x__ y__ -> x__ {_StakeAuthorization'validators = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (StakeAuthorization'DenyList x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap StakeAuthorization'DenyList y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message StakeAuthorization where
  messageName _
    = Data.Text.pack "cosmos.staking.v1beta1.StakeAuthorization"
  packedMessageDescriptor _
    = "\n\
      \\DC2StakeAuthorization\DC2e\n\
      \\n\
      \max_tokens\CAN\SOH \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\tmaxTokensB+\170\223\US'github.com/cosmos/cosmos-sdk/types.Coin\DC2\132\SOH\n\
      \\n\
      \allow_list\CAN\STX \SOH(\v25.cosmos.staking.v1beta1.StakeAuthorization.ValidatorsH\NULR\tallowListB,\178\231\176*'cosmos-sdk/StakeAuthorization/AllowList\DC2\129\SOH\n\
      \\tdeny_list\CAN\ETX \SOH(\v25.cosmos.staking.v1beta1.StakeAuthorization.ValidatorsH\NULR\bdenyListB+\178\231\176*&cosmos-sdk/StakeAuthorization/DenyList\DC2X\n\
      \\DC2authorization_type\CAN\EOT \SOH(\SO2).cosmos.staking.v1beta1.AuthorizationTypeR\DC1authorizationType\SUB@\n\
      \\n\
      \Validators\DC22\n\
      \\aaddress\CAN\SOH \ETX(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressStringB\f\n\
      \\n\
      \validators:H\202\180-\"cosmos.authz.v1beta1.Authorization\138\231\176*\GScosmos-sdk/StakeAuthorization"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxTokens__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_tokens"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxTokens")) ::
              Data.ProtoLens.FieldDescriptor StakeAuthorization
        authorizationType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authorization_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor AuthorizationType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authorizationType")) ::
              Data.ProtoLens.FieldDescriptor StakeAuthorization
        allowList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allow_list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StakeAuthorization'Validators)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'allowList")) ::
              Data.ProtoLens.FieldDescriptor StakeAuthorization
        denyList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deny_list"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StakeAuthorization'Validators)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'denyList")) ::
              Data.ProtoLens.FieldDescriptor StakeAuthorization
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxTokens__field_descriptor),
           (Data.ProtoLens.Tag 4, authorizationType__field_descriptor),
           (Data.ProtoLens.Tag 2, allowList__field_descriptor),
           (Data.ProtoLens.Tag 3, denyList__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StakeAuthorization'_unknownFields
        (\ x__ y__ -> x__ {_StakeAuthorization'_unknownFields = y__})
  defMessage
    = StakeAuthorization'_constructor
        {_StakeAuthorization'maxTokens = Prelude.Nothing,
         _StakeAuthorization'authorizationType = Data.ProtoLens.fieldDefault,
         _StakeAuthorization'validators = Prelude.Nothing,
         _StakeAuthorization'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StakeAuthorization
          -> Data.ProtoLens.Encoding.Bytes.Parser StakeAuthorization
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
                                       "max_tokens"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxTokens") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "authorization_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"authorizationType") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "allow_list"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"allowList") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deny_list"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"denyList") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StakeAuthorization"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'maxTokens") _x
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"authorizationType") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'validators") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (StakeAuthorization'AllowList v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v)
                      (Prelude.Just (StakeAuthorization'DenyList v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData StakeAuthorization where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StakeAuthorization'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StakeAuthorization'maxTokens x__)
                (Control.DeepSeq.deepseq
                   (_StakeAuthorization'authorizationType x__)
                   (Control.DeepSeq.deepseq (_StakeAuthorization'validators x__) ())))
instance Control.DeepSeq.NFData StakeAuthorization'Validators' where
  rnf (StakeAuthorization'AllowList x__) = Control.DeepSeq.rnf x__
  rnf (StakeAuthorization'DenyList x__) = Control.DeepSeq.rnf x__
_StakeAuthorization'AllowList ::
  Data.ProtoLens.Prism.Prism' StakeAuthorization'Validators' StakeAuthorization'Validators
_StakeAuthorization'AllowList
  = Data.ProtoLens.Prism.prism'
      StakeAuthorization'AllowList
      (\ p__
         -> case p__ of
              (StakeAuthorization'AllowList p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_StakeAuthorization'DenyList ::
  Data.ProtoLens.Prism.Prism' StakeAuthorization'Validators' StakeAuthorization'Validators
_StakeAuthorization'DenyList
  = Data.ProtoLens.Prism.prism'
      StakeAuthorization'DenyList
      (\ p__
         -> case p__ of
              (StakeAuthorization'DenyList p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Cosmos.Staking.V1beta1.Authz_Fields.address' @:: Lens' StakeAuthorization'Validators [Data.Text.Text]@
         * 'Proto.Cosmos.Staking.V1beta1.Authz_Fields.vec'address' @:: Lens' StakeAuthorization'Validators (Data.Vector.Vector Data.Text.Text)@ -}
data StakeAuthorization'Validators
  = StakeAuthorization'Validators'_constructor {_StakeAuthorization'Validators'address :: !(Data.Vector.Vector Data.Text.Text),
                                                _StakeAuthorization'Validators'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StakeAuthorization'Validators where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StakeAuthorization'Validators "address" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeAuthorization'Validators'address
           (\ x__ y__ -> x__ {_StakeAuthorization'Validators'address = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StakeAuthorization'Validators "vec'address" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StakeAuthorization'Validators'address
           (\ x__ y__ -> x__ {_StakeAuthorization'Validators'address = y__}))
        Prelude.id
instance Data.ProtoLens.Message StakeAuthorization'Validators where
  messageName _
    = Data.Text.pack
        "cosmos.staking.v1beta1.StakeAuthorization.Validators"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Validators\DC22\n\
      \\aaddress\CAN\SOH \ETX(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor StakeAuthorization'Validators
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StakeAuthorization'Validators'_unknownFields
        (\ x__ y__
           -> x__ {_StakeAuthorization'Validators'_unknownFields = y__})
  defMessage
    = StakeAuthorization'Validators'_constructor
        {_StakeAuthorization'Validators'address = Data.Vector.Generic.empty,
         _StakeAuthorization'Validators'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StakeAuthorization'Validators
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser StakeAuthorization'Validators
        loop x mutable'address
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'address <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'address)
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
                              (Data.ProtoLens.Field.field @"vec'address") frozen'address x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "address"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'address y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'address
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'address <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'address)
          "Validators"
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
                           Data.Text.Encoding.encodeUtf8 _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'address") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData StakeAuthorization'Validators where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StakeAuthorization'Validators'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StakeAuthorization'Validators'address x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"cosmos/staking/v1beta1/authz.proto\DC2\SYNcosmos.staking.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\RScosmos/base/v1beta1/coin.proto\SUB\DC1amino/amino.proto\"\250\EOT\n\
    \\DC2StakeAuthorization\DC2e\n\
    \\n\
    \max_tokens\CAN\SOH \SOH(\v2\EM.cosmos.base.v1beta1.CoinR\tmaxTokensB+\170\223\US'github.com/cosmos/cosmos-sdk/types.Coin\DC2\132\SOH\n\
    \\n\
    \allow_list\CAN\STX \SOH(\v25.cosmos.staking.v1beta1.StakeAuthorization.ValidatorsH\NULR\tallowListB,\178\231\176*'cosmos-sdk/StakeAuthorization/AllowList\DC2\129\SOH\n\
    \\tdeny_list\CAN\ETX \SOH(\v25.cosmos.staking.v1beta1.StakeAuthorization.ValidatorsH\NULR\bdenyListB+\178\231\176*&cosmos-sdk/StakeAuthorization/DenyList\DC2X\n\
    \\DC2authorization_type\CAN\EOT \SOH(\SO2).cosmos.staking.v1beta1.AuthorizationTypeR\DC1authorizationType\SUB@\n\
    \\n\
    \Validators\DC22\n\
    \\aaddress\CAN\SOH \ETX(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressStringB\f\n\
    \\n\
    \validators:H\202\180-\"cosmos.authz.v1beta1.Authorization\138\231\176*\GScosmos-sdk/StakeAuthorization*\210\SOH\n\
    \\DC1AuthorizationType\DC2\"\n\
    \\RSAUTHORIZATION_TYPE_UNSPECIFIED\DLE\NUL\DC2\US\n\
    \\ESCAUTHORIZATION_TYPE_DELEGATE\DLE\SOH\DC2!\n\
    \\GSAUTHORIZATION_TYPE_UNDELEGATE\DLE\STX\DC2!\n\
    \\GSAUTHORIZATION_TYPE_REDELEGATE\DLE\ETX\DC22\n\
    \.AUTHORIZATION_TYPE_CANCEL_UNBONDING_DELEGATION\DLE\EOTB.Z,github.com/cosmos/cosmos-sdk/x/staking/typesJ\176\DLE\n\
    \\ACK\DC2\EOT\NUL\NUL2\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\US\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NULC\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NULC\n\
    \s\n\
    \\STX\EOT\NUL\DC2\EOT\r\NUL\"\SOH\SUBg StakeAuthorization defines authorization for delegate/undelegate/redelegate.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\r\b\SUB\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SO\STXT\n\
    \\SO\n\
    \\a\EOT\NUL\a\201\214\ENQ\NUL\DC2\ETX\SO\STXT\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SI\STXO\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\SI\STXO\n\
    \\180\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC3\STXq\SUB\166\SOH max_tokens specifies the maximum amount of tokens can be delegate to a validator. If it is\n\
    \ empty, there is no spend limit and any amount of coins can be delegated.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DC3\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC3\ESC%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC3()\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\DC3*p\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\245\251\ETX\DC2\ETX\DC3+o\n\
    \V\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\NAK\STX\ESC\ETX\SUBH validators is the oneof that represents either allow_list or deny_list\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\NAK\b\DC2\n\
    \\132\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\CAN\EOT_\SUBw allow_list specifies list of validator addresses to whom grantee can delegate tokens on behalf of granter's\n\
    \ account.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\CAN\EOT\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\CAN\SI\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\CAN\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\CAN\RS^\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\246\140\166\ENQ\DC2\ETX\CAN\US]\n\
    \g\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\SUB\EOT]\SUBZ deny_list specifies list of validator addresses to whom grantee can not delegate tokens.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\SUB\EOT\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\SUB\SI\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\SUB\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX\SUB\GS\\\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\246\140\166\ENQ\DC2\ETX\SUB\RS[\n\
    \?\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\GS\STX\US\ETX\SUB1 Validators defines list of validator addresses.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\GS\n\
    \\DC4\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\RS\EOTQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX\RS\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\RS\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\RS\DC4\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\RS\RS\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX\RS P\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX\RS!O\n\
    \C\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX!\STX+\SUB6 authorization_type defines one of AuthorizationType.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX!\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX!\DC4&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX!)*\n\
    \n\n\
    \\STX\ENQ\NUL\DC2\EOT'\NUL2\SOH\SUBb AuthorizationType defines the type of staking module authorization type\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX'\ENQ\SYN\n\
    \U\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX)\STX%\SUBH AUTHORIZATION_TYPE_UNSPECIFIED specifies an unknown authorization type\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX)\STX \n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX)#$\n\
    \Y\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX+\STX\"\SUBL AUTHORIZATION_TYPE_DELEGATE defines an authorization type for Msg/Delegate\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX+\STX\GS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX+ !\n\
    \]\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX-\STX$\SUBP AUTHORIZATION_TYPE_UNDELEGATE defines an authorization type for Msg/Undelegate\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX-\STX\US\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX-\"#\n\
    \b\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETX/\STX$\SUBU AUTHORIZATION_TYPE_REDELEGATE defines an authorization type for Msg/BeginRedelegate\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETX/\STX\US\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETX/\"#\n\
    \\128\SOH\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETX1\STX5\SUBs AUTHORIZATION_TYPE_CANCEL_UNBONDING_DELEGATION defines an authorization type for Msg/MsgCancelUnbondingDelegation\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETX1\STX0\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETX134b\ACKproto3"