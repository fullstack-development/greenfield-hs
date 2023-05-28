{- This file was auto-generated from cosmos/bank/v1beta1/authz.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Bank.V1beta1.Authz (
        SendAuthorization()
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
{- | Fields :
     
         * 'Proto.Cosmos.Bank.V1beta1.Authz_Fields.spendLimit' @:: Lens' SendAuthorization [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Bank.V1beta1.Authz_Fields.vec'spendLimit' @:: Lens' SendAuthorization (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Bank.V1beta1.Authz_Fields.allowList' @:: Lens' SendAuthorization [Data.Text.Text]@
         * 'Proto.Cosmos.Bank.V1beta1.Authz_Fields.vec'allowList' @:: Lens' SendAuthorization (Data.Vector.Vector Data.Text.Text)@ -}
data SendAuthorization
  = SendAuthorization'_constructor {_SendAuthorization'spendLimit :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                                    _SendAuthorization'allowList :: !(Data.Vector.Vector Data.Text.Text),
                                    _SendAuthorization'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SendAuthorization where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SendAuthorization "spendLimit" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SendAuthorization'spendLimit
           (\ x__ y__ -> x__ {_SendAuthorization'spendLimit = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SendAuthorization "vec'spendLimit" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SendAuthorization'spendLimit
           (\ x__ y__ -> x__ {_SendAuthorization'spendLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SendAuthorization "allowList" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SendAuthorization'allowList
           (\ x__ y__ -> x__ {_SendAuthorization'allowList = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SendAuthorization "vec'allowList" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SendAuthorization'allowList
           (\ x__ y__ -> x__ {_SendAuthorization'allowList = y__}))
        Prelude.id
instance Data.ProtoLens.Message SendAuthorization where
  messageName _
    = Data.Text.pack "cosmos.bank.v1beta1.SendAuthorization"
  packedMessageDescriptor _
    = "\n\
      \\DC1SendAuthorization\DC2\130\SOH\n\
      \\vspend_limit\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\n\
      \spendLimitBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC27\n\
      \\n\
      \allow_list\CAN\STX \ETX(\tR\tallowListB\CAN\210\180-\DC4cosmos.AddressString:G\202\180-\"cosmos.authz.v1beta1.Authorization\138\231\176*\FScosmos-sdk/SendAuthorization"
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
              Data.ProtoLens.FieldDescriptor SendAuthorization
        allowList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allow_list"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"allowList")) ::
              Data.ProtoLens.FieldDescriptor SendAuthorization
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, spendLimit__field_descriptor),
           (Data.ProtoLens.Tag 2, allowList__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SendAuthorization'_unknownFields
        (\ x__ y__ -> x__ {_SendAuthorization'_unknownFields = y__})
  defMessage
    = SendAuthorization'_constructor
        {_SendAuthorization'spendLimit = Data.Vector.Generic.empty,
         _SendAuthorization'allowList = Data.Vector.Generic.empty,
         _SendAuthorization'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SendAuthorization
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
                -> Data.ProtoLens.Encoding.Bytes.Parser SendAuthorization
        loop x mutable'allowList mutable'spendLimit
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'allowList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'allowList)
                      frozen'spendLimit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
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
                              (Data.ProtoLens.Field.field @"vec'allowList") frozen'allowList
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'spendLimit") frozen'spendLimit
                                 x)))
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
                                loop x mutable'allowList v
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
                                        "allow_list"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'allowList y)
                                loop x v mutable'spendLimit
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'allowList mutable'spendLimit
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'allowList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'spendLimit <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'allowList mutable'spendLimit)
          "SendAuthorization"
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
                      (Data.ProtoLens.Field.field @"vec'allowList") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SendAuthorization where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SendAuthorization'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SendAuthorization'spendLimit x__)
                (Control.DeepSeq.deepseq (_SendAuthorization'allowList x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\UScosmos/bank/v1beta1/authz.proto\DC2\DC3cosmos.bank.v1beta1\SUB\DC1amino/amino.proto\SUB\DC4gogoproto/gogo.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\RScosmos/base/v1beta1/coin.proto\"\154\STX\n\
    \\DC1SendAuthorization\DC2\130\SOH\n\
    \\vspend_limit\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\n\
    \spendLimitBF\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\154\231\176*\flegacy_coins\168\231\176*\SOH\DC27\n\
    \\n\
    \allow_list\CAN\STX \ETX(\tR\tallowListB\CAN\210\180-\DC4cosmos.AddressString:G\202\180-\"cosmos.authz.v1beta1.Authorization\138\231\176*\FScosmos-sdk/SendAuthorizationB+Z)github.com/cosmos/cosmos-sdk/x/bank/typesJ\226\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\RS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL(\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL@\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NUL@\n\
    \\137\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SO\NUL\RS\SOH\SUB} SendAuthorization allows the grantee to spend up to spend_limit coins from\n\
    \ the granter's account.\n\
    \\n\
    \ Since: cosmos-sdk 0.43\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SO\b\EM\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\SI\STXT\n\
    \\SO\n\
    \\a\EOT\NUL\a\201\214\ENQ\NUL\DC2\ETX\SI\STXT\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DLE\STXN\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX\DLE\STXN\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\DC2\STX\ETB\EOT\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DC2\v#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC2$/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC223\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\EOT\DC24\ETB\ETX\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\DC3\EOT$\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\245\140\166\ENQ\DC2\ETX\DC4\EOT#\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\243\140\166\ENQ\DC2\ETX\NAK\EOT-\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\245\251\ETX\DC2\ETX\SYN\EOTI\n\
    \\192\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\GS\STXR\SUB\178\SOH allow_list specifies an optional list of addresses to whom the grantee can send tokens on behalf of the\n\
    \ granter. If omitted, any recipient is allowed.\n\
    \\n\
    \ Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\GS\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\GS\US \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\GS!Q\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX\GS\"Pb\ACKproto3"