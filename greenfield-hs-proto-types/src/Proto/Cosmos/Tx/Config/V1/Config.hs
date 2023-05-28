{- This file was auto-generated from cosmos/tx/config/v1/config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Tx.Config.V1.Config (
        Config()
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
import qualified Proto.Cosmos.App.V1alpha1.Module
{- | Fields :
     
         * 'Proto.Cosmos.Tx.Config.V1.Config_Fields.skipAnteHandler' @:: Lens' Config Prelude.Bool@
         * 'Proto.Cosmos.Tx.Config.V1.Config_Fields.skipPostHandler' @:: Lens' Config Prelude.Bool@ -}
data Config
  = Config'_constructor {_Config'skipAnteHandler :: !Prelude.Bool,
                         _Config'skipPostHandler :: !Prelude.Bool,
                         _Config'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Config where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Config "skipAnteHandler" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'skipAnteHandler
           (\ x__ y__ -> x__ {_Config'skipAnteHandler = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Config "skipPostHandler" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'skipPostHandler
           (\ x__ y__ -> x__ {_Config'skipPostHandler = y__}))
        Prelude.id
instance Data.ProtoLens.Message Config where
  messageName _ = Data.Text.pack "cosmos.tx.config.v1.Config"
  packedMessageDescriptor _
    = "\n\
      \\ACKConfig\DC2*\n\
      \\DC1skip_ante_handler\CAN\SOH \SOH(\bR\SIskipAnteHandler\DC2*\n\
      \\DC1skip_post_handler\CAN\STX \SOH(\bR\SIskipPostHandler:.\186\192\150\218\SOH(\n\
      \&github.com/cosmos/cosmos-sdk/x/auth/tx"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        skipAnteHandler__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "skip_ante_handler"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"skipAnteHandler")) ::
              Data.ProtoLens.FieldDescriptor Config
        skipPostHandler__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "skip_post_handler"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"skipPostHandler")) ::
              Data.ProtoLens.FieldDescriptor Config
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, skipAnteHandler__field_descriptor),
           (Data.ProtoLens.Tag 2, skipPostHandler__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Config'_unknownFields
        (\ x__ y__ -> x__ {_Config'_unknownFields = y__})
  defMessage
    = Config'_constructor
        {_Config'skipAnteHandler = Data.ProtoLens.fieldDefault,
         _Config'skipPostHandler = Data.ProtoLens.fieldDefault,
         _Config'_unknownFields = []}
  parseMessage
    = let
        loop :: Config -> Data.ProtoLens.Encoding.Bytes.Parser Config
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
                                       "skip_ante_handler"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"skipAnteHandler") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "skip_post_handler"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"skipPostHandler") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Config"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"skipAnteHandler") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"skipPostHandler") _x
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
instance Control.DeepSeq.NFData Config where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Config'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Config'skipAnteHandler x__)
                (Control.DeepSeq.deepseq (_Config'skipPostHandler x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ cosmos/tx/config/v1/config.proto\DC2\DC3cosmos.tx.config.v1\SUB cosmos/app/v1alpha1/module.proto\"\144\SOH\n\
    \\ACKConfig\DC2*\n\
    \\DC1skip_ante_handler\CAN\SOH \SOH(\bR\SIskipAnteHandler\DC2*\n\
    \\DC1skip_post_handler\CAN\STX \SOH(\bR\SIskipPostHandler:.\186\192\150\218\SOH(\n\
    \&github.com/cosmos/cosmos-sdk/x/auth/txJ\158\EOT\n\
    \\ACK\DC2\EOT\NUL\NUL\DC3\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\FS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \C\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\DC3\SOH\SUB7 Config is the config object of the x/auth/tx package.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\SO\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\b\STX\n\
    \\EOT\n\
    \\SI\n\
    \\a\EOT\NUL\a\135\232\162\ESC\DC2\EOT\b\STX\n\
    \\EOT\n\
    \\151\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SO\STX\GS\SUB\137\SOH skip_ante_handler defines whether the ante handler registration should be skipped in case an app wants to override\n\
    \ this functionality.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SO\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SO\a\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SO\ESC\FS\n\
    \\151\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC2\STX\GS\SUB\137\SOH skip_post_handler defines whether the post handler registration should be skipped in case an app wants to override\n\
    \ this functionality.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\DC2\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC2\a\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC2\ESC\FSb\ACKproto3"