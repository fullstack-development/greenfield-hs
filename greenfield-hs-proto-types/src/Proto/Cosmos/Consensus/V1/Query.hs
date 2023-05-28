{- This file was auto-generated from cosmos/consensus/v1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Consensus.V1.Query (
        Query(..), QueryParamsRequest(), QueryParamsResponse()
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
import qualified Proto.Google.Api.Annotations
import qualified Proto.Tendermint.Types.Params
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
    = Data.Text.pack "cosmos.consensus.v1.QueryParamsRequest"
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
     
         * 'Proto.Cosmos.Consensus.V1.Query_Fields.params' @:: Lens' QueryParamsResponse Proto.Tendermint.Types.Params.ConsensusParams@
         * 'Proto.Cosmos.Consensus.V1.Query_Fields.maybe'params' @:: Lens' QueryParamsResponse (Prelude.Maybe Proto.Tendermint.Types.Params.ConsensusParams)@ -}
data QueryParamsResponse
  = QueryParamsResponse'_constructor {_QueryParamsResponse'params :: !(Prelude.Maybe Proto.Tendermint.Types.Params.ConsensusParams),
                                      _QueryParamsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryParamsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryParamsResponse "params" Proto.Tendermint.Types.Params.ConsensusParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryParamsResponse "maybe'params" (Prelude.Maybe Proto.Tendermint.Types.Params.ConsensusParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryParamsResponse'params
           (\ x__ y__ -> x__ {_QueryParamsResponse'params = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryParamsResponse where
  messageName _
    = Data.Text.pack "cosmos.consensus.v1.QueryParamsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryParamsResponse\DC29\n\
      \\ACKparams\CAN\SOH \SOH(\v2!.tendermint.types.ConsensusParamsR\ACKparams"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        params__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Params.ConsensusParams)
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
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.consensus.v1"
  type ServiceMethods Query = '["params"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\128\SOH\n\
      \\ACKParams\DC2'.cosmos.consensus.v1.QueryParamsRequest\SUB(.cosmos.consensus.v1.QueryParamsResponse\"#\130\211\228\147\STX\GS\DC2\ESC/cosmos/consensus/v1/params"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "params" where
  type MethodName Query "params" = "Params"
  type MethodInput Query "params" = QueryParamsRequest
  type MethodOutput Query "params" = QueryParamsResponse
  type MethodStreamingType Query "params" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\UScosmos/consensus/v1/query.proto\DC2\DC3cosmos.consensus.v1\SUB\FSgoogle/api/annotations.proto\SUB\GStendermint/types/params.proto\"\DC4\n\
    \\DC2QueryParamsRequest\"P\n\
    \\DC3QueryParamsResponse\DC29\n\
    \\ACKparams\CAN\SOH \SOH(\v2!.tendermint.types.ConsensusParamsR\ACKparams2\138\SOH\n\
    \\ENQQuery\DC2\128\SOH\n\
    \\ACKParams\DC2'.cosmos.consensus.v1.QueryParamsRequest\SUB(.cosmos.consensus.v1.QueryParamsResponse\"#\130\211\228\147\STX\GS\DC2\ESC/cosmos/consensus/v1/paramsB0Z.github.com/cosmos/cosmos-sdk/x/consensus/typesJ\148\ACK\n\
    \\ACK\DC2\EOT\SOH\NUL\SUB\SOH\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.47\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL&\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL'\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NULE\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\a\NULE\n\
    \5\n\
    \\STX\ACK\NUL\DC2\EOT\n\
    \\NUL\SI\SOH\SUB) Query defines the gRPC querier service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\n\
    \\b\r\n\
    \J\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\f\STX\SO\ETX\SUB< Params queries the parameters of x/consensus_param module.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\f\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\f\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\f*=\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\r\EOTA\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\r\EOTA\n\
    \]\n\
    \\STX\EOT\NUL\DC2\ETX\DC2\NUL\GS\SUBR QueryParamsRequest defines the request type for querying x/consensus parameters.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\SUB\n\
    \`\n\
    \\STX\EOT\SOH\DC2\EOT\NAK\NUL\SUB\SOH\SUBT QueryParamsResponse defines the response type for querying x/consensus parameters.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\NAK\b\ESC\n\
    \\211\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\EM\STX.\SUB\197\SOH params are the tendermint consensus params stored in the consensus module.\n\
    \ Please note that `params.version` is not populated in this response, it is\n\
    \ tracked separately in the x/upgrade module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\EM\STX\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\EM#)\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\EM,-b\ACKproto3"