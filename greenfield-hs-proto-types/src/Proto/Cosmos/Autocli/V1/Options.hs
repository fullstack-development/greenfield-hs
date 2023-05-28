{- This file was auto-generated from cosmos/autocli/v1/options.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Autocli.V1.Options (
        FlagOptions(), ModuleOptions(), PositionalArgDescriptor(),
        RpcCommandOptions(), RpcCommandOptions'FlagOptionsEntry(),
        ServiceCommandDescriptor(),
        ServiceCommandDescriptor'SubCommandsEntry()
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
{- | Fields :
     
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.name' @:: Lens' FlagOptions Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.shorthand' @:: Lens' FlagOptions Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.usage' @:: Lens' FlagOptions Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.defaultValue' @:: Lens' FlagOptions Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.deprecated' @:: Lens' FlagOptions Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.shorthandDeprecated' @:: Lens' FlagOptions Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.hidden' @:: Lens' FlagOptions Prelude.Bool@ -}
data FlagOptions
  = FlagOptions'_constructor {_FlagOptions'name :: !Data.Text.Text,
                              _FlagOptions'shorthand :: !Data.Text.Text,
                              _FlagOptions'usage :: !Data.Text.Text,
                              _FlagOptions'defaultValue :: !Data.Text.Text,
                              _FlagOptions'deprecated :: !Data.Text.Text,
                              _FlagOptions'shorthandDeprecated :: !Data.Text.Text,
                              _FlagOptions'hidden :: !Prelude.Bool,
                              _FlagOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FlagOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FlagOptions "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FlagOptions'name (\ x__ y__ -> x__ {_FlagOptions'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FlagOptions "shorthand" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FlagOptions'shorthand
           (\ x__ y__ -> x__ {_FlagOptions'shorthand = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FlagOptions "usage" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FlagOptions'usage (\ x__ y__ -> x__ {_FlagOptions'usage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FlagOptions "defaultValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FlagOptions'defaultValue
           (\ x__ y__ -> x__ {_FlagOptions'defaultValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FlagOptions "deprecated" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FlagOptions'deprecated
           (\ x__ y__ -> x__ {_FlagOptions'deprecated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FlagOptions "shorthandDeprecated" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FlagOptions'shorthandDeprecated
           (\ x__ y__ -> x__ {_FlagOptions'shorthandDeprecated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FlagOptions "hidden" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FlagOptions'hidden (\ x__ y__ -> x__ {_FlagOptions'hidden = y__}))
        Prelude.id
instance Data.ProtoLens.Message FlagOptions where
  messageName _ = Data.Text.pack "cosmos.autocli.v1.FlagOptions"
  packedMessageDescriptor _
    = "\n\
      \\vFlagOptions\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\FS\n\
      \\tshorthand\CAN\STX \SOH(\tR\tshorthand\DC2\DC4\n\
      \\ENQusage\CAN\ETX \SOH(\tR\ENQusage\DC2#\n\
      \\rdefault_value\CAN\EOT \SOH(\tR\fdefaultValue\DC2\RS\n\
      \\n\
      \deprecated\CAN\ACK \SOH(\tR\n\
      \deprecated\DC21\n\
      \\DC4shorthand_deprecated\CAN\a \SOH(\tR\DC3shorthandDeprecated\DC2\SYN\n\
      \\ACKhidden\CAN\b \SOH(\bR\ACKhidden"
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
              Data.ProtoLens.FieldDescriptor FlagOptions
        shorthand__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shorthand"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"shorthand")) ::
              Data.ProtoLens.FieldDescriptor FlagOptions
        usage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "usage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"usage")) ::
              Data.ProtoLens.FieldDescriptor FlagOptions
        defaultValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"defaultValue")) ::
              Data.ProtoLens.FieldDescriptor FlagOptions
        deprecated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deprecated"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"deprecated")) ::
              Data.ProtoLens.FieldDescriptor FlagOptions
        shorthandDeprecated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shorthand_deprecated"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"shorthandDeprecated")) ::
              Data.ProtoLens.FieldDescriptor FlagOptions
        hidden__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hidden"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"hidden")) ::
              Data.ProtoLens.FieldDescriptor FlagOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, shorthand__field_descriptor),
           (Data.ProtoLens.Tag 3, usage__field_descriptor),
           (Data.ProtoLens.Tag 4, defaultValue__field_descriptor),
           (Data.ProtoLens.Tag 6, deprecated__field_descriptor),
           (Data.ProtoLens.Tag 7, shorthandDeprecated__field_descriptor),
           (Data.ProtoLens.Tag 8, hidden__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FlagOptions'_unknownFields
        (\ x__ y__ -> x__ {_FlagOptions'_unknownFields = y__})
  defMessage
    = FlagOptions'_constructor
        {_FlagOptions'name = Data.ProtoLens.fieldDefault,
         _FlagOptions'shorthand = Data.ProtoLens.fieldDefault,
         _FlagOptions'usage = Data.ProtoLens.fieldDefault,
         _FlagOptions'defaultValue = Data.ProtoLens.fieldDefault,
         _FlagOptions'deprecated = Data.ProtoLens.fieldDefault,
         _FlagOptions'shorthandDeprecated = Data.ProtoLens.fieldDefault,
         _FlagOptions'hidden = Data.ProtoLens.fieldDefault,
         _FlagOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FlagOptions -> Data.ProtoLens.Encoding.Bytes.Parser FlagOptions
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "shorthand"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"shorthand") y x)
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
                                       "usage"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"usage") y x)
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
                                       "default_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultValue") y x)
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
                                       "deprecated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"deprecated") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "shorthand_deprecated"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"shorthandDeprecated") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "hidden"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hidden") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FlagOptions"
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"shorthand") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"usage") _x
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
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"defaultValue") _x
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
                            _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"deprecated") _x
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
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8 _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"shorthandDeprecated") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8 _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hidden") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (\ b -> if b then 1 else 0) _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData FlagOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FlagOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FlagOptions'name x__)
                (Control.DeepSeq.deepseq
                   (_FlagOptions'shorthand x__)
                   (Control.DeepSeq.deepseq
                      (_FlagOptions'usage x__)
                      (Control.DeepSeq.deepseq
                         (_FlagOptions'defaultValue x__)
                         (Control.DeepSeq.deepseq
                            (_FlagOptions'deprecated x__)
                            (Control.DeepSeq.deepseq
                               (_FlagOptions'shorthandDeprecated x__)
                               (Control.DeepSeq.deepseq (_FlagOptions'hidden x__) ())))))))
{- | Fields :
     
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.tx' @:: Lens' ModuleOptions ServiceCommandDescriptor@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.maybe'tx' @:: Lens' ModuleOptions (Prelude.Maybe ServiceCommandDescriptor)@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.query' @:: Lens' ModuleOptions ServiceCommandDescriptor@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.maybe'query' @:: Lens' ModuleOptions (Prelude.Maybe ServiceCommandDescriptor)@ -}
data ModuleOptions
  = ModuleOptions'_constructor {_ModuleOptions'tx :: !(Prelude.Maybe ServiceCommandDescriptor),
                                _ModuleOptions'query :: !(Prelude.Maybe ServiceCommandDescriptor),
                                _ModuleOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModuleOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ModuleOptions "tx" ServiceCommandDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleOptions'tx (\ x__ y__ -> x__ {_ModuleOptions'tx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ModuleOptions "maybe'tx" (Prelude.Maybe ServiceCommandDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleOptions'tx (\ x__ y__ -> x__ {_ModuleOptions'tx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModuleOptions "query" ServiceCommandDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleOptions'query
           (\ x__ y__ -> x__ {_ModuleOptions'query = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ModuleOptions "maybe'query" (Prelude.Maybe ServiceCommandDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModuleOptions'query
           (\ x__ y__ -> x__ {_ModuleOptions'query = y__}))
        Prelude.id
instance Data.ProtoLens.Message ModuleOptions where
  messageName _ = Data.Text.pack "cosmos.autocli.v1.ModuleOptions"
  packedMessageDescriptor _
    = "\n\
      \\rModuleOptions\DC2;\n\
      \\STXtx\CAN\SOH \SOH(\v2+.cosmos.autocli.v1.ServiceCommandDescriptorR\STXtx\DC2A\n\
      \\ENQquery\CAN\STX \SOH(\v2+.cosmos.autocli.v1.ServiceCommandDescriptorR\ENQquery"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ServiceCommandDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tx")) ::
              Data.ProtoLens.FieldDescriptor ModuleOptions
        query__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "query"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ServiceCommandDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'query")) ::
              Data.ProtoLens.FieldDescriptor ModuleOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tx__field_descriptor),
           (Data.ProtoLens.Tag 2, query__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ModuleOptions'_unknownFields
        (\ x__ y__ -> x__ {_ModuleOptions'_unknownFields = y__})
  defMessage
    = ModuleOptions'_constructor
        {_ModuleOptions'tx = Prelude.Nothing,
         _ModuleOptions'query = Prelude.Nothing,
         _ModuleOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ModuleOptions -> Data.ProtoLens.Encoding.Bytes.Parser ModuleOptions
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
                                       "tx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tx") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "query"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"query") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ModuleOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tx") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'query") _x
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
instance Control.DeepSeq.NFData ModuleOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ModuleOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ModuleOptions'tx x__)
                (Control.DeepSeq.deepseq (_ModuleOptions'query x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.protoField' @:: Lens' PositionalArgDescriptor Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.varargs' @:: Lens' PositionalArgDescriptor Prelude.Bool@ -}
data PositionalArgDescriptor
  = PositionalArgDescriptor'_constructor {_PositionalArgDescriptor'protoField :: !Data.Text.Text,
                                          _PositionalArgDescriptor'varargs :: !Prelude.Bool,
                                          _PositionalArgDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PositionalArgDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PositionalArgDescriptor "protoField" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PositionalArgDescriptor'protoField
           (\ x__ y__ -> x__ {_PositionalArgDescriptor'protoField = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PositionalArgDescriptor "varargs" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PositionalArgDescriptor'varargs
           (\ x__ y__ -> x__ {_PositionalArgDescriptor'varargs = y__}))
        Prelude.id
instance Data.ProtoLens.Message PositionalArgDescriptor where
  messageName _
    = Data.Text.pack "cosmos.autocli.v1.PositionalArgDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\ETBPositionalArgDescriptor\DC2\US\n\
      \\vproto_field\CAN\SOH \SOH(\tR\n\
      \protoField\DC2\CAN\n\
      \\avarargs\CAN\STX \SOH(\bR\avarargs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        protoField__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proto_field"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"protoField")) ::
              Data.ProtoLens.FieldDescriptor PositionalArgDescriptor
        varargs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "varargs"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"varargs")) ::
              Data.ProtoLens.FieldDescriptor PositionalArgDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, protoField__field_descriptor),
           (Data.ProtoLens.Tag 2, varargs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PositionalArgDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_PositionalArgDescriptor'_unknownFields = y__})
  defMessage
    = PositionalArgDescriptor'_constructor
        {_PositionalArgDescriptor'protoField = Data.ProtoLens.fieldDefault,
         _PositionalArgDescriptor'varargs = Data.ProtoLens.fieldDefault,
         _PositionalArgDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PositionalArgDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser PositionalArgDescriptor
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
                                       "proto_field"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"protoField") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "varargs"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"varargs") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PositionalArgDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"protoField") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"varargs") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData PositionalArgDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PositionalArgDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PositionalArgDescriptor'protoField x__)
                (Control.DeepSeq.deepseq
                   (_PositionalArgDescriptor'varargs x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.rpcMethod' @:: Lens' RpcCommandOptions Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.use' @:: Lens' RpcCommandOptions Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.long' @:: Lens' RpcCommandOptions Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.short' @:: Lens' RpcCommandOptions Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.example' @:: Lens' RpcCommandOptions Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.alias' @:: Lens' RpcCommandOptions [Data.Text.Text]@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.vec'alias' @:: Lens' RpcCommandOptions (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.suggestFor' @:: Lens' RpcCommandOptions [Data.Text.Text]@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.vec'suggestFor' @:: Lens' RpcCommandOptions (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.deprecated' @:: Lens' RpcCommandOptions Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.version' @:: Lens' RpcCommandOptions Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.flagOptions' @:: Lens' RpcCommandOptions (Data.Map.Map Data.Text.Text FlagOptions)@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.positionalArgs' @:: Lens' RpcCommandOptions [PositionalArgDescriptor]@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.vec'positionalArgs' @:: Lens' RpcCommandOptions (Data.Vector.Vector PositionalArgDescriptor)@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.skip' @:: Lens' RpcCommandOptions Prelude.Bool@ -}
data RpcCommandOptions
  = RpcCommandOptions'_constructor {_RpcCommandOptions'rpcMethod :: !Data.Text.Text,
                                    _RpcCommandOptions'use :: !Data.Text.Text,
                                    _RpcCommandOptions'long :: !Data.Text.Text,
                                    _RpcCommandOptions'short :: !Data.Text.Text,
                                    _RpcCommandOptions'example :: !Data.Text.Text,
                                    _RpcCommandOptions'alias :: !(Data.Vector.Vector Data.Text.Text),
                                    _RpcCommandOptions'suggestFor :: !(Data.Vector.Vector Data.Text.Text),
                                    _RpcCommandOptions'deprecated :: !Data.Text.Text,
                                    _RpcCommandOptions'version :: !Data.Text.Text,
                                    _RpcCommandOptions'flagOptions :: !(Data.Map.Map Data.Text.Text FlagOptions),
                                    _RpcCommandOptions'positionalArgs :: !(Data.Vector.Vector PositionalArgDescriptor),
                                    _RpcCommandOptions'skip :: !Prelude.Bool,
                                    _RpcCommandOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RpcCommandOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RpcCommandOptions "rpcMethod" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'rpcMethod
           (\ x__ y__ -> x__ {_RpcCommandOptions'rpcMethod = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RpcCommandOptions "use" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'use
           (\ x__ y__ -> x__ {_RpcCommandOptions'use = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RpcCommandOptions "long" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'long
           (\ x__ y__ -> x__ {_RpcCommandOptions'long = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RpcCommandOptions "short" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'short
           (\ x__ y__ -> x__ {_RpcCommandOptions'short = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RpcCommandOptions "example" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'example
           (\ x__ y__ -> x__ {_RpcCommandOptions'example = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RpcCommandOptions "alias" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'alias
           (\ x__ y__ -> x__ {_RpcCommandOptions'alias = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RpcCommandOptions "vec'alias" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'alias
           (\ x__ y__ -> x__ {_RpcCommandOptions'alias = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RpcCommandOptions "suggestFor" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'suggestFor
           (\ x__ y__ -> x__ {_RpcCommandOptions'suggestFor = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RpcCommandOptions "vec'suggestFor" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'suggestFor
           (\ x__ y__ -> x__ {_RpcCommandOptions'suggestFor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RpcCommandOptions "deprecated" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'deprecated
           (\ x__ y__ -> x__ {_RpcCommandOptions'deprecated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RpcCommandOptions "version" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'version
           (\ x__ y__ -> x__ {_RpcCommandOptions'version = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RpcCommandOptions "flagOptions" (Data.Map.Map Data.Text.Text FlagOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'flagOptions
           (\ x__ y__ -> x__ {_RpcCommandOptions'flagOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RpcCommandOptions "positionalArgs" [PositionalArgDescriptor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'positionalArgs
           (\ x__ y__ -> x__ {_RpcCommandOptions'positionalArgs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RpcCommandOptions "vec'positionalArgs" (Data.Vector.Vector PositionalArgDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'positionalArgs
           (\ x__ y__ -> x__ {_RpcCommandOptions'positionalArgs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RpcCommandOptions "skip" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'skip
           (\ x__ y__ -> x__ {_RpcCommandOptions'skip = y__}))
        Prelude.id
instance Data.ProtoLens.Message RpcCommandOptions where
  messageName _
    = Data.Text.pack "cosmos.autocli.v1.RpcCommandOptions"
  packedMessageDescriptor _
    = "\n\
      \\DC1RpcCommandOptions\DC2\GS\n\
      \\n\
      \rpc_method\CAN\SOH \SOH(\tR\trpcMethod\DC2\DLE\n\
      \\ETXuse\CAN\STX \SOH(\tR\ETXuse\DC2\DC2\n\
      \\EOTlong\CAN\ETX \SOH(\tR\EOTlong\DC2\DC4\n\
      \\ENQshort\CAN\EOT \SOH(\tR\ENQshort\DC2\CAN\n\
      \\aexample\CAN\ENQ \SOH(\tR\aexample\DC2\DC4\n\
      \\ENQalias\CAN\ACK \ETX(\tR\ENQalias\DC2\US\n\
      \\vsuggest_for\CAN\a \ETX(\tR\n\
      \suggestFor\DC2\RS\n\
      \\n\
      \deprecated\CAN\b \SOH(\tR\n\
      \deprecated\DC2\CAN\n\
      \\aversion\CAN\t \SOH(\tR\aversion\DC2X\n\
      \\fflag_options\CAN\n\
      \ \ETX(\v25.cosmos.autocli.v1.RpcCommandOptions.FlagOptionsEntryR\vflagOptions\DC2S\n\
      \\SIpositional_args\CAN\v \ETX(\v2*.cosmos.autocli.v1.PositionalArgDescriptorR\SOpositionalArgs\DC2\DC2\n\
      \\EOTskip\CAN\f \SOH(\bR\EOTskip\SUB^\n\
      \\DLEFlagOptionsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC24\n\
      \\ENQvalue\CAN\STX \SOH(\v2\RS.cosmos.autocli.v1.FlagOptionsR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rpcMethod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rpc_method"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rpcMethod")) ::
              Data.ProtoLens.FieldDescriptor RpcCommandOptions
        use__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"use")) ::
              Data.ProtoLens.FieldDescriptor RpcCommandOptions
        long__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "long"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"long")) ::
              Data.ProtoLens.FieldDescriptor RpcCommandOptions
        short__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "short"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"short")) ::
              Data.ProtoLens.FieldDescriptor RpcCommandOptions
        example__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "example"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"example")) ::
              Data.ProtoLens.FieldDescriptor RpcCommandOptions
        alias__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "alias"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"alias")) ::
              Data.ProtoLens.FieldDescriptor RpcCommandOptions
        suggestFor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "suggest_for"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"suggestFor")) ::
              Data.ProtoLens.FieldDescriptor RpcCommandOptions
        deprecated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deprecated"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"deprecated")) ::
              Data.ProtoLens.FieldDescriptor RpcCommandOptions
        version__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"version")) ::
              Data.ProtoLens.FieldDescriptor RpcCommandOptions
        flagOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flag_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RpcCommandOptions'FlagOptionsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"flagOptions")) ::
              Data.ProtoLens.FieldDescriptor RpcCommandOptions
        positionalArgs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "positional_args"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PositionalArgDescriptor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"positionalArgs")) ::
              Data.ProtoLens.FieldDescriptor RpcCommandOptions
        skip__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "skip"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"skip")) ::
              Data.ProtoLens.FieldDescriptor RpcCommandOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rpcMethod__field_descriptor),
           (Data.ProtoLens.Tag 2, use__field_descriptor),
           (Data.ProtoLens.Tag 3, long__field_descriptor),
           (Data.ProtoLens.Tag 4, short__field_descriptor),
           (Data.ProtoLens.Tag 5, example__field_descriptor),
           (Data.ProtoLens.Tag 6, alias__field_descriptor),
           (Data.ProtoLens.Tag 7, suggestFor__field_descriptor),
           (Data.ProtoLens.Tag 8, deprecated__field_descriptor),
           (Data.ProtoLens.Tag 9, version__field_descriptor),
           (Data.ProtoLens.Tag 10, flagOptions__field_descriptor),
           (Data.ProtoLens.Tag 11, positionalArgs__field_descriptor),
           (Data.ProtoLens.Tag 12, skip__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RpcCommandOptions'_unknownFields
        (\ x__ y__ -> x__ {_RpcCommandOptions'_unknownFields = y__})
  defMessage
    = RpcCommandOptions'_constructor
        {_RpcCommandOptions'rpcMethod = Data.ProtoLens.fieldDefault,
         _RpcCommandOptions'use = Data.ProtoLens.fieldDefault,
         _RpcCommandOptions'long = Data.ProtoLens.fieldDefault,
         _RpcCommandOptions'short = Data.ProtoLens.fieldDefault,
         _RpcCommandOptions'example = Data.ProtoLens.fieldDefault,
         _RpcCommandOptions'alias = Data.Vector.Generic.empty,
         _RpcCommandOptions'suggestFor = Data.Vector.Generic.empty,
         _RpcCommandOptions'deprecated = Data.ProtoLens.fieldDefault,
         _RpcCommandOptions'version = Data.ProtoLens.fieldDefault,
         _RpcCommandOptions'flagOptions = Data.Map.empty,
         _RpcCommandOptions'positionalArgs = Data.Vector.Generic.empty,
         _RpcCommandOptions'skip = Data.ProtoLens.fieldDefault,
         _RpcCommandOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RpcCommandOptions
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld PositionalArgDescriptor
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                   -> Data.ProtoLens.Encoding.Bytes.Parser RpcCommandOptions
        loop x mutable'alias mutable'positionalArgs mutable'suggestFor
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'alias <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'alias)
                      frozen'positionalArgs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'positionalArgs)
                      frozen'suggestFor <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'suggestFor)
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
                              (Data.ProtoLens.Field.field @"vec'alias") frozen'alias
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'positionalArgs")
                                 frozen'positionalArgs
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'suggestFor") frozen'suggestFor
                                    x))))
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
                                       "rpc_method"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rpcMethod") y x)
                                  mutable'alias mutable'positionalArgs mutable'suggestFor
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
                                       "use"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"use") y x)
                                  mutable'alias mutable'positionalArgs mutable'suggestFor
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
                                       "long"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"long") y x)
                                  mutable'alias mutable'positionalArgs mutable'suggestFor
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
                                       "short"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"short") y x)
                                  mutable'alias mutable'positionalArgs mutable'suggestFor
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
                                       "example"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"example") y x)
                                  mutable'alias mutable'positionalArgs mutable'suggestFor
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "alias"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'alias y)
                                loop x v mutable'positionalArgs mutable'suggestFor
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "suggest_for"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'suggestFor y)
                                loop x mutable'alias mutable'positionalArgs v
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
                                       "deprecated"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"deprecated") y x)
                                  mutable'alias mutable'positionalArgs mutable'suggestFor
                        74
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
                                  mutable'alias mutable'positionalArgs mutable'suggestFor
                        82
                          -> do !(entry :: RpcCommandOptions'FlagOptionsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                    (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                        Data.ProtoLens.Encoding.Bytes.isolate
                                                                                          (Prelude.fromIntegral
                                                                                             len)
                                                                                          Data.ProtoLens.parseMessage)
                                                                                    "flag_options"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"flagOptions")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'alias mutable'positionalArgs mutable'suggestFor)
                        90
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "positional_args"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'positionalArgs y)
                                loop x mutable'alias v mutable'suggestFor
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "skip"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"skip") y x)
                                  mutable'alias mutable'positionalArgs mutable'suggestFor
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'alias mutable'positionalArgs mutable'suggestFor
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'alias <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              mutable'positionalArgs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              mutable'suggestFor <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'alias mutable'positionalArgs
                mutable'suggestFor)
          "RpcCommandOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"rpcMethod") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"use") _x
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
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"long") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"short") _x
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
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"example") _x
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
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.Text.Encoding.encodeUtf8 _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'alias") _x))
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
                                             Data.Text.Encoding.encodeUtf8 _v))
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'suggestFor") _x))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"deprecated") _x
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
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"version") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                              ((Prelude..)
                                                 (\ bs
                                                    -> (Data.Monoid.<>)
                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                            (Prelude.fromIntegral
                                                               (Data.ByteString.length bs)))
                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                            bs))
                                                 Data.Text.Encoding.encodeUtf8 _v))
                                     ((Data.Monoid.<>)
                                        (Data.Monoid.mconcat
                                           (Prelude.map
                                              (\ _v
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                      ((Prelude..)
                                                         (\ bs
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    (Prelude.fromIntegral
                                                                       (Data.ByteString.length bs)))
                                                                 (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                    bs))
                                                         Data.ProtoLens.encodeMessage
                                                         (Lens.Family2.set
                                                            (Data.ProtoLens.Field.field @"key")
                                                            (Prelude.fst _v)
                                                            (Lens.Family2.set
                                                               (Data.ProtoLens.Field.field @"value")
                                                               (Prelude.snd _v)
                                                               (Data.ProtoLens.defMessage ::
                                                                  RpcCommandOptions'FlagOptionsEntry)))))
                                              (Data.Map.toList
                                                 (Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"flagOptions")
                                                    _x))))
                                        ((Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                              (\ _v
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                      ((Prelude..)
                                                         (\ bs
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    (Prelude.fromIntegral
                                                                       (Data.ByteString.length bs)))
                                                                 (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                    bs))
                                                         Data.ProtoLens.encodeMessage _v))
                                              (Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"vec'positionalArgs")
                                                 _x))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field @"skip") _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (\ b -> if b then 1 else 0) _v))
                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                 (Lens.Family2.view
                                                    Data.ProtoLens.unknownFields _x)))))))))))))
instance Control.DeepSeq.NFData RpcCommandOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RpcCommandOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RpcCommandOptions'rpcMethod x__)
                (Control.DeepSeq.deepseq
                   (_RpcCommandOptions'use x__)
                   (Control.DeepSeq.deepseq
                      (_RpcCommandOptions'long x__)
                      (Control.DeepSeq.deepseq
                         (_RpcCommandOptions'short x__)
                         (Control.DeepSeq.deepseq
                            (_RpcCommandOptions'example x__)
                            (Control.DeepSeq.deepseq
                               (_RpcCommandOptions'alias x__)
                               (Control.DeepSeq.deepseq
                                  (_RpcCommandOptions'suggestFor x__)
                                  (Control.DeepSeq.deepseq
                                     (_RpcCommandOptions'deprecated x__)
                                     (Control.DeepSeq.deepseq
                                        (_RpcCommandOptions'version x__)
                                        (Control.DeepSeq.deepseq
                                           (_RpcCommandOptions'flagOptions x__)
                                           (Control.DeepSeq.deepseq
                                              (_RpcCommandOptions'positionalArgs x__)
                                              (Control.DeepSeq.deepseq
                                                 (_RpcCommandOptions'skip x__) ()))))))))))))
{- | Fields :
     
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.key' @:: Lens' RpcCommandOptions'FlagOptionsEntry Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.value' @:: Lens' RpcCommandOptions'FlagOptionsEntry FlagOptions@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.maybe'value' @:: Lens' RpcCommandOptions'FlagOptionsEntry (Prelude.Maybe FlagOptions)@ -}
data RpcCommandOptions'FlagOptionsEntry
  = RpcCommandOptions'FlagOptionsEntry'_constructor {_RpcCommandOptions'FlagOptionsEntry'key :: !Data.Text.Text,
                                                     _RpcCommandOptions'FlagOptionsEntry'value :: !(Prelude.Maybe FlagOptions),
                                                     _RpcCommandOptions'FlagOptionsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RpcCommandOptions'FlagOptionsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RpcCommandOptions'FlagOptionsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'FlagOptionsEntry'key
           (\ x__ y__ -> x__ {_RpcCommandOptions'FlagOptionsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RpcCommandOptions'FlagOptionsEntry "value" FlagOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'FlagOptionsEntry'value
           (\ x__ y__
              -> x__ {_RpcCommandOptions'FlagOptionsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RpcCommandOptions'FlagOptionsEntry "maybe'value" (Prelude.Maybe FlagOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RpcCommandOptions'FlagOptionsEntry'value
           (\ x__ y__
              -> x__ {_RpcCommandOptions'FlagOptionsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message RpcCommandOptions'FlagOptionsEntry where
  messageName _
    = Data.Text.pack
        "cosmos.autocli.v1.RpcCommandOptions.FlagOptionsEntry"
  packedMessageDescriptor _
    = "\n\
      \\DLEFlagOptionsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC24\n\
      \\ENQvalue\CAN\STX \SOH(\v2\RS.cosmos.autocli.v1.FlagOptionsR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor RpcCommandOptions'FlagOptionsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FlagOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor RpcCommandOptions'FlagOptionsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RpcCommandOptions'FlagOptionsEntry'_unknownFields
        (\ x__ y__
           -> x__ {_RpcCommandOptions'FlagOptionsEntry'_unknownFields = y__})
  defMessage
    = RpcCommandOptions'FlagOptionsEntry'_constructor
        {_RpcCommandOptions'FlagOptionsEntry'key = Data.ProtoLens.fieldDefault,
         _RpcCommandOptions'FlagOptionsEntry'value = Prelude.Nothing,
         _RpcCommandOptions'FlagOptionsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RpcCommandOptions'FlagOptionsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser RpcCommandOptions'FlagOptionsEntry
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
          (do loop Data.ProtoLens.defMessage) "FlagOptionsEntry"
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
instance Control.DeepSeq.NFData RpcCommandOptions'FlagOptionsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RpcCommandOptions'FlagOptionsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RpcCommandOptions'FlagOptionsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_RpcCommandOptions'FlagOptionsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.service' @:: Lens' ServiceCommandDescriptor Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.rpcCommandOptions' @:: Lens' ServiceCommandDescriptor [RpcCommandOptions]@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.vec'rpcCommandOptions' @:: Lens' ServiceCommandDescriptor (Data.Vector.Vector RpcCommandOptions)@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.subCommands' @:: Lens' ServiceCommandDescriptor (Data.Map.Map Data.Text.Text ServiceCommandDescriptor)@ -}
data ServiceCommandDescriptor
  = ServiceCommandDescriptor'_constructor {_ServiceCommandDescriptor'service :: !Data.Text.Text,
                                           _ServiceCommandDescriptor'rpcCommandOptions :: !(Data.Vector.Vector RpcCommandOptions),
                                           _ServiceCommandDescriptor'subCommands :: !(Data.Map.Map Data.Text.Text ServiceCommandDescriptor),
                                           _ServiceCommandDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ServiceCommandDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ServiceCommandDescriptor "service" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServiceCommandDescriptor'service
           (\ x__ y__ -> x__ {_ServiceCommandDescriptor'service = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ServiceCommandDescriptor "rpcCommandOptions" [RpcCommandOptions] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServiceCommandDescriptor'rpcCommandOptions
           (\ x__ y__
              -> x__ {_ServiceCommandDescriptor'rpcCommandOptions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ServiceCommandDescriptor "vec'rpcCommandOptions" (Data.Vector.Vector RpcCommandOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServiceCommandDescriptor'rpcCommandOptions
           (\ x__ y__
              -> x__ {_ServiceCommandDescriptor'rpcCommandOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ServiceCommandDescriptor "subCommands" (Data.Map.Map Data.Text.Text ServiceCommandDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServiceCommandDescriptor'subCommands
           (\ x__ y__ -> x__ {_ServiceCommandDescriptor'subCommands = y__}))
        Prelude.id
instance Data.ProtoLens.Message ServiceCommandDescriptor where
  messageName _
    = Data.Text.pack "cosmos.autocli.v1.ServiceCommandDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\CANServiceCommandDescriptor\DC2\CAN\n\
      \\aservice\CAN\SOH \SOH(\tR\aservice\DC2T\n\
      \\DC3rpc_command_options\CAN\STX \ETX(\v2$.cosmos.autocli.v1.RpcCommandOptionsR\DC1rpcCommandOptions\DC2_\n\
      \\fsub_commands\CAN\ETX \ETX(\v2<.cosmos.autocli.v1.ServiceCommandDescriptor.SubCommandsEntryR\vsubCommands\SUBk\n\
      \\DLESubCommandsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2A\n\
      \\ENQvalue\CAN\STX \SOH(\v2+.cosmos.autocli.v1.ServiceCommandDescriptorR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        service__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"service")) ::
              Data.ProtoLens.FieldDescriptor ServiceCommandDescriptor
        rpcCommandOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rpc_command_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RpcCommandOptions)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"rpcCommandOptions")) ::
              Data.ProtoLens.FieldDescriptor ServiceCommandDescriptor
        subCommands__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sub_commands"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ServiceCommandDescriptor'SubCommandsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"subCommands")) ::
              Data.ProtoLens.FieldDescriptor ServiceCommandDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, service__field_descriptor),
           (Data.ProtoLens.Tag 2, rpcCommandOptions__field_descriptor),
           (Data.ProtoLens.Tag 3, subCommands__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ServiceCommandDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_ServiceCommandDescriptor'_unknownFields = y__})
  defMessage
    = ServiceCommandDescriptor'_constructor
        {_ServiceCommandDescriptor'service = Data.ProtoLens.fieldDefault,
         _ServiceCommandDescriptor'rpcCommandOptions = Data.Vector.Generic.empty,
         _ServiceCommandDescriptor'subCommands = Data.Map.empty,
         _ServiceCommandDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ServiceCommandDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld RpcCommandOptions
             -> Data.ProtoLens.Encoding.Bytes.Parser ServiceCommandDescriptor
        loop x mutable'rpcCommandOptions
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'rpcCommandOptions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'rpcCommandOptions)
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
                              (Data.ProtoLens.Field.field @"vec'rpcCommandOptions")
                              frozen'rpcCommandOptions x))
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
                                       "service"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"service") y x)
                                  mutable'rpcCommandOptions
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "rpc_command_options"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'rpcCommandOptions y)
                                loop x v
                        26
                          -> do !(entry :: ServiceCommandDescriptor'SubCommandsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                           (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                               Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                 (Prelude.fromIntegral
                                                                                                    len)
                                                                                                 Data.ProtoLens.parseMessage)
                                                                                           "sub_commands"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"subCommands")
                                        (\ !t -> Data.Map.insert key value t) x)
                                     mutable'rpcCommandOptions)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'rpcCommandOptions
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'rpcCommandOptions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'rpcCommandOptions)
          "ServiceCommandDescriptor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
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
                      (Data.ProtoLens.Field.field @"vec'rpcCommandOptions") _x))
                ((Data.Monoid.<>)
                   (Data.Monoid.mconcat
                      (Prelude.map
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                                             ServiceCommandDescriptor'SubCommandsEntry)))))
                         (Data.Map.toList
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"subCommands") _x))))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ServiceCommandDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ServiceCommandDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ServiceCommandDescriptor'service x__)
                (Control.DeepSeq.deepseq
                   (_ServiceCommandDescriptor'rpcCommandOptions x__)
                   (Control.DeepSeq.deepseq
                      (_ServiceCommandDescriptor'subCommands x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.key' @:: Lens' ServiceCommandDescriptor'SubCommandsEntry Data.Text.Text@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.value' @:: Lens' ServiceCommandDescriptor'SubCommandsEntry ServiceCommandDescriptor@
         * 'Proto.Cosmos.Autocli.V1.Options_Fields.maybe'value' @:: Lens' ServiceCommandDescriptor'SubCommandsEntry (Prelude.Maybe ServiceCommandDescriptor)@ -}
data ServiceCommandDescriptor'SubCommandsEntry
  = ServiceCommandDescriptor'SubCommandsEntry'_constructor {_ServiceCommandDescriptor'SubCommandsEntry'key :: !Data.Text.Text,
                                                            _ServiceCommandDescriptor'SubCommandsEntry'value :: !(Prelude.Maybe ServiceCommandDescriptor),
                                                            _ServiceCommandDescriptor'SubCommandsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ServiceCommandDescriptor'SubCommandsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ServiceCommandDescriptor'SubCommandsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServiceCommandDescriptor'SubCommandsEntry'key
           (\ x__ y__
              -> x__ {_ServiceCommandDescriptor'SubCommandsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ServiceCommandDescriptor'SubCommandsEntry "value" ServiceCommandDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServiceCommandDescriptor'SubCommandsEntry'value
           (\ x__ y__
              -> x__ {_ServiceCommandDescriptor'SubCommandsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ServiceCommandDescriptor'SubCommandsEntry "maybe'value" (Prelude.Maybe ServiceCommandDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ServiceCommandDescriptor'SubCommandsEntry'value
           (\ x__ y__
              -> x__ {_ServiceCommandDescriptor'SubCommandsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message ServiceCommandDescriptor'SubCommandsEntry where
  messageName _
    = Data.Text.pack
        "cosmos.autocli.v1.ServiceCommandDescriptor.SubCommandsEntry"
  packedMessageDescriptor _
    = "\n\
      \\DLESubCommandsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2A\n\
      \\ENQvalue\CAN\STX \SOH(\v2+.cosmos.autocli.v1.ServiceCommandDescriptorR\ENQvalue:\STX8\SOH"
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
              Data.ProtoLens.FieldDescriptor ServiceCommandDescriptor'SubCommandsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ServiceCommandDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor ServiceCommandDescriptor'SubCommandsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ServiceCommandDescriptor'SubCommandsEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_ServiceCommandDescriptor'SubCommandsEntry'_unknownFields = y__})
  defMessage
    = ServiceCommandDescriptor'SubCommandsEntry'_constructor
        {_ServiceCommandDescriptor'SubCommandsEntry'key = Data.ProtoLens.fieldDefault,
         _ServiceCommandDescriptor'SubCommandsEntry'value = Prelude.Nothing,
         _ServiceCommandDescriptor'SubCommandsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ServiceCommandDescriptor'SubCommandsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser ServiceCommandDescriptor'SubCommandsEntry
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
          (do loop Data.ProtoLens.defMessage) "SubCommandsEntry"
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
instance Control.DeepSeq.NFData ServiceCommandDescriptor'SubCommandsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ServiceCommandDescriptor'SubCommandsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ServiceCommandDescriptor'SubCommandsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_ServiceCommandDescriptor'SubCommandsEntry'value x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\UScosmos/autocli/v1/options.proto\DC2\DC1cosmos.autocli.v1\"\143\SOH\n\
    \\rModuleOptions\DC2;\n\
    \\STXtx\CAN\SOH \SOH(\v2+.cosmos.autocli.v1.ServiceCommandDescriptorR\STXtx\DC2A\n\
    \\ENQquery\CAN\STX \SOH(\v2+.cosmos.autocli.v1.ServiceCommandDescriptorR\ENQquery\"\216\STX\n\
    \\CANServiceCommandDescriptor\DC2\CAN\n\
    \\aservice\CAN\SOH \SOH(\tR\aservice\DC2T\n\
    \\DC3rpc_command_options\CAN\STX \ETX(\v2$.cosmos.autocli.v1.RpcCommandOptionsR\DC1rpcCommandOptions\DC2_\n\
    \\fsub_commands\CAN\ETX \ETX(\v2<.cosmos.autocli.v1.ServiceCommandDescriptor.SubCommandsEntryR\vsubCommands\SUBk\n\
    \\DLESubCommandsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2A\n\
    \\ENQvalue\CAN\STX \SOH(\v2+.cosmos.autocli.v1.ServiceCommandDescriptorR\ENQvalue:\STX8\SOH\"\156\EOT\n\
    \\DC1RpcCommandOptions\DC2\GS\n\
    \\n\
    \rpc_method\CAN\SOH \SOH(\tR\trpcMethod\DC2\DLE\n\
    \\ETXuse\CAN\STX \SOH(\tR\ETXuse\DC2\DC2\n\
    \\EOTlong\CAN\ETX \SOH(\tR\EOTlong\DC2\DC4\n\
    \\ENQshort\CAN\EOT \SOH(\tR\ENQshort\DC2\CAN\n\
    \\aexample\CAN\ENQ \SOH(\tR\aexample\DC2\DC4\n\
    \\ENQalias\CAN\ACK \ETX(\tR\ENQalias\DC2\US\n\
    \\vsuggest_for\CAN\a \ETX(\tR\n\
    \suggestFor\DC2\RS\n\
    \\n\
    \deprecated\CAN\b \SOH(\tR\n\
    \deprecated\DC2\CAN\n\
    \\aversion\CAN\t \SOH(\tR\aversion\DC2X\n\
    \\fflag_options\CAN\n\
    \ \ETX(\v25.cosmos.autocli.v1.RpcCommandOptions.FlagOptionsEntryR\vflagOptions\DC2S\n\
    \\SIpositional_args\CAN\v \ETX(\v2*.cosmos.autocli.v1.PositionalArgDescriptorR\SOpositionalArgs\DC2\DC2\n\
    \\EOTskip\CAN\f \SOH(\bR\EOTskip\SUB^\n\
    \\DLEFlagOptionsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC24\n\
    \\ENQvalue\CAN\STX \SOH(\v2\RS.cosmos.autocli.v1.FlagOptionsR\ENQvalue:\STX8\SOH\"\229\SOH\n\
    \\vFlagOptions\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\FS\n\
    \\tshorthand\CAN\STX \SOH(\tR\tshorthand\DC2\DC4\n\
    \\ENQusage\CAN\ETX \SOH(\tR\ENQusage\DC2#\n\
    \\rdefault_value\CAN\EOT \SOH(\tR\fdefaultValue\DC2\RS\n\
    \\n\
    \deprecated\CAN\ACK \SOH(\tR\n\
    \deprecated\DC21\n\
    \\DC4shorthand_deprecated\CAN\a \SOH(\tR\DC3shorthandDeprecated\DC2\SYN\n\
    \\ACKhidden\CAN\b \SOH(\bR\ACKhidden\"T\n\
    \\ETBPositionalArgDescriptor\DC2\US\n\
    \\vproto_field\CAN\SOH \SOH(\tR\n\
    \protoField\DC2\CAN\n\
    \\avarargs\CAN\STX \SOH(\bR\avarargsB+Z)cosmossdk.io/api/cosmos/base/cli/v1;cliv1J\248'\n\
    \\ACK\DC2\EOT\NUL\NUL{\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SUB\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EOT\NUL@\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\EOT\NUL@\n\
    \N\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\r\SOH\SUBB ModuleOptions describes the CLI options for a Cosmos SDK module.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\NAK\n\
    \;\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\t\STX\"\SUB. tx describes the tx commands for the module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\t\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\t\ESC\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\t !\n\
    \C\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\f\STX%\SUB6 query describes the queries commands for the module.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\f\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\f\ESC \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\f#$\n\
    \[\n\
    \\STX\EOT\SOH\DC2\EOT\DLE\NUL \SOH\SUBO ServiceCommandDescriptor describes a CLI command based on a protobuf service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DLE\b \n\
    \\236\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\NAK\STX\NAK\SUB\222\SOH service is the fully qualified name of the protobuf service to build\n\
    \ the command from. It can be left empty if sub_commands are used instead\n\
    \ which may be the case if a module provides multiple tx and/or query services.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\NAK\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\NAK\DC3\DC4\n\
    \\227\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SUB\STX5\SUB\213\SOH rpc_command_options are options for commands generated from rpc methods.\n\
    \ If no options are specified for a given rpc method on the service, a\n\
    \ command will be generated for that method with the default options.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\SUB\v\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SUB\GS0\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SUB34\n\
    \\171\SOH\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\US\STX9\SUB\157\SOH sub_commands is a map of optional sub-commands for this command based on\n\
    \ different protobuf services. The map key is used as the name of the\n\
    \ sub-command.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX\US\STX'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\US(4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\US78\n\
    \d\n\
    \\STX\EOT\STX\DC2\EOT$\NULS\SOH\SUBX RpcCommandOptions specifies options for commands generated from protobuf\n\
    \ rpc methods.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX$\b\EM\n\
    \h\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX'\STX\CAN\SUB[ rpc_method is short name of the protobuf rpc method that this command is\n\
    \ generated from.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX'\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX'\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX'\SYN\ETB\n\
    \\236\SOH\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX.\STX\DC1\SUB\222\SOH use is the one-line usage method. It also allows specifying an alternate\n\
    \ name for the command as the first word of the usage text.\n\
    \\n\
    \ By default the name of an rpc command is the kebab-case short name of the\n\
    \ rpc method.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX.\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX.\t\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX.\SI\DLE\n\
    \R\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX1\STX\DC2\SUBE long is the long message shown in the 'help <this-command>' output.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX1\t\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX1\DLE\DC1\n\
    \I\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX4\STX\DC3\SUB< short is the short description shown in the 'help' output.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX4\t\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX4\DC1\DC2\n\
    \=\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX7\STX\NAK\SUB0 example is examples of how to use the command.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX7\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX7\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX7\DC3\DC4\n\
    \^\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETX:\STX\FS\SUBQ alias is an array of aliases that can be used instead of the first word in Use.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETX:\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETX:\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETX:\SUB\ESC\n\
    \\137\SOH\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETX>\STX\"\SUB| suggest_for is an array of command names for which this command will be suggested -\n\
    \ similar to aliases but only suggests.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\EOT\DC2\ETX>\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ENQ\DC2\ETX>\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETX>\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETX> !\n\
    \h\n\
    \\EOT\EOT\STX\STX\a\DC2\ETXA\STX\CAN\SUB[ deprecated defines, if this command is deprecated and should print this string when used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ENQ\DC2\ETXA\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\ETXA\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\ETXA\SYN\ETB\n\
    \\208\STX\n\
    \\EOT\EOT\STX\STX\b\DC2\ETXG\STX\NAK\SUB\194\STX version defines the version for this command. If this value is non-empty and the command does not\n\
    \ define a \"version\" flag, a \"version\" boolean flag will be added to the command and, if specified,\n\
    \ will print content of the \"Version\" variable. A shorthand \"v\" flag will also be added if the\n\
    \ command does not define one.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\ENQ\DC2\ETXG\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\SOH\DC2\ETXG\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\ETX\DC2\ETXG\DC3\DC4\n\
    \\220\SOH\n\
    \\EOT\EOT\STX\STX\t\DC2\ETXL\STX-\SUB\206\SOH flag_options are options for flags generated from rpc request fields.\n\
    \ By default all request fields are configured as flags. They can\n\
    \ also be configured as positional args instead using positional_args.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\ACK\DC2\ETXL\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\SOH\DC2\ETXL\ESC'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\ETX\DC2\ETXL*,\n\
    \N\n\
    \\EOT\EOT\STX\STX\n\
    \\DC2\ETXO\STX8\SUBA positional_args specifies positional arguments for the command.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\ACK\DC2\ETXO\v\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\SOH\DC2\ETXO#2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\ETX\DC2\ETXO57\n\
    \W\n\
    \\EOT\EOT\STX\STX\v\DC2\ETXR\STX\DC1\SUBJ skip specifies whether to skip this rpc method when generating commands.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\ENQ\DC2\ETXR\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\SOH\DC2\ETXR\a\v\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\ETX\DC2\ETXR\SO\DLE\n\
    \\155\STX\n\
    \\STX\EOT\ETX\DC2\EOTY\NULo\SOH\SUB\142\STX FlagOptions are options for flags generated from rpc request fields.\n\
    \ By default, all request fields are configured as flags based on the\n\
    \ kebab-case name of the field. Fields can be turned into positional arguments\n\
    \ instead by using RpcCommandOptions.positional_args.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXY\b\DC3\n\
    \C\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\\\STX\DC2\SUB6 name is an alternate name to use for the field flag.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\\\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\\\t\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\\\DLE\DC1\n\
    \:\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX_\STX\ETB\SUB- shorthand is a one-letter abbreviated flag.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX_\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX_\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX_\NAK\SYN\n\
    \)\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXb\STX\DC3\SUB\FS usage is the help message.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETXb\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXb\t\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXb\DC1\DC2\n\
    \:\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETXe\STX\ESC\SUB- default_value is the default value as text.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETXe\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETXe\t\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETXe\EM\SUB\n\
    \O\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETXh\STX\CAN\SUBB deprecated is the usage text to show if this flag is deprecated.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETXh\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETXh\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETXh\SYN\ETB\n\
    \j\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETXk\STX\"\SUB] shorthand_deprecated is the usage text to show if the shorthand of this flag is deprecated.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\ETXk\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETXk\t\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETXk !\n\
    \9\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\ETXn\STX\DC2\SUB, hidden hides the flag from help/usage text\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ENQ\DC2\ETXn\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\ETXn\a\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\ETXn\DLE\DC1\n\
    \F\n\
    \\STX\EOT\EOT\DC2\EOTr\NUL{\SOH\SUB: PositionalArgDescriptor describes a positional argument.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXr\b\US\n\
    \\151\SOH\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXu\STX\EM\SUB\137\SOH proto_field specifies the proto field to use as the positional arg. Any\n\
    \ fields used as positional args will not have a flag generated.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXu\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXu\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXu\ETB\CAN\n\
    \\172\SOH\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXz\STX\DC3\SUB\158\SOH varargs makes a positional parameter a varargs parameter. This can only be\n\
    \ applied to last positional parameter and the proto_field must a repeated\n\
    \ field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXz\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXz\a\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXz\DC1\DC2b\ACKproto3"