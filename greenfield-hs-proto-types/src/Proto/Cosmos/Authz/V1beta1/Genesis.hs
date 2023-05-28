{- This file was auto-generated from cosmos/authz/v1beta1/genesis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Authz.V1beta1.Genesis (
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
import qualified Proto.Cosmos.Authz.V1beta1.Authz
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Genesis_Fields.authorization' @:: Lens' GenesisState [Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization]@
         * 'Proto.Cosmos.Authz.V1beta1.Genesis_Fields.vec'authorization' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization)@ -}
data GenesisState
  = GenesisState'_constructor {_GenesisState'authorization :: !(Data.Vector.Vector Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization),
                               _GenesisState'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenesisState where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenesisState "authorization" [Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'authorization
           (\ x__ y__ -> x__ {_GenesisState'authorization = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'authorization" (Data.Vector.Vector Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'authorization
           (\ x__ y__ -> x__ {_GenesisState'authorization = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenesisState where
  messageName _ = Data.Text.pack "cosmos.authz.v1beta1.GenesisState"
  packedMessageDescriptor _
    = "\n\
      \\fGenesisState\DC2Y\n\
      \\rauthorization\CAN\SOH \ETX(\v2(.cosmos.authz.v1beta1.GrantAuthorizationR\rauthorizationB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        authorization__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authorization"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"authorization")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authorization__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenesisState'_unknownFields
        (\ x__ y__ -> x__ {_GenesisState'_unknownFields = y__})
  defMessage
    = GenesisState'_constructor
        {_GenesisState'authorization = Data.Vector.Generic.empty,
         _GenesisState'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenesisState
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Authz.V1beta1.Authz.GrantAuthorization
             -> Data.ProtoLens.Encoding.Bytes.Parser GenesisState
        loop x mutable'authorization
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'authorization <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'authorization)
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
                              (Data.ProtoLens.Field.field @"vec'authorization")
                              frozen'authorization x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "authorization"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'authorization y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'authorization
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'authorization <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'authorization)
          "GenesisState"
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
                   (Data.ProtoLens.Field.field @"vec'authorization") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GenesisState where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenesisState'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GenesisState'authorization x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"cosmos/authz/v1beta1/genesis.proto\DC2\DC4cosmos.authz.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB cosmos/authz/v1beta1/authz.proto\SUB\DC1amino/amino.proto\"i\n\
    \\fGenesisState\DC2Y\n\
    \\rauthorization\CAN\SOH \ETX(\v2(.cosmos.authz.v1beta1.GrantAuthorizationR\rauthorizationB\t\200\222\US\NUL\168\231\176*\SOHB&Z$github.com/cosmos/cosmos-sdk/x/authzJ\180\STX\n\
    \\ACK\DC2\EOT\SOH\NUL\r\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.43\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL*\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL;\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\b\NUL;\n\
    \D\n\
    \\STX\EOT\NUL\DC2\EOT\v\NUL\r\SOH\SUB8 GenesisState defines the authz module's genesis state.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\v\b\DC4\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\f\STXn\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\f\v\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\f\RS+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\f./\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\f0m\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\233\251\ETX\DC2\ETX\f1M\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\245\140\166\ENQ\DC2\ETX\fOlb\ACKproto3"