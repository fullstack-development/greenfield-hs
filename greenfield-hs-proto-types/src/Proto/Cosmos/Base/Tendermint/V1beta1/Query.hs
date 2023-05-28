{- This file was auto-generated from cosmos/base/tendermint/v1beta1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Base.Tendermint.V1beta1.Query (
        Service(..), ABCIQueryRequest(), ABCIQueryResponse(),
        GetBlockByHeightRequest(), GetBlockByHeightResponse(),
        GetLatestBlockRequest(), GetLatestBlockResponse(),
        GetLatestValidatorSetRequest(), GetLatestValidatorSetResponse(),
        GetNodeInfoRequest(), GetNodeInfoResponse(), GetSyncingRequest(),
        GetSyncingResponse(), GetValidatorSetByHeightRequest(),
        GetValidatorSetByHeightResponse(), Module(), ProofOp(), ProofOps(),
        Validator(), VersionInfo()
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
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.Cosmos.Base.Tendermint.V1beta1.Types
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Tendermint.P2p.Types
import qualified Proto.Tendermint.Types.Block
import qualified Proto.Tendermint.Types.Types
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.data'' @:: Lens' ABCIQueryRequest Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.path' @:: Lens' ABCIQueryRequest Data.Text.Text@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.height' @:: Lens' ABCIQueryRequest Data.Int.Int64@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.prove' @:: Lens' ABCIQueryRequest Prelude.Bool@ -}
data ABCIQueryRequest
  = ABCIQueryRequest'_constructor {_ABCIQueryRequest'data' :: !Data.ByteString.ByteString,
                                   _ABCIQueryRequest'path :: !Data.Text.Text,
                                   _ABCIQueryRequest'height :: !Data.Int.Int64,
                                   _ABCIQueryRequest'prove :: !Prelude.Bool,
                                   _ABCIQueryRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ABCIQueryRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ABCIQueryRequest "data'" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIQueryRequest'data'
           (\ x__ y__ -> x__ {_ABCIQueryRequest'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ABCIQueryRequest "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIQueryRequest'path
           (\ x__ y__ -> x__ {_ABCIQueryRequest'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ABCIQueryRequest "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIQueryRequest'height
           (\ x__ y__ -> x__ {_ABCIQueryRequest'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ABCIQueryRequest "prove" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIQueryRequest'prove
           (\ x__ y__ -> x__ {_ABCIQueryRequest'prove = y__}))
        Prelude.id
instance Data.ProtoLens.Message ABCIQueryRequest where
  messageName _
    = Data.Text.pack "cosmos.base.tendermint.v1beta1.ABCIQueryRequest"
  packedMessageDescriptor _
    = "\n\
      \\DLEABCIQueryRequest\DC2\DC2\n\
      \\EOTdata\CAN\SOH \SOH(\fR\EOTdata\DC2\DC2\n\
      \\EOTpath\CAN\STX \SOH(\tR\EOTpath\DC2\SYN\n\
      \\ACKheight\CAN\ETX \SOH(\ETXR\ACKheight\DC2\DC4\n\
      \\ENQprove\CAN\EOT \SOH(\bR\ENQprove"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor ABCIQueryRequest
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"path")) ::
              Data.ProtoLens.FieldDescriptor ABCIQueryRequest
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor ABCIQueryRequest
        prove__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prove"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"prove")) ::
              Data.ProtoLens.FieldDescriptor ABCIQueryRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, data'__field_descriptor),
           (Data.ProtoLens.Tag 2, path__field_descriptor),
           (Data.ProtoLens.Tag 3, height__field_descriptor),
           (Data.ProtoLens.Tag 4, prove__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ABCIQueryRequest'_unknownFields
        (\ x__ y__ -> x__ {_ABCIQueryRequest'_unknownFields = y__})
  defMessage
    = ABCIQueryRequest'_constructor
        {_ABCIQueryRequest'data' = Data.ProtoLens.fieldDefault,
         _ABCIQueryRequest'path = Data.ProtoLens.fieldDefault,
         _ABCIQueryRequest'height = Data.ProtoLens.fieldDefault,
         _ABCIQueryRequest'prove = Data.ProtoLens.fieldDefault,
         _ABCIQueryRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ABCIQueryRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser ABCIQueryRequest
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
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
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "prove"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prove") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ABCIQueryRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"path") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"prove") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0) _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ABCIQueryRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ABCIQueryRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ABCIQueryRequest'data' x__)
                (Control.DeepSeq.deepseq
                   (_ABCIQueryRequest'path x__)
                   (Control.DeepSeq.deepseq
                      (_ABCIQueryRequest'height x__)
                      (Control.DeepSeq.deepseq (_ABCIQueryRequest'prove x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.code' @:: Lens' ABCIQueryResponse Data.Word.Word32@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.log' @:: Lens' ABCIQueryResponse Data.Text.Text@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.info' @:: Lens' ABCIQueryResponse Data.Text.Text@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.index' @:: Lens' ABCIQueryResponse Data.Int.Int64@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.key' @:: Lens' ABCIQueryResponse Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.value' @:: Lens' ABCIQueryResponse Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.proofOps' @:: Lens' ABCIQueryResponse ProofOps@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.maybe'proofOps' @:: Lens' ABCIQueryResponse (Prelude.Maybe ProofOps)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.height' @:: Lens' ABCIQueryResponse Data.Int.Int64@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.codespace' @:: Lens' ABCIQueryResponse Data.Text.Text@ -}
data ABCIQueryResponse
  = ABCIQueryResponse'_constructor {_ABCIQueryResponse'code :: !Data.Word.Word32,
                                    _ABCIQueryResponse'log :: !Data.Text.Text,
                                    _ABCIQueryResponse'info :: !Data.Text.Text,
                                    _ABCIQueryResponse'index :: !Data.Int.Int64,
                                    _ABCIQueryResponse'key :: !Data.ByteString.ByteString,
                                    _ABCIQueryResponse'value :: !Data.ByteString.ByteString,
                                    _ABCIQueryResponse'proofOps :: !(Prelude.Maybe ProofOps),
                                    _ABCIQueryResponse'height :: !Data.Int.Int64,
                                    _ABCIQueryResponse'codespace :: !Data.Text.Text,
                                    _ABCIQueryResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ABCIQueryResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ABCIQueryResponse "code" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIQueryResponse'code
           (\ x__ y__ -> x__ {_ABCIQueryResponse'code = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ABCIQueryResponse "log" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIQueryResponse'log
           (\ x__ y__ -> x__ {_ABCIQueryResponse'log = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ABCIQueryResponse "info" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIQueryResponse'info
           (\ x__ y__ -> x__ {_ABCIQueryResponse'info = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ABCIQueryResponse "index" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIQueryResponse'index
           (\ x__ y__ -> x__ {_ABCIQueryResponse'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ABCIQueryResponse "key" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIQueryResponse'key
           (\ x__ y__ -> x__ {_ABCIQueryResponse'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ABCIQueryResponse "value" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIQueryResponse'value
           (\ x__ y__ -> x__ {_ABCIQueryResponse'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ABCIQueryResponse "proofOps" ProofOps where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIQueryResponse'proofOps
           (\ x__ y__ -> x__ {_ABCIQueryResponse'proofOps = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ABCIQueryResponse "maybe'proofOps" (Prelude.Maybe ProofOps) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIQueryResponse'proofOps
           (\ x__ y__ -> x__ {_ABCIQueryResponse'proofOps = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ABCIQueryResponse "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIQueryResponse'height
           (\ x__ y__ -> x__ {_ABCIQueryResponse'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ABCIQueryResponse "codespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ABCIQueryResponse'codespace
           (\ x__ y__ -> x__ {_ABCIQueryResponse'codespace = y__}))
        Prelude.id
instance Data.ProtoLens.Message ABCIQueryResponse where
  messageName _
    = Data.Text.pack "cosmos.base.tendermint.v1beta1.ABCIQueryResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1ABCIQueryResponse\DC2\DC2\n\
      \\EOTcode\CAN\SOH \SOH(\rR\EOTcode\DC2\DLE\n\
      \\ETXlog\CAN\ETX \SOH(\tR\ETXlog\DC2\DC2\n\
      \\EOTinfo\CAN\EOT \SOH(\tR\EOTinfo\DC2\DC4\n\
      \\ENQindex\CAN\ENQ \SOH(\ETXR\ENQindex\DC2\DLE\n\
      \\ETXkey\CAN\ACK \SOH(\fR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\a \SOH(\fR\ENQvalue\DC2E\n\
      \\tproof_ops\CAN\b \SOH(\v2(.cosmos.base.tendermint.v1beta1.ProofOpsR\bproofOps\DC2\SYN\n\
      \\ACKheight\CAN\t \SOH(\ETXR\ACKheight\DC2\FS\n\
      \\tcodespace\CAN\n\
      \ \SOH(\tR\tcodespaceJ\EOT\b\STX\DLE\ETX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        code__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"code")) ::
              Data.ProtoLens.FieldDescriptor ABCIQueryResponse
        log__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"log")) ::
              Data.ProtoLens.FieldDescriptor ABCIQueryResponse
        info__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"info")) ::
              Data.ProtoLens.FieldDescriptor ABCIQueryResponse
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"index")) ::
              Data.ProtoLens.FieldDescriptor ABCIQueryResponse
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor ABCIQueryResponse
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor ABCIQueryResponse
        proofOps__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proof_ops"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProofOps)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'proofOps")) ::
              Data.ProtoLens.FieldDescriptor ABCIQueryResponse
        height__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"height")) ::
              Data.ProtoLens.FieldDescriptor ABCIQueryResponse
        codespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "codespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"codespace")) ::
              Data.ProtoLens.FieldDescriptor ABCIQueryResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, code__field_descriptor),
           (Data.ProtoLens.Tag 3, log__field_descriptor),
           (Data.ProtoLens.Tag 4, info__field_descriptor),
           (Data.ProtoLens.Tag 5, index__field_descriptor),
           (Data.ProtoLens.Tag 6, key__field_descriptor),
           (Data.ProtoLens.Tag 7, value__field_descriptor),
           (Data.ProtoLens.Tag 8, proofOps__field_descriptor),
           (Data.ProtoLens.Tag 9, height__field_descriptor),
           (Data.ProtoLens.Tag 10, codespace__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ABCIQueryResponse'_unknownFields
        (\ x__ y__ -> x__ {_ABCIQueryResponse'_unknownFields = y__})
  defMessage
    = ABCIQueryResponse'_constructor
        {_ABCIQueryResponse'code = Data.ProtoLens.fieldDefault,
         _ABCIQueryResponse'log = Data.ProtoLens.fieldDefault,
         _ABCIQueryResponse'info = Data.ProtoLens.fieldDefault,
         _ABCIQueryResponse'index = Data.ProtoLens.fieldDefault,
         _ABCIQueryResponse'key = Data.ProtoLens.fieldDefault,
         _ABCIQueryResponse'value = Data.ProtoLens.fieldDefault,
         _ABCIQueryResponse'proofOps = Prelude.Nothing,
         _ABCIQueryResponse'height = Data.ProtoLens.fieldDefault,
         _ABCIQueryResponse'codespace = Data.ProtoLens.fieldDefault,
         _ABCIQueryResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ABCIQueryResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser ABCIQueryResponse
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
                                       "code"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y x)
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
                                       "log"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"log") y x)
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
                                       "info"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"info") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "proof_ops"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"proofOps") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "height"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"height") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "codespace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"codespace") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ABCIQueryResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"code") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"log") _x
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
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"info") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                  ((\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                     ((\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'proofOps") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"codespace") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                              ((Prelude..)
                                                 (\ bs
                                                    -> (Data.Monoid.<>)
                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                            (Prelude.fromIntegral
                                                               (Data.ByteString.length bs)))
                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                            bs))
                                                 Data.Text.Encoding.encodeUtf8 _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData ABCIQueryResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ABCIQueryResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ABCIQueryResponse'code x__)
                (Control.DeepSeq.deepseq
                   (_ABCIQueryResponse'log x__)
                   (Control.DeepSeq.deepseq
                      (_ABCIQueryResponse'info x__)
                      (Control.DeepSeq.deepseq
                         (_ABCIQueryResponse'index x__)
                         (Control.DeepSeq.deepseq
                            (_ABCIQueryResponse'key x__)
                            (Control.DeepSeq.deepseq
                               (_ABCIQueryResponse'value x__)
                               (Control.DeepSeq.deepseq
                                  (_ABCIQueryResponse'proofOps x__)
                                  (Control.DeepSeq.deepseq
                                     (_ABCIQueryResponse'height x__)
                                     (Control.DeepSeq.deepseq
                                        (_ABCIQueryResponse'codespace x__) ())))))))))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.height' @:: Lens' GetBlockByHeightRequest Data.Int.Int64@ -}
data GetBlockByHeightRequest
  = GetBlockByHeightRequest'_constructor {_GetBlockByHeightRequest'height :: !Data.Int.Int64,
                                          _GetBlockByHeightRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetBlockByHeightRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetBlockByHeightRequest "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockByHeightRequest'height
           (\ x__ y__ -> x__ {_GetBlockByHeightRequest'height = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetBlockByHeightRequest where
  messageName _
    = Data.Text.pack
        "cosmos.base.tendermint.v1beta1.GetBlockByHeightRequest"
  packedMessageDescriptor _
    = "\n\
      \\ETBGetBlockByHeightRequest\DC2\SYN\n\
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
              Data.ProtoLens.FieldDescriptor GetBlockByHeightRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, height__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetBlockByHeightRequest'_unknownFields
        (\ x__ y__ -> x__ {_GetBlockByHeightRequest'_unknownFields = y__})
  defMessage
    = GetBlockByHeightRequest'_constructor
        {_GetBlockByHeightRequest'height = Data.ProtoLens.fieldDefault,
         _GetBlockByHeightRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetBlockByHeightRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetBlockByHeightRequest
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
          (do loop Data.ProtoLens.defMessage) "GetBlockByHeightRequest"
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
instance Control.DeepSeq.NFData GetBlockByHeightRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetBlockByHeightRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GetBlockByHeightRequest'height x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.blockId' @:: Lens' GetBlockByHeightResponse Proto.Tendermint.Types.Types.BlockID@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.maybe'blockId' @:: Lens' GetBlockByHeightResponse (Prelude.Maybe Proto.Tendermint.Types.Types.BlockID)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.block' @:: Lens' GetBlockByHeightResponse Proto.Tendermint.Types.Block.Block@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.maybe'block' @:: Lens' GetBlockByHeightResponse (Prelude.Maybe Proto.Tendermint.Types.Block.Block)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.sdkBlock' @:: Lens' GetBlockByHeightResponse Proto.Cosmos.Base.Tendermint.V1beta1.Types.Block@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.maybe'sdkBlock' @:: Lens' GetBlockByHeightResponse (Prelude.Maybe Proto.Cosmos.Base.Tendermint.V1beta1.Types.Block)@ -}
data GetBlockByHeightResponse
  = GetBlockByHeightResponse'_constructor {_GetBlockByHeightResponse'blockId :: !(Prelude.Maybe Proto.Tendermint.Types.Types.BlockID),
                                           _GetBlockByHeightResponse'block :: !(Prelude.Maybe Proto.Tendermint.Types.Block.Block),
                                           _GetBlockByHeightResponse'sdkBlock :: !(Prelude.Maybe Proto.Cosmos.Base.Tendermint.V1beta1.Types.Block),
                                           _GetBlockByHeightResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetBlockByHeightResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetBlockByHeightResponse "blockId" Proto.Tendermint.Types.Types.BlockID where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockByHeightResponse'blockId
           (\ x__ y__ -> x__ {_GetBlockByHeightResponse'blockId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetBlockByHeightResponse "maybe'blockId" (Prelude.Maybe Proto.Tendermint.Types.Types.BlockID) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockByHeightResponse'blockId
           (\ x__ y__ -> x__ {_GetBlockByHeightResponse'blockId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetBlockByHeightResponse "block" Proto.Tendermint.Types.Block.Block where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockByHeightResponse'block
           (\ x__ y__ -> x__ {_GetBlockByHeightResponse'block = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetBlockByHeightResponse "maybe'block" (Prelude.Maybe Proto.Tendermint.Types.Block.Block) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockByHeightResponse'block
           (\ x__ y__ -> x__ {_GetBlockByHeightResponse'block = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetBlockByHeightResponse "sdkBlock" Proto.Cosmos.Base.Tendermint.V1beta1.Types.Block where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockByHeightResponse'sdkBlock
           (\ x__ y__ -> x__ {_GetBlockByHeightResponse'sdkBlock = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetBlockByHeightResponse "maybe'sdkBlock" (Prelude.Maybe Proto.Cosmos.Base.Tendermint.V1beta1.Types.Block) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetBlockByHeightResponse'sdkBlock
           (\ x__ y__ -> x__ {_GetBlockByHeightResponse'sdkBlock = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetBlockByHeightResponse where
  messageName _
    = Data.Text.pack
        "cosmos.base.tendermint.v1beta1.GetBlockByHeightResponse"
  packedMessageDescriptor _
    = "\n\
      \\CANGetBlockByHeightResponse\DC24\n\
      \\bblock_id\CAN\SOH \SOH(\v2\EM.tendermint.types.BlockIDR\ablockId\DC2-\n\
      \\ENQblock\CAN\STX \SOH(\v2\ETB.tendermint.types.BlockR\ENQblock\DC2B\n\
      \\tsdk_block\CAN\ETX \SOH(\v2%.cosmos.base.tendermint.v1beta1.BlockR\bsdkBlock"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        blockId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Types.BlockID)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blockId")) ::
              Data.ProtoLens.FieldDescriptor GetBlockByHeightResponse
        block__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Block.Block)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'block")) ::
              Data.ProtoLens.FieldDescriptor GetBlockByHeightResponse
        sdkBlock__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sdk_block"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Tendermint.V1beta1.Types.Block)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sdkBlock")) ::
              Data.ProtoLens.FieldDescriptor GetBlockByHeightResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, blockId__field_descriptor),
           (Data.ProtoLens.Tag 2, block__field_descriptor),
           (Data.ProtoLens.Tag 3, sdkBlock__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetBlockByHeightResponse'_unknownFields
        (\ x__ y__ -> x__ {_GetBlockByHeightResponse'_unknownFields = y__})
  defMessage
    = GetBlockByHeightResponse'_constructor
        {_GetBlockByHeightResponse'blockId = Prelude.Nothing,
         _GetBlockByHeightResponse'block = Prelude.Nothing,
         _GetBlockByHeightResponse'sdkBlock = Prelude.Nothing,
         _GetBlockByHeightResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetBlockByHeightResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser GetBlockByHeightResponse
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
                                       "block_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blockId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "block"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"block") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "sdk_block"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sdkBlock") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetBlockByHeightResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blockId") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'block") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sdkBlock") _x
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
instance Control.DeepSeq.NFData GetBlockByHeightResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetBlockByHeightResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetBlockByHeightResponse'blockId x__)
                (Control.DeepSeq.deepseq
                   (_GetBlockByHeightResponse'block x__)
                   (Control.DeepSeq.deepseq
                      (_GetBlockByHeightResponse'sdkBlock x__) ())))
{- | Fields :
      -}
data GetLatestBlockRequest
  = GetLatestBlockRequest'_constructor {_GetLatestBlockRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetLatestBlockRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message GetLatestBlockRequest where
  messageName _
    = Data.Text.pack
        "cosmos.base.tendermint.v1beta1.GetLatestBlockRequest"
  packedMessageDescriptor _
    = "\n\
      \\NAKGetLatestBlockRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetLatestBlockRequest'_unknownFields
        (\ x__ y__ -> x__ {_GetLatestBlockRequest'_unknownFields = y__})
  defMessage
    = GetLatestBlockRequest'_constructor
        {_GetLatestBlockRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetLatestBlockRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetLatestBlockRequest
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
          (do loop Data.ProtoLens.defMessage) "GetLatestBlockRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData GetLatestBlockRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetLatestBlockRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.blockId' @:: Lens' GetLatestBlockResponse Proto.Tendermint.Types.Types.BlockID@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.maybe'blockId' @:: Lens' GetLatestBlockResponse (Prelude.Maybe Proto.Tendermint.Types.Types.BlockID)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.block' @:: Lens' GetLatestBlockResponse Proto.Tendermint.Types.Block.Block@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.maybe'block' @:: Lens' GetLatestBlockResponse (Prelude.Maybe Proto.Tendermint.Types.Block.Block)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.sdkBlock' @:: Lens' GetLatestBlockResponse Proto.Cosmos.Base.Tendermint.V1beta1.Types.Block@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.maybe'sdkBlock' @:: Lens' GetLatestBlockResponse (Prelude.Maybe Proto.Cosmos.Base.Tendermint.V1beta1.Types.Block)@ -}
data GetLatestBlockResponse
  = GetLatestBlockResponse'_constructor {_GetLatestBlockResponse'blockId :: !(Prelude.Maybe Proto.Tendermint.Types.Types.BlockID),
                                         _GetLatestBlockResponse'block :: !(Prelude.Maybe Proto.Tendermint.Types.Block.Block),
                                         _GetLatestBlockResponse'sdkBlock :: !(Prelude.Maybe Proto.Cosmos.Base.Tendermint.V1beta1.Types.Block),
                                         _GetLatestBlockResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetLatestBlockResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetLatestBlockResponse "blockId" Proto.Tendermint.Types.Types.BlockID where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetLatestBlockResponse'blockId
           (\ x__ y__ -> x__ {_GetLatestBlockResponse'blockId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetLatestBlockResponse "maybe'blockId" (Prelude.Maybe Proto.Tendermint.Types.Types.BlockID) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetLatestBlockResponse'blockId
           (\ x__ y__ -> x__ {_GetLatestBlockResponse'blockId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetLatestBlockResponse "block" Proto.Tendermint.Types.Block.Block where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetLatestBlockResponse'block
           (\ x__ y__ -> x__ {_GetLatestBlockResponse'block = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetLatestBlockResponse "maybe'block" (Prelude.Maybe Proto.Tendermint.Types.Block.Block) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetLatestBlockResponse'block
           (\ x__ y__ -> x__ {_GetLatestBlockResponse'block = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetLatestBlockResponse "sdkBlock" Proto.Cosmos.Base.Tendermint.V1beta1.Types.Block where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetLatestBlockResponse'sdkBlock
           (\ x__ y__ -> x__ {_GetLatestBlockResponse'sdkBlock = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetLatestBlockResponse "maybe'sdkBlock" (Prelude.Maybe Proto.Cosmos.Base.Tendermint.V1beta1.Types.Block) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetLatestBlockResponse'sdkBlock
           (\ x__ y__ -> x__ {_GetLatestBlockResponse'sdkBlock = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetLatestBlockResponse where
  messageName _
    = Data.Text.pack
        "cosmos.base.tendermint.v1beta1.GetLatestBlockResponse"
  packedMessageDescriptor _
    = "\n\
      \\SYNGetLatestBlockResponse\DC24\n\
      \\bblock_id\CAN\SOH \SOH(\v2\EM.tendermint.types.BlockIDR\ablockId\DC2-\n\
      \\ENQblock\CAN\STX \SOH(\v2\ETB.tendermint.types.BlockR\ENQblock\DC2B\n\
      \\tsdk_block\CAN\ETX \SOH(\v2%.cosmos.base.tendermint.v1beta1.BlockR\bsdkBlock"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        blockId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Types.BlockID)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blockId")) ::
              Data.ProtoLens.FieldDescriptor GetLatestBlockResponse
        block__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.Types.Block.Block)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'block")) ::
              Data.ProtoLens.FieldDescriptor GetLatestBlockResponse
        sdkBlock__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sdk_block"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Tendermint.V1beta1.Types.Block)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sdkBlock")) ::
              Data.ProtoLens.FieldDescriptor GetLatestBlockResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, blockId__field_descriptor),
           (Data.ProtoLens.Tag 2, block__field_descriptor),
           (Data.ProtoLens.Tag 3, sdkBlock__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetLatestBlockResponse'_unknownFields
        (\ x__ y__ -> x__ {_GetLatestBlockResponse'_unknownFields = y__})
  defMessage
    = GetLatestBlockResponse'_constructor
        {_GetLatestBlockResponse'blockId = Prelude.Nothing,
         _GetLatestBlockResponse'block = Prelude.Nothing,
         _GetLatestBlockResponse'sdkBlock = Prelude.Nothing,
         _GetLatestBlockResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetLatestBlockResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser GetLatestBlockResponse
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
                                       "block_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blockId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "block"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"block") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "sdk_block"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sdkBlock") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetLatestBlockResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blockId") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'block") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sdkBlock") _x
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
instance Control.DeepSeq.NFData GetLatestBlockResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetLatestBlockResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetLatestBlockResponse'blockId x__)
                (Control.DeepSeq.deepseq
                   (_GetLatestBlockResponse'block x__)
                   (Control.DeepSeq.deepseq
                      (_GetLatestBlockResponse'sdkBlock x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.pagination' @:: Lens' GetLatestValidatorSetRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.maybe'pagination' @:: Lens' GetLatestValidatorSetRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data GetLatestValidatorSetRequest
  = GetLatestValidatorSetRequest'_constructor {_GetLatestValidatorSetRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                               _GetLatestValidatorSetRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetLatestValidatorSetRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetLatestValidatorSetRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetLatestValidatorSetRequest'pagination
           (\ x__ y__
              -> x__ {_GetLatestValidatorSetRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetLatestValidatorSetRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetLatestValidatorSetRequest'pagination
           (\ x__ y__
              -> x__ {_GetLatestValidatorSetRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetLatestValidatorSetRequest where
  messageName _
    = Data.Text.pack
        "cosmos.base.tendermint.v1beta1.GetLatestValidatorSetRequest"
  packedMessageDescriptor _
    = "\n\
      \\FSGetLatestValidatorSetRequest\DC2F\n\
      \\n\
      \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor GetLatestValidatorSetRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetLatestValidatorSetRequest'_unknownFields
        (\ x__ y__
           -> x__ {_GetLatestValidatorSetRequest'_unknownFields = y__})
  defMessage
    = GetLatestValidatorSetRequest'_constructor
        {_GetLatestValidatorSetRequest'pagination = Prelude.Nothing,
         _GetLatestValidatorSetRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetLatestValidatorSetRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetLatestValidatorSetRequest
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
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetLatestValidatorSetRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData GetLatestValidatorSetRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetLatestValidatorSetRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetLatestValidatorSetRequest'pagination x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.blockHeight' @:: Lens' GetLatestValidatorSetResponse Data.Int.Int64@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.validators' @:: Lens' GetLatestValidatorSetResponse [Validator]@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.vec'validators' @:: Lens' GetLatestValidatorSetResponse (Data.Vector.Vector Validator)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.pagination' @:: Lens' GetLatestValidatorSetResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.maybe'pagination' @:: Lens' GetLatestValidatorSetResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data GetLatestValidatorSetResponse
  = GetLatestValidatorSetResponse'_constructor {_GetLatestValidatorSetResponse'blockHeight :: !Data.Int.Int64,
                                                _GetLatestValidatorSetResponse'validators :: !(Data.Vector.Vector Validator),
                                                _GetLatestValidatorSetResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                _GetLatestValidatorSetResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetLatestValidatorSetResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetLatestValidatorSetResponse "blockHeight" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetLatestValidatorSetResponse'blockHeight
           (\ x__ y__
              -> x__ {_GetLatestValidatorSetResponse'blockHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetLatestValidatorSetResponse "validators" [Validator] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetLatestValidatorSetResponse'validators
           (\ x__ y__
              -> x__ {_GetLatestValidatorSetResponse'validators = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GetLatestValidatorSetResponse "vec'validators" (Data.Vector.Vector Validator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetLatestValidatorSetResponse'validators
           (\ x__ y__
              -> x__ {_GetLatestValidatorSetResponse'validators = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetLatestValidatorSetResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetLatestValidatorSetResponse'pagination
           (\ x__ y__
              -> x__ {_GetLatestValidatorSetResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetLatestValidatorSetResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetLatestValidatorSetResponse'pagination
           (\ x__ y__
              -> x__ {_GetLatestValidatorSetResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetLatestValidatorSetResponse where
  messageName _
    = Data.Text.pack
        "cosmos.base.tendermint.v1beta1.GetLatestValidatorSetResponse"
  packedMessageDescriptor _
    = "\n\
      \\GSGetLatestValidatorSetResponse\DC2!\n\
      \\fblock_height\CAN\SOH \SOH(\ETXR\vblockHeight\DC2I\n\
      \\n\
      \validators\CAN\STX \ETX(\v2).cosmos.base.tendermint.v1beta1.ValidatorR\n\
      \validators\DC2G\n\
      \\n\
      \pagination\CAN\ETX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        blockHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blockHeight")) ::
              Data.ProtoLens.FieldDescriptor GetLatestValidatorSetResponse
        validators__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validators"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Validator)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"validators")) ::
              Data.ProtoLens.FieldDescriptor GetLatestValidatorSetResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor GetLatestValidatorSetResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, blockHeight__field_descriptor),
           (Data.ProtoLens.Tag 2, validators__field_descriptor),
           (Data.ProtoLens.Tag 3, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetLatestValidatorSetResponse'_unknownFields
        (\ x__ y__
           -> x__ {_GetLatestValidatorSetResponse'_unknownFields = y__})
  defMessage
    = GetLatestValidatorSetResponse'_constructor
        {_GetLatestValidatorSetResponse'blockHeight = Data.ProtoLens.fieldDefault,
         _GetLatestValidatorSetResponse'validators = Data.Vector.Generic.empty,
         _GetLatestValidatorSetResponse'pagination = Prelude.Nothing,
         _GetLatestValidatorSetResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetLatestValidatorSetResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Validator
             -> Data.ProtoLens.Encoding.Bytes.Parser GetLatestValidatorSetResponse
        loop x mutable'validators
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'validators)
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
                              (Data.ProtoLens.Field.field @"vec'validators") frozen'validators
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "block_height"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"blockHeight") y x)
                                  mutable'validators
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "validators"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'validators y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'validators
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'validators
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'validators)
          "GetLatestValidatorSetResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"blockHeight") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                      (Data.ProtoLens.Field.field @"vec'validators") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData GetLatestValidatorSetResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetLatestValidatorSetResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetLatestValidatorSetResponse'blockHeight x__)
                (Control.DeepSeq.deepseq
                   (_GetLatestValidatorSetResponse'validators x__)
                   (Control.DeepSeq.deepseq
                      (_GetLatestValidatorSetResponse'pagination x__) ())))
{- | Fields :
      -}
data GetNodeInfoRequest
  = GetNodeInfoRequest'_constructor {_GetNodeInfoRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetNodeInfoRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message GetNodeInfoRequest where
  messageName _
    = Data.Text.pack
        "cosmos.base.tendermint.v1beta1.GetNodeInfoRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2GetNodeInfoRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetNodeInfoRequest'_unknownFields
        (\ x__ y__ -> x__ {_GetNodeInfoRequest'_unknownFields = y__})
  defMessage
    = GetNodeInfoRequest'_constructor
        {_GetNodeInfoRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetNodeInfoRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetNodeInfoRequest
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
          (do loop Data.ProtoLens.defMessage) "GetNodeInfoRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData GetNodeInfoRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetNodeInfoRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.defaultNodeInfo' @:: Lens' GetNodeInfoResponse Proto.Tendermint.P2p.Types.DefaultNodeInfo@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.maybe'defaultNodeInfo' @:: Lens' GetNodeInfoResponse (Prelude.Maybe Proto.Tendermint.P2p.Types.DefaultNodeInfo)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.applicationVersion' @:: Lens' GetNodeInfoResponse VersionInfo@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.maybe'applicationVersion' @:: Lens' GetNodeInfoResponse (Prelude.Maybe VersionInfo)@ -}
data GetNodeInfoResponse
  = GetNodeInfoResponse'_constructor {_GetNodeInfoResponse'defaultNodeInfo :: !(Prelude.Maybe Proto.Tendermint.P2p.Types.DefaultNodeInfo),
                                      _GetNodeInfoResponse'applicationVersion :: !(Prelude.Maybe VersionInfo),
                                      _GetNodeInfoResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetNodeInfoResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetNodeInfoResponse "defaultNodeInfo" Proto.Tendermint.P2p.Types.DefaultNodeInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetNodeInfoResponse'defaultNodeInfo
           (\ x__ y__ -> x__ {_GetNodeInfoResponse'defaultNodeInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetNodeInfoResponse "maybe'defaultNodeInfo" (Prelude.Maybe Proto.Tendermint.P2p.Types.DefaultNodeInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetNodeInfoResponse'defaultNodeInfo
           (\ x__ y__ -> x__ {_GetNodeInfoResponse'defaultNodeInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetNodeInfoResponse "applicationVersion" VersionInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetNodeInfoResponse'applicationVersion
           (\ x__ y__ -> x__ {_GetNodeInfoResponse'applicationVersion = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetNodeInfoResponse "maybe'applicationVersion" (Prelude.Maybe VersionInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetNodeInfoResponse'applicationVersion
           (\ x__ y__ -> x__ {_GetNodeInfoResponse'applicationVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetNodeInfoResponse where
  messageName _
    = Data.Text.pack
        "cosmos.base.tendermint.v1beta1.GetNodeInfoResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3GetNodeInfoResponse\DC2K\n\
      \\DC1default_node_info\CAN\SOH \SOH(\v2\US.tendermint.p2p.DefaultNodeInfoR\SIdefaultNodeInfo\DC2\\\n\
      \\DC3application_version\CAN\STX \SOH(\v2+.cosmos.base.tendermint.v1beta1.VersionInfoR\DC2applicationVersion"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        defaultNodeInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_node_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Tendermint.P2p.Types.DefaultNodeInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'defaultNodeInfo")) ::
              Data.ProtoLens.FieldDescriptor GetNodeInfoResponse
        applicationVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "application_version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor VersionInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'applicationVersion")) ::
              Data.ProtoLens.FieldDescriptor GetNodeInfoResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, defaultNodeInfo__field_descriptor),
           (Data.ProtoLens.Tag 2, applicationVersion__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetNodeInfoResponse'_unknownFields
        (\ x__ y__ -> x__ {_GetNodeInfoResponse'_unknownFields = y__})
  defMessage
    = GetNodeInfoResponse'_constructor
        {_GetNodeInfoResponse'defaultNodeInfo = Prelude.Nothing,
         _GetNodeInfoResponse'applicationVersion = Prelude.Nothing,
         _GetNodeInfoResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetNodeInfoResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser GetNodeInfoResponse
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
                                       "default_node_info"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultNodeInfo") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "application_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"applicationVersion") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetNodeInfoResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'defaultNodeInfo") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'applicationVersion") _x
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
instance Control.DeepSeq.NFData GetNodeInfoResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetNodeInfoResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetNodeInfoResponse'defaultNodeInfo x__)
                (Control.DeepSeq.deepseq
                   (_GetNodeInfoResponse'applicationVersion x__) ()))
{- | Fields :
      -}
data GetSyncingRequest
  = GetSyncingRequest'_constructor {_GetSyncingRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetSyncingRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message GetSyncingRequest where
  messageName _
    = Data.Text.pack "cosmos.base.tendermint.v1beta1.GetSyncingRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC1GetSyncingRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetSyncingRequest'_unknownFields
        (\ x__ y__ -> x__ {_GetSyncingRequest'_unknownFields = y__})
  defMessage
    = GetSyncingRequest'_constructor
        {_GetSyncingRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetSyncingRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetSyncingRequest
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
          (do loop Data.ProtoLens.defMessage) "GetSyncingRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData GetSyncingRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetSyncingRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.syncing' @:: Lens' GetSyncingResponse Prelude.Bool@ -}
data GetSyncingResponse
  = GetSyncingResponse'_constructor {_GetSyncingResponse'syncing :: !Prelude.Bool,
                                     _GetSyncingResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetSyncingResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetSyncingResponse "syncing" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetSyncingResponse'syncing
           (\ x__ y__ -> x__ {_GetSyncingResponse'syncing = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetSyncingResponse where
  messageName _
    = Data.Text.pack
        "cosmos.base.tendermint.v1beta1.GetSyncingResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2GetSyncingResponse\DC2\CAN\n\
      \\asyncing\CAN\SOH \SOH(\bR\asyncing"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        syncing__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "syncing"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"syncing")) ::
              Data.ProtoLens.FieldDescriptor GetSyncingResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, syncing__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetSyncingResponse'_unknownFields
        (\ x__ y__ -> x__ {_GetSyncingResponse'_unknownFields = y__})
  defMessage
    = GetSyncingResponse'_constructor
        {_GetSyncingResponse'syncing = Data.ProtoLens.fieldDefault,
         _GetSyncingResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetSyncingResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser GetSyncingResponse
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
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "syncing"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"syncing") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GetSyncingResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"syncing") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GetSyncingResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetSyncingResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_GetSyncingResponse'syncing x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.height' @:: Lens' GetValidatorSetByHeightRequest Data.Int.Int64@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.pagination' @:: Lens' GetValidatorSetByHeightRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.maybe'pagination' @:: Lens' GetValidatorSetByHeightRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data GetValidatorSetByHeightRequest
  = GetValidatorSetByHeightRequest'_constructor {_GetValidatorSetByHeightRequest'height :: !Data.Int.Int64,
                                                 _GetValidatorSetByHeightRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                                 _GetValidatorSetByHeightRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetValidatorSetByHeightRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetValidatorSetByHeightRequest "height" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetValidatorSetByHeightRequest'height
           (\ x__ y__ -> x__ {_GetValidatorSetByHeightRequest'height = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetValidatorSetByHeightRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetValidatorSetByHeightRequest'pagination
           (\ x__ y__
              -> x__ {_GetValidatorSetByHeightRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetValidatorSetByHeightRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetValidatorSetByHeightRequest'pagination
           (\ x__ y__
              -> x__ {_GetValidatorSetByHeightRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetValidatorSetByHeightRequest where
  messageName _
    = Data.Text.pack
        "cosmos.base.tendermint.v1beta1.GetValidatorSetByHeightRequest"
  packedMessageDescriptor _
    = "\n\
      \\RSGetValidatorSetByHeightRequest\DC2\SYN\n\
      \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\DC2F\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
      \pagination"
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
              Data.ProtoLens.FieldDescriptor GetValidatorSetByHeightRequest
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor GetValidatorSetByHeightRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, height__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetValidatorSetByHeightRequest'_unknownFields
        (\ x__ y__
           -> x__ {_GetValidatorSetByHeightRequest'_unknownFields = y__})
  defMessage
    = GetValidatorSetByHeightRequest'_constructor
        {_GetValidatorSetByHeightRequest'height = Data.ProtoLens.fieldDefault,
         _GetValidatorSetByHeightRequest'pagination = Prelude.Nothing,
         _GetValidatorSetByHeightRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetValidatorSetByHeightRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser GetValidatorSetByHeightRequest
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "GetValidatorSetByHeightRequest"
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData GetValidatorSetByHeightRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetValidatorSetByHeightRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetValidatorSetByHeightRequest'height x__)
                (Control.DeepSeq.deepseq
                   (_GetValidatorSetByHeightRequest'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.blockHeight' @:: Lens' GetValidatorSetByHeightResponse Data.Int.Int64@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.validators' @:: Lens' GetValidatorSetByHeightResponse [Validator]@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.vec'validators' @:: Lens' GetValidatorSetByHeightResponse (Data.Vector.Vector Validator)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.pagination' @:: Lens' GetValidatorSetByHeightResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.maybe'pagination' @:: Lens' GetValidatorSetByHeightResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data GetValidatorSetByHeightResponse
  = GetValidatorSetByHeightResponse'_constructor {_GetValidatorSetByHeightResponse'blockHeight :: !Data.Int.Int64,
                                                  _GetValidatorSetByHeightResponse'validators :: !(Data.Vector.Vector Validator),
                                                  _GetValidatorSetByHeightResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                                  _GetValidatorSetByHeightResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GetValidatorSetByHeightResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GetValidatorSetByHeightResponse "blockHeight" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetValidatorSetByHeightResponse'blockHeight
           (\ x__ y__
              -> x__ {_GetValidatorSetByHeightResponse'blockHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetValidatorSetByHeightResponse "validators" [Validator] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetValidatorSetByHeightResponse'validators
           (\ x__ y__
              -> x__ {_GetValidatorSetByHeightResponse'validators = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GetValidatorSetByHeightResponse "vec'validators" (Data.Vector.Vector Validator) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetValidatorSetByHeightResponse'validators
           (\ x__ y__
              -> x__ {_GetValidatorSetByHeightResponse'validators = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GetValidatorSetByHeightResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetValidatorSetByHeightResponse'pagination
           (\ x__ y__
              -> x__ {_GetValidatorSetByHeightResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GetValidatorSetByHeightResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GetValidatorSetByHeightResponse'pagination
           (\ x__ y__
              -> x__ {_GetValidatorSetByHeightResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message GetValidatorSetByHeightResponse where
  messageName _
    = Data.Text.pack
        "cosmos.base.tendermint.v1beta1.GetValidatorSetByHeightResponse"
  packedMessageDescriptor _
    = "\n\
      \\USGetValidatorSetByHeightResponse\DC2!\n\
      \\fblock_height\CAN\SOH \SOH(\ETXR\vblockHeight\DC2I\n\
      \\n\
      \validators\CAN\STX \ETX(\v2).cosmos.base.tendermint.v1beta1.ValidatorR\n\
      \validators\DC2G\n\
      \\n\
      \pagination\CAN\ETX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        blockHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"blockHeight")) ::
              Data.ProtoLens.FieldDescriptor GetValidatorSetByHeightResponse
        validators__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "validators"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Validator)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"validators")) ::
              Data.ProtoLens.FieldDescriptor GetValidatorSetByHeightResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor GetValidatorSetByHeightResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, blockHeight__field_descriptor),
           (Data.ProtoLens.Tag 2, validators__field_descriptor),
           (Data.ProtoLens.Tag 3, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GetValidatorSetByHeightResponse'_unknownFields
        (\ x__ y__
           -> x__ {_GetValidatorSetByHeightResponse'_unknownFields = y__})
  defMessage
    = GetValidatorSetByHeightResponse'_constructor
        {_GetValidatorSetByHeightResponse'blockHeight = Data.ProtoLens.fieldDefault,
         _GetValidatorSetByHeightResponse'validators = Data.Vector.Generic.empty,
         _GetValidatorSetByHeightResponse'pagination = Prelude.Nothing,
         _GetValidatorSetByHeightResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GetValidatorSetByHeightResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Validator
             -> Data.ProtoLens.Encoding.Bytes.Parser GetValidatorSetByHeightResponse
        loop x mutable'validators
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'validators)
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
                              (Data.ProtoLens.Field.field @"vec'validators") frozen'validators
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "block_height"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"blockHeight") y x)
                                  mutable'validators
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "validators"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'validators y)
                                loop x v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'validators
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'validators
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'validators <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'validators)
          "GetValidatorSetByHeightResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"blockHeight") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
                      (Data.ProtoLens.Field.field @"vec'validators") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'pagination") _x
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
instance Control.DeepSeq.NFData GetValidatorSetByHeightResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GetValidatorSetByHeightResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GetValidatorSetByHeightResponse'blockHeight x__)
                (Control.DeepSeq.deepseq
                   (_GetValidatorSetByHeightResponse'validators x__)
                   (Control.DeepSeq.deepseq
                      (_GetValidatorSetByHeightResponse'pagination x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.path' @:: Lens' Module Data.Text.Text@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.version' @:: Lens' Module Data.Text.Text@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.sum' @:: Lens' Module Data.Text.Text@ -}
data Module
  = Module'_constructor {_Module'path :: !Data.Text.Text,
                         _Module'version :: !Data.Text.Text,
                         _Module'sum :: !Data.Text.Text,
                         _Module'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Module where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Module "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'path (\ x__ y__ -> x__ {_Module'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Module "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'version (\ x__ y__ -> x__ {_Module'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Module "sum" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'sum (\ x__ y__ -> x__ {_Module'sum = y__}))
        Prelude.id
instance Data.ProtoLens.Message Module where
  messageName _
    = Data.Text.pack "cosmos.base.tendermint.v1beta1.Module"
  packedMessageDescriptor _
    = "\n\
      \\ACKModule\DC2\DC2\n\
      \\EOTpath\CAN\SOH \SOH(\tR\EOTpath\DC2\CAN\n\
      \\aversion\CAN\STX \SOH(\tR\aversion\DC2\DLE\n\
      \\ETXsum\CAN\ETX \SOH(\tR\ETXsum"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"path")) ::
              Data.ProtoLens.FieldDescriptor Module
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor Module
        sum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"sum")) ::
              Data.ProtoLens.FieldDescriptor Module
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, path__field_descriptor),
           (Data.ProtoLens.Tag 2, version__field_descriptor),
           (Data.ProtoLens.Tag 3, sum__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Module'_unknownFields
        (\ x__ y__ -> x__ {_Module'_unknownFields = y__})
  defMessage
    = Module'_constructor
        {_Module'path = Data.ProtoLens.fieldDefault,
         _Module'version = Data.ProtoLens.fieldDefault,
         _Module'sum = Data.ProtoLens.fieldDefault,
         _Module'_unknownFields = []}
  parseMessage
    = let
        loop :: Module -> Data.ProtoLens.Encoding.Bytes.Parser Module
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
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
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
                                       "version"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
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
                                       "sum"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sum") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Module"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"path") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
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
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sum") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Module where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Module'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Module'path x__)
                (Control.DeepSeq.deepseq
                   (_Module'version x__)
                   (Control.DeepSeq.deepseq (_Module'sum x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.type'' @:: Lens' ProofOp Data.Text.Text@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.key' @:: Lens' ProofOp Data.ByteString.ByteString@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.data'' @:: Lens' ProofOp Data.ByteString.ByteString@ -}
data ProofOp
  = ProofOp'_constructor {_ProofOp'type' :: !Data.Text.Text,
                          _ProofOp'key :: !Data.ByteString.ByteString,
                          _ProofOp'data' :: !Data.ByteString.ByteString,
                          _ProofOp'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProofOp where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProofOp "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProofOp'type' (\ x__ y__ -> x__ {_ProofOp'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProofOp "key" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProofOp'key (\ x__ y__ -> x__ {_ProofOp'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProofOp "data'" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProofOp'data' (\ x__ y__ -> x__ {_ProofOp'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProofOp where
  messageName _
    = Data.Text.pack "cosmos.base.tendermint.v1beta1.ProofOp"
  packedMessageDescriptor _
    = "\n\
      \\aProofOp\DC2\DC2\n\
      \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2\DLE\n\
      \\ETXkey\CAN\STX \SOH(\fR\ETXkey\DC2\DC2\n\
      \\EOTdata\CAN\ETX \SOH(\fR\EOTdata"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor ProofOp
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor ProofOp
        data'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"data'")) ::
              Data.ProtoLens.FieldDescriptor ProofOp
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, key__field_descriptor),
           (Data.ProtoLens.Tag 3, data'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProofOp'_unknownFields
        (\ x__ y__ -> x__ {_ProofOp'_unknownFields = y__})
  defMessage
    = ProofOp'_constructor
        {_ProofOp'type' = Data.ProtoLens.fieldDefault,
         _ProofOp'key = Data.ProtoLens.fieldDefault,
         _ProofOp'data' = Data.ProtoLens.fieldDefault,
         _ProofOp'_unknownFields = []}
  parseMessage
    = let
        loop :: ProofOp -> Data.ProtoLens.Encoding.Bytes.Parser ProofOp
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
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "data"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ProofOp"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ProofOp where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProofOp'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProofOp'type' x__)
                (Control.DeepSeq.deepseq
                   (_ProofOp'key x__)
                   (Control.DeepSeq.deepseq (_ProofOp'data' x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.ops' @:: Lens' ProofOps [ProofOp]@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.vec'ops' @:: Lens' ProofOps (Data.Vector.Vector ProofOp)@ -}
data ProofOps
  = ProofOps'_constructor {_ProofOps'ops :: !(Data.Vector.Vector ProofOp),
                           _ProofOps'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProofOps where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProofOps "ops" [ProofOp] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProofOps'ops (\ x__ y__ -> x__ {_ProofOps'ops = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProofOps "vec'ops" (Data.Vector.Vector ProofOp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProofOps'ops (\ x__ y__ -> x__ {_ProofOps'ops = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProofOps where
  messageName _
    = Data.Text.pack "cosmos.base.tendermint.v1beta1.ProofOps"
  packedMessageDescriptor _
    = "\n\
      \\bProofOps\DC2D\n\
      \\ETXops\CAN\SOH \ETX(\v2'.cosmos.base.tendermint.v1beta1.ProofOpR\ETXopsB\t\200\222\US\NUL\168\231\176*\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ops__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ops"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProofOp)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"ops")) ::
              Data.ProtoLens.FieldDescriptor ProofOps
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, ops__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProofOps'_unknownFields
        (\ x__ y__ -> x__ {_ProofOps'_unknownFields = y__})
  defMessage
    = ProofOps'_constructor
        {_ProofOps'ops = Data.Vector.Generic.empty,
         _ProofOps'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProofOps
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ProofOp
             -> Data.ProtoLens.Encoding.Bytes.Parser ProofOps
        loop x mutable'ops
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'ops <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'ops)
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
                              (Data.ProtoLens.Field.field @"vec'ops") frozen'ops x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "ops"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'ops y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'ops
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'ops <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'ops)
          "ProofOps"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'ops") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ProofOps where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProofOps'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ProofOps'ops x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.address' @:: Lens' Validator Data.Text.Text@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.pubKey' @:: Lens' Validator Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.maybe'pubKey' @:: Lens' Validator (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.votingPower' @:: Lens' Validator Data.Int.Int64@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.proposerPriority' @:: Lens' Validator Data.Int.Int64@ -}
data Validator
  = Validator'_constructor {_Validator'address :: !Data.Text.Text,
                            _Validator'pubKey :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                            _Validator'votingPower :: !Data.Int.Int64,
                            _Validator'proposerPriority :: !Data.Int.Int64,
                            _Validator'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Validator where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Validator "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'address (\ x__ y__ -> x__ {_Validator'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "pubKey" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'pubKey (\ x__ y__ -> x__ {_Validator'pubKey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Validator "maybe'pubKey" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'pubKey (\ x__ y__ -> x__ {_Validator'pubKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "votingPower" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'votingPower
           (\ x__ y__ -> x__ {_Validator'votingPower = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Validator "proposerPriority" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Validator'proposerPriority
           (\ x__ y__ -> x__ {_Validator'proposerPriority = y__}))
        Prelude.id
instance Data.ProtoLens.Message Validator where
  messageName _
    = Data.Text.pack "cosmos.base.tendermint.v1beta1.Validator"
  packedMessageDescriptor _
    = "\n\
      \\tValidator\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2-\n\
      \\apub_key\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ACKpubKey\DC2!\n\
      \\fvoting_power\CAN\ETX \SOH(\ETXR\vvotingPower\DC2+\n\
      \\DC1proposer_priority\CAN\EOT \SOH(\ETXR\DLEproposerPriority"
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
              Data.ProtoLens.FieldDescriptor Validator
        pubKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pub_key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pubKey")) ::
              Data.ProtoLens.FieldDescriptor Validator
        votingPower__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "voting_power"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"votingPower")) ::
              Data.ProtoLens.FieldDescriptor Validator
        proposerPriority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proposer_priority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"proposerPriority")) ::
              Data.ProtoLens.FieldDescriptor Validator
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, pubKey__field_descriptor),
           (Data.ProtoLens.Tag 3, votingPower__field_descriptor),
           (Data.ProtoLens.Tag 4, proposerPriority__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Validator'_unknownFields
        (\ x__ y__ -> x__ {_Validator'_unknownFields = y__})
  defMessage
    = Validator'_constructor
        {_Validator'address = Data.ProtoLens.fieldDefault,
         _Validator'pubKey = Prelude.Nothing,
         _Validator'votingPower = Data.ProtoLens.fieldDefault,
         _Validator'proposerPriority = Data.ProtoLens.fieldDefault,
         _Validator'_unknownFields = []}
  parseMessage
    = let
        loop :: Validator -> Data.ProtoLens.Encoding.Bytes.Parser Validator
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
                                       "pub_key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pubKey") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "voting_power"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"votingPower") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "proposer_priority"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"proposerPriority") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Validator"
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
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"votingPower") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"proposerPriority") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Validator where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Validator'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Validator'address x__)
                (Control.DeepSeq.deepseq
                   (_Validator'pubKey x__)
                   (Control.DeepSeq.deepseq
                      (_Validator'votingPower x__)
                      (Control.DeepSeq.deepseq (_Validator'proposerPriority x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.name' @:: Lens' VersionInfo Data.Text.Text@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.appName' @:: Lens' VersionInfo Data.Text.Text@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.version' @:: Lens' VersionInfo Data.Text.Text@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.gitCommit' @:: Lens' VersionInfo Data.Text.Text@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.buildTags' @:: Lens' VersionInfo Data.Text.Text@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.goVersion' @:: Lens' VersionInfo Data.Text.Text@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.buildDeps' @:: Lens' VersionInfo [Module]@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.vec'buildDeps' @:: Lens' VersionInfo (Data.Vector.Vector Module)@
         * 'Proto.Cosmos.Base.Tendermint.V1beta1.Query_Fields.cosmosSdkVersion' @:: Lens' VersionInfo Data.Text.Text@ -}
data VersionInfo
  = VersionInfo'_constructor {_VersionInfo'name :: !Data.Text.Text,
                              _VersionInfo'appName :: !Data.Text.Text,
                              _VersionInfo'version :: !Data.Text.Text,
                              _VersionInfo'gitCommit :: !Data.Text.Text,
                              _VersionInfo'buildTags :: !Data.Text.Text,
                              _VersionInfo'goVersion :: !Data.Text.Text,
                              _VersionInfo'buildDeps :: !(Data.Vector.Vector Module),
                              _VersionInfo'cosmosSdkVersion :: !Data.Text.Text,
                              _VersionInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show VersionInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField VersionInfo "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionInfo'name (\ x__ y__ -> x__ {_VersionInfo'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VersionInfo "appName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionInfo'appName
           (\ x__ y__ -> x__ {_VersionInfo'appName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VersionInfo "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionInfo'version
           (\ x__ y__ -> x__ {_VersionInfo'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VersionInfo "gitCommit" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionInfo'gitCommit
           (\ x__ y__ -> x__ {_VersionInfo'gitCommit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VersionInfo "buildTags" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionInfo'buildTags
           (\ x__ y__ -> x__ {_VersionInfo'buildTags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VersionInfo "goVersion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionInfo'goVersion
           (\ x__ y__ -> x__ {_VersionInfo'goVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VersionInfo "buildDeps" [Module] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionInfo'buildDeps
           (\ x__ y__ -> x__ {_VersionInfo'buildDeps = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField VersionInfo "vec'buildDeps" (Data.Vector.Vector Module) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionInfo'buildDeps
           (\ x__ y__ -> x__ {_VersionInfo'buildDeps = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField VersionInfo "cosmosSdkVersion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _VersionInfo'cosmosSdkVersion
           (\ x__ y__ -> x__ {_VersionInfo'cosmosSdkVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Message VersionInfo where
  messageName _
    = Data.Text.pack "cosmos.base.tendermint.v1beta1.VersionInfo"
  packedMessageDescriptor _
    = "\n\
      \\vVersionInfo\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\EM\n\
      \\bapp_name\CAN\STX \SOH(\tR\aappName\DC2\CAN\n\
      \\aversion\CAN\ETX \SOH(\tR\aversion\DC2\GS\n\
      \\n\
      \git_commit\CAN\EOT \SOH(\tR\tgitCommit\DC2\GS\n\
      \\n\
      \build_tags\CAN\ENQ \SOH(\tR\tbuildTags\DC2\GS\n\
      \\n\
      \go_version\CAN\ACK \SOH(\tR\tgoVersion\DC2E\n\
      \\n\
      \build_deps\CAN\a \ETX(\v2&.cosmos.base.tendermint.v1beta1.ModuleR\tbuildDeps\DC2,\n\
      \\DC2cosmos_sdk_version\CAN\b \SOH(\tR\DLEcosmosSdkVersion"
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
              Data.ProtoLens.FieldDescriptor VersionInfo
        appName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"appName")) ::
              Data.ProtoLens.FieldDescriptor VersionInfo
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor VersionInfo
        gitCommit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "git_commit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"gitCommit")) ::
              Data.ProtoLens.FieldDescriptor VersionInfo
        buildTags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "build_tags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"buildTags")) ::
              Data.ProtoLens.FieldDescriptor VersionInfo
        goVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "go_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"goVersion")) ::
              Data.ProtoLens.FieldDescriptor VersionInfo
        buildDeps__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "build_deps"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Module)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"buildDeps")) ::
              Data.ProtoLens.FieldDescriptor VersionInfo
        cosmosSdkVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cosmos_sdk_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"cosmosSdkVersion")) ::
              Data.ProtoLens.FieldDescriptor VersionInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, appName__field_descriptor),
           (Data.ProtoLens.Tag 3, version__field_descriptor),
           (Data.ProtoLens.Tag 4, gitCommit__field_descriptor),
           (Data.ProtoLens.Tag 5, buildTags__field_descriptor),
           (Data.ProtoLens.Tag 6, goVersion__field_descriptor),
           (Data.ProtoLens.Tag 7, buildDeps__field_descriptor),
           (Data.ProtoLens.Tag 8, cosmosSdkVersion__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _VersionInfo'_unknownFields
        (\ x__ y__ -> x__ {_VersionInfo'_unknownFields = y__})
  defMessage
    = VersionInfo'_constructor
        {_VersionInfo'name = Data.ProtoLens.fieldDefault,
         _VersionInfo'appName = Data.ProtoLens.fieldDefault,
         _VersionInfo'version = Data.ProtoLens.fieldDefault,
         _VersionInfo'gitCommit = Data.ProtoLens.fieldDefault,
         _VersionInfo'buildTags = Data.ProtoLens.fieldDefault,
         _VersionInfo'goVersion = Data.ProtoLens.fieldDefault,
         _VersionInfo'buildDeps = Data.Vector.Generic.empty,
         _VersionInfo'cosmosSdkVersion = Data.ProtoLens.fieldDefault,
         _VersionInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          VersionInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Module
             -> Data.ProtoLens.Encoding.Bytes.Parser VersionInfo
        loop x mutable'buildDeps
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'buildDeps <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'buildDeps)
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
                              (Data.ProtoLens.Field.field @"vec'buildDeps") frozen'buildDeps x))
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
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'buildDeps
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
                                       "app_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"appName") y x)
                                  mutable'buildDeps
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
                                       "version"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"version") y x)
                                  mutable'buildDeps
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
                                       "git_commit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gitCommit") y x)
                                  mutable'buildDeps
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
                                       "build_tags"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"buildTags") y x)
                                  mutable'buildDeps
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
                                       "go_version"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"goVersion") y x)
                                  mutable'buildDeps
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "build_deps"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'buildDeps y)
                                loop x v
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
                                       "cosmos_sdk_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cosmosSdkVersion") y x)
                                  mutable'buildDeps
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'buildDeps
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'buildDeps <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'buildDeps)
          "VersionInfo"
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"appName") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"version") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"gitCommit") _x
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
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"buildTags") _x
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
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"goVersion") _x
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
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage _v))
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'buildDeps") _x))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"cosmosSdkVersion") _x
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
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData VersionInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_VersionInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_VersionInfo'name x__)
                (Control.DeepSeq.deepseq
                   (_VersionInfo'appName x__)
                   (Control.DeepSeq.deepseq
                      (_VersionInfo'version x__)
                      (Control.DeepSeq.deepseq
                         (_VersionInfo'gitCommit x__)
                         (Control.DeepSeq.deepseq
                            (_VersionInfo'buildTags x__)
                            (Control.DeepSeq.deepseq
                               (_VersionInfo'goVersion x__)
                               (Control.DeepSeq.deepseq
                                  (_VersionInfo'buildDeps x__)
                                  (Control.DeepSeq.deepseq
                                     (_VersionInfo'cosmosSdkVersion x__) ()))))))))
data Service = Service {}
instance Data.ProtoLens.Service.Types.Service Service where
  type ServiceName Service = "Service"
  type ServicePackage Service = "cosmos.base.tendermint.v1beta1"
  type ServiceMethods Service = '["abciquery",
                                  "getBlockByHeight",
                                  "getLatestBlock",
                                  "getLatestValidatorSet",
                                  "getNodeInfo",
                                  "getSyncing",
                                  "getValidatorSetByHeight"]
  packedServiceDescriptor _
    = "\n\
      \\aService\DC2\169\SOH\n\
      \\vGetNodeInfo\DC22.cosmos.base.tendermint.v1beta1.GetNodeInfoRequest\SUB3.cosmos.base.tendermint.v1beta1.GetNodeInfoResponse\"1\130\211\228\147\STX+\DC2)/cosmos/base/tendermint/v1beta1/node_info\DC2\164\SOH\n\
      \\n\
      \GetSyncing\DC21.cosmos.base.tendermint.v1beta1.GetSyncingRequest\SUB2.cosmos.base.tendermint.v1beta1.GetSyncingResponse\"/\130\211\228\147\STX)\DC2'/cosmos/base/tendermint/v1beta1/syncing\DC2\182\SOH\n\
      \\SOGetLatestBlock\DC25.cosmos.base.tendermint.v1beta1.GetLatestBlockRequest\SUB6.cosmos.base.tendermint.v1beta1.GetLatestBlockResponse\"5\130\211\228\147\STX/\DC2-/cosmos/base/tendermint/v1beta1/blocks/latest\DC2\190\SOH\n\
      \\DLEGetBlockByHeight\DC27.cosmos.base.tendermint.v1beta1.GetBlockByHeightRequest\SUB8.cosmos.base.tendermint.v1beta1.GetBlockByHeightResponse\"7\130\211\228\147\STX1\DC2//cosmos/base/tendermint/v1beta1/blocks/{height}\DC2\210\SOH\n\
      \\NAKGetLatestValidatorSet\DC2<.cosmos.base.tendermint.v1beta1.GetLatestValidatorSetRequest\SUB=.cosmos.base.tendermint.v1beta1.GetLatestValidatorSetResponse\"<\130\211\228\147\STX6\DC24/cosmos/base/tendermint/v1beta1/validatorsets/latest\DC2\218\SOH\n\
      \\ETBGetValidatorSetByHeight\DC2>.cosmos.base.tendermint.v1beta1.GetValidatorSetByHeightRequest\SUB?.cosmos.base.tendermint.v1beta1.GetValidatorSetByHeightResponse\">\130\211\228\147\STX8\DC26/cosmos/base/tendermint/v1beta1/validatorsets/{height}\DC2\164\SOH\n\
      \\tABCIQuery\DC20.cosmos.base.tendermint.v1beta1.ABCIQueryRequest\SUB1.cosmos.base.tendermint.v1beta1.ABCIQueryResponse\"2\130\211\228\147\STX,\DC2*/cosmos/base/tendermint/v1beta1/abci_query"
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "getNodeInfo" where
  type MethodName Service "getNodeInfo" = "GetNodeInfo"
  type MethodInput Service "getNodeInfo" = GetNodeInfoRequest
  type MethodOutput Service "getNodeInfo" = GetNodeInfoResponse
  type MethodStreamingType Service "getNodeInfo" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "getSyncing" where
  type MethodName Service "getSyncing" = "GetSyncing"
  type MethodInput Service "getSyncing" = GetSyncingRequest
  type MethodOutput Service "getSyncing" = GetSyncingResponse
  type MethodStreamingType Service "getSyncing" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "getLatestBlock" where
  type MethodName Service "getLatestBlock" = "GetLatestBlock"
  type MethodInput Service "getLatestBlock" = GetLatestBlockRequest
  type MethodOutput Service "getLatestBlock" = GetLatestBlockResponse
  type MethodStreamingType Service "getLatestBlock" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "getBlockByHeight" where
  type MethodName Service "getBlockByHeight" = "GetBlockByHeight"
  type MethodInput Service "getBlockByHeight" = GetBlockByHeightRequest
  type MethodOutput Service "getBlockByHeight" = GetBlockByHeightResponse
  type MethodStreamingType Service "getBlockByHeight" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "getLatestValidatorSet" where
  type MethodName Service "getLatestValidatorSet" = "GetLatestValidatorSet"
  type MethodInput Service "getLatestValidatorSet" = GetLatestValidatorSetRequest
  type MethodOutput Service "getLatestValidatorSet" = GetLatestValidatorSetResponse
  type MethodStreamingType Service "getLatestValidatorSet" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "getValidatorSetByHeight" where
  type MethodName Service "getValidatorSetByHeight" = "GetValidatorSetByHeight"
  type MethodInput Service "getValidatorSetByHeight" = GetValidatorSetByHeightRequest
  type MethodOutput Service "getValidatorSetByHeight" = GetValidatorSetByHeightResponse
  type MethodStreamingType Service "getValidatorSetByHeight" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Service "abciquery" where
  type MethodName Service "abciquery" = "ABCIQuery"
  type MethodInput Service "abciquery" = ABCIQueryRequest
  type MethodOutput Service "abciquery" = ABCIQueryResponse
  type MethodStreamingType Service "abciquery" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \*cosmos/base/tendermint/v1beta1/query.proto\DC2\RScosmos.base.tendermint.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB\EMgoogle/protobuf/any.proto\SUB\FSgoogle/api/annotations.proto\SUB\SUBtendermint/p2p/types.proto\SUB\FStendermint/types/types.proto\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB*cosmos/base/tendermint/v1beta1/types.proto\SUB\EMcosmos_proto/cosmos.proto\SUB\FStendermint/types/block.proto\SUB\DC1amino/amino.proto\"\128\SOH\n\
    \\RSGetValidatorSetByHeightRequest\DC2\SYN\n\
    \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\DC2F\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\216\SOH\n\
    \\USGetValidatorSetByHeightResponse\DC2!\n\
    \\fblock_height\CAN\SOH \SOH(\ETXR\vblockHeight\DC2I\n\
    \\n\
    \validators\CAN\STX \ETX(\v2).cosmos.base.tendermint.v1beta1.ValidatorR\n\
    \validators\DC2G\n\
    \\n\
    \pagination\CAN\ETX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"f\n\
    \\FSGetLatestValidatorSetRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\214\SOH\n\
    \\GSGetLatestValidatorSetResponse\DC2!\n\
    \\fblock_height\CAN\SOH \SOH(\ETXR\vblockHeight\DC2I\n\
    \\n\
    \validators\CAN\STX \ETX(\v2).cosmos.base.tendermint.v1beta1.ValidatorR\n\
    \validators\DC2G\n\
    \\n\
    \pagination\CAN\ETX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\190\SOH\n\
    \\tValidator\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2-\n\
    \\apub_key\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ACKpubKey\DC2!\n\
    \\fvoting_power\CAN\ETX \SOH(\ETXR\vvotingPower\DC2+\n\
    \\DC1proposer_priority\CAN\EOT \SOH(\ETXR\DLEproposerPriority\"1\n\
    \\ETBGetBlockByHeightRequest\DC2\SYN\n\
    \\ACKheight\CAN\SOH \SOH(\ETXR\ACKheight\"\195\SOH\n\
    \\CANGetBlockByHeightResponse\DC24\n\
    \\bblock_id\CAN\SOH \SOH(\v2\EM.tendermint.types.BlockIDR\ablockId\DC2-\n\
    \\ENQblock\CAN\STX \SOH(\v2\ETB.tendermint.types.BlockR\ENQblock\DC2B\n\
    \\tsdk_block\CAN\ETX \SOH(\v2%.cosmos.base.tendermint.v1beta1.BlockR\bsdkBlock\"\ETB\n\
    \\NAKGetLatestBlockRequest\"\193\SOH\n\
    \\SYNGetLatestBlockResponse\DC24\n\
    \\bblock_id\CAN\SOH \SOH(\v2\EM.tendermint.types.BlockIDR\ablockId\DC2-\n\
    \\ENQblock\CAN\STX \SOH(\v2\ETB.tendermint.types.BlockR\ENQblock\DC2B\n\
    \\tsdk_block\CAN\ETX \SOH(\v2%.cosmos.base.tendermint.v1beta1.BlockR\bsdkBlock\"\DC3\n\
    \\DC1GetSyncingRequest\".\n\
    \\DC2GetSyncingResponse\DC2\CAN\n\
    \\asyncing\CAN\SOH \SOH(\bR\asyncing\"\DC4\n\
    \\DC2GetNodeInfoRequest\"\192\SOH\n\
    \\DC3GetNodeInfoResponse\DC2K\n\
    \\DC1default_node_info\CAN\SOH \SOH(\v2\US.tendermint.p2p.DefaultNodeInfoR\SIdefaultNodeInfo\DC2\\\n\
    \\DC3application_version\CAN\STX \SOH(\v2+.cosmos.base.tendermint.v1beta1.VersionInfoR\DC2applicationVersion\"\168\STX\n\
    \\vVersionInfo\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\EM\n\
    \\bapp_name\CAN\STX \SOH(\tR\aappName\DC2\CAN\n\
    \\aversion\CAN\ETX \SOH(\tR\aversion\DC2\GS\n\
    \\n\
    \git_commit\CAN\EOT \SOH(\tR\tgitCommit\DC2\GS\n\
    \\n\
    \build_tags\CAN\ENQ \SOH(\tR\tbuildTags\DC2\GS\n\
    \\n\
    \go_version\CAN\ACK \SOH(\tR\tgoVersion\DC2E\n\
    \\n\
    \build_deps\CAN\a \ETX(\v2&.cosmos.base.tendermint.v1beta1.ModuleR\tbuildDeps\DC2,\n\
    \\DC2cosmos_sdk_version\CAN\b \SOH(\tR\DLEcosmosSdkVersion\"H\n\
    \\ACKModule\DC2\DC2\n\
    \\EOTpath\CAN\SOH \SOH(\tR\EOTpath\DC2\CAN\n\
    \\aversion\CAN\STX \SOH(\tR\aversion\DC2\DLE\n\
    \\ETXsum\CAN\ETX \SOH(\tR\ETXsum\"h\n\
    \\DLEABCIQueryRequest\DC2\DC2\n\
    \\EOTdata\CAN\SOH \SOH(\fR\EOTdata\DC2\DC2\n\
    \\EOTpath\CAN\STX \SOH(\tR\EOTpath\DC2\SYN\n\
    \\ACKheight\CAN\ETX \SOH(\ETXR\ACKheight\DC2\DC4\n\
    \\ENQprove\CAN\EOT \SOH(\bR\ENQprove\"\142\STX\n\
    \\DC1ABCIQueryResponse\DC2\DC2\n\
    \\EOTcode\CAN\SOH \SOH(\rR\EOTcode\DC2\DLE\n\
    \\ETXlog\CAN\ETX \SOH(\tR\ETXlog\DC2\DC2\n\
    \\EOTinfo\CAN\EOT \SOH(\tR\EOTinfo\DC2\DC4\n\
    \\ENQindex\CAN\ENQ \SOH(\ETXR\ENQindex\DC2\DLE\n\
    \\ETXkey\CAN\ACK \SOH(\fR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\a \SOH(\fR\ENQvalue\DC2E\n\
    \\tproof_ops\CAN\b \SOH(\v2(.cosmos.base.tendermint.v1beta1.ProofOpsR\bproofOps\DC2\SYN\n\
    \\ACKheight\CAN\t \SOH(\ETXR\ACKheight\DC2\FS\n\
    \\tcodespace\CAN\n\
    \ \SOH(\tR\tcodespaceJ\EOT\b\STX\DLE\ETX\"C\n\
    \\aProofOp\DC2\DC2\n\
    \\EOTtype\CAN\SOH \SOH(\tR\EOTtype\DC2\DLE\n\
    \\ETXkey\CAN\STX \SOH(\fR\ETXkey\DC2\DC2\n\
    \\EOTdata\CAN\ETX \SOH(\fR\EOTdata\"P\n\
    \\bProofOps\DC2D\n\
    \\ETXops\CAN\SOH \ETX(\v2'.cosmos.base.tendermint.v1beta1.ProofOpR\ETXopsB\t\200\222\US\NUL\168\231\176*\SOH2\175\n\
    \\n\
    \\aService\DC2\169\SOH\n\
    \\vGetNodeInfo\DC22.cosmos.base.tendermint.v1beta1.GetNodeInfoRequest\SUB3.cosmos.base.tendermint.v1beta1.GetNodeInfoResponse\"1\130\211\228\147\STX+\DC2)/cosmos/base/tendermint/v1beta1/node_info\DC2\164\SOH\n\
    \\n\
    \GetSyncing\DC21.cosmos.base.tendermint.v1beta1.GetSyncingRequest\SUB2.cosmos.base.tendermint.v1beta1.GetSyncingResponse\"/\130\211\228\147\STX)\DC2'/cosmos/base/tendermint/v1beta1/syncing\DC2\182\SOH\n\
    \\SOGetLatestBlock\DC25.cosmos.base.tendermint.v1beta1.GetLatestBlockRequest\SUB6.cosmos.base.tendermint.v1beta1.GetLatestBlockResponse\"5\130\211\228\147\STX/\DC2-/cosmos/base/tendermint/v1beta1/blocks/latest\DC2\190\SOH\n\
    \\DLEGetBlockByHeight\DC27.cosmos.base.tendermint.v1beta1.GetBlockByHeightRequest\SUB8.cosmos.base.tendermint.v1beta1.GetBlockByHeightResponse\"7\130\211\228\147\STX1\DC2//cosmos/base/tendermint/v1beta1/blocks/{height}\DC2\210\SOH\n\
    \\NAKGetLatestValidatorSet\DC2<.cosmos.base.tendermint.v1beta1.GetLatestValidatorSetRequest\SUB=.cosmos.base.tendermint.v1beta1.GetLatestValidatorSetResponse\"<\130\211\228\147\STX6\DC24/cosmos/base/tendermint/v1beta1/validatorsets/latest\DC2\218\SOH\n\
    \\ETBGetValidatorSetByHeight\DC2>.cosmos.base.tendermint.v1beta1.GetValidatorSetByHeightRequest\SUB?.cosmos.base.tendermint.v1beta1.GetValidatorSetByHeightResponse\">\130\211\228\147\STX8\DC26/cosmos/base/tendermint/v1beta1/validatorsets/{height}\DC2\164\SOH\n\
    \\tABCIQuery\DC20.cosmos.base.tendermint.v1beta1.ABCIQueryRequest\SUB1.cosmos.base.tendermint.v1beta1.ABCIQueryResponse\"2\130\211\228\147\STX,\DC2*/cosmos/base/tendermint/v1beta1/abci_queryB5Z3github.com/cosmos/cosmos-sdk/client/grpc/cmtserviceJ\130:\n\
    \\a\DC2\ENQ\NUL\NUL\207\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL'\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL&\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL$\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL&\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL4\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\t\NUL4\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\n\
    \\NUL#\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\v\NUL&\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX\f\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULJ\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\SO\NULJ\n\
    \N\n\
    \\STX\ACK\NUL\DC2\EOT\DC1\NUL8\SOH\SUBB Service defines the gRPC querier service for tendermint queries.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\DC1\b\SI\n\
    \:\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\DC3\STX\NAK\ETX\SUB, GetNodeInfo queries the current node info.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\DC3\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\DC3\DC2$\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\DC3/B\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\DC4\EOTO\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\DC4\EOTO\n\
    \0\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\CAN\STX\SUB\ETX\SUB\" GetSyncing queries node syncing.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\CAN\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\CAN\DC1\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\CAN-?\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\EM\EOTM\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\EM\EOTM\n\
    \8\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\GS\STX\US\ETX\SUB* GetLatestBlock returns the latest block.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\GS\ACK\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\GS\NAK*\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\GS5K\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\RS\EOTS\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX\RS\EOTS\n\
    \@\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\EOT\"\STX$\ETX\SUB2 GetBlockByHeight queries block for given height.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\"\ACK\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\"\ETB.\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\"9Q\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\EOT\DC2\ETX#\EOTU\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ETX\EOT\176\202\188\"\STX\DC2\ETX#\EOTU\n\
    \C\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\EOT'\STX)\ETX\SUB5 GetLatestValidatorSet queries latest validator-set.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX'\ACK\ESC\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX'\FS8\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX'C`\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\EOT\DC2\ETX(\EOTZ\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\EOT\EOT\176\202\188\"\STX\DC2\ETX(\EOTZ\n\
    \P\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\EOT,\STX.\ETX\SUBB GetValidatorSetByHeight queries validator-set at a given height.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX,\ACK\GS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX,\RS<\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX,Gf\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\EOT\DC2\ETX-\EOT\\\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ENQ\EOT\176\202\188\"\STX\DC2\ETX-\EOT\\\n\
    \\133\STX\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\EOT5\STX7\ETX\SUB\246\SOH ABCIQuery defines a query handler that supports ABCI queries directly to the\n\
    \ application, bypassing Tendermint completely. The ABCI query must contain\n\
    \ a valid and supported path, including app, custom, p2p, and store.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX5\ACK\SI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX5\DLE \n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX5+<\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\EOT\DC2\ETX6\EOTP\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\ACK\EOT\176\202\188\"\STX\DC2\ETX6\EOTP\n\
    \r\n\
    \\STX\EOT\NUL\DC2\EOT;\NUL?\SOH\SUBf GetValidatorSetByHeightRequest is the request type for the Query/GetValidatorSetByHeight RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX;\b&\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX<\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX<\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX<\b\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX<\DC1\DC2\n\
    \@\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX>\STX7\SUB3 pagination defines an pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX>\STX'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX>(2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX>56\n\
    \t\n\
    \\STX\EOT\SOH\DC2\EOTB\NULG\SOH\SUBh GetValidatorSetByHeightResponse is the response type for the Query/GetValidatorSetByHeight RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXB\b'\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXC\STX&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXC\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXC\NAK!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXC$%\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXD\STX&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETXD\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXD\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXD\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXD$%\n\
    \A\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXF\STX8\SUB4 pagination defines an pagination for the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETXF\STX(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXF)3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXF67\n\
    \p\n\
    \\STX\EOT\STX\DC2\EOTJ\NULM\SOH\SUBd GetLatestValidatorSetRequest is the request type for the Query/GetValidatorSetByHeight RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXJ\b$\n\
    \@\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETXL\STX7\SUB3 pagination defines an pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETXL\STX'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETXL(2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETXL56\n\
    \r\n\
    \\STX\EOT\ETX\DC2\EOTP\NULU\SOH\SUBf GetLatestValidatorSetResponse is the response type for the Query/GetValidatorSetByHeight RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXP\b%\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXQ\STX&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXQ\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXQ\NAK!\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXQ$%\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXR\STX&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETXR\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXR\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXR\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXR$%\n\
    \A\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXT\STX8\SUB4 pagination defines an pagination for the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ACK\DC2\ETXT\STX(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXT)3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXT67\n\
    \:\n\
    \\STX\EOT\EOT\DC2\EOTX\NUL]\SOH\SUB. Validator is the type for the validator-set.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXX\b\DC1\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXY\STX]\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXY\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXY\SYN\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXY*+\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXY,\\\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETXY-[\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXZ\STX,\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETXZ\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXZ\SYN\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXZ*+\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX[\STX,\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX[\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX[\SYN\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX[*+\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX\\\STX,\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETX\\\STX\a\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX\\\SYN'\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX\\*+\n\
    \d\n\
    \\STX\EOT\ENQ\DC2\EOT`\NULb\SOH\SUBX GetBlockByHeightRequest is the request type for the Query/GetBlockByHeight RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX`\b\US\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXa\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXa\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXa\b\SO\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXa\DC1\DC2\n\
    \f\n\
    \\STX\EOT\ACK\DC2\EOTe\NULm\SOH\SUBZ GetBlockByHeightResponse is the response type for the Query/GetBlockByHeight RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETXe\b \n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETXf\STX)\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\ETXf\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETXf\FS$\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETXf'(\n\
    \9\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETXi\STX$\SUB, Deprecated: please use `sdk_block` instead\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\ETXi\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETXi\SUB\US\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETXi\"#\n\
    \%\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXl\STX\SYN\SUB\CAN Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ACK\DC2\ETXl\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXl\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXl\DC4\NAK\n\
    \_\n\
    \\STX\EOT\a\DC2\ETXp\NUL \SUBT GetLatestBlockRequest is the request type for the Query/GetLatestBlock RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXp\b\GS\n\
    \b\n\
    \\STX\EOT\b\DC2\EOTs\NUL{\SOH\SUBV GetLatestBlockResponse is the response type for the Query/GetLatestBlock RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXs\b\RS\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXt\STX)\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\ETXt\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXt\FS$\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXt'(\n\
    \9\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETXw\STX$\SUB, Deprecated: please use `sdk_block` instead\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ACK\DC2\ETXw\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETXw\SUB\US\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETXw\"#\n\
    \%\n\
    \\EOT\EOT\b\STX\STX\DC2\ETXz\STX\SYN\SUB\CAN Since: cosmos-sdk 0.47\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ACK\DC2\ETXz\STX\a\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\ETXz\b\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\ETXz\DC4\NAK\n\
    \W\n\
    \\STX\EOT\t\DC2\ETX~\NUL\FS\SUBL GetSyncingRequest is the request type for the Query/GetSyncing RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETX~\b\EM\n\
    \\\\n\
    \\STX\EOT\n\
    \\DC2\ACK\129\SOH\NUL\131\SOH\SOH\SUBN GetSyncingResponse is the response type for the Query/GetSyncing RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\129\SOH\b\SUB\n\
    \\f\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\130\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\130\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\130\SOH\a\SO\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\130\SOH\DC1\DC2\n\
    \Z\n\
    \\STX\EOT\v\DC2\EOT\134\SOH\NUL\GS\SUBN GetNodeInfoRequest is the request type for the Query/GetNodeInfo RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\v\SOH\DC2\EOT\134\SOH\b\SUB\n\
    \^\n\
    \\STX\EOT\f\DC2\ACK\137\SOH\NUL\140\SOH\SOH\SUBP GetNodeInfoResponse is the response type for the Query/GetNodeInfo RPC method.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\f\SOH\DC2\EOT\137\SOH\b\ESC\n\
    \\f\n\
    \\EOT\EOT\f\STX\NUL\DC2\EOT\138\SOH\STX:\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ACK\DC2\EOT\138\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\EOT\138\SOH\"3\n\
    \\r\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\EOT\138\SOH89\n\
    \\f\n\
    \\EOT\EOT\f\STX\SOH\DC2\EOT\139\SOH\STX:\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ACK\DC2\EOT\139\SOH\STX\r\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\EOT\139\SOH\"5\n\
    \\r\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\EOT\139\SOH89\n\
    \L\n\
    \\STX\EOT\r\DC2\ACK\143\SOH\NUL\153\SOH\SOH\SUB> VersionInfo is the type for the GetNodeInfoResponse message.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\r\SOH\DC2\EOT\143\SOH\b\DC3\n\
    \\f\n\
    \\EOT\EOT\r\STX\NUL\DC2\EOT\144\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\EOT\144\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\EOT\144\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\EOT\144\SOH\US \n\
    \\f\n\
    \\EOT\EOT\r\STX\SOH\DC2\EOT\145\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ENQ\DC2\EOT\145\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\SOH\DC2\EOT\145\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\r\STX\SOH\ETX\DC2\EOT\145\SOH\US \n\
    \\f\n\
    \\EOT\EOT\r\STX\STX\DC2\EOT\146\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ENQ\DC2\EOT\146\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\SOH\DC2\EOT\146\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\r\STX\STX\ETX\DC2\EOT\146\SOH\US \n\
    \\f\n\
    \\EOT\EOT\r\STX\ETX\DC2\EOT\147\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ENQ\DC2\EOT\147\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\SOH\DC2\EOT\147\SOH\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ETX\ETX\DC2\EOT\147\SOH\US \n\
    \\f\n\
    \\EOT\EOT\r\STX\EOT\DC2\EOT\148\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\ENQ\DC2\EOT\148\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\SOH\DC2\EOT\148\SOH\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\EOT\ETX\DC2\EOT\148\SOH\US \n\
    \\f\n\
    \\EOT\EOT\r\STX\ENQ\DC2\EOT\149\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\ENQ\DC2\EOT\149\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\SOH\DC2\EOT\149\SOH\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ENQ\ETX\DC2\EOT\149\SOH\US \n\
    \\f\n\
    \\EOT\EOT\r\STX\ACK\DC2\EOT\150\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ACK\EOT\DC2\EOT\150\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ACK\ACK\DC2\EOT\150\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ACK\SOH\DC2\EOT\150\SOH\DC2\FS\n\
    \\r\n\
    \\ENQ\EOT\r\STX\ACK\ETX\DC2\EOT\150\SOH\US \n\
    \&\n\
    \\EOT\EOT\r\STX\a\DC2\EOT\152\SOH\STX \SUB\CAN Since: cosmos-sdk 0.43\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\r\STX\a\ENQ\DC2\EOT\152\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\r\STX\a\SOH\DC2\EOT\152\SOH\t\ESC\n\
    \\r\n\
    \\ENQ\EOT\r\STX\a\ETX\DC2\EOT\152\SOH\RS\US\n\
    \2\n\
    \\STX\EOT\SO\DC2\ACK\156\SOH\NUL\163\SOH\SOH\SUB$ Module is the type for VersionInfo\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SO\SOH\DC2\EOT\156\SOH\b\SO\n\
    \\ESC\n\
    \\EOT\EOT\SO\STX\NUL\DC2\EOT\158\SOH\STX\DC2\SUB\r module path\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\EOT\158\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\EOT\158\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\EOT\158\SOH\DLE\DC1\n\
    \\RS\n\
    \\EOT\EOT\SO\STX\SOH\DC2\EOT\160\SOH\STX\NAK\SUB\DLE module version\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ENQ\DC2\EOT\160\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\SOH\DC2\EOT\160\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\SOH\ETX\DC2\EOT\160\SOH\DC3\DC4\n\
    \\CAN\n\
    \\EOT\EOT\SO\STX\STX\DC2\EOT\162\SOH\STX\DC1\SUB\n\
    \ checksum\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ENQ\DC2\EOT\162\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\SOH\DC2\EOT\162\SOH\t\f\n\
    \\r\n\
    \\ENQ\EOT\SO\STX\STX\ETX\DC2\EOT\162\SOH\SI\DLE\n\
    \\\\n\
    \\STX\EOT\SI\DC2\ACK\166\SOH\NUL\171\SOH\SOH\SUBN ABCIQueryRequest defines the request structure for the ABCIQuery gRPC query.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SI\SOH\DC2\EOT\166\SOH\b\CAN\n\
    \\f\n\
    \\EOT\EOT\SI\STX\NUL\DC2\EOT\167\SOH\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\EOT\167\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\EOT\167\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\EOT\167\SOH\DC2\DC3\n\
    \\f\n\
    \\EOT\EOT\SI\STX\SOH\DC2\EOT\168\SOH\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ENQ\DC2\EOT\168\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\EOT\168\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\EOT\168\SOH\DC2\DC3\n\
    \\f\n\
    \\EOT\EOT\SI\STX\STX\DC2\EOT\169\SOH\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ENQ\DC2\EOT\169\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\EOT\169\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\EOT\169\SOH\DC2\DC3\n\
    \\f\n\
    \\EOT\EOT\SI\STX\ETX\DC2\EOT\170\SOH\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ENQ\DC2\EOT\170\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\EOT\170\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\EOT\170\SOH\DC2\DC3\n\
    \\184\SOH\n\
    \\STX\EOT\DLE\DC2\ACK\177\SOH\NUL\189\SOH\SOH\SUB\169\SOH ABCIQueryResponse defines the response structure for the ABCIQuery gRPC query.\n\
    \\n\
    \ Note: This type is a duplicate of the ResponseQuery proto type defined in\n\
    \ Tendermint.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DLE\SOH\DC2\EOT\177\SOH\b\EM\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\EOT\178\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\EOT\178\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\EOT\178\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\EOT\178\SOH\DLE\DC1\n\
    \.\n\
    \\ETX\EOT\DLE\t\DC2\EOT\180\SOH\STX\r\SUB! DEPRECATED: use \"value\" instead\n\
    \\n\
    \\f\n\
    \\EOT\EOT\DLE\t\NUL\DC2\EOT\180\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\DLE\t\NUL\SOH\DC2\EOT\180\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\DLE\t\NUL\STX\DC2\EOT\180\SOH\v\f\n\
    \ \n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\181\SOH\STX\EM\"\DC2 nondeterministic\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ENQ\DC2\EOT\181\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\181\SOH\v\SO\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\181\SOH\ETB\CAN\n\
    \ \n\
    \\EOT\EOT\DLE\STX\STX\DC2\EOT\182\SOH\STX\EM\"\DC2 nondeterministic\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ENQ\DC2\EOT\182\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\SOH\DC2\EOT\182\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\STX\ETX\DC2\EOT\182\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\ETX\DC2\EOT\183\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ENQ\DC2\EOT\183\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\SOH\DC2\EOT\183\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ETX\ETX\DC2\EOT\183\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\EOT\DC2\EOT\184\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\ENQ\DC2\EOT\184\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\SOH\DC2\EOT\184\SOH\v\SO\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\EOT\ETX\DC2\EOT\184\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\ENQ\DC2\EOT\185\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ENQ\ENQ\DC2\EOT\185\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ENQ\SOH\DC2\EOT\185\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ENQ\ETX\DC2\EOT\185\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\ACK\DC2\EOT\186\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ACK\ACK\DC2\EOT\186\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ACK\SOH\DC2\EOT\186\SOH\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\ACK\ETX\DC2\EOT\186\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\a\DC2\EOT\187\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\a\ENQ\DC2\EOT\187\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\a\SOH\DC2\EOT\187\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\a\ETX\DC2\EOT\187\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\b\DC2\EOT\188\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\b\ENQ\DC2\EOT\188\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\b\SOH\DC2\EOT\188\SOH\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\b\ETX\DC2\EOT\188\SOH\ETB\EM\n\
    \\132\STX\n\
    \\STX\EOT\DC1\DC2\ACK\196\SOH\NUL\200\SOH\SOH\SUB\245\SOH ProofOp defines an operation used for calculating Merkle root. The data could\n\
    \ be arbitrary format, providing necessary data for example neighbouring node\n\
    \ hash.\n\
    \\n\
    \ Note: This type is a duplicate of the ProofOp proto type defined in Tendermint.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\196\SOH\b\SI\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\197\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\197\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\197\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\197\SOH\DLE\DC1\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\198\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ENQ\DC2\EOT\198\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\198\SOH\t\f\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\198\SOH\DLE\DC1\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\STX\DC2\EOT\199\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ENQ\DC2\EOT\199\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\SOH\DC2\EOT\199\SOH\t\r\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\STX\ETX\DC2\EOT\199\SOH\DLE\DC1\n\
    \\157\SOH\n\
    \\STX\EOT\DC2\DC2\ACK\205\SOH\NUL\207\SOH\SOH\SUB\142\SOH ProofOps is Merkle proof defined by the list of ProofOps.\n\
    \\n\
    \ Note: This type is a duplicate of the ProofOps proto type defined in Tendermint.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\205\SOH\b\DLE\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\206\SOH\STXY\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\EOT\DC2\EOT\206\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ACK\DC2\EOT\206\SOH\v\DC2\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\206\SOH\DC3\SYN\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\206\SOH\EM\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\b\DC2\EOT\206\SOH\ESCX\n\
    \\DLE\n\
    \\b\EOT\DC2\STX\NUL\b\233\251\ETX\DC2\EOT\206\SOH\FS8\n\
    \\DC1\n\
    \\t\EOT\DC2\STX\NUL\b\245\140\166\ENQ\DC2\EOT\206\SOH:Wb\ACKproto3"