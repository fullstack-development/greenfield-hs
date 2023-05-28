{- This file was auto-generated from cosmos/tx/v1beta1/tx.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Tx.V1beta1.Tx (
        AuthInfo(), AuxSignerData(), Fee(), ModeInfo(), ModeInfo'Sum(..),
        _ModeInfo'Single', _ModeInfo'Multi', ModeInfo'Multi(),
        ModeInfo'Single(), SignDoc(), SignDocDirectAux(), SignerInfo(),
        Tip(), Tx(), TxBody(), TxRaw()
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
import qualified Proto.Cosmos.Base.V1beta1.Coin
import qualified Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig
import qualified Proto.Cosmos.Tx.Signing.V1beta1.Signing
import qualified Proto.CosmosProto.Cosmos
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Protobuf.Any
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.signerInfos' @:: Lens' AuthInfo [SignerInfo]@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.vec'signerInfos' @:: Lens' AuthInfo (Data.Vector.Vector SignerInfo)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.fee' @:: Lens' AuthInfo Fee@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.maybe'fee' @:: Lens' AuthInfo (Prelude.Maybe Fee)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.tip' @:: Lens' AuthInfo Tip@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.maybe'tip' @:: Lens' AuthInfo (Prelude.Maybe Tip)@ -}
data AuthInfo
  = AuthInfo'_constructor {_AuthInfo'signerInfos :: !(Data.Vector.Vector SignerInfo),
                           _AuthInfo'fee :: !(Prelude.Maybe Fee),
                           _AuthInfo'tip :: !(Prelude.Maybe Tip),
                           _AuthInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AuthInfo "signerInfos" [SignerInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthInfo'signerInfos
           (\ x__ y__ -> x__ {_AuthInfo'signerInfos = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AuthInfo "vec'signerInfos" (Data.Vector.Vector SignerInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthInfo'signerInfos
           (\ x__ y__ -> x__ {_AuthInfo'signerInfos = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AuthInfo "fee" Fee where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthInfo'fee (\ x__ y__ -> x__ {_AuthInfo'fee = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AuthInfo "maybe'fee" (Prelude.Maybe Fee) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthInfo'fee (\ x__ y__ -> x__ {_AuthInfo'fee = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AuthInfo "tip" Tip where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthInfo'tip (\ x__ y__ -> x__ {_AuthInfo'tip = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AuthInfo "maybe'tip" (Prelude.Maybe Tip) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuthInfo'tip (\ x__ y__ -> x__ {_AuthInfo'tip = y__}))
        Prelude.id
instance Data.ProtoLens.Message AuthInfo where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.AuthInfo"
  packedMessageDescriptor _
    = "\n\
      \\bAuthInfo\DC2@\n\
      \\fsigner_infos\CAN\SOH \ETX(\v2\GS.cosmos.tx.v1beta1.SignerInfoR\vsignerInfos\DC2(\n\
      \\ETXfee\CAN\STX \SOH(\v2\SYN.cosmos.tx.v1beta1.FeeR\ETXfee\DC2(\n\
      \\ETXtip\CAN\ETX \SOH(\v2\SYN.cosmos.tx.v1beta1.TipR\ETXtip"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        signerInfos__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signer_infos"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SignerInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"signerInfos")) ::
              Data.ProtoLens.FieldDescriptor AuthInfo
        fee__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fee"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Fee)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fee")) ::
              Data.ProtoLens.FieldDescriptor AuthInfo
        tip__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tip"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Tip)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tip")) ::
              Data.ProtoLens.FieldDescriptor AuthInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, signerInfos__field_descriptor),
           (Data.ProtoLens.Tag 2, fee__field_descriptor),
           (Data.ProtoLens.Tag 3, tip__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AuthInfo'_unknownFields
        (\ x__ y__ -> x__ {_AuthInfo'_unknownFields = y__})
  defMessage
    = AuthInfo'_constructor
        {_AuthInfo'signerInfos = Data.Vector.Generic.empty,
         _AuthInfo'fee = Prelude.Nothing, _AuthInfo'tip = Prelude.Nothing,
         _AuthInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AuthInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SignerInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser AuthInfo
        loop x mutable'signerInfos
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'signerInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'signerInfos)
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
                              (Data.ProtoLens.Field.field @"vec'signerInfos") frozen'signerInfos
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "signer_infos"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'signerInfos y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fee"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fee") y x)
                                  mutable'signerInfos
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tip"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tip") y x)
                                  mutable'signerInfos
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'signerInfos
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'signerInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'signerInfos)
          "AuthInfo"
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
                   (Data.ProtoLens.Field.field @"vec'signerInfos") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fee") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tip") _x
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
instance Control.DeepSeq.NFData AuthInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AuthInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AuthInfo'signerInfos x__)
                (Control.DeepSeq.deepseq
                   (_AuthInfo'fee x__)
                   (Control.DeepSeq.deepseq (_AuthInfo'tip x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.address' @:: Lens' AuxSignerData Data.Text.Text@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.signDoc' @:: Lens' AuxSignerData SignDocDirectAux@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.maybe'signDoc' @:: Lens' AuxSignerData (Prelude.Maybe SignDocDirectAux)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.mode' @:: Lens' AuxSignerData Proto.Cosmos.Tx.Signing.V1beta1.Signing.SignMode@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.sig' @:: Lens' AuxSignerData Data.ByteString.ByteString@ -}
data AuxSignerData
  = AuxSignerData'_constructor {_AuxSignerData'address :: !Data.Text.Text,
                                _AuxSignerData'signDoc :: !(Prelude.Maybe SignDocDirectAux),
                                _AuxSignerData'mode :: !Proto.Cosmos.Tx.Signing.V1beta1.Signing.SignMode,
                                _AuxSignerData'sig :: !Data.ByteString.ByteString,
                                _AuxSignerData'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuxSignerData where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AuxSignerData "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuxSignerData'address
           (\ x__ y__ -> x__ {_AuxSignerData'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AuxSignerData "signDoc" SignDocDirectAux where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuxSignerData'signDoc
           (\ x__ y__ -> x__ {_AuxSignerData'signDoc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AuxSignerData "maybe'signDoc" (Prelude.Maybe SignDocDirectAux) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuxSignerData'signDoc
           (\ x__ y__ -> x__ {_AuxSignerData'signDoc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AuxSignerData "mode" Proto.Cosmos.Tx.Signing.V1beta1.Signing.SignMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuxSignerData'mode (\ x__ y__ -> x__ {_AuxSignerData'mode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AuxSignerData "sig" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AuxSignerData'sig (\ x__ y__ -> x__ {_AuxSignerData'sig = y__}))
        Prelude.id
instance Data.ProtoLens.Message AuxSignerData where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.AuxSignerData"
  packedMessageDescriptor _
    = "\n\
      \\rAuxSignerData\DC22\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2>\n\
      \\bsign_doc\CAN\STX \SOH(\v2#.cosmos.tx.v1beta1.SignDocDirectAuxR\asignDoc\DC27\n\
      \\EOTmode\CAN\ETX \SOH(\SO2#.cosmos.tx.signing.v1beta1.SignModeR\EOTmode\DC2\DLE\n\
      \\ETXsig\CAN\EOT \SOH(\fR\ETXsig"
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
              Data.ProtoLens.FieldDescriptor AuxSignerData
        signDoc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sign_doc"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SignDocDirectAux)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'signDoc")) ::
              Data.ProtoLens.FieldDescriptor AuxSignerData
        mode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Tx.Signing.V1beta1.Signing.SignMode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"mode")) ::
              Data.ProtoLens.FieldDescriptor AuxSignerData
        sig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sig"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"sig")) ::
              Data.ProtoLens.FieldDescriptor AuxSignerData
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, signDoc__field_descriptor),
           (Data.ProtoLens.Tag 3, mode__field_descriptor),
           (Data.ProtoLens.Tag 4, sig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AuxSignerData'_unknownFields
        (\ x__ y__ -> x__ {_AuxSignerData'_unknownFields = y__})
  defMessage
    = AuxSignerData'_constructor
        {_AuxSignerData'address = Data.ProtoLens.fieldDefault,
         _AuxSignerData'signDoc = Prelude.Nothing,
         _AuxSignerData'mode = Data.ProtoLens.fieldDefault,
         _AuxSignerData'sig = Data.ProtoLens.fieldDefault,
         _AuxSignerData'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AuxSignerData -> Data.ProtoLens.Encoding.Bytes.Parser AuxSignerData
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
                                       "sign_doc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"signDoc") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "mode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mode") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "sig"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"sig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AuxSignerData"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'signDoc") _x
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
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"mode") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               Prelude.fromEnum _v))
                   ((Data.Monoid.<>)
                      (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sig") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData AuxSignerData where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AuxSignerData'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AuxSignerData'address x__)
                (Control.DeepSeq.deepseq
                   (_AuxSignerData'signDoc x__)
                   (Control.DeepSeq.deepseq
                      (_AuxSignerData'mode x__)
                      (Control.DeepSeq.deepseq (_AuxSignerData'sig x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.amount' @:: Lens' Fee [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.vec'amount' @:: Lens' Fee (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.gasLimit' @:: Lens' Fee Data.Word.Word64@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.payer' @:: Lens' Fee Data.Text.Text@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.granter' @:: Lens' Fee Data.Text.Text@ -}
data Fee
  = Fee'_constructor {_Fee'amount :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                      _Fee'gasLimit :: !Data.Word.Word64,
                      _Fee'payer :: !Data.Text.Text,
                      _Fee'granter :: !Data.Text.Text,
                      _Fee'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Fee where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Fee "amount" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fee'amount (\ x__ y__ -> x__ {_Fee'amount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Fee "vec'amount" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fee'amount (\ x__ y__ -> x__ {_Fee'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fee "gasLimit" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fee'gasLimit (\ x__ y__ -> x__ {_Fee'gasLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fee "payer" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fee'payer (\ x__ y__ -> x__ {_Fee'payer = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Fee "granter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Fee'granter (\ x__ y__ -> x__ {_Fee'granter = y__}))
        Prelude.id
instance Data.ProtoLens.Message Fee where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.Fee"
  packedMessageDescriptor _
    = "\n\
      \\ETXFee\DC2c\n\
      \\ACKamount\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB0\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\DC2\ESC\n\
      \\tgas_limit\CAN\STX \SOH(\EOTR\bgasLimit\DC2.\n\
      \\ENQpayer\CAN\ETX \SOH(\tR\ENQpayerB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
      \\agranter\CAN\EOT \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor Fee
        gasLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gas_limit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"gasLimit")) ::
              Data.ProtoLens.FieldDescriptor Fee
        payer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payer"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"payer")) ::
              Data.ProtoLens.FieldDescriptor Fee
        granter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "granter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"granter")) ::
              Data.ProtoLens.FieldDescriptor Fee
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, amount__field_descriptor),
           (Data.ProtoLens.Tag 2, gasLimit__field_descriptor),
           (Data.ProtoLens.Tag 3, payer__field_descriptor),
           (Data.ProtoLens.Tag 4, granter__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Fee'_unknownFields (\ x__ y__ -> x__ {_Fee'_unknownFields = y__})
  defMessage
    = Fee'_constructor
        {_Fee'amount = Data.Vector.Generic.empty,
         _Fee'gasLimit = Data.ProtoLens.fieldDefault,
         _Fee'payer = Data.ProtoLens.fieldDefault,
         _Fee'granter = Data.ProtoLens.fieldDefault,
         _Fee'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Fee
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser Fee
        loop x mutable'amount
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'amount)
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
                              (Data.ProtoLens.Field.field @"vec'amount") frozen'amount x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "amount"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'amount y)
                                loop x v
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "gas_limit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"gasLimit") y x)
                                  mutable'amount
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
                                       "payer"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"payer") y x)
                                  mutable'amount
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
                                       "granter"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"granter") y x)
                                  mutable'amount
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'amount
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'amount)
          "Fee"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'amount") _x))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"gasLimit") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"payer") _x
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
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"granter") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Fee where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Fee'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Fee'amount x__)
                (Control.DeepSeq.deepseq
                   (_Fee'gasLimit x__)
                   (Control.DeepSeq.deepseq
                      (_Fee'payer x__) (Control.DeepSeq.deepseq (_Fee'granter x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.maybe'sum' @:: Lens' ModeInfo (Prelude.Maybe ModeInfo'Sum)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.maybe'single' @:: Lens' ModeInfo (Prelude.Maybe ModeInfo'Single)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.single' @:: Lens' ModeInfo ModeInfo'Single@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.maybe'multi' @:: Lens' ModeInfo (Prelude.Maybe ModeInfo'Multi)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.multi' @:: Lens' ModeInfo ModeInfo'Multi@ -}
data ModeInfo
  = ModeInfo'_constructor {_ModeInfo'sum :: !(Prelude.Maybe ModeInfo'Sum),
                           _ModeInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModeInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ModeInfo'Sum
  = ModeInfo'Single' !ModeInfo'Single |
    ModeInfo'Multi' !ModeInfo'Multi
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ModeInfo "maybe'sum" (Prelude.Maybe ModeInfo'Sum) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModeInfo'sum (\ x__ y__ -> x__ {_ModeInfo'sum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModeInfo "maybe'single" (Prelude.Maybe ModeInfo'Single) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModeInfo'sum (\ x__ y__ -> x__ {_ModeInfo'sum = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ModeInfo'Single' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ModeInfo'Single' y__))
instance Data.ProtoLens.Field.HasField ModeInfo "single" ModeInfo'Single where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModeInfo'sum (\ x__ y__ -> x__ {_ModeInfo'sum = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ModeInfo'Single' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ModeInfo'Single' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ModeInfo "maybe'multi" (Prelude.Maybe ModeInfo'Multi) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModeInfo'sum (\ x__ y__ -> x__ {_ModeInfo'sum = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ModeInfo'Multi' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ModeInfo'Multi' y__))
instance Data.ProtoLens.Field.HasField ModeInfo "multi" ModeInfo'Multi where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModeInfo'sum (\ x__ y__ -> x__ {_ModeInfo'sum = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ModeInfo'Multi' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ModeInfo'Multi' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ModeInfo where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.ModeInfo"
  packedMessageDescriptor _
    = "\n\
      \\bModeInfo\DC2<\n\
      \\ACKsingle\CAN\SOH \SOH(\v2\".cosmos.tx.v1beta1.ModeInfo.SingleH\NULR\ACKsingle\DC29\n\
      \\ENQmulti\CAN\STX \SOH(\v2!.cosmos.tx.v1beta1.ModeInfo.MultiH\NULR\ENQmulti\SUBA\n\
      \\ACKSingle\DC27\n\
      \\EOTmode\CAN\SOH \SOH(\SO2#.cosmos.tx.signing.v1beta1.SignModeR\EOTmode\SUB\144\SOH\n\
      \\ENQMulti\DC2K\n\
      \\bbitarray\CAN\SOH \SOH(\v2/.cosmos.crypto.multisig.v1beta1.CompactBitArrayR\bbitarray\DC2:\n\
      \\n\
      \mode_infos\CAN\STX \ETX(\v2\ESC.cosmos.tx.v1beta1.ModeInfoR\tmodeInfosB\ENQ\n\
      \\ETXsum"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        single__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "single"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ModeInfo'Single)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'single")) ::
              Data.ProtoLens.FieldDescriptor ModeInfo
        multi__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "multi"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ModeInfo'Multi)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'multi")) ::
              Data.ProtoLens.FieldDescriptor ModeInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, single__field_descriptor),
           (Data.ProtoLens.Tag 2, multi__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ModeInfo'_unknownFields
        (\ x__ y__ -> x__ {_ModeInfo'_unknownFields = y__})
  defMessage
    = ModeInfo'_constructor
        {_ModeInfo'sum = Prelude.Nothing, _ModeInfo'_unknownFields = []}
  parseMessage
    = let
        loop :: ModeInfo -> Data.ProtoLens.Encoding.Bytes.Parser ModeInfo
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
                                       "single"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"single") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "multi"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"multi") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ModeInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sum") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (ModeInfo'Single' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v)
                (Prelude.Just (ModeInfo'Multi' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ModeInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ModeInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ModeInfo'sum x__) ())
instance Control.DeepSeq.NFData ModeInfo'Sum where
  rnf (ModeInfo'Single' x__) = Control.DeepSeq.rnf x__
  rnf (ModeInfo'Multi' x__) = Control.DeepSeq.rnf x__
_ModeInfo'Single' ::
  Data.ProtoLens.Prism.Prism' ModeInfo'Sum ModeInfo'Single
_ModeInfo'Single'
  = Data.ProtoLens.Prism.prism'
      ModeInfo'Single'
      (\ p__
         -> case p__ of
              (ModeInfo'Single' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ModeInfo'Multi' ::
  Data.ProtoLens.Prism.Prism' ModeInfo'Sum ModeInfo'Multi
_ModeInfo'Multi'
  = Data.ProtoLens.Prism.prism'
      ModeInfo'Multi'
      (\ p__
         -> case p__ of
              (ModeInfo'Multi' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.bitarray' @:: Lens' ModeInfo'Multi Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig.CompactBitArray@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.maybe'bitarray' @:: Lens' ModeInfo'Multi (Prelude.Maybe Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig.CompactBitArray)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.modeInfos' @:: Lens' ModeInfo'Multi [ModeInfo]@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.vec'modeInfos' @:: Lens' ModeInfo'Multi (Data.Vector.Vector ModeInfo)@ -}
data ModeInfo'Multi
  = ModeInfo'Multi'_constructor {_ModeInfo'Multi'bitarray :: !(Prelude.Maybe Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig.CompactBitArray),
                                 _ModeInfo'Multi'modeInfos :: !(Data.Vector.Vector ModeInfo),
                                 _ModeInfo'Multi'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModeInfo'Multi where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ModeInfo'Multi "bitarray" Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig.CompactBitArray where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModeInfo'Multi'bitarray
           (\ x__ y__ -> x__ {_ModeInfo'Multi'bitarray = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ModeInfo'Multi "maybe'bitarray" (Prelude.Maybe Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig.CompactBitArray) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModeInfo'Multi'bitarray
           (\ x__ y__ -> x__ {_ModeInfo'Multi'bitarray = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ModeInfo'Multi "modeInfos" [ModeInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModeInfo'Multi'modeInfos
           (\ x__ y__ -> x__ {_ModeInfo'Multi'modeInfos = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ModeInfo'Multi "vec'modeInfos" (Data.Vector.Vector ModeInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModeInfo'Multi'modeInfos
           (\ x__ y__ -> x__ {_ModeInfo'Multi'modeInfos = y__}))
        Prelude.id
instance Data.ProtoLens.Message ModeInfo'Multi where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.ModeInfo.Multi"
  packedMessageDescriptor _
    = "\n\
      \\ENQMulti\DC2K\n\
      \\bbitarray\CAN\SOH \SOH(\v2/.cosmos.crypto.multisig.v1beta1.CompactBitArrayR\bbitarray\DC2:\n\
      \\n\
      \mode_infos\CAN\STX \ETX(\v2\ESC.cosmos.tx.v1beta1.ModeInfoR\tmodeInfos"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bitarray__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bitarray"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Crypto.Multisig.V1beta1.Multisig.CompactBitArray)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bitarray")) ::
              Data.ProtoLens.FieldDescriptor ModeInfo'Multi
        modeInfos__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode_infos"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ModeInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"modeInfos")) ::
              Data.ProtoLens.FieldDescriptor ModeInfo'Multi
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bitarray__field_descriptor),
           (Data.ProtoLens.Tag 2, modeInfos__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ModeInfo'Multi'_unknownFields
        (\ x__ y__ -> x__ {_ModeInfo'Multi'_unknownFields = y__})
  defMessage
    = ModeInfo'Multi'_constructor
        {_ModeInfo'Multi'bitarray = Prelude.Nothing,
         _ModeInfo'Multi'modeInfos = Data.Vector.Generic.empty,
         _ModeInfo'Multi'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ModeInfo'Multi
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ModeInfo
             -> Data.ProtoLens.Encoding.Bytes.Parser ModeInfo'Multi
        loop x mutable'modeInfos
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'modeInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'modeInfos)
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
                              (Data.ProtoLens.Field.field @"vec'modeInfos") frozen'modeInfos x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "bitarray"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bitarray") y x)
                                  mutable'modeInfos
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "mode_infos"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'modeInfos y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'modeInfos
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'modeInfos <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'modeInfos)
          "Multi"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bitarray") _x
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
                      (Data.ProtoLens.Field.field @"vec'modeInfos") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ModeInfo'Multi where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ModeInfo'Multi'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ModeInfo'Multi'bitarray x__)
                (Control.DeepSeq.deepseq (_ModeInfo'Multi'modeInfos x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.mode' @:: Lens' ModeInfo'Single Proto.Cosmos.Tx.Signing.V1beta1.Signing.SignMode@ -}
data ModeInfo'Single
  = ModeInfo'Single'_constructor {_ModeInfo'Single'mode :: !Proto.Cosmos.Tx.Signing.V1beta1.Signing.SignMode,
                                  _ModeInfo'Single'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModeInfo'Single where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ModeInfo'Single "mode" Proto.Cosmos.Tx.Signing.V1beta1.Signing.SignMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ModeInfo'Single'mode
           (\ x__ y__ -> x__ {_ModeInfo'Single'mode = y__}))
        Prelude.id
instance Data.ProtoLens.Message ModeInfo'Single where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.ModeInfo.Single"
  packedMessageDescriptor _
    = "\n\
      \\ACKSingle\DC27\n\
      \\EOTmode\CAN\SOH \SOH(\SO2#.cosmos.tx.signing.v1beta1.SignModeR\EOTmode"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        mode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Tx.Signing.V1beta1.Signing.SignMode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"mode")) ::
              Data.ProtoLens.FieldDescriptor ModeInfo'Single
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, mode__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ModeInfo'Single'_unknownFields
        (\ x__ y__ -> x__ {_ModeInfo'Single'_unknownFields = y__})
  defMessage
    = ModeInfo'Single'_constructor
        {_ModeInfo'Single'mode = Data.ProtoLens.fieldDefault,
         _ModeInfo'Single'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ModeInfo'Single
          -> Data.ProtoLens.Encoding.Bytes.Parser ModeInfo'Single
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "mode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mode") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Single"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"mode") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ModeInfo'Single where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ModeInfo'Single'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ModeInfo'Single'mode x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.bodyBytes' @:: Lens' SignDoc Data.ByteString.ByteString@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.authInfoBytes' @:: Lens' SignDoc Data.ByteString.ByteString@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.chainId' @:: Lens' SignDoc Data.Text.Text@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.accountNumber' @:: Lens' SignDoc Data.Word.Word64@ -}
data SignDoc
  = SignDoc'_constructor {_SignDoc'bodyBytes :: !Data.ByteString.ByteString,
                          _SignDoc'authInfoBytes :: !Data.ByteString.ByteString,
                          _SignDoc'chainId :: !Data.Text.Text,
                          _SignDoc'accountNumber :: !Data.Word.Word64,
                          _SignDoc'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignDoc where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignDoc "bodyBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignDoc'bodyBytes (\ x__ y__ -> x__ {_SignDoc'bodyBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignDoc "authInfoBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignDoc'authInfoBytes
           (\ x__ y__ -> x__ {_SignDoc'authInfoBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignDoc "chainId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignDoc'chainId (\ x__ y__ -> x__ {_SignDoc'chainId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignDoc "accountNumber" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignDoc'accountNumber
           (\ x__ y__ -> x__ {_SignDoc'accountNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Message SignDoc where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.SignDoc"
  packedMessageDescriptor _
    = "\n\
      \\aSignDoc\DC2\GS\n\
      \\n\
      \body_bytes\CAN\SOH \SOH(\fR\tbodyBytes\DC2&\n\
      \\SIauth_info_bytes\CAN\STX \SOH(\fR\rauthInfoBytes\DC2\EM\n\
      \\bchain_id\CAN\ETX \SOH(\tR\achainId\DC2%\n\
      \\SOaccount_number\CAN\EOT \SOH(\EOTR\raccountNumber"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bodyBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bodyBytes")) ::
              Data.ProtoLens.FieldDescriptor SignDoc
        authInfoBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "auth_info_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authInfoBytes")) ::
              Data.ProtoLens.FieldDescriptor SignDoc
        chainId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chain_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"chainId")) ::
              Data.ProtoLens.FieldDescriptor SignDoc
        accountNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "account_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"accountNumber")) ::
              Data.ProtoLens.FieldDescriptor SignDoc
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bodyBytes__field_descriptor),
           (Data.ProtoLens.Tag 2, authInfoBytes__field_descriptor),
           (Data.ProtoLens.Tag 3, chainId__field_descriptor),
           (Data.ProtoLens.Tag 4, accountNumber__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignDoc'_unknownFields
        (\ x__ y__ -> x__ {_SignDoc'_unknownFields = y__})
  defMessage
    = SignDoc'_constructor
        {_SignDoc'bodyBytes = Data.ProtoLens.fieldDefault,
         _SignDoc'authInfoBytes = Data.ProtoLens.fieldDefault,
         _SignDoc'chainId = Data.ProtoLens.fieldDefault,
         _SignDoc'accountNumber = Data.ProtoLens.fieldDefault,
         _SignDoc'_unknownFields = []}
  parseMessage
    = let
        loop :: SignDoc -> Data.ProtoLens.Encoding.Bytes.Parser SignDoc
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
                                       "body_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bodyBytes") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "auth_info_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"authInfoBytes") y x)
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
                                       "chain_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chainId") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "account_number"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"accountNumber") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SignDoc"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"bodyBytes") _x
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"authInfoBytes") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"chainId") _x
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
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"accountNumber") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData SignDoc where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignDoc'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SignDoc'bodyBytes x__)
                (Control.DeepSeq.deepseq
                   (_SignDoc'authInfoBytes x__)
                   (Control.DeepSeq.deepseq
                      (_SignDoc'chainId x__)
                      (Control.DeepSeq.deepseq (_SignDoc'accountNumber x__) ()))))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.bodyBytes' @:: Lens' SignDocDirectAux Data.ByteString.ByteString@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.publicKey' @:: Lens' SignDocDirectAux Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.maybe'publicKey' @:: Lens' SignDocDirectAux (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.chainId' @:: Lens' SignDocDirectAux Data.Text.Text@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.accountNumber' @:: Lens' SignDocDirectAux Data.Word.Word64@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.sequence' @:: Lens' SignDocDirectAux Data.Word.Word64@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.tip' @:: Lens' SignDocDirectAux Tip@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.maybe'tip' @:: Lens' SignDocDirectAux (Prelude.Maybe Tip)@ -}
data SignDocDirectAux
  = SignDocDirectAux'_constructor {_SignDocDirectAux'bodyBytes :: !Data.ByteString.ByteString,
                                   _SignDocDirectAux'publicKey :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                   _SignDocDirectAux'chainId :: !Data.Text.Text,
                                   _SignDocDirectAux'accountNumber :: !Data.Word.Word64,
                                   _SignDocDirectAux'sequence :: !Data.Word.Word64,
                                   _SignDocDirectAux'tip :: !(Prelude.Maybe Tip),
                                   _SignDocDirectAux'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignDocDirectAux where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignDocDirectAux "bodyBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignDocDirectAux'bodyBytes
           (\ x__ y__ -> x__ {_SignDocDirectAux'bodyBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignDocDirectAux "publicKey" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignDocDirectAux'publicKey
           (\ x__ y__ -> x__ {_SignDocDirectAux'publicKey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SignDocDirectAux "maybe'publicKey" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignDocDirectAux'publicKey
           (\ x__ y__ -> x__ {_SignDocDirectAux'publicKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignDocDirectAux "chainId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignDocDirectAux'chainId
           (\ x__ y__ -> x__ {_SignDocDirectAux'chainId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignDocDirectAux "accountNumber" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignDocDirectAux'accountNumber
           (\ x__ y__ -> x__ {_SignDocDirectAux'accountNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignDocDirectAux "sequence" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignDocDirectAux'sequence
           (\ x__ y__ -> x__ {_SignDocDirectAux'sequence = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignDocDirectAux "tip" Tip where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignDocDirectAux'tip
           (\ x__ y__ -> x__ {_SignDocDirectAux'tip = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SignDocDirectAux "maybe'tip" (Prelude.Maybe Tip) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignDocDirectAux'tip
           (\ x__ y__ -> x__ {_SignDocDirectAux'tip = y__}))
        Prelude.id
instance Data.ProtoLens.Message SignDocDirectAux where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.SignDocDirectAux"
  packedMessageDescriptor _
    = "\n\
      \\DLESignDocDirectAux\DC2\GS\n\
      \\n\
      \body_bytes\CAN\SOH \SOH(\fR\tbodyBytes\DC23\n\
      \\n\
      \public_key\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\tpublicKey\DC2\EM\n\
      \\bchain_id\CAN\ETX \SOH(\tR\achainId\DC2%\n\
      \\SOaccount_number\CAN\EOT \SOH(\EOTR\raccountNumber\DC2\SUB\n\
      \\bsequence\CAN\ENQ \SOH(\EOTR\bsequence\DC2(\n\
      \\ETXtip\CAN\ACK \SOH(\v2\SYN.cosmos.tx.v1beta1.TipR\ETXtip"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bodyBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bodyBytes")) ::
              Data.ProtoLens.FieldDescriptor SignDocDirectAux
        publicKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "public_key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'publicKey")) ::
              Data.ProtoLens.FieldDescriptor SignDocDirectAux
        chainId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chain_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"chainId")) ::
              Data.ProtoLens.FieldDescriptor SignDocDirectAux
        accountNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "account_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"accountNumber")) ::
              Data.ProtoLens.FieldDescriptor SignDocDirectAux
        sequence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sequence")) ::
              Data.ProtoLens.FieldDescriptor SignDocDirectAux
        tip__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tip"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Tip)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tip")) ::
              Data.ProtoLens.FieldDescriptor SignDocDirectAux
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bodyBytes__field_descriptor),
           (Data.ProtoLens.Tag 2, publicKey__field_descriptor),
           (Data.ProtoLens.Tag 3, chainId__field_descriptor),
           (Data.ProtoLens.Tag 4, accountNumber__field_descriptor),
           (Data.ProtoLens.Tag 5, sequence__field_descriptor),
           (Data.ProtoLens.Tag 6, tip__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignDocDirectAux'_unknownFields
        (\ x__ y__ -> x__ {_SignDocDirectAux'_unknownFields = y__})
  defMessage
    = SignDocDirectAux'_constructor
        {_SignDocDirectAux'bodyBytes = Data.ProtoLens.fieldDefault,
         _SignDocDirectAux'publicKey = Prelude.Nothing,
         _SignDocDirectAux'chainId = Data.ProtoLens.fieldDefault,
         _SignDocDirectAux'accountNumber = Data.ProtoLens.fieldDefault,
         _SignDocDirectAux'sequence = Data.ProtoLens.fieldDefault,
         _SignDocDirectAux'tip = Prelude.Nothing,
         _SignDocDirectAux'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SignDocDirectAux
          -> Data.ProtoLens.Encoding.Bytes.Parser SignDocDirectAux
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
                                       "body_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bodyBytes") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "public_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"publicKey") y x)
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
                                       "chain_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"chainId") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "account_number"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"accountNumber") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sequence"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sequence") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tip"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tip") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SignDocDirectAux"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"bodyBytes") _x
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'publicKey") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"chainId") _x
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
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"accountNumber") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sequence") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tip") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData SignDocDirectAux where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignDocDirectAux'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SignDocDirectAux'bodyBytes x__)
                (Control.DeepSeq.deepseq
                   (_SignDocDirectAux'publicKey x__)
                   (Control.DeepSeq.deepseq
                      (_SignDocDirectAux'chainId x__)
                      (Control.DeepSeq.deepseq
                         (_SignDocDirectAux'accountNumber x__)
                         (Control.DeepSeq.deepseq
                            (_SignDocDirectAux'sequence x__)
                            (Control.DeepSeq.deepseq (_SignDocDirectAux'tip x__) ()))))))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.publicKey' @:: Lens' SignerInfo Proto.Google.Protobuf.Any.Any@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.maybe'publicKey' @:: Lens' SignerInfo (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.modeInfo' @:: Lens' SignerInfo ModeInfo@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.maybe'modeInfo' @:: Lens' SignerInfo (Prelude.Maybe ModeInfo)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.sequence' @:: Lens' SignerInfo Data.Word.Word64@ -}
data SignerInfo
  = SignerInfo'_constructor {_SignerInfo'publicKey :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                             _SignerInfo'modeInfo :: !(Prelude.Maybe ModeInfo),
                             _SignerInfo'sequence :: !Data.Word.Word64,
                             _SignerInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignerInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignerInfo "publicKey" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignerInfo'publicKey
           (\ x__ y__ -> x__ {_SignerInfo'publicKey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SignerInfo "maybe'publicKey" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignerInfo'publicKey
           (\ x__ y__ -> x__ {_SignerInfo'publicKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignerInfo "modeInfo" ModeInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignerInfo'modeInfo
           (\ x__ y__ -> x__ {_SignerInfo'modeInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SignerInfo "maybe'modeInfo" (Prelude.Maybe ModeInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignerInfo'modeInfo
           (\ x__ y__ -> x__ {_SignerInfo'modeInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SignerInfo "sequence" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SignerInfo'sequence
           (\ x__ y__ -> x__ {_SignerInfo'sequence = y__}))
        Prelude.id
instance Data.ProtoLens.Message SignerInfo where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.SignerInfo"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \SignerInfo\DC23\n\
      \\n\
      \public_key\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\tpublicKey\DC28\n\
      \\tmode_info\CAN\STX \SOH(\v2\ESC.cosmos.tx.v1beta1.ModeInfoR\bmodeInfo\DC2\SUB\n\
      \\bsequence\CAN\ETX \SOH(\EOTR\bsequence"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        publicKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "public_key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'publicKey")) ::
              Data.ProtoLens.FieldDescriptor SignerInfo
        modeInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ModeInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'modeInfo")) ::
              Data.ProtoLens.FieldDescriptor SignerInfo
        sequence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"sequence")) ::
              Data.ProtoLens.FieldDescriptor SignerInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, publicKey__field_descriptor),
           (Data.ProtoLens.Tag 2, modeInfo__field_descriptor),
           (Data.ProtoLens.Tag 3, sequence__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SignerInfo'_unknownFields
        (\ x__ y__ -> x__ {_SignerInfo'_unknownFields = y__})
  defMessage
    = SignerInfo'_constructor
        {_SignerInfo'publicKey = Prelude.Nothing,
         _SignerInfo'modeInfo = Prelude.Nothing,
         _SignerInfo'sequence = Data.ProtoLens.fieldDefault,
         _SignerInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SignerInfo -> Data.ProtoLens.Encoding.Bytes.Parser SignerInfo
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
                                       "public_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"publicKey") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "mode_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"modeInfo") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sequence"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sequence") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SignerInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'publicKey") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'modeInfo") _x
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"sequence") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SignerInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SignerInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SignerInfo'publicKey x__)
                (Control.DeepSeq.deepseq
                   (_SignerInfo'modeInfo x__)
                   (Control.DeepSeq.deepseq (_SignerInfo'sequence x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.amount' @:: Lens' Tip [Proto.Cosmos.Base.V1beta1.Coin.Coin]@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.vec'amount' @:: Lens' Tip (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.tipper' @:: Lens' Tip Data.Text.Text@ -}
data Tip
  = Tip'_constructor {_Tip'amount :: !(Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin),
                      _Tip'tipper :: !Data.Text.Text,
                      _Tip'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Tip where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Tip "amount" [Proto.Cosmos.Base.V1beta1.Coin.Coin] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tip'amount (\ x__ y__ -> x__ {_Tip'amount = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Tip "vec'amount" (Data.Vector.Vector Proto.Cosmos.Base.V1beta1.Coin.Coin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tip'amount (\ x__ y__ -> x__ {_Tip'amount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tip "tipper" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tip'tipper (\ x__ y__ -> x__ {_Tip'tipper = y__}))
        Prelude.id
instance Data.ProtoLens.Message Tip where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.Tip"
  packedMessageDescriptor _
    = "\n\
      \\ETXTip\DC2c\n\
      \\ACKamount\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB0\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\DC20\n\
      \\ACKtipper\CAN\STX \SOH(\tR\ACKtipperB\CAN\210\180-\DC4cosmos.AddressString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        amount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "amount"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.V1beta1.Coin.Coin)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"amount")) ::
              Data.ProtoLens.FieldDescriptor Tip
        tipper__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tipper"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"tipper")) ::
              Data.ProtoLens.FieldDescriptor Tip
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, amount__field_descriptor),
           (Data.ProtoLens.Tag 2, tipper__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Tip'_unknownFields (\ x__ y__ -> x__ {_Tip'_unknownFields = y__})
  defMessage
    = Tip'_constructor
        {_Tip'amount = Data.Vector.Generic.empty,
         _Tip'tipper = Data.ProtoLens.fieldDefault,
         _Tip'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Tip
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Base.V1beta1.Coin.Coin
             -> Data.ProtoLens.Encoding.Bytes.Parser Tip
        loop x mutable'amount
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'amount)
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
                              (Data.ProtoLens.Field.field @"vec'amount") frozen'amount x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "amount"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'amount y)
                                loop x v
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
                                       "tipper"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tipper") y x)
                                  mutable'amount
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'amount
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'amount <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'amount)
          "Tip"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'amount") _x))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"tipper") _x
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
instance Control.DeepSeq.NFData Tip where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Tip'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Tip'amount x__) (Control.DeepSeq.deepseq (_Tip'tipper x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.body' @:: Lens' Tx TxBody@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.maybe'body' @:: Lens' Tx (Prelude.Maybe TxBody)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.authInfo' @:: Lens' Tx AuthInfo@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.maybe'authInfo' @:: Lens' Tx (Prelude.Maybe AuthInfo)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.signatures' @:: Lens' Tx [Data.ByteString.ByteString]@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.vec'signatures' @:: Lens' Tx (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data Tx
  = Tx'_constructor {_Tx'body :: !(Prelude.Maybe TxBody),
                     _Tx'authInfo :: !(Prelude.Maybe AuthInfo),
                     _Tx'signatures :: !(Data.Vector.Vector Data.ByteString.ByteString),
                     _Tx'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Tx where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Tx "body" TxBody where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'body (\ x__ y__ -> x__ {_Tx'body = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Tx "maybe'body" (Prelude.Maybe TxBody) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'body (\ x__ y__ -> x__ {_Tx'body = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tx "authInfo" AuthInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'authInfo (\ x__ y__ -> x__ {_Tx'authInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Tx "maybe'authInfo" (Prelude.Maybe AuthInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'authInfo (\ x__ y__ -> x__ {_Tx'authInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Tx "signatures" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'signatures (\ x__ y__ -> x__ {_Tx'signatures = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Tx "vec'signatures" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Tx'signatures (\ x__ y__ -> x__ {_Tx'signatures = y__}))
        Prelude.id
instance Data.ProtoLens.Message Tx where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.Tx"
  packedMessageDescriptor _
    = "\n\
      \\STXTx\DC2-\n\
      \\EOTbody\CAN\SOH \SOH(\v2\EM.cosmos.tx.v1beta1.TxBodyR\EOTbody\DC28\n\
      \\tauth_info\CAN\STX \SOH(\v2\ESC.cosmos.tx.v1beta1.AuthInfoR\bauthInfo\DC2\RS\n\
      \\n\
      \signatures\CAN\ETX \ETX(\fR\n\
      \signatures"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        body__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TxBody)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'body")) ::
              Data.ProtoLens.FieldDescriptor Tx
        authInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "auth_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AuthInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'authInfo")) ::
              Data.ProtoLens.FieldDescriptor Tx
        signatures__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signatures"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"signatures")) ::
              Data.ProtoLens.FieldDescriptor Tx
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, body__field_descriptor),
           (Data.ProtoLens.Tag 2, authInfo__field_descriptor),
           (Data.ProtoLens.Tag 3, signatures__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Tx'_unknownFields (\ x__ y__ -> x__ {_Tx'_unknownFields = y__})
  defMessage
    = Tx'_constructor
        {_Tx'body = Prelude.Nothing, _Tx'authInfo = Prelude.Nothing,
         _Tx'signatures = Data.Vector.Generic.empty,
         _Tx'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Tx
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser Tx
        loop x mutable'signatures
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'signatures <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'signatures)
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
                              (Data.ProtoLens.Field.field @"vec'signatures") frozen'signatures
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "body"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"body") y x)
                                  mutable'signatures
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "auth_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"authInfo") y x)
                                  mutable'signatures
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "signatures"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'signatures y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'signatures
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'signatures <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'signatures)
          "Tx"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'body") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'authInfo") _x
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
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'signatures") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Tx where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Tx'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Tx'body x__)
                (Control.DeepSeq.deepseq
                   (_Tx'authInfo x__)
                   (Control.DeepSeq.deepseq (_Tx'signatures x__) ())))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.messages' @:: Lens' TxBody [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.vec'messages' @:: Lens' TxBody (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.memo' @:: Lens' TxBody Data.Text.Text@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.timeoutHeight' @:: Lens' TxBody Data.Word.Word64@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.extensionOptions' @:: Lens' TxBody [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.vec'extensionOptions' @:: Lens' TxBody (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.nonCriticalExtensionOptions' @:: Lens' TxBody [Proto.Google.Protobuf.Any.Any]@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.vec'nonCriticalExtensionOptions' @:: Lens' TxBody (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@ -}
data TxBody
  = TxBody'_constructor {_TxBody'messages :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                         _TxBody'memo :: !Data.Text.Text,
                         _TxBody'timeoutHeight :: !Data.Word.Word64,
                         _TxBody'extensionOptions :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                         _TxBody'nonCriticalExtensionOptions :: !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                         _TxBody'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxBody where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxBody "messages" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxBody'messages (\ x__ y__ -> x__ {_TxBody'messages = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TxBody "vec'messages" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxBody'messages (\ x__ y__ -> x__ {_TxBody'messages = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxBody "memo" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxBody'memo (\ x__ y__ -> x__ {_TxBody'memo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxBody "timeoutHeight" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxBody'timeoutHeight
           (\ x__ y__ -> x__ {_TxBody'timeoutHeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxBody "extensionOptions" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxBody'extensionOptions
           (\ x__ y__ -> x__ {_TxBody'extensionOptions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TxBody "vec'extensionOptions" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxBody'extensionOptions
           (\ x__ y__ -> x__ {_TxBody'extensionOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxBody "nonCriticalExtensionOptions" [Proto.Google.Protobuf.Any.Any] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxBody'nonCriticalExtensionOptions
           (\ x__ y__ -> x__ {_TxBody'nonCriticalExtensionOptions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TxBody "vec'nonCriticalExtensionOptions" (Data.Vector.Vector Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxBody'nonCriticalExtensionOptions
           (\ x__ y__ -> x__ {_TxBody'nonCriticalExtensionOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxBody where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.TxBody"
  packedMessageDescriptor _
    = "\n\
      \\ACKTxBody\DC20\n\
      \\bmessages\CAN\SOH \ETX(\v2\DC4.google.protobuf.AnyR\bmessages\DC2\DC2\n\
      \\EOTmemo\CAN\STX \SOH(\tR\EOTmemo\DC2%\n\
      \\SOtimeout_height\CAN\ETX \SOH(\EOTR\rtimeoutHeight\DC2B\n\
      \\DC1extension_options\CAN\255\a \ETX(\v2\DC4.google.protobuf.AnyR\DLEextensionOptions\DC2Z\n\
      \\RSnon_critical_extension_options\CAN\255\SI \ETX(\v2\DC4.google.protobuf.AnyR\ESCnonCriticalExtensionOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        messages__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "messages"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"messages")) ::
              Data.ProtoLens.FieldDescriptor TxBody
        memo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "memo"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"memo")) ::
              Data.ProtoLens.FieldDescriptor TxBody
        timeoutHeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeout_height"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"timeoutHeight")) ::
              Data.ProtoLens.FieldDescriptor TxBody
        extensionOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extension_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"extensionOptions")) ::
              Data.ProtoLens.FieldDescriptor TxBody
        nonCriticalExtensionOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "non_critical_extension_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"nonCriticalExtensionOptions")) ::
              Data.ProtoLens.FieldDescriptor TxBody
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, messages__field_descriptor),
           (Data.ProtoLens.Tag 2, memo__field_descriptor),
           (Data.ProtoLens.Tag 3, timeoutHeight__field_descriptor),
           (Data.ProtoLens.Tag 1023, extensionOptions__field_descriptor),
           (Data.ProtoLens.Tag 2047, 
            nonCriticalExtensionOptions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxBody'_unknownFields
        (\ x__ y__ -> x__ {_TxBody'_unknownFields = y__})
  defMessage
    = TxBody'_constructor
        {_TxBody'messages = Data.Vector.Generic.empty,
         _TxBody'memo = Data.ProtoLens.fieldDefault,
         _TxBody'timeoutHeight = Data.ProtoLens.fieldDefault,
         _TxBody'extensionOptions = Data.Vector.Generic.empty,
         _TxBody'nonCriticalExtensionOptions = Data.Vector.Generic.empty,
         _TxBody'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxBody
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Google.Protobuf.Any.Any
                   -> Data.ProtoLens.Encoding.Bytes.Parser TxBody
        loop
          x
          mutable'extensionOptions
          mutable'messages
          mutable'nonCriticalExtensionOptions
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'extensionOptions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'extensionOptions)
                      frozen'messages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'messages)
                      frozen'nonCriticalExtensionOptions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                 mutable'nonCriticalExtensionOptions)
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
                              (Data.ProtoLens.Field.field @"vec'extensionOptions")
                              frozen'extensionOptions
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'messages") frozen'messages
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'nonCriticalExtensionOptions")
                                    frozen'nonCriticalExtensionOptions x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "messages"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'messages y)
                                loop
                                  x mutable'extensionOptions v mutable'nonCriticalExtensionOptions
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
                                       "memo"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"memo") y x)
                                  mutable'extensionOptions mutable'messages
                                  mutable'nonCriticalExtensionOptions
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "timeout_height"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timeoutHeight") y x)
                                  mutable'extensionOptions mutable'messages
                                  mutable'nonCriticalExtensionOptions
                        8186
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "extension_options"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'extensionOptions y)
                                loop x v mutable'messages mutable'nonCriticalExtensionOptions
                        16378
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "non_critical_extension_options"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'nonCriticalExtensionOptions y)
                                loop x mutable'extensionOptions mutable'messages v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'extensionOptions mutable'messages
                                  mutable'nonCriticalExtensionOptions
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'extensionOptions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              mutable'messages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'nonCriticalExtensionOptions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'extensionOptions mutable'messages
                mutable'nonCriticalExtensionOptions)
          "TxBody"
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
                   (Data.ProtoLens.Field.field @"vec'messages") _x))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"memo") _x
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
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"timeoutHeight") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 8186)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'extensionOptions") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 16378)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'nonCriticalExtensionOptions")
                               _x))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData TxBody where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxBody'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TxBody'messages x__)
                (Control.DeepSeq.deepseq
                   (_TxBody'memo x__)
                   (Control.DeepSeq.deepseq
                      (_TxBody'timeoutHeight x__)
                      (Control.DeepSeq.deepseq
                         (_TxBody'extensionOptions x__)
                         (Control.DeepSeq.deepseq
                            (_TxBody'nonCriticalExtensionOptions x__) ())))))
{- | Fields :
     
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.bodyBytes' @:: Lens' TxRaw Data.ByteString.ByteString@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.authInfoBytes' @:: Lens' TxRaw Data.ByteString.ByteString@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.signatures' @:: Lens' TxRaw [Data.ByteString.ByteString]@
         * 'Proto.Cosmos.Tx.V1beta1.Tx_Fields.vec'signatures' @:: Lens' TxRaw (Data.Vector.Vector Data.ByteString.ByteString)@ -}
data TxRaw
  = TxRaw'_constructor {_TxRaw'bodyBytes :: !Data.ByteString.ByteString,
                        _TxRaw'authInfoBytes :: !Data.ByteString.ByteString,
                        _TxRaw'signatures :: !(Data.Vector.Vector Data.ByteString.ByteString),
                        _TxRaw'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxRaw where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxRaw "bodyBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxRaw'bodyBytes (\ x__ y__ -> x__ {_TxRaw'bodyBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxRaw "authInfoBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxRaw'authInfoBytes
           (\ x__ y__ -> x__ {_TxRaw'authInfoBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TxRaw "signatures" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxRaw'signatures (\ x__ y__ -> x__ {_TxRaw'signatures = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TxRaw "vec'signatures" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TxRaw'signatures (\ x__ y__ -> x__ {_TxRaw'signatures = y__}))
        Prelude.id
instance Data.ProtoLens.Message TxRaw where
  messageName _ = Data.Text.pack "cosmos.tx.v1beta1.TxRaw"
  packedMessageDescriptor _
    = "\n\
      \\ENQTxRaw\DC2\GS\n\
      \\n\
      \body_bytes\CAN\SOH \SOH(\fR\tbodyBytes\DC2&\n\
      \\SIauth_info_bytes\CAN\STX \SOH(\fR\rauthInfoBytes\DC2\RS\n\
      \\n\
      \signatures\CAN\ETX \ETX(\fR\n\
      \signatures"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bodyBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"bodyBytes")) ::
              Data.ProtoLens.FieldDescriptor TxRaw
        authInfoBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "auth_info_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authInfoBytes")) ::
              Data.ProtoLens.FieldDescriptor TxRaw
        signatures__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signatures"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"signatures")) ::
              Data.ProtoLens.FieldDescriptor TxRaw
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bodyBytes__field_descriptor),
           (Data.ProtoLens.Tag 2, authInfoBytes__field_descriptor),
           (Data.ProtoLens.Tag 3, signatures__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TxRaw'_unknownFields
        (\ x__ y__ -> x__ {_TxRaw'_unknownFields = y__})
  defMessage
    = TxRaw'_constructor
        {_TxRaw'bodyBytes = Data.ProtoLens.fieldDefault,
         _TxRaw'authInfoBytes = Data.ProtoLens.fieldDefault,
         _TxRaw'signatures = Data.Vector.Generic.empty,
         _TxRaw'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TxRaw
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
             -> Data.ProtoLens.Encoding.Bytes.Parser TxRaw
        loop x mutable'signatures
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'signatures <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'signatures)
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
                              (Data.ProtoLens.Field.field @"vec'signatures") frozen'signatures
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "body_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bodyBytes") y x)
                                  mutable'signatures
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "auth_info_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"authInfoBytes") y x)
                                  mutable'signatures
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "signatures"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'signatures y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'signatures
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'signatures <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'signatures)
          "TxRaw"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"bodyBytes") _x
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"authInfoBytes") _x
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
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'signatures") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TxRaw where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TxRaw'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TxRaw'bodyBytes x__)
                (Control.DeepSeq.deepseq
                   (_TxRaw'authInfoBytes x__)
                   (Control.DeepSeq.deepseq (_TxRaw'signatures x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\SUBcosmos/tx/v1beta1/tx.proto\DC2\DC1cosmos.tx.v1beta1\SUB\DC4gogoproto/gogo.proto\SUB-cosmos/crypto/multisig/v1beta1/multisig.proto\SUB\RScosmos/base/v1beta1/coin.proto\SUB'cosmos/tx/signing/v1beta1/signing.proto\SUB\EMgoogle/protobuf/any.proto\SUB\EMcosmos_proto/cosmos.proto\"\141\SOH\n\
    \\STXTx\DC2-\n\
    \\EOTbody\CAN\SOH \SOH(\v2\EM.cosmos.tx.v1beta1.TxBodyR\EOTbody\DC28\n\
    \\tauth_info\CAN\STX \SOH(\v2\ESC.cosmos.tx.v1beta1.AuthInfoR\bauthInfo\DC2\RS\n\
    \\n\
    \signatures\CAN\ETX \ETX(\fR\n\
    \signatures\"n\n\
    \\ENQTxRaw\DC2\GS\n\
    \\n\
    \body_bytes\CAN\SOH \SOH(\fR\tbodyBytes\DC2&\n\
    \\SIauth_info_bytes\CAN\STX \SOH(\fR\rauthInfoBytes\DC2\RS\n\
    \\n\
    \signatures\CAN\ETX \ETX(\fR\n\
    \signatures\"\146\SOH\n\
    \\aSignDoc\DC2\GS\n\
    \\n\
    \body_bytes\CAN\SOH \SOH(\fR\tbodyBytes\DC2&\n\
    \\SIauth_info_bytes\CAN\STX \SOH(\fR\rauthInfoBytes\DC2\EM\n\
    \\bchain_id\CAN\ETX \SOH(\tR\achainId\DC2%\n\
    \\SOaccount_number\CAN\EOT \SOH(\EOTR\raccountNumber\"\238\SOH\n\
    \\DLESignDocDirectAux\DC2\GS\n\
    \\n\
    \body_bytes\CAN\SOH \SOH(\fR\tbodyBytes\DC23\n\
    \\n\
    \public_key\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\tpublicKey\DC2\EM\n\
    \\bchain_id\CAN\ETX \SOH(\tR\achainId\DC2%\n\
    \\SOaccount_number\CAN\EOT \SOH(\EOTR\raccountNumber\DC2\SUB\n\
    \\bsequence\CAN\ENQ \SOH(\EOTR\bsequence\DC2(\n\
    \\ETXtip\CAN\ACK \SOH(\v2\SYN.cosmos.tx.v1beta1.TipR\ETXtip\"\149\STX\n\
    \\ACKTxBody\DC20\n\
    \\bmessages\CAN\SOH \ETX(\v2\DC4.google.protobuf.AnyR\bmessages\DC2\DC2\n\
    \\EOTmemo\CAN\STX \SOH(\tR\EOTmemo\DC2%\n\
    \\SOtimeout_height\CAN\ETX \SOH(\EOTR\rtimeoutHeight\DC2B\n\
    \\DC1extension_options\CAN\255\a \ETX(\v2\DC4.google.protobuf.AnyR\DLEextensionOptions\DC2Z\n\
    \\RSnon_critical_extension_options\CAN\255\SI \ETX(\v2\DC4.google.protobuf.AnyR\ESCnonCriticalExtensionOptions\"\160\SOH\n\
    \\bAuthInfo\DC2@\n\
    \\fsigner_infos\CAN\SOH \ETX(\v2\GS.cosmos.tx.v1beta1.SignerInfoR\vsignerInfos\DC2(\n\
    \\ETXfee\CAN\STX \SOH(\v2\SYN.cosmos.tx.v1beta1.FeeR\ETXfee\DC2(\n\
    \\ETXtip\CAN\ETX \SOH(\v2\SYN.cosmos.tx.v1beta1.TipR\ETXtip\"\151\SOH\n\
    \\n\
    \SignerInfo\DC23\n\
    \\n\
    \public_key\CAN\SOH \SOH(\v2\DC4.google.protobuf.AnyR\tpublicKey\DC28\n\
    \\tmode_info\CAN\STX \SOH(\v2\ESC.cosmos.tx.v1beta1.ModeInfoR\bmodeInfo\DC2\SUB\n\
    \\bsequence\CAN\ETX \SOH(\EOTR\bsequence\"\224\STX\n\
    \\bModeInfo\DC2<\n\
    \\ACKsingle\CAN\SOH \SOH(\v2\".cosmos.tx.v1beta1.ModeInfo.SingleH\NULR\ACKsingle\DC29\n\
    \\ENQmulti\CAN\STX \SOH(\v2!.cosmos.tx.v1beta1.ModeInfo.MultiH\NULR\ENQmulti\SUBA\n\
    \\ACKSingle\DC27\n\
    \\EOTmode\CAN\SOH \SOH(\SO2#.cosmos.tx.signing.v1beta1.SignModeR\EOTmode\SUB\144\SOH\n\
    \\ENQMulti\DC2K\n\
    \\bbitarray\CAN\SOH \SOH(\v2/.cosmos.crypto.multisig.v1beta1.CompactBitArrayR\bbitarray\DC2:\n\
    \\n\
    \mode_infos\CAN\STX \ETX(\v2\ESC.cosmos.tx.v1beta1.ModeInfoR\tmodeInfosB\ENQ\n\
    \\ETXsum\"\235\SOH\n\
    \\ETXFee\DC2c\n\
    \\ACKamount\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB0\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\DC2\ESC\n\
    \\tgas_limit\CAN\STX \SOH(\EOTR\bgasLimit\DC2.\n\
    \\ENQpayer\CAN\ETX \SOH(\tR\ENQpayerB\CAN\210\180-\DC4cosmos.AddressString\DC22\n\
    \\agranter\CAN\EOT \SOH(\tR\agranterB\CAN\210\180-\DC4cosmos.AddressString\"\156\SOH\n\
    \\ETXTip\DC2c\n\
    \\ACKamount\CAN\SOH \ETX(\v2\EM.cosmos.base.v1beta1.CoinR\ACKamountB0\200\222\US\NUL\170\223\US(github.com/cosmos/cosmos-sdk/types.Coins\DC20\n\
    \\ACKtipper\CAN\STX \SOH(\tR\ACKtipperB\CAN\210\180-\DC4cosmos.AddressString\"\206\SOH\n\
    \\rAuxSignerData\DC22\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddressB\CAN\210\180-\DC4cosmos.AddressString\DC2>\n\
    \\bsign_doc\CAN\STX \SOH(\v2#.cosmos.tx.v1beta1.SignDocDirectAuxR\asignDoc\DC27\n\
    \\EOTmode\CAN\ETX \SOH(\SO2#.cosmos.tx.signing.v1beta1.SignModeR\EOTmode\DC2\DLE\n\
    \\ETXsig\CAN\EOT \SOH(\fR\ETXsigB'Z%github.com/cosmos/cosmos-sdk/types/txJ\193U\n\
    \\a\DC2\ENQ\NUL\NUL\255\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\SUB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\EOT\NUL7\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\ACK\NUL1\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\a\NUL#\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\b\NUL#\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL<\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\n\
    \\NUL<\n\
    \I\n\
    \\STX\EOT\NUL\DC2\EOT\r\NUL\EM\SOH\SUB= Tx is the standard type used for broadcasting transactions.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\r\b\n\
    \\n\
    \A\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SI\STX\DC2\SUB4 body is the processable content of the transaction\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\SI\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SI\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SI\DLE\DC1\n\
    \}\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\DC3\STX\EM\SUBp auth_info is the authorization related content of the transaction,\n\
    \ specifically signers, signer modes and fee\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\DC3\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\DC3\ETB\CAN\n\
    \\206\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\CAN\STX \SUB\192\SOH signatures is a list of signatures that matches the length and order of\n\
    \ AuthInfo's signer_infos to allow connecting signature meta information like\n\
    \ public key and signing mode by position.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\CAN\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\CAN\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\CAN\RS\US\n\
    \\207\STX\n\
    \\STX\EOT\SOH\DC2\EOT \NUL-\SOH\SUB\194\STX TxRaw is a variant of Tx that pins the signer's exact binary representation\n\
    \ of body and auth_info. This is used for signing, broadcasting and\n\
    \ verification. The binary `serialize(tx: TxRaw)` is stored in Tendermint and\n\
    \ the hash `sha256(serialize(tx: TxRaw))` becomes the \"txhash\", commonly used\n\
    \ as the transaction ID.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX \b\r\n\
    \n\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX#\STX\ETB\SUBa body_bytes is a protobuf serialization of a TxBody that matches the\n\
    \ representation in SignDoc.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX#\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX#\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX#\NAK\SYN\n\
    \v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX'\STX\FS\SUBi auth_info_bytes is a protobuf serialization of an AuthInfo that matches the\n\
    \ representation in SignDoc.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX'\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX'\b\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX'\SUB\ESC\n\
    \\206\SOH\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX,\STX \SUB\192\SOH signatures is a list of signatures that matches the length and order of\n\
    \ AuthInfo's signer_infos to allow connecting signature meta information like\n\
    \ public key and signing mode by position.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX,\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX,\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX,\RS\US\n\
    \V\n\
    \\STX\EOT\STX\DC2\EOT0\NUL@\SOH\SUBJ SignDoc is the type used for generating sign bytes for SIGN_MODE_DIRECT.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX0\b\SI\n\
    \j\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX3\STX\ETB\SUB] body_bytes is protobuf serialization of a TxBody that matches the\n\
    \ representation in TxRaw.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX3\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX3\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX3\NAK\SYN\n\
    \t\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX7\STX\FS\SUBg auth_info_bytes is a protobuf serialization of an AuthInfo that matches the\n\
    \ representation in TxRaw.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX7\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX7\b\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX7\SUB\ESC\n\
    \\170\SOH\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX<\STX\SYN\SUB\156\SOH chain_id is the unique identifier of the chain this transaction targets.\n\
    \ It prevents signed transactions from being used on another chain by an\n\
    \ attacker\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX<\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX<\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX<\DC4\NAK\n\
    \K\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX?\STX\FS\SUB> account_number is the account number of the account in state\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX?\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX?\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX?\SUB\ESC\n\
    \}\n\
    \\STX\EOT\ETX\DC2\EOTF\NUL`\SOH\SUBq SignDocDirectAux is the type used for generating sign bytes for\n\
    \ SIGN_MODE_DIRECT_AUX.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXF\b\CAN\n\
    \j\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXI\STX\ETB\SUB] body_bytes is protobuf serialization of a TxBody that matches the\n\
    \ representation in TxRaw.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXI\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXI\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXI\NAK\SYN\n\
    \C\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXL\STX%\SUB6 public_key is the public key of the signing account.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETXL\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXL\SYN \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXL#$\n\
    \\164\SOH\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXQ\STX\SYN\SUB\150\SOH chain_id is the identifier of the chain this transaction targets.\n\
    \ It prevents signed transactions from being used on another chain by an\n\
    \ attacker.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETXQ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXQ\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXQ\DC4\NAK\n\
    \L\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETXT\STX\FS\SUB? account_number is the account number of the account in state.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETXT\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETXT\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETXT\SUB\ESC\n\
    \F\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETXW\STX\SYN\SUB9 sequence is the sequence number of the signing account.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETXW\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETXW\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETXW\DC4\NAK\n\
    \\154\STX\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETX_\STX\SO\SUB\140\STX Tip is the optional tip used for transactions fees paid in another denom.\n\
    \ It should be left empty if the signer is not the tipper for this\n\
    \ transaction.\n\
    \\n\
    \ This field is ignored if the chain didn't enable tips, i.e. didn't add the\n\
    \ `TipDecorator` in its posthandler.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ACK\DC2\ETX_\STX\ENQ\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETX_\ACK\t\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETX_\f\r\n\
    \M\n\
    \\STX\EOT\EOT\DC2\EOTc\NUL\DEL\SOH\SUBA TxBody is the body of a transaction that all signers sign over.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXc\b\SO\n\
    \\175\ETX\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXk\STX,\SUB\161\ETX messages is a list of messages to be executed. The required signers of\n\
    \ those messages define the number and order of elements in AuthInfo's\n\
    \ signer_infos and Tx's signatures. Each required signer address is added to\n\
    \ the list only the first time it occurs.\n\
    \ By convention, the first required signer (usually from the first message)\n\
    \ is referred to as the primary signer and pays the fee for the whole\n\
    \ transaction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETXk\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\ETXk\v\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXk\US'\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXk*+\n\
    \\250\SOH\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXp\STX\DC2\SUB\236\SOH memo is any arbitrary note/comment to be added to the transaction.\n\
    \ WARNING: in clients, any publicly exposed text should not be called memo,\n\
    \ but should be called `note` instead (see https://github.com/cosmos/cosmos-sdk/issues/9122).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXp\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXp\t\r\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXp\DLE\DC1\n\
    \k\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXt\STX\FS\SUB^ timeout is the block height after which this transaction will not\n\
    \ be processed by the chain\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETXt\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXt\t\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXt\SUB\ESC\n\
    \\213\SOH\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETXy\STX8\SUB\199\SOH extension_options are arbitrary options that can be added by chains\n\
    \ when the default options are not sufficient. If any of these are present\n\
    \ and can't be handled, the transaction will be rejected\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\ETXy\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\ETXy\v\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETXy\US0\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETXy37\n\
    \\201\SOH\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETX~\STXE\SUB\187\SOH extension_options are arbitrary options that can be added by chains\n\
    \ when the default options are not sufficient. If any of these are present\n\
    \ and can't be handled, they will be ignored\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\EOT\DC2\ETX~\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ACK\DC2\ETX~\v\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETX~\US=\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETX~@D\n\
    \a\n\
    \\STX\EOT\ENQ\DC2\ACK\131\SOH\NUL\151\SOH\SOH\SUBS AuthInfo describes the fee and signer modes that are used to sign a\n\
    \ transaction.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\131\SOH\b\DLE\n\
    \\245\SOH\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\136\SOH\STX'\SUB\230\SOH signer_infos defines the signing modes for the required signers. The number\n\
    \ and order of elements must match the required signers from TxBody's\n\
    \ messages. The first element is the primary signer and the one which pays\n\
    \ the fee.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\EOT\136\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\136\SOH\v\NAK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\136\SOH\SYN\"\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\136\SOH%&\n\
    \\166\STX\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\142\SOH\STX\SO\SUB\151\STX Fee is the fee and gas limit for the transaction. The first signer is the\n\
    \ primary signer and the one which pays the fee. The fee can be calculated\n\
    \ based on the cost of evaluating the body and doing signature verification\n\
    \ of the signers. This can be estimated via simulation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ACK\DC2\EOT\142\SOH\STX\ENQ\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\142\SOH\ACK\t\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\142\SOH\f\r\n\
    \\228\SOH\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\150\SOH\STX\SO\SUB\213\SOH Tip is the optional tip used for transactions fees paid in another denom.\n\
    \\n\
    \ This field is ignored if the chain didn't enable tips, i.e. didn't add the\n\
    \ `TipDecorator` in its posthandler.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ACK\DC2\EOT\150\SOH\STX\ENQ\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\150\SOH\ACK\t\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\150\SOH\f\r\n\
    \c\n\
    \\STX\EOT\ACK\DC2\ACK\155\SOH\NUL\169\SOH\SOH\SUBU SignerInfo describes the public key and signing mode of a single top-level\n\
    \ signer.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\155\SOH\b\DC2\n\
    \\225\SOH\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\159\SOH\STX%\SUB\210\SOH public_key is the public key of the signer. It is optional for accounts\n\
    \ that already exist in state. If unset, the verifier can use the required \\\n\
    \ signer address for this position and lookup the public key.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\159\SOH\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\159\SOH\SYN \n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\159\SOH#$\n\
    \\129\SOH\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\163\SOH\STX\EM\SUBs mode_info describes the signing mode of the signer and is a nested\n\
    \ structure to support nested multisig pubkey's\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\EOT\163\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\163\SOH\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\163\SOH\ETB\CAN\n\
    \\177\SOH\n\
    \\EOT\EOT\ACK\STX\STX\DC2\EOT\168\SOH\STX\SYN\SUB\162\SOH sequence is the sequence of the account, which describes the\n\
    \ number of committed transactions signed by a given address. It is used to\n\
    \ prevent replay attacks.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\EOT\168\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\EOT\168\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\EOT\168\SOH\DC4\NAK\n\
    \Z\n\
    \\STX\EOT\a\DC2\ACK\172\SOH\NUL\200\SOH\SOH\SUBL ModeInfo describes the signing mode of a single or nested multisig signer.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\172\SOH\b\DLE\n\
    \m\n\
    \\EOT\EOT\a\b\NUL\DC2\ACK\175\SOH\STX\181\SOH\ETX\SUB] sum is the oneof that specifies whether this represents a single or nested\n\
    \ multisig signer\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\b\NUL\SOH\DC2\EOT\175\SOH\b\v\n\
    \1\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\177\SOH\EOT\SYN\SUB# single represents a single signer\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\177\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\177\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\177\SOH\DC4\NAK\n\
    \9\n\
    \\EOT\EOT\a\STX\SOH\DC2\EOT\180\SOH\EOT\DC4\SUB+ multi represents a nested multisig signer\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\EOT\180\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\180\SOH\n\
    \\SI\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\180\SOH\DC2\DC3\n\
    \\177\SOH\n\
    \\EOT\EOT\a\ETX\NUL\DC2\ACK\186\SOH\STX\189\SOH\ETX\SUB\160\SOH Single is the mode info for a single signer. It is structured as a message\n\
    \ to allow for additional fields such as locale for SIGN_MODE_TEXTUAL in the\n\
    \ future\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\ETX\NUL\SOH\DC2\EOT\186\SOH\n\
    \\DLE\n\
    \?\n\
    \\ACK\EOT\a\ETX\NUL\STX\NUL\DC2\EOT\188\SOH\EOT0\SUB/ mode is the signing mode of the single signer\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\ACK\DC2\EOT\188\SOH\EOT&\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\SOH\DC2\EOT\188\SOH'+\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\ETX\DC2\EOT\188\SOH./\n\
    \B\n\
    \\EOT\EOT\a\ETX\SOH\DC2\ACK\192\SOH\STX\199\SOH\ETX\SUB2 Multi is the mode info for a multisig public key\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\ETX\SOH\SOH\DC2\EOT\192\SOH\n\
    \\SI\n\
    \O\n\
    \\ACK\EOT\a\ETX\SOH\STX\NUL\DC2\EOT\194\SOH\EOT@\SUB? bitarray specifies which keys within the multisig are signing\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\NUL\ACK\DC2\EOT\194\SOH\EOT2\n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\NUL\SOH\DC2\EOT\194\SOH3;\n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\NUL\ETX\DC2\EOT\194\SOH>?\n\
    \\135\SOH\n\
    \\ACK\EOT\a\ETX\SOH\STX\SOH\DC2\EOT\198\SOH\EOT%\SUBw mode_infos is the corresponding modes of the signers of the multisig\n\
    \ which could include nested multisig public keys\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\SOH\EOT\DC2\EOT\198\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\SOH\ACK\DC2\EOT\198\SOH\r\NAK\n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\SOH\SOH\DC2\EOT\198\SOH\SYN \n\
    \\SI\n\
    \\a\EOT\a\ETX\SOH\STX\SOH\ETX\DC2\EOT\198\SOH#$\n\
    \\223\SOH\n\
    \\STX\EOT\b\DC2\ACK\205\SOH\NUL\223\SOH\SOH\SUB\208\SOH Fee includes the amount of coins paid in fees and the maximum\n\
    \ gas to be used by the transaction. The ratio yields an effective \"gasprice\",\n\
    \ which must be above some miminum to be accepted into the mempool.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\205\SOH\b\v\n\
    \C\n\
    \\EOT\EOT\b\STX\NUL\DC2\ACK\207\SOH\STX\208\SOHl\SUB3 amount is the amount of coins to be paid as a fee\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\EOT\207\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\207\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\207\SOH$*\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\207\SOH-.\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\b\DC2\EOT\208\SOH\ACKk\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\233\251\ETX\DC2\EOT\208\SOH\a#\n\
    \\DLE\n\
    \\b\EOT\b\STX\NUL\b\245\251\ETX\DC2\EOT\208\SOH%j\n\
    \z\n\
    \\EOT\EOT\b\STX\SOH\DC2\EOT\212\SOH\STX\ETB\SUBl gas_limit is the maximum gas that can be used in transaction processing\n\
    \ before an out of gas error occurs\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\EOT\212\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\EOT\212\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\EOT\212\SOH\NAK\SYN\n\
    \\170\STX\n\
    \\EOT\EOT\b\STX\STX\DC2\EOT\217\SOH\STXD\SUB\155\STX if unset, the first signer is responsible for paying the fees. If set, the specified account must pay the fees.\n\
    \ the payer must be a tx signer (and thus have signed this field in AuthInfo).\n\
    \ setting this field does *not* change the ordering of required signers for the transaction.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\EOT\217\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\EOT\217\SOH\t\SO\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\EOT\217\SOH\DC1\DC2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\STX\b\DC2\EOT\217\SOH\DC3C\n\
    \\DLE\n\
    \\b\EOT\b\STX\STX\b\202\214\ENQ\DC2\EOT\217\SOH\DC4B\n\
    \\156\STX\n\
    \\EOT\EOT\b\STX\ETX\DC2\EOT\222\SOH\STXF\SUB\141\STX if set, the fee payer (either the first signer or the value of the payer field) requests that a fee grant be used\n\
    \ to pay fees instead of the fee payer's own balance. If an appropriate fee grant does not exist or the chain does\n\
    \ not support fee grants, this will fail\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\EOT\222\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\EOT\222\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\EOT\222\SOH\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\b\STX\ETX\b\DC2\EOT\222\SOH\NAKE\n\
    \\DLE\n\
    \\b\EOT\b\STX\ETX\b\202\214\ENQ\DC2\EOT\222\SOH\SYND\n\
    \S\n\
    \\STX\EOT\t\DC2\ACK\228\SOH\NUL\234\SOH\SOH\SUBE Tip is the tip used for meta-transactions.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\228\SOH\b\v\n\
    \1\n\
    \\EOT\EOT\t\STX\NUL\DC2\ACK\230\SOH\STX\231\SOHl\SUB! amount is the amount of the tip\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\EOT\230\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\230\SOH\v#\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\230\SOH$*\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\230\SOH-.\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\b\DC2\EOT\231\SOH\ACKk\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\233\251\ETX\DC2\EOT\231\SOH\a#\n\
    \\DLE\n\
    \\b\EOT\t\STX\NUL\b\245\251\ETX\DC2\EOT\231\SOH%j\n\
    \G\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\233\SOH\STXE\SUB9 tipper is the address of the account paying for the tip\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\EOT\233\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\233\SOH\t\SI\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\233\SOH\DC2\DC3\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\b\DC2\EOT\233\SOH\DC4D\n\
    \\DLE\n\
    \\b\EOT\t\STX\SOH\b\202\214\ENQ\DC2\EOT\233\SOH\NAKC\n\
    \\178\STX\n\
    \\STX\EOT\n\
    \\DC2\ACK\242\SOH\NUL\255\SOH\SOH\SUB\163\STX AuxSignerData is the intermediary format that an auxiliary signer (e.g. a\n\
    \ tipper) builds and sends to the fee payer (who will build and broadcast the\n\
    \ actual tx). AuxSignerData is not a valid tx in itself, and will be rejected\n\
    \ by the node if sent directly as-is.\n\
    \\n\
    \ Since: cosmos-sdk 0.46\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\242\SOH\b\NAK\n\
    \\228\SOH\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\246\SOH\STXF\SUB\213\SOH address is the bech32-encoded address of the auxiliary signer. If using\n\
    \ AuxSignerData across different chains, the bech32 prefix of the target\n\
    \ chain (where the final transaction is broadcasted) should be used.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\246\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\246\SOH\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\246\SOH\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\b\DC2\EOT\246\SOH\NAKE\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\NUL\b\202\214\ENQ\DC2\EOT\246\SOH\SYND\n\
    \\174\SOH\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\EOT\250\SOH\STX \SUB\159\SOH sign_doc is the SIGN_MODE_DIRECT_AUX sign doc that the auxiliary signer\n\
    \ signs. Note: we use the same sign doc even if we're signing with\n\
    \ LEGACY_AMINO_JSON.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ACK\DC2\EOT\250\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\EOT\250\SOH\DC3\ESC\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\EOT\250\SOH\RS\US\n\
    \>\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\EOT\252\SOH\STX.\SUB0 mode is the signing mode of the single signer.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ACK\DC2\EOT\252\SOH\STX$\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\EOT\252\SOH%)\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\EOT\252\SOH,-\n\
    \5\n\
    \\EOT\EOT\n\
    \\STX\ETX\DC2\EOT\254\SOH\STX\DLE\SUB' sig is the signature of the sign doc.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ENQ\DC2\EOT\254\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\SOH\DC2\EOT\254\SOH\b\v\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\ETX\ETX\DC2\EOT\254\SOH\SO\SIb\ACKproto3"