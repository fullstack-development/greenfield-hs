{- This file was auto-generated from cosmos/authz/v1beta1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Authz.V1beta1.Tx (
        Msg(..), MsgExec(), MsgExecResponse(), MsgGrant(),
        MsgGrantResponse(), MsgRevoke(), MsgRevokeResponse()
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
import qualified Proto.Cosmos.Msg.V1.Msg
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Tx_Fields.grantee' @:: Lens' MsgExec Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Tx_Fields.msgs' @:: Lens' MsgExec [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Authz.V1beta1.Tx_Fields.vec'msgs' @:: Lens' MsgExec (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@ -}
data MsgExec
  = MsgExec'_constructor {_MsgExec'grantee :: !Data.Text.Text,
                          _MsgExec'msgs :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                          _MsgExec'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgExec where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgExec "grantee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgExec'grantee (\ x__ y__ -> x__ {_MsgExec'grantee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgExec "msgs" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgExec'msgs (\ x__ y__ -> x__ {_MsgExec'msgs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgExec "vec'msgs" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgExec'msgs (\ x__ y__ -> x__ {_MsgExec'msgs = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgExec where
  messageName _ = Data.Text.pack "cosmos.authz.v1beta1.MsgExec"
  packedMessageDescriptor _
    = "\n\
      \\aMsgExec\DC22\n\
      \\agrantee\CAN\SOH \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2E\n\
      \\EOTmsgs\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\EOTmsgsB\ESC\202\180-\ETBcosmos.base.v1beta1.Msg:#\130\231\176*\agrantee\138\231\176*\DC2cosmos-sdk/MsgExec"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        grantee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grantee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"grantee")) ::
              Data.ProtoLens.FieldDescriptor MsgExec
        msgs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msgs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"msgs")) ::
              Data.ProtoLens.FieldDescriptor MsgExec
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, grantee__field_descriptor),
           (Data.ProtoLens.Tag 2, msgs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgExec'_unknownFields
        (\ x__ y__ -> x__ {_MsgExec'_unknownFields = y__})
  defMessage
    = MsgExec'_constructor
        {_MsgExec'grantee = Data.ProtoLens.fieldDefault,
         _MsgExec'msgs = Data.Vector.Generic.empty,
         _MsgExec'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgExec
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgExec
        loop x mutable'msgs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'msgs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'msgs)
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
                              (Data.ProtoLens.Field.field @"vec'msgs") frozen'msgs x))
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
                                       "grantee"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"grantee") y x)
                                  mutable'msgs
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "msgs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'msgs y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'msgs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'msgs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'msgs)
          "MsgExec"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"grantee") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'msgs") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MsgExec where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgExec'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgExec'grantee x__)
                (Control.DeepSeq.deepseq (_MsgExec'msgs x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Tx_Fields.results' @:: Lens' MsgExecResponse [Data.ByteString.ByteString]@
         * 'Proto.Cosmos.Authz.V1beta1.Tx_Fields.vec'results' @:: Lens' MsgExecResponse (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data MsgExecResponse
  = MsgExecResponse'_constructor {_MsgExecResponse'results :: !(Data.Vector.Vector Data.ByteString.ByteString),
                                  _MsgExecResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgExecResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgExecResponse "results" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgExecResponse'results
           (\ x__ y__ -> x__ {_MsgExecResponse'results = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField MsgExecResponse "vec'results" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgExecResponse'results
           (\ x__ y__ -> x__ {_MsgExecResponse'results = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgExecResponse where
  messageName _
    = Data.Text.pack "cosmos.authz.v1beta1.MsgExecResponse"
  packedMessageDescriptor _
    = "\n\
      \\SIMsgExecResponse\DC2\CAN\n\
      \\aresults\CAN\SOH \ETX(\fR\aresults"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        results__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "results"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"results")) ::
              Data.ProtoLens.FieldDescriptor MsgExecResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, results__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgExecResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgExecResponse'_unknownFields = y__})
  defMessage
    = MsgExecResponse'_constructor
        {_MsgExecResponse'results = Data.Vector.Generic.empty,
         _MsgExecResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgExecResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser MsgExecResponse
        loop x mutable'results
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'results <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'results)
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
                              (Data.ProtoLens.Field.field @"vec'results") frozen'results x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "results"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'results y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'results
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'results <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'results)
          "MsgExecResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'results") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MsgExecResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgExecResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MsgExecResponse'results x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Tx_Fields.granter' @:: Lens' MsgGrant Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Tx_Fields.grantee' @:: Lens' MsgGrant Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Tx_Fields.grant' @:: Lens' MsgGrant Proto.Cosmos.Authz.V1beta1.Authz.Grant@
         * 'Proto.Cosmos.Authz.V1beta1.Tx_Fields.maybe'grant' @:: Lens' MsgGrant (Prelude.Maybe Proto.Cosmos.Authz.V1beta1.Authz.Grant)@ -}
data MsgGrant
  = MsgGrant'_constructor {_MsgGrant'granter :: !Data.Text.Text,
                           _MsgGrant'grantee :: !Data.Text.Text,
                           _MsgGrant'grant :: !(Prelude.Maybe Proto.Cosmos.Authz.V1beta1.Authz.Grant),
                           _MsgGrant'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgGrant where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgGrant "granter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgGrant'granter (\ x__ y__ -> x__ {_MsgGrant'granter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgGrant "grantee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgGrant'grantee (\ x__ y__ -> x__ {_MsgGrant'grantee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgGrant "grant" Proto.Cosmos.Authz.V1beta1.Authz.Grant where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgGrant'grant (\ x__ y__ -> x__ {_MsgGrant'grant = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MsgGrant "maybe'grant" (Prelude.Maybe Proto.Cosmos.Authz.V1beta1.Authz.Grant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgGrant'grant (\ x__ y__ -> x__ {_MsgGrant'grant = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgGrant where
  messageName _ = Data.Text.pack "cosmos.authz.v1beta1.MsgGrant"
  packedMessageDescriptor _
    = "\n\
      \\bMsgGrant\DC22\n\
      \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
      \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2<\n\
      \\ENQgrant\CAN\ETX \SOH(\v2\ESC.cosmos.authz.v1beta1.GrantR\ENQgrantB\t\200\222\US\NUL\168\231\176*\SOH:$\130\231\176*\agranter\138\231\176*\DC3cosmos-sdk/MsgGrant"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        granter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "granter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"granter")) ::
              Data.ProtoLens.FieldDescriptor MsgGrant
        grantee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grantee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"grantee")) ::
              Data.ProtoLens.FieldDescriptor MsgGrant
        grant__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grant"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Authz.V1beta1.Authz.Grant)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'grant")) ::
              Data.ProtoLens.FieldDescriptor MsgGrant
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, granter__field_descriptor),
           (Data.ProtoLens.Tag 2, grantee__field_descriptor),
           (Data.ProtoLens.Tag 3, grant__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgGrant'_unknownFields
        (\ x__ y__ -> x__ {_MsgGrant'_unknownFields = y__})
  defMessage
    = MsgGrant'_constructor
        {_MsgGrant'granter = Data.ProtoLens.fieldDefault,
         _MsgGrant'grantee = Data.ProtoLens.fieldDefault,
         _MsgGrant'grant = Prelude.Nothing, _MsgGrant'_unknownFields = []}
  parseMessage
    = let
        loop :: MsgGrant -> Data.ProtoLens.Encoding.Bytes.Parser MsgGrant
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
                                       "granter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"granter") y x)
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
                                       "grantee"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"grantee") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "grant"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"grant") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgGrant"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"granter") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"grantee") _x
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
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'grant") _x
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
instance Control.DeepSeq.NFData MsgGrant where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgGrant'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgGrant'granter x__)
                (Control.DeepSeq.deepseq
                   (_MsgGrant'grantee x__)
                   (Control.DeepSeq.deepseq (_MsgGrant'grant x__) ())))
{- | Fields :
      -}
data MsgGrantResponse
  = MsgGrantResponse'_constructor {_MsgGrantResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgGrantResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgGrantResponse where
  messageName _
    = Data.Text.pack "cosmos.authz.v1beta1.MsgGrantResponse"
  packedMessageDescriptor _
    = "\n\
      \\DLEMsgGrantResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgGrantResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgGrantResponse'_unknownFields = y__})
  defMessage
    = MsgGrantResponse'_constructor
        {_MsgGrantResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgGrantResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgGrantResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgGrantResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgGrantResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgGrantResponse'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Cosmos.Authz.V1beta1.Tx_Fields.granter' @:: Lens' MsgRevoke Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Tx_Fields.grantee' @:: Lens' MsgRevoke Data.Text.Text@
         * 'Proto.Cosmos.Authz.V1beta1.Tx_Fields.msgTypeUrl' @:: Lens' MsgRevoke Data.Text.Text@ -}
data MsgRevoke
  = MsgRevoke'_constructor {_MsgRevoke'granter :: !Data.Text.Text,
                            _MsgRevoke'grantee :: !Data.Text.Text,
                            _MsgRevoke'msgTypeUrl :: !Data.Text.Text,
                            _MsgRevoke'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgRevoke where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MsgRevoke "granter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgRevoke'granter (\ x__ y__ -> x__ {_MsgRevoke'granter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgRevoke "grantee" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgRevoke'grantee (\ x__ y__ -> x__ {_MsgRevoke'grantee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MsgRevoke "msgTypeUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MsgRevoke'msgTypeUrl
           (\ x__ y__ -> x__ {_MsgRevoke'msgTypeUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Message MsgRevoke where
  messageName _ = Data.Text.pack "cosmos.authz.v1beta1.MsgRevoke"
  packedMessageDescriptor _
    = "\n\
      \\tMsgRevoke\DC22\n\
      \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
      \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2 \n\
      \\fmsg_type_url\CAN\ETX \SOH(\tR\n\
      \msgTypeUrl:%\130\231\176*\agranter\138\231\176*\DC4cosmos-sdk/MsgRevoke"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        granter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "granter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"granter")) ::
              Data.ProtoLens.FieldDescriptor MsgRevoke
        grantee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grantee"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"grantee")) ::
              Data.ProtoLens.FieldDescriptor MsgRevoke
        msgTypeUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "msg_type_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"msgTypeUrl")) ::
              Data.ProtoLens.FieldDescriptor MsgRevoke
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, granter__field_descriptor),
           (Data.ProtoLens.Tag 2, grantee__field_descriptor),
           (Data.ProtoLens.Tag 3, msgTypeUrl__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgRevoke'_unknownFields
        (\ x__ y__ -> x__ {_MsgRevoke'_unknownFields = y__})
  defMessage
    = MsgRevoke'_constructor
        {_MsgRevoke'granter = Data.ProtoLens.fieldDefault,
         _MsgRevoke'grantee = Data.ProtoLens.fieldDefault,
         _MsgRevoke'msgTypeUrl = Data.ProtoLens.fieldDefault,
         _MsgRevoke'_unknownFields = []}
  parseMessage
    = let
        loop :: MsgRevoke -> Data.ProtoLens.Encoding.Bytes.Parser MsgRevoke
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
                                       "granter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"granter") y x)
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
                                       "grantee"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"grantee") y x)
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
                                       "msg_type_url"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"msgTypeUrl") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MsgRevoke"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"granter") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"grantee") _x
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
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"msgTypeUrl") _x
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
instance Control.DeepSeq.NFData MsgRevoke where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgRevoke'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MsgRevoke'granter x__)
                (Control.DeepSeq.deepseq
                   (_MsgRevoke'grantee x__)
                   (Control.DeepSeq.deepseq (_MsgRevoke'msgTypeUrl x__) ())))
{- | Fields :
      -}
data MsgRevokeResponse
  = MsgRevokeResponse'_constructor {_MsgRevokeResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MsgRevokeResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MsgRevokeResponse where
  messageName _
    = Data.Text.pack "cosmos.authz.v1beta1.MsgRevokeResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC1MsgRevokeResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MsgRevokeResponse'_unknownFields
        (\ x__ y__ -> x__ {_MsgRevokeResponse'_unknownFields = y__})
  defMessage
    = MsgRevokeResponse'_constructor
        {_MsgRevokeResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MsgRevokeResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser MsgRevokeResponse
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
          (do loop Data.ProtoLens.defMessage) "MsgRevokeResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData MsgRevokeResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MsgRevokeResponse'_unknownFields x__) ()
data Msg = Msg {}
instance Data.ProtoLens.Service.Types.Service Msg where
  type ServiceName Msg = "Msg"
  type ServicePackage Msg = "cosmos.authz.v1beta1"
  type ServiceMethods Msg = '["exec", "grant", "revoke"]
  packedServiceDescriptor _
    = "\n\
      \\ETXMsg\DC2O\n\
      \\ENQGrant\DC2\RS.cosmos.authz.v1beta1.MsgGrant\SUB&.cosmos.authz.v1beta1.MsgGrantResponse\DC2L\n\
      \\EOTExec\DC2\GS.cosmos.authz.v1beta1.MsgExec\SUB%.cosmos.authz.v1beta1.MsgExecResponse\DC2R\n\
      \\ACKRevoke\DC2\US.cosmos.authz.v1beta1.MsgRevoke\SUB'.cosmos.authz.v1beta1.MsgRevokeResponse\SUB\ENQ\128\231\176*\SOH"
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "grant" where
  type MethodName Msg "grant" = "Grant"
  type MethodInput Msg "grant" = MsgGrant
  type MethodOutput Msg "grant" = MsgGrantResponse
  type MethodStreamingType Msg "grant" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "exec" where
  type MethodName Msg "exec" = "Exec"
  type MethodInput Msg "exec" = MsgExec
  type MethodOutput Msg "exec" = MsgExecResponse
  type MethodStreamingType Msg "exec" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Msg "revoke" where
  type MethodName Msg "revoke" = "Revoke"
  type MethodInput Msg "revoke" = MsgRevoke
  type MethodOutput Msg "revoke" = MsgRevokeResponse
  type MethodStreamingType Msg "revoke" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\GScosmos/authz/v1beta1/tx.proto\DC2\DC4cosmos.authz.v1beta1\SUB\EMcosmos_proto/cosmos.proto\SUB\DC4gogoproto/gogo.proto\SUB\EMgoogle/protobuf/any.proto\SUB cosmos/authz/v1beta1/authz.proto\SUB\ETBcosmos/msg/v1/msg.proto\SUB\DC1amino/amino.proto\"\214\SOH\n\
    \\bMsgGrant\DC22\n\
    \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
    \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2<\n\
    \\ENQgrant\CAN\ETX \SOH(\v2\ESC.cosmos.authz.v1beta1.GrantR\ENQgrantB\t\200\222\US\NUL\168\231\176*\SOH:$\130\231\176*\agranter\138\231\176*\DC3cosmos-sdk/MsgGrant\"+\n\
    \\SIMsgExecResponse\DC2\CAN\n\
    \\aresults\CAN\SOH \ETX(\fR\aresults\"\169\SOH\n\
    \\aMsgExec\DC22\n\
    \\agrantee\CAN\SOH \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2E\n\
    \\EOTmsgs\CAN\STX \ETX(\v2\DC4.google.protobuf.AnyR\EOTmsgsB\ESC\202\180-\ETBcosmos.base.v1beta1.Msg:#\130\231\176*\agrantee\138\231\176*\DC2cosmos-sdk/MsgExec\"\DC2\n\
    \\DLEMsgGrantResponse\"\188\SOH\n\
    \\tMsgRevoke\DC22\n\
    \\agranter\CAN\SOH \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
    \\agrantee\CAN\STX \SOH(\tR\agranteeB\CAN\210\180-\DC4cosmos.AddressString\DC2 \n\
    \\fmsg_type_url\CAN\ETX \SOH(\tR\n\
    \msgTypeUrl:%\130\231\176*\agranter\138\231\176*\DC4cosmos-sdk/MsgRevoke\"\DC3\n\
    \\DC1MsgRevokeResponse2\255\SOH\n\
    \\ETXMsg\DC2O\n\
    \\ENQGrant\DC2\RS.cosmos.authz.v1beta1.MsgGrant\SUB&.cosmos.authz.v1beta1.MsgGrantResponse\DC2L\n\
    \\EOTExec\DC2\GS.cosmos.authz.v1beta1.MsgExec\SUB%.cosmos.authz.v1beta1.MsgExecResponse\DC2R\n\
    \\ACKRevoke\DC2\US.cosmos.authz.v1beta1.MsgRevoke\SUB'.cosmos.authz.v1beta1.MsgRevokeResponse\SUB\ENQ\128\231\176*\SOHB*Z$github.com/cosmos/cosmos-sdk/x/authz\200\225\RS\NULJ\196\SYN\n\
    \\ACK\DC2\EOT\SOH\NULP\FS\n\
    \\"\n\
    \\SOH\f\DC2\ETX\SOH\NUL\DC2\SUB\CAN Since: cosmos-sdk 0.43\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL#\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL\RS\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL*\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL!\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL\ESC\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULP\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\v\NULP\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL/\n\
    \\v\n\
    \\EOT\b\153\236\ETX\DC2\ETX\f\NUL/\n\
    \0\n\
    \\STX\ACK\NUL\DC2\EOT\SI\NUL \SOH\SUB$ Msg defines the authz Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\SI\b\v\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\ETX\DC2\ETX\DLE\STX(\n\
    \\SO\n\
    \\a\ACK\NUL\ETX\240\140\166\ENQ\DC2\ETX\DLE\STX(\n\
    \\253\SOH\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\SYN\STX1\SUB\239\SOH Grant grants the provided authorization to the grantee on the granter's\n\
    \ account with the provided expiration time. If there is already a grant\n\
    \ for the given (granter, grantee, Authorization) triple, then the grant\n\
    \ will be overwritten.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\SYN\ACK\v\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\SYN\f\DC4\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\SYN\US/\n\
    \\201\SOH\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\ESC\STX.\SUB\187\SOH Exec attempts to execute the provided messages using\n\
    \ authorizations granted to the grantee. Each message should have only\n\
    \ one signer corresponding to the granter of the authorization.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\ESC\ACK\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\ESC\v\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\ESC\GS,\n\
    \\154\SOH\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX\US\STX4\SUB\140\SOH Revoke revokes any authorization corresponding to the provided method name on the\n\
    \ granter's account that has been granted to the grantee.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\US\ACK\f\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\US\r\SYN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\US!2\n\
    \\161\SOH\n\
    \\STX\EOT\NUL\DC2\EOT$\NUL,\SOH\SUB\148\SOH MsgGrant is a request type for Grant method. It declares authorization to the grantee\n\
    \ on behalf of the granter with the provided expiration time.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX$\b\DLE\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX%\STX,\n\
    \\SI\n\
    \\b\EOT\NUL\a\240\140\166\ENQ\NUL\DC2\ETX%\STX,\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX&\STX8\n\
    \\SO\n\
    \\a\EOT\NUL\a\241\140\166\ENQ\DC2\ETX&\STX8\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX(\STXF\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX(\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX(\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX(\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX(\NAKE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\202\214\ENQ\DC2\ETX(\SYND\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX)\STXF\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX)\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX)\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX)\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX)\NAKE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\202\214\ENQ\DC2\ETX)\SYND\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX+\STXe\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX+\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX+\GS\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX+%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX+'d\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\233\251\ETX\DC2\ETX+(D\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\245\140\166\ENQ\DC2\ETX+Fc\n\
    \L\n\
    \\STX\EOT\SOH\DC2\EOT/\NUL1\SOH\SUB@ MsgExecResponse defines the Msg/MsgExecResponse response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX/\b\ETB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX0\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX0\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX0\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX0\ESC\FS\n\
    \\203\SOH\n\
    \\STX\EOT\STX\DC2\EOT6\NUL?\SOH\SUB\190\SOH MsgExec attempts to execute the provided messages using\n\
    \ authorizations granted to the grantee. Each message should have only\n\
    \ one signer corresponding to the granter of the authorization.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX6\b\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX7\STX,\n\
    \\SI\n\
    \\b\EOT\STX\a\240\140\166\ENQ\NUL\DC2\ETX7\STX,\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX8\STX7\n\
    \\SO\n\
    \\a\EOT\STX\a\241\140\166\ENQ\DC2\ETX8\STX7\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX:\STXF\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX:\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX:\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX:\DC3\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX:\NAKE\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\202\214\ENQ\DC2\ETX:\SYND\n\
    \\143\SOH\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX>\STXg\SUB\129\SOH Execute Msg.\n\
    \ The x/authz will try to find a grant matching (msg.signers[0], grantee, MsgTypeURL(msg))\n\
    \ triple and validate it.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX>\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX>\v\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX>\US#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX>&'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETX>(f\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\201\214\ENQ\DC2\ETX>)e\n\
    \E\n\
    \\STX\EOT\ETX\DC2\ETXB\NUL\ESC\SUB: MsgGrantResponse defines the Msg/MsgGrant response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXB\b\CAN\n\
    \\150\SOH\n\
    \\STX\EOT\EOT\DC2\EOTF\NULM\SOH\SUB\137\SOH MsgRevoke revokes any authorization with the provided sdk.Msg type on the\n\
    \ granter's account with that has been granted to the grantee.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXF\b\DC1\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXG\STX,\n\
    \\SI\n\
    \\b\EOT\EOT\a\240\140\166\ENQ\NUL\DC2\ETXG\STX,\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\a\DC2\ETXH\STX9\n\
    \\SO\n\
    \\a\EOT\EOT\a\241\140\166\ENQ\DC2\ETXH\STX9\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXJ\STXK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXJ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXJ\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXJ\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\b\DC2\ETXJ\SUBJ\n\
    \\SI\n\
    \\b\EOT\EOT\STX\NUL\b\202\214\ENQ\DC2\ETXJ\ESCI\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXK\STXK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXK\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXK\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXK\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\b\DC2\ETXK\SUBJ\n\
    \\SI\n\
    \\b\EOT\EOT\STX\SOH\b\202\214\ENQ\DC2\ETXK\ESCI\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXL\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETXL\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXL\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXL\CAN\EM\n\
    \O\n\
    \\STX\EOT\ENQ\DC2\ETXP\NUL\FS\SUBD MsgRevokeResponse defines the Msg/MsgRevokeResponse response type.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXP\b\EMb\ACKproto3"