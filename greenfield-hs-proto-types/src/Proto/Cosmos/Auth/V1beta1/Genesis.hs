{- This file was auto-generated from cosmos/auth/v1beta1/genesis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Auth.V1beta1.Genesis (
        GenesisState()
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
import qualified Proto.Cosmos.Auth.V1beta1.Auth
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
{- | Fields :
     
         * 'Proto.Cosmos.Auth.V1beta1.Genesis_Fields.params' @:: Lens' GenesisState Proto.Cosmos.Auth.V1beta1.Auth.Params@
         * 'Proto.Cosmos.Auth.V1beta1.Genesis_Fields.maybe'params' @:: Lens' GenesisState (Prelude.Maybe Proto.Cosmos.Auth.V1beta1.Auth.Params)@
         * 'Proto.Cosmos.Auth.V1beta1.Genesis_Fields.accounts' @:: Lens' GenesisState [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Auth.V1beta1.Genesis_Fields.vec'accounts' @:: Lens' GenesisState (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@ -}
data GenesisState
  = GenesisState'_constructor {_GenesisState'params :: !(Prelude.Maybe Proto.Cosmos.Auth.V1beta1.Auth.Params),
                               _GenesisState'accounts :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                               _GenesisState'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenesisState where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenesisState "params" Proto.Cosmos.Auth.V1beta1.Auth.Params where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'params
           (\ x__ y__ -> x__ {_GenesisState'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GenesisState "maybe'params" (Prelude.Maybe Proto.Cosmos.Auth.V1beta1.Auth.Params) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'params
           (\ x__ y__ -> x__ {_GenesisState'params = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "accounts" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'accounts
           (\ x__ y__ -> x__ {_GenesisState'accounts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'accounts" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'accounts
           (\ x__ y__ -> x__ {_GenesisState'accounts = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenesisState where
  messageName _ = Data.Text.pack "cosmos.auth.v1beta1.GenesisState"
  packedMessageDescriptor _
    = "\n\
      \\fGenesisState\DC2>\n\
      \\ACKparams\CAN\SOH \SOH(\v2\ESC.cosmos.auth.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH\DC20\n\
      \\baccounts\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\baccounts"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Auth.V1beta1.Auth.Params)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'params")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        accounts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "accounts"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"accounts")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, params__field_descriptor),
           (Data.ProtoLens.Tag 2, accounts__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenesisState'_unknownFields
        (\ x__ y__ -> x__ {_GenesisState'_unknownFields = y__})
  defMessage
    = GenesisState'_constructor
        {_GenesisState'params = Prelude.Nothing,
         _GenesisState'accounts = Data.Vector.Generic.empty,
         _GenesisState'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenesisState
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Bytes.Parser GenesisState
        loop x mutable'accounts
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'accounts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'accounts)
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
                              (Data.ProtoLens.Field.field @"vec'accounts") frozen'accounts x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "params"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"params") y x)
                                  mutable'accounts
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "accounts"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'accounts y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'accounts
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'accounts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'accounts)
          "GenesisState"
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
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'accounts") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GenesisState where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenesisState'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GenesisState'params x__)
                (Control.DeepSeq.deepseq (_GenesisState'accounts x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \!cosmos/auth/v1beta1/genesis.proto\DC2\DC3cosmos.auth.v1beta1\SUB\EMgoogle/protobuf/any.proto\SUB\DC4gogoproto/gogo.proto\SUB\RScosmos/auth/v1beta1/auth.proto\SUB\DC1amino/amino.proto\"\128\SOH\n\
    \\fGenesisState\DC2>\n\
    \\ACKparams\CAN\SOH \SOH(\v2\ESC.cosmos.auth.v1beta1.ParamsR\ACKparamsB\t\200\222\US\NUL\168\231\176*\SOH\DC20\n\
    \\baccounts\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\baccountsB+Z)github.com/cosmos/cosmos-sdk/x/auth/typesJ\192\ETX\n\
    \\ACK\DC2\EOT\NUL\NUL\DC1\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL@\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NUL@\n\
    \C\n\
    \\STX\EOT\NUL\DC2\EOT\v\NUL\DC1\SOH\SUB7 GenesisState defines the auth module's genesis state.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\v\b\DC4\n\
    \?\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\r\STXR\SUB2 params defines all the parameters of the module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\r\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\r\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\r\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\r\DC4Q\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\r\NAK1\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\245\140\166\ENQ\DC2\ETX\r3P\n\
    \<\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DLE\STX,\SUB/ accounts are the accounts present at genesis.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DLE\v\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DLE\US'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DLE*+b\ACKproto3"