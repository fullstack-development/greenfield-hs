{- This file was auto-generated from cosmos/app/v1alpha1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.App.V1alpha1.Query (
        Query(..), QueryConfigRequest(), QueryConfigResponse()
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
import qualified Proto.Cosmos.App.V1alpha1.Config
{- | Fields :
      -}
data QueryConfigRequest
  = QueryConfigRequest'_constructor {_QueryConfigRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryConfigRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QueryConfigRequest where
  messageName _
    = Data.Text.pack "cosmos.app.v1alpha1.QueryConfigRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC2QueryConfigRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryConfigRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryConfigRequest'_unknownFields = y__})
  defMessage
    = QueryConfigRequest'_constructor
        {_QueryConfigRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryConfigRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryConfigRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryConfigRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QueryConfigRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryConfigRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.App.V1alpha1.Query_Fields.config' @:: Lens' QueryConfigResponse Proto.Cosmos.App.V1alpha1.Config.Config@
         * 'Proto.Cosmos.App.V1alpha1.Query_Fields.maybe'config' @:: Lens' QueryConfigResponse (Prelude.Maybe Proto.Cosmos.App.V1alpha1.Config.Config)@ -}
data QueryConfigResponse
  = QueryConfigResponse'_constructor {_QueryConfigResponse'config :: !(Prelude.Maybe Proto.Cosmos.App.V1alpha1.Config.Config),
                                      _QueryConfigResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryConfigResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryConfigResponse "config" Proto.Cosmos.App.V1alpha1.Config.Config where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryConfigResponse'config
           (\ x__ y__ -> x__ {_QueryConfigResponse'config = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryConfigResponse "maybe'config" (Prelude.Maybe Proto.Cosmos.App.V1alpha1.Config.Config) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryConfigResponse'config
           (\ x__ y__ -> x__ {_QueryConfigResponse'config = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryConfigResponse where
  messageName _
    = Data.Text.pack "cosmos.app.v1alpha1.QueryConfigResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryConfigResponse\DC23\n\
      \\ACKconfig\CAN\SOH \SOH(\v2\ESC.cosmos.app.v1alpha1.ConfigR\ACKconfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        config__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.App.V1alpha1.Config.Config)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'config")) ::
              Data.ProtoLens.FieldDescriptor QueryConfigResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, config__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryConfigResponse'_unknownFields
        (\ x__ y__ -> x__ {_QueryConfigResponse'_unknownFields = y__})
  defMessage
    = QueryConfigResponse'_constructor
        {_QueryConfigResponse'config = Prelude.Nothing,
         _QueryConfigResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryConfigResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryConfigResponse
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
                                       "config"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"config") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryConfigResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'config") _x
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
instance Control.DeepSeq.NFData QueryConfigResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryConfigResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryConfigResponse'config x__) ())
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.app.v1alpha1"
  type ServiceMethods Query = '["config"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2]\n\
      \\ACKConfig\DC2'.cosmos.app.v1alpha1.QueryConfigRequest\SUB(.cosmos.app.v1alpha1.QueryConfigResponse\"\NUL"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "config" where
  type MethodName Query "config" = "Config"
  type MethodInput Query "config" = QueryConfigRequest
  type MethodOutput Query "config" = QueryConfigResponse
  type MethodStreamingType Query "config" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\UScosmos/app/v1alpha1/query.proto\DC2\DC3cosmos.app.v1alpha1\SUB cosmos/app/v1alpha1/config.proto\"\DC4\n\
    \\DC2QueryConfigRequest\"J\n\
    \\DC3QueryConfigResponse\DC23\n\
    \\ACKconfig\CAN\SOH \SOH(\v2\ESC.cosmos.app.v1alpha1.ConfigR\ACKconfig2f\n\
    \\ENQQuery\DC2]\n\
    \\ACKConfig\DC2'.cosmos.app.v1alpha1.QueryConfigRequest\SUB(.cosmos.app.v1alpha1.QueryConfigResponse\"\NULJ\198\ETX\n\
    \\ACK\DC2\EOT\NUL\NUL\NAK\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \4\n\
    \\STX\ACK\NUL\DC2\EOT\a\NUL\v\SOH\SUB( Query is the app module query service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\a\b\r\n\
    \5\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\n\
    \\STXA\SUB( Config returns the current app config.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\n\
    \\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\n\
    \\r\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\n\
    \*=\n\
    \A\n\
    \\STX\EOT\NUL\DC2\ETX\SO\NUL\GS\SUB6 QueryConfigRequest is the Query/Config request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SO\b\SUB\n\
    \C\n\
    \\STX\EOT\SOH\DC2\EOT\DC1\NUL\NAK\SOH\SUB7 QueryConfigRequest is the Query/Config response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC1\b\ESC\n\
    \0\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DC4\STX\DC4\SUB# config is the current app config.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\DC4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DC4\t\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DC4\DC2\DC3b\ACKproto3"