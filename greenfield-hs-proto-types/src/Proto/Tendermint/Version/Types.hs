{- This file was auto-generated from tendermint/version/types.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Tendermint.Version.Types (
        App(), Consensus()
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
import qualified Proto.Gogoproto.Gogo
{- | Fields :
     
         * 'Proto.Tendermint.Version.Types_Fields.protocol' @:: Lens' App Data.Word.Word64@
         * 'Proto.Tendermint.Version.Types_Fields.software' @:: Lens' App Data.Text.Text@ -}
data App
  = App'_constructor {_App'protocol :: !Data.Word.Word64,
                      _App'software :: !Data.Text.Text,
                      _App'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show App where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField App "protocol" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _App'protocol (\ x__ y__ -> x__ {_App'protocol = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField App "software" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _App'software (\ x__ y__ -> x__ {_App'software = y__}))
        Prelude.id
instance Data.ProtoLens.Message App where
  messageName _ = Data.Text.pack "tendermint.version.App"
  packedMessageDescriptor _
    = "\n\
      \\ETXApp\DC2\SUB\n\
      \\bprotocol\CAN\SOH \SOH(\EOTR\bprotocol\DC2\SUB\n\
      \\bsoftware\CAN\STX \SOH(\tR\bsoftware"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        protocol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"protocol")) ::
              Data.ProtoLens.FieldDescriptor App
        software__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "software"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"software")) ::
              Data.ProtoLens.FieldDescriptor App
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, protocol__field_descriptor),
           (Data.ProtoLens.Tag 2, software__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _App'_unknownFields (\ x__ y__ -> x__ {_App'_unknownFields = y__})
  defMessage
    = App'_constructor
        {_App'protocol = Data.ProtoLens.fieldDefault,
         _App'software = Data.ProtoLens.fieldDefault,
         _App'_unknownFields = []}
  parseMessage
    = let
        loop :: App -> Data.ProtoLens.Encoding.Bytes.Parser App
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "protocol"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"protocol") y x)
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
                                       "software"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"software") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "App"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"protocol") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"software") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData App where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_App'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_App'protocol x__)
                (Control.DeepSeq.deepseq (_App'software x__) ()))
{- | Fields :
     
         * 'Proto.Tendermint.Version.Types_Fields.block' @:: Lens' Consensus Data.Word.Word64@
         * 'Proto.Tendermint.Version.Types_Fields.app' @:: Lens' Consensus Data.Word.Word64@ -}
data Consensus
  = Consensus'_constructor {_Consensus'block :: !Data.Word.Word64,
                            _Consensus'app :: !Data.Word.Word64,
                            _Consensus'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Consensus where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Consensus "block" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Consensus'block (\ x__ y__ -> x__ {_Consensus'block = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Consensus "app" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Consensus'app (\ x__ y__ -> x__ {_Consensus'app = y__}))
        Prelude.id
instance Data.ProtoLens.Message Consensus where
  messageName _ = Data.Text.pack "tendermint.version.Consensus"
  packedMessageDescriptor _
    = "\n\
      \\tConsensus\DC2\DC4\n\
      \\ENQblock\CAN\SOH \SOH(\EOTR\ENQblock\DC2\DLE\n\
      \\ETXapp\CAN\STX \SOH(\EOTR\ETXapp:\EOT\232\160\US\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        block__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"block")) ::
              Data.ProtoLens.FieldDescriptor Consensus
        app__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "app"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"app")) ::
              Data.ProtoLens.FieldDescriptor Consensus
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, block__field_descriptor),
           (Data.ProtoLens.Tag 2, app__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Consensus'_unknownFields
        (\ x__ y__ -> x__ {_Consensus'_unknownFields = y__})
  defMessage
    = Consensus'_constructor
        {_Consensus'block = Data.ProtoLens.fieldDefault,
         _Consensus'app = Data.ProtoLens.fieldDefault,
         _Consensus'_unknownFields = []}
  parseMessage
    = let
        loop :: Consensus -> Data.ProtoLens.Encoding.Bytes.Parser Consensus
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "block"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"block") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "app"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"app") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Consensus"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"block") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"app") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Consensus where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Consensus'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Consensus'block x__)
                (Control.DeepSeq.deepseq (_Consensus'app x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\RStendermint/version/types.proto\DC2\DC2tendermint.version\SUB\DC4gogoproto/gogo.proto\"=\n\
    \\ETXApp\DC2\SUB\n\
    \\bprotocol\CAN\SOH \SOH(\EOTR\bprotocol\DC2\SUB\n\
    \\bsoftware\CAN\STX \SOH(\tR\bsoftware\"9\n\
    \\tConsensus\DC2\DC4\n\
    \\ENQblock\CAN\SOH \SOH(\EOTR\ENQblock\DC2\DLE\n\
    \\ETXapp\CAN\STX \SOH(\EOTR\ETXapp:\EOT\232\160\US\SOHB7Z5github.com/cometbft/cometbft/proto/tendermint/versionJ\207\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\ETB\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NULL\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NULL\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL\RS\n\
    \\183\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\n\
    \\NUL\r\SOH\SUB\170\SOH App includes the protocol and software version for the application.\n\
    \ This information is included in ResponseInfo. The App.Protocol can be\n\
    \ updated in ResponseEndBlock.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\n\
    \\b\v\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\v\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\v\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\v\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\v\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\f\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\f\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\f\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\f\DC4\NAK\n\
    \\199\SOH\n\
    \\STX\EOT\SOH\DC2\EOT\DC2\NUL\ETB\SOH\SUB\186\SOH Consensus captures the consensus rules for processing a block in the blockchain,\n\
    \ including all blockchain data structures and the rules of the application's\n\
    \ state transition machine.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC2\b\DC1\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX\DC3\STX\"\n\
    \\r\n\
    \\ACK\EOT\SOH\a\141\244\ETX\DC2\ETX\DC3\STX\"\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\NAK\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\NAK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\NAK\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\NAK\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SYN\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\SYN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SYN\t\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SYN\DC1\DC2b\ACKproto3"