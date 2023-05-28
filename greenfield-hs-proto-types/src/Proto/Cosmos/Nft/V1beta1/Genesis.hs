{- This file was auto-generated from cosmos/nft/v1beta1/genesis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Nft.V1beta1.Genesis (
        Entry(), GenesisState()
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
import qualified Proto.Cosmos.Nft.V1beta1.Nft
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Genesis_Fields.owner' @:: Lens' Entry Data.Text.Text@
         * 'Proto.Cosmos.Nft.V1beta1.Genesis_Fields.nfts' @:: Lens' Entry [Proto.Cosmos.Nft.V1beta1.Nft.NFT]@
         * 'Proto.Cosmos.Nft.V1beta1.Genesis_Fields.vec'nfts' @:: Lens' Entry (Data.Vector.Vector Proto.Cosmos.Nft.V1beta1.Nft.NFT)@ -}
data Entry
  = Entry'_constructor {_Entry'owner :: !Data.Text.Text,
                        _Entry'nfts :: !(Data.Vector.Vector Proto.Cosmos.Nft.V1beta1.Nft.NFT),
                        _Entry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Entry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Entry "owner" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Entry'owner (\ x__ y__ -> x__ {_Entry'owner = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Entry "nfts" [Proto.Cosmos.Nft.V1beta1.Nft.NFT] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Entry'nfts (\ x__ y__ -> x__ {_Entry'nfts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Entry "vec'nfts" (Data.Vector.Vector Proto.Cosmos.Nft.V1beta1.Nft.NFT) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Entry'nfts (\ x__ y__ -> x__ {_Entry'nfts = y__}))
        Prelude.id
instance Data.ProtoLens.Message Entry where
  messageName _ = Data.Text.pack "cosmos.nft.v1beta1.Entry"
  packedMessageDescriptor _
    = "\n\
      \\ENQEntry\DC2\DC4\n\
      \\ENQowner\CAN\SOH \SOH(\tR\ENQowner\DC2+\n\
      \\EOTnfts\CAN\STX \ETX(\v2\ETB.cosmos.nft.v1beta1.NFTR\EOTnfts"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        owner__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "owner"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"owner")) ::
              Data.ProtoLens.FieldDescriptor Entry
        nfts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nfts"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Nft.V1beta1.Nft.NFT)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"nfts")) ::
              Data.ProtoLens.FieldDescriptor Entry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, owner__field_descriptor),
           (Data.ProtoLens.Tag 2, nfts__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Entry'_unknownFields
        (\ x__ y__ -> x__ {_Entry'_unknownFields = y__})
  defMessage
    = Entry'_constructor
        {_Entry'owner = Data.ProtoLens.fieldDefault,
         _Entry'nfts = Data.Vector.Generic.empty,
         _Entry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Entry
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Nft.V1beta1.Nft.NFT
             -> Data.ProtoLens.Encoding.Bytes.Parser Entry
        loop x mutable'nfts
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'nfts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'nfts)
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
                              (Data.ProtoLens.Field.field @"vec'nfts") frozen'nfts x))
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
                                       "owner"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"owner") y x)
                                  mutable'nfts
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "nfts"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'nfts y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'nfts
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'nfts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'nfts)
          "Entry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"owner") _x
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'nfts") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Entry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Entry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Entry'owner x__) (Control.DeepSeq.deepseq (_Entry'nfts x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Nft.V1beta1.Genesis_Fields.classes' @:: Lens' GenesisState [Proto.Cosmos.Nft.V1beta1.Nft.Class]@
         * 'Proto.Cosmos.Nft.V1beta1.Genesis_Fields.vec'classes' @:: Lens' GenesisState (Data.Vector.Vector Proto.Cosmos.Nft.V1beta1.Nft.Class)@
         * 'Proto.Cosmos.Nft.V1beta1.Genesis_Fields.entries' @:: Lens' GenesisState [Entry]@
         * 'Proto.Cosmos.Nft.V1beta1.Genesis_Fields.vec'entries' @:: Lens' GenesisState (Data.Vector.Vector Entry)@ -}
data GenesisState
  = GenesisState'_constructor {_GenesisState'classes :: !(Data.Vector.Vector Proto.Cosmos.Nft.V1beta1.Nft.Class),
                               _GenesisState'entries :: !(Data.Vector.Vector Entry),
                               _GenesisState'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GenesisState where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GenesisState "classes" [Proto.Cosmos.Nft.V1beta1.Nft.Class] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'classes
           (\ x__ y__ -> x__ {_GenesisState'classes = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'classes" (Data.Vector.Vector Proto.Cosmos.Nft.V1beta1.Nft.Class) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'classes
           (\ x__ y__ -> x__ {_GenesisState'classes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GenesisState "entries" [Entry] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'entries
           (\ x__ y__ -> x__ {_GenesisState'entries = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GenesisState "vec'entries" (Data.Vector.Vector Entry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GenesisState'entries
           (\ x__ y__ -> x__ {_GenesisState'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Message GenesisState where
  messageName _ = Data.Text.pack "cosmos.nft.v1beta1.GenesisState"
  packedMessageDescriptor _
    = "\n\
      \\fGenesisState\DC23\n\
      \\aclasses\CAN\SOH \ETX(\v2\EM.cosmos.nft.v1beta1.ClassR\aclasses\DC23\n\
      \\aentries\CAN\STX \ETX(\v2\EM.cosmos.nft.v1beta1.EntryR\aentries"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        classes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "classes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Nft.V1beta1.Nft.Class)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"classes")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Entry)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"entries")) ::
              Data.ProtoLens.FieldDescriptor GenesisState
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, classes__field_descriptor),
           (Data.ProtoLens.Tag 2, entries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GenesisState'_unknownFields
        (\ x__ y__ -> x__ {_GenesisState'_unknownFields = y__})
  defMessage
    = GenesisState'_constructor
        {_GenesisState'classes = Data.Vector.Generic.empty,
         _GenesisState'entries = Data.Vector.Generic.empty,
         _GenesisState'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GenesisState
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Nft.V1beta1.Nft.Class
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Entry
                -> Data.ProtoLens.Encoding.Bytes.Parser GenesisState
        loop x mutable'classes mutable'entries
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'classes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'classes)
                      frozen'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'entries)
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
                              (Data.ProtoLens.Field.field @"vec'classes") frozen'classes
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'entries") frozen'entries x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "classes"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'classes y)
                                loop x v mutable'entries
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "entries"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'entries y)
                                loop x mutable'classes v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'classes mutable'entries
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'classes <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'classes mutable'entries)
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'classes") _x))
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'entries") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GenesisState where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GenesisState'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GenesisState'classes x__)
                (Control.DeepSeq.deepseq (_GenesisState'entries x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ cosmos/nft/v1beta1/genesis.proto\DC2\DC2cosmos.nft.v1beta1\SUB\FScosmos/nft/v1beta1/nft.proto\"x\n\
    \\fGenesisState\DC23\n\
    \\aclasses\CAN\SOH \ETX(\v2\EM.cosmos.nft.v1beta1.ClassR\aclasses\DC23\n\
    \\aentries\CAN\STX \ETX(\v2\EM.cosmos.nft.v1beta1.EntryR\aentries\"J\n\
    \\ENQEntry\DC2\DC4\n\
    \\ENQowner\CAN\SOH \SOH(\tR\ENQowner\DC2+\n\
    \\EOTnfts\CAN\STX \ETX(\v2\ETB.cosmos.nft.v1beta1.NFTR\EOTnftsB\DC4Z\DC2cosmossdk.io/x/nftJ\141\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\ETB\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\ESC\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ETX\NUL&\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ENQ\NUL)\n\
    \B\n\
    \\STX\EOT\NUL\DC2\EOT\b\NUL\SO\SOH\SUB6 GenesisState defines the nft module's genesis state.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\b\b\DC4\n\
    \7\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\n\
    \\STX0\SUB* class defines the class of the nft type.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\n\
    \\v#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\n\
    \$+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\n\
    \./\n\
    \7\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\r\STX\GS\SUB* entry defines all nft owned by a person.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\r\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\r\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\r\ESC\FS\n\
    \5\n\
    \\STX\EOT\SOH\DC2\EOT\DC1\NUL\ETB\SOH\SUB) Entry Defines all nft owned by a person\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DC1\b\r\n\
    \>\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DC3\STX\DC3\SUB1 owner is the owner address of the following nft\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\DC3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DC3\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DC3\DC1\DC2\n\
    \8\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SYN\STX+\SUB+ nfts is a group of nfts of the same owner\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX\SYN\v!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SYN\"&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SYN)*b\ACKproto3"