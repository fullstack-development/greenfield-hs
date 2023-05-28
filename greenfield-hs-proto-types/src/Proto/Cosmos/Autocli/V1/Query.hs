{- This file was auto-generated from cosmos/autocli/v1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Autocli.V1.Query (
        Query(..), AppOptionsRequest(), AppOptionsResponse(),
        AppOptionsResponse'ModuleOptionsEntry()
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
import qualified Proto.Cosmos.Autocli.V1.Options
import qualified Proto.Cosmos.Query.V1.Query
{- | Fields :
      -}
data AppOptionsRequest
  = AppOptionsRequest'_constructor {_AppOptionsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AppOptionsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message AppOptionsRequest where
  messageName _
    = Data.Text.pack "cosmos.autocli.v1.AppOptionsRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC1AppOptionsRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AppOptionsRequest'_unknownFields
        (\ x__ y__ -> x__ {_AppOptionsRequest'_unknownFields = y__})
  defMessage
    = AppOptionsRequest'_constructor
        {_AppOptionsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AppOptionsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser AppOptionsRequest
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
          (do loop Data.ProtoLens.defMessage) "AppOptionsRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData AppOptionsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AppOptionsRequest'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Autocli.V1.Query_Fields.moduleOptions' @:: Lens' AppOptionsResponse (Data.Map.Map Data.Text.Text Proto.Cosmos.Autocli.V1.Options.ModuleOptions)@ -}
data AppOptionsResponse
  = AppOptionsResponse'_constructor {_AppOptionsResponse'moduleOptions :: !(Data.Map.Map Data.Text.Text Proto.Cosmos.Autocli.V1.Options.ModuleOptions),
                                     _AppOptionsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AppOptionsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AppOptionsResponse "moduleOptions" (Data.Map.Map Data.Text.Text Proto.Cosmos.Autocli.V1.Options.ModuleOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppOptionsResponse'moduleOptions
           (\ x__ y__ -> x__ {_AppOptionsResponse'moduleOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Message AppOptionsResponse where
  messageName _
    = Data.Text.pack "cosmos.autocli.v1.AppOptionsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC2AppOptionsResponse\DC2_\n\
      \\SOmodule_options\CAN\SOH \ETX(\v28.cosmos.autocli.v1.AppOptionsResponse.ModuleOptionsEntryR\rmoduleOptions\SUBb\n\
      \\DC2ModuleOptionsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC26\n\
      \\ENQvalue\CAN\STX \SOH(\v2 .cosmos.autocli.v1.ModuleOptionsR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        moduleOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "module_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AppOptionsResponse'ModuleOptionsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"moduleOptions")) ::
              Data.ProtoLens.FieldDescriptor AppOptionsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, moduleOptions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AppOptionsResponse'_unknownFields
        (\ x__ y__ -> x__ {_AppOptionsResponse'_unknownFields = y__})
  defMessage
    = AppOptionsResponse'_constructor
        {_AppOptionsResponse'moduleOptions = Data.Map.empty,
         _AppOptionsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AppOptionsResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser AppOptionsResponse
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
                          -> do !(entry :: AppOptionsResponse'ModuleOptionsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                           Data.ProtoLens.Encoding.Bytes.isolate
                                                                                             (Prelude.fromIntegral
                                                                                                len)
                                                                                             Data.ProtoLens.parseMessage)
                                                                                       "module_options"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"moduleOptions")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AppOptionsResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.Monoid.mconcat
                (Prelude.map
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                    (Data.ProtoLens.defMessage ::
                                       AppOptionsResponse'ModuleOptionsEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"moduleOptions") _x))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AppOptionsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AppOptionsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AppOptionsResponse'moduleOptions x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Autocli.V1.Query_Fields.key' @:: Lens' AppOptionsResponse'ModuleOptionsEntry Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Query_Fields.value' @:: Lens' AppOptionsResponse'ModuleOptionsEntry Proto.Cosmos.Autocli.V1.Options.ModuleOptions@
         * 'Proto.Cosmos.Autocli.V1.Query_Fields.maybe'value' @:: Lens' AppOptionsResponse'ModuleOptionsEntry (Prelude.Maybe Proto.Cosmos.Autocli.V1.Options.ModuleOptions)@ -}
data AppOptionsResponse'ModuleOptionsEntry
  = AppOptionsResponse'ModuleOptionsEntry'_constructor {_AppOptionsResponse'ModuleOptionsEntry'key :: !Data.Text.Text,
                                                        _AppOptionsResponse'ModuleOptionsEntry'value :: !(Prelude.Maybe Proto.Cosmos.Autocli.V1.Options.ModuleOptions),
                                                        _AppOptionsResponse'ModuleOptionsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AppOptionsResponse'ModuleOptionsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AppOptionsResponse'ModuleOptionsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppOptionsResponse'ModuleOptionsEntry'key
           (\ x__ y__
              -> x__ {_AppOptionsResponse'ModuleOptionsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AppOptionsResponse'ModuleOptionsEntry "value" Proto.Cosmos.Autocli.V1.Options.ModuleOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppOptionsResponse'ModuleOptionsEntry'value
           (\ x__ y__
              -> x__ {_AppOptionsResponse'ModuleOptionsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AppOptionsResponse'ModuleOptionsEntry "maybe'value" (Prelude.Maybe Proto.Cosmos.Autocli.V1.Options.ModuleOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AppOptionsResponse'ModuleOptionsEntry'value
           (\ x__ y__
              -> x__ {_AppOptionsResponse'ModuleOptionsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message AppOptionsResponse'ModuleOptionsEntry where
  messageName _
    = Data.Text.pack
        "cosmos.autocli.v1.AppOptionsResponse.ModuleOptionsEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC2ModuleOptionsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC26\n\
      \\ENQvalue\CAN\STX \SOH(\v2 .cosmos.autocli.v1.ModuleOptionsR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor AppOptionsResponse'ModuleOptionsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Autocli.V1.Options.ModuleOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor AppOptionsResponse'ModuleOptionsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AppOptionsResponse'ModuleOptionsEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_AppOptionsResponse'ModuleOptionsEntry'_unknownFields = y__})
  defMessage
    = AppOptionsResponse'ModuleOptionsEntry'_constructor
        {_AppOptionsResponse'ModuleOptionsEntry'key = Data.ProtoLens.fieldDefault,
         _AppOptionsResponse'ModuleOptionsEntry'value = Prelude.Nothing,
         _AppOptionsResponse'ModuleOptionsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AppOptionsResponse'ModuleOptionsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser AppOptionsResponse'ModuleOptionsEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ModuleOptionsEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
instance Control.DeepSeq.NFData AppOptionsResponse'ModuleOptionsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AppOptionsResponse'ModuleOptionsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AppOptionsResponse'ModuleOptionsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_AppOptionsResponse'ModuleOptionsEntry'value x__) ()))
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.autocli.v1"
  type ServiceMethods Query = '["appOptions"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2`\n\
      \\n\
      \AppOptions\DC2$.cosmos.autocli.v1.AppOptionsRequest\SUB%.cosmos.autocli.v1.AppOptionsResponse\"\ENQ\136\231\176*\NUL"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "appOptions" where
  type MethodName Query "appOptions" = "AppOptions"
  type MethodInput Query "appOptions" = AppOptionsRequest
  type MethodOutput Query "appOptions" = AppOptionsResponse
  type MethodStreamingType Query "appOptions" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\GScosmos/autocli/v1/query.proto\DC2\DC1cosmos.autocli.v1\SUB\UScosmos/autocli/v1/options.proto\SUB\ESCcosmos/query/v1/query.proto\"\DC3\n\
    \\DC1AppOptionsRequest\"\217\SOH\n\
    \\DC2AppOptionsResponse\DC2_\n\
    \\SOmodule_options\CAN\SOH \ETX(\v28.cosmos.autocli.v1.AppOptionsResponse.ModuleOptionsEntryR\rmoduleOptions\SUBb\n\
    \\DC2ModuleOptionsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC26\n\
    \\ENQvalue\CAN\STX \SOH(\v2 .cosmos.autocli.v1.ModuleOptionsR\ENQvalue:\STX8\SOH2i\n\
    \\ENQQuery\DC2`\n\
    \\n\
    \AppOptions\DC2$.cosmos.autocli.v1.AppOptionsRequest\SUB%.cosmos.autocli.v1.AppOptionsResponse\"\ENQ\136\231\176*\NULB+Z)cosmossdk.io/api/cosmos/base/cli/v1;cliv1J\162\ACK\n\
    \\ACK\DC2\EOT\NUL\NUL\ESC\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SUB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL%\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL@\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\a\NUL@\n\
    \\132\SOH\n\
    \\STX\ACK\NUL\DC2\EOT\v\NUL\DC2\SOH\SUBx RemoteInfoService provides clients with the information they need\n\
    \ to build dynamically CLI clients for remote chains.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\v\b\r\n\
    \X\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\r\STX\DC1\ETX\SUBJ AppOptions returns the autocli options for all of the modules in an app.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\r\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\r\DC1\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\r-?\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\DLE\EOT7\n\
    \y\n\
    \\t\ACK\NUL\STX\NUL\EOT\241\140\166\ENQ\DC2\ETX\DLE\EOT7\SUBg NOTE: autocli options SHOULD NOT be part of consensus and module_query_safe\n\
    \ should be kept as false.\n\
    \\n\
    \P\n\
    \\STX\EOT\NUL\DC2\ETX\NAK\NUL\FS\SUBE AppOptionsRequest is the RemoteInfoService/AppOptions request type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\EM\n\
    \S\n\
    \\STX\EOT\SOH\DC2\EOT\CAN\NUL\ESC\SOH\SUBG AppOptionsResponse is the RemoteInfoService/AppOptions response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\CAN\b\SUB\n\
    \P\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SUB\STX0\SUBC module_options is a map of module name to autocli module options.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX\SUB\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SUB\GS+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SUB./b\ACKproto3"