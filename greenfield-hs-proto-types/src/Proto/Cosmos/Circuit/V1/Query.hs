{- This file was auto-generated from cosmos/circuit/v1/query.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Cosmos.Circuit.V1.Query (
        Query(..), AccountResponse(), AccountsResponse(),
        DisabledListResponse(), QueryAccountRequest(),
        QueryAccountsRequest(), QueryDisabledListRequest()
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
import qualified Proto.Cosmos.Base.Query.V1beta1.Pagination
import qualified Proto.Cosmos.Circuit.V1.Types
import qualified Proto.Cosmos.Query.V1.Query
import qualified Proto.Google.Api.Annotations
{- | Fields :
     
         * 'Proto.Cosmos.Circuit.V1.Query_Fields.permission' @:: Lens' AccountResponse Proto.Cosmos.Circuit.V1.Types.Permissions@
         * 'Proto.Cosmos.Circuit.V1.Query_Fields.maybe'permission' @:: Lens' AccountResponse (Prelude.Maybe Proto.Cosmos.Circuit.V1.Types.Permissions)@ -}
data AccountResponse
  = AccountResponse'_constructor {_AccountResponse'permission :: !(Prelude.Maybe Proto.Cosmos.Circuit.V1.Types.Permissions),
                                  _AccountResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AccountResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AccountResponse "permission" Proto.Cosmos.Circuit.V1.Types.Permissions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccountResponse'permission
           (\ x__ y__ -> x__ {_AccountResponse'permission = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccountResponse "maybe'permission" (Prelude.Maybe Proto.Cosmos.Circuit.V1.Types.Permissions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccountResponse'permission
           (\ x__ y__ -> x__ {_AccountResponse'permission = y__}))
        Prelude.id
instance Data.ProtoLens.Message AccountResponse where
  messageName _ = Data.Text.pack "cosmos.circuit.v1.AccountResponse"
  packedMessageDescriptor _
    = "\n\
      \\SIAccountResponse\DC2>\n\
      \\n\
      \permission\CAN\SOH \SOH(\v2\RS.cosmos.circuit.v1.PermissionsR\n\
      \permission"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        permission__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "permission"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Circuit.V1.Types.Permissions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'permission")) ::
              Data.ProtoLens.FieldDescriptor AccountResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, permission__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AccountResponse'_unknownFields
        (\ x__ y__ -> x__ {_AccountResponse'_unknownFields = y__})
  defMessage
    = AccountResponse'_constructor
        {_AccountResponse'permission = Prelude.Nothing,
         _AccountResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AccountResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser AccountResponse
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
                                       "permission"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"permission") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AccountResponse"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'permission") _x
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
instance Control.DeepSeq.NFData AccountResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AccountResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq (_AccountResponse'permission x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Circuit.V1.Query_Fields.accounts' @:: Lens' AccountsResponse [Proto.Cosmos.Circuit.V1.Types.GenesisAccountPermissions]@
         * 'Proto.Cosmos.Circuit.V1.Query_Fields.vec'accounts' @:: Lens' AccountsResponse (Data.Vector.Vector Proto.Cosmos.Circuit.V1.Types.GenesisAccountPermissions)@
         * 'Proto.Cosmos.Circuit.V1.Query_Fields.pagination' @:: Lens' AccountsResponse Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse@
         * 'Proto.Cosmos.Circuit.V1.Query_Fields.maybe'pagination' @:: Lens' AccountsResponse (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)@ -}
data AccountsResponse
  = AccountsResponse'_constructor {_AccountsResponse'accounts :: !(Data.Vector.Vector Proto.Cosmos.Circuit.V1.Types.GenesisAccountPermissions),
                                   _AccountsResponse'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse),
                                   _AccountsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AccountsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AccountsResponse "accounts" [Proto.Cosmos.Circuit.V1.Types.GenesisAccountPermissions] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccountsResponse'accounts
           (\ x__ y__ -> x__ {_AccountsResponse'accounts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AccountsResponse "vec'accounts" (Data.Vector.Vector Proto.Cosmos.Circuit.V1.Types.GenesisAccountPermissions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccountsResponse'accounts
           (\ x__ y__ -> x__ {_AccountsResponse'accounts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AccountsResponse "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccountsResponse'pagination
           (\ x__ y__ -> x__ {_AccountsResponse'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AccountsResponse "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AccountsResponse'pagination
           (\ x__ y__ -> x__ {_AccountsResponse'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message AccountsResponse where
  messageName _ = Data.Text.pack "cosmos.circuit.v1.AccountsResponse"
  packedMessageDescriptor _
    = "\n\
      \\DLEAccountsResponse\DC2H\n\
      \\baccounts\CAN\SOH \ETX(\v2,.cosmos.circuit.v1.GenesisAccountPermissionsR\baccounts\DC2G\n\
      \\n\
      \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
      \pagination"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        accounts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "accounts"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Circuit.V1.Types.GenesisAccountPermissions)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"accounts")) ::
              Data.ProtoLens.FieldDescriptor AccountsResponse
        pagination__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagination"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Cosmos.Base.Query.V1beta1.Pagination.PageResponse)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagination")) ::
              Data.ProtoLens.FieldDescriptor AccountsResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, accounts__field_descriptor),
           (Data.ProtoLens.Tag 2, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AccountsResponse'_unknownFields
        (\ x__ y__ -> x__ {_AccountsResponse'_unknownFields = y__})
  defMessage
    = AccountsResponse'_constructor
        {_AccountsResponse'accounts = Data.Vector.Generic.empty,
         _AccountsResponse'pagination = Prelude.Nothing,
         _AccountsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AccountsResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Cosmos.Circuit.V1.Types.GenesisAccountPermissions
             -> Data.ProtoLens.Encoding.Bytes.Parser AccountsResponse
        loop x mutable'accounts
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'accounts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'accounts)
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
                              (Data.ProtoLens.Field.field @"vec'accounts") frozen'accounts x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "accounts"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'accounts y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "pagination"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pagination") y x)
                                  mutable'accounts
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'accounts
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'accounts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'accounts)
          "AccountsResponse"
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
                   (Data.ProtoLens.Field.field @"vec'accounts") _x))
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
instance Control.DeepSeq.NFData AccountsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AccountsResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AccountsResponse'accounts x__)
                (Control.DeepSeq.deepseq (_AccountsResponse'pagination x__) ()))
{- | Fields :
     
         * 'Proto.Cosmos.Circuit.V1.Query_Fields.disabledList' @:: Lens' DisabledListResponse [Data.Text.Text]@
         * 'Proto.Cosmos.Circuit.V1.Query_Fields.vec'disabledList' @:: Lens' DisabledListResponse (Data.Vector.Vector Data.Text.Text)@ -}
data DisabledListResponse
  = DisabledListResponse'_constructor {_DisabledListResponse'disabledList :: !(Data.Vector.Vector Data.Text.Text),
                                       _DisabledListResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DisabledListResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DisabledListResponse "disabledList" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DisabledListResponse'disabledList
           (\ x__ y__ -> x__ {_DisabledListResponse'disabledList = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DisabledListResponse "vec'disabledList" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DisabledListResponse'disabledList
           (\ x__ y__ -> x__ {_DisabledListResponse'disabledList = y__}))
        Prelude.id
instance Data.ProtoLens.Message DisabledListResponse where
  messageName _
    = Data.Text.pack "cosmos.circuit.v1.DisabledListResponse"
  packedMessageDescriptor _
    = "\n\
      \\DC4DisabledListResponse\DC2#\n\
      \\rdisabled_list\CAN\SOH \ETX(\tR\fdisabledList"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        disabledList__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disabled_list"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"disabledList")) ::
              Data.ProtoLens.FieldDescriptor DisabledListResponse
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, disabledList__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DisabledListResponse'_unknownFields
        (\ x__ y__ -> x__ {_DisabledListResponse'_unknownFields = y__})
  defMessage
    = DisabledListResponse'_constructor
        {_DisabledListResponse'disabledList = Data.Vector.Generic.empty,
         _DisabledListResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DisabledListResponse
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser DisabledListResponse
        loop x mutable'disabledList
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'disabledList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'disabledList)
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
                              (Data.ProtoLens.Field.field @"vec'disabledList")
                              frozen'disabledList x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "disabled_list"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'disabledList y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'disabledList
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'disabledList <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'disabledList)
          "DisabledListResponse"
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
                           Data.Text.Encoding.encodeUtf8 _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'disabledList") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DisabledListResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DisabledListResponse'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DisabledListResponse'disabledList x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Circuit.V1.Query_Fields.address' @:: Lens' QueryAccountRequest Data.Text.Text@ -}
data QueryAccountRequest
  = QueryAccountRequest'_constructor {_QueryAccountRequest'address :: !Data.Text.Text,
                                      _QueryAccountRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAccountRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAccountRequest "address" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountRequest'address
           (\ x__ y__ -> x__ {_QueryAccountRequest'address = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAccountRequest where
  messageName _
    = Data.Text.pack "cosmos.circuit.v1.QueryAccountRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC3QueryAccountRequest\DC2\CAN\n\
      \\aaddress\CAN\SOH \SOH(\tR\aaddress"
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
              Data.ProtoLens.FieldDescriptor QueryAccountRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAccountRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryAccountRequest'_unknownFields = y__})
  defMessage
    = QueryAccountRequest'_constructor
        {_QueryAccountRequest'address = Data.ProtoLens.fieldDefault,
         _QueryAccountRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAccountRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAccountRequest
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QueryAccountRequest"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryAccountRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAccountRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryAccountRequest'address x__) ())
{- | Fields :
     
         * 'Proto.Cosmos.Circuit.V1.Query_Fields.pagination' @:: Lens' QueryAccountsRequest Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest@
         * 'Proto.Cosmos.Circuit.V1.Query_Fields.maybe'pagination' @:: Lens' QueryAccountsRequest (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest)@ -}
data QueryAccountsRequest
  = QueryAccountsRequest'_constructor {_QueryAccountsRequest'pagination :: !(Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest),
                                       _QueryAccountsRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryAccountsRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryAccountsRequest "pagination" Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountsRequest'pagination
           (\ x__ y__ -> x__ {_QueryAccountsRequest'pagination = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QueryAccountsRequest "maybe'pagination" (Prelude.Maybe Proto.Cosmos.Base.Query.V1beta1.Pagination.PageRequest) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QueryAccountsRequest'pagination
           (\ x__ y__ -> x__ {_QueryAccountsRequest'pagination = y__}))
        Prelude.id
instance Data.ProtoLens.Message QueryAccountsRequest where
  messageName _
    = Data.Text.pack "cosmos.circuit.v1.QueryAccountsRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC4QueryAccountsRequest\DC2F\n\
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
              Data.ProtoLens.FieldDescriptor QueryAccountsRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pagination__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryAccountsRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryAccountsRequest'_unknownFields = y__})
  defMessage
    = QueryAccountsRequest'_constructor
        {_QueryAccountsRequest'pagination = Prelude.Nothing,
         _QueryAccountsRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryAccountsRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryAccountsRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryAccountsRequest"
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
instance Control.DeepSeq.NFData QueryAccountsRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryAccountsRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq (_QueryAccountsRequest'pagination x__) ())
{- | Fields :
      -}
data QueryDisabledListRequest
  = QueryDisabledListRequest'_constructor {_QueryDisabledListRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryDisabledListRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message QueryDisabledListRequest where
  messageName _
    = Data.Text.pack "cosmos.circuit.v1.QueryDisabledListRequest"
  packedMessageDescriptor _
    = "\n\
      \\CANQueryDisabledListRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QueryDisabledListRequest'_unknownFields
        (\ x__ y__ -> x__ {_QueryDisabledListRequest'_unknownFields = y__})
  defMessage
    = QueryDisabledListRequest'_constructor
        {_QueryDisabledListRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QueryDisabledListRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser QueryDisabledListRequest
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
          (do loop Data.ProtoLens.defMessage) "QueryDisabledListRequest"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData QueryDisabledListRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QueryDisabledListRequest'_unknownFields x__) ()
data Query = Query {}
instance Data.ProtoLens.Service.Types.Service Query where
  type ServiceName Query = "Query"
  type ServicePackage Query = "cosmos.circuit.v1"
  type ServiceMethods Query = '["account",
                                "accounts",
                                "disabledList"]
  packedServiceDescriptor _
    = "\n\
      \\ENQQuery\DC2\137\SOH\n\
      \\aAccount\DC2&.cosmos.circuit.v1.QueryAccountRequest\SUB\".cosmos.circuit.v1.AccountResponse\"2\136\231\176*\SOH\130\211\228\147\STX'\DC2%/cosmos/circuit/v1/accounts/{address}\DC2\130\SOH\n\
      \\bAccounts\DC2'.cosmos.circuit.v1.QueryAccountsRequest\SUB#.cosmos.circuit.v1.AccountsResponse\"(\136\231\176*\SOH\130\211\228\147\STX\GS\DC2\ESC/cosmos/circuit/v1/accounts\DC2\146\SOH\n\
      \\fDisabledList\DC2+.cosmos.circuit.v1.QueryDisabledListRequest\SUB'.cosmos.circuit.v1.DisabledListResponse\",\136\231\176*\SOH\130\211\228\147\STX!\DC2\US/cosmos/circuit/v1/disable_list"
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "account" where
  type MethodName Query "account" = "Account"
  type MethodInput Query "account" = QueryAccountRequest
  type MethodOutput Query "account" = AccountResponse
  type MethodStreamingType Query "account" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "accounts" where
  type MethodName Query "accounts" = "Accounts"
  type MethodInput Query "accounts" = QueryAccountsRequest
  type MethodOutput Query "accounts" = AccountsResponse
  type MethodStreamingType Query "accounts" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Query "disabledList" where
  type MethodName Query "disabledList" = "DisabledList"
  type MethodInput Query "disabledList" = QueryDisabledListRequest
  type MethodOutput Query "disabledList" = DisabledListResponse
  type MethodStreamingType Query "disabledList" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\GScosmos/circuit/v1/query.proto\DC2\DC1cosmos.circuit.v1\SUB*cosmos/base/query/v1beta1/pagination.proto\SUB\GScosmos/circuit/v1/types.proto\SUB\FSgoogle/api/annotations.proto\SUB\ESCcosmos/query/v1/query.proto\"/\n\
    \\DC3QueryAccountRequest\DC2\CAN\n\
    \\aaddress\CAN\SOH \SOH(\tR\aaddress\"Q\n\
    \\SIAccountResponse\DC2>\n\
    \\n\
    \permission\CAN\SOH \SOH(\v2\RS.cosmos.circuit.v1.PermissionsR\n\
    \permission\"^\n\
    \\DC4QueryAccountsRequest\DC2F\n\
    \\n\
    \pagination\CAN\SOH \SOH(\v2&.cosmos.base.query.v1beta1.PageRequestR\n\
    \pagination\"\165\SOH\n\
    \\DLEAccountsResponse\DC2H\n\
    \\baccounts\CAN\SOH \ETX(\v2,.cosmos.circuit.v1.GenesisAccountPermissionsR\baccounts\DC2G\n\
    \\n\
    \pagination\CAN\STX \SOH(\v2'.cosmos.base.query.v1beta1.PageResponseR\n\
    \pagination\"\SUB\n\
    \\CANQueryDisabledListRequest\";\n\
    \\DC4DisabledListResponse\DC2#\n\
    \\rdisabled_list\CAN\SOH \ETX(\tR\fdisabledList2\173\ETX\n\
    \\ENQQuery\DC2\137\SOH\n\
    \\aAccount\DC2&.cosmos.circuit.v1.QueryAccountRequest\SUB\".cosmos.circuit.v1.AccountResponse\"2\136\231\176*\SOH\130\211\228\147\STX'\DC2%/cosmos/circuit/v1/accounts/{address}\DC2\130\SOH\n\
    \\bAccounts\DC2'.cosmos.circuit.v1.QueryAccountsRequest\SUB#.cosmos.circuit.v1.AccountsResponse\"(\136\231\176*\SOH\130\211\228\147\STX\GS\DC2\ESC/cosmos/circuit/v1/accounts\DC2\146\SOH\n\
    \\fDisabledList\DC2+.cosmos.circuit.v1.QueryDisabledListRequest\SUB'.cosmos.circuit.v1.DisabledListResponse\",\136\231\176*\SOH\130\211\228\147\STX!\DC2\US/cosmos/circuit/v1/disable_listB\RSZ\FScosmossdk.io/x/circuit/typesJ\212\r\n\
    \\ACK\DC2\EOT\NUL\NUL<\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\SOH\NUL\SUB\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETX\NUL3\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETX\NUL3\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\ENQ\NUL4\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL&\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL%\n\
    \1\n\
    \\STX\ACK\NUL\DC2\EOT\v\NUL\GS\SOH\SUB% Msg defines the crisis Msg service.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\v\b\r\n\
    \4\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\r\STX\DLE\ETX\SUB& Account returns account permissions.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\r\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\r\SO!\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\r,;\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\SO\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\NUL\EOT\241\140\166\ENQ\DC2\ETX\SO\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\EOT\DC2\ETX\SI\EOTY\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\NUL\EOT\176\202\188\"\STX\DC2\ETX\SI\EOTY\n\
    \4\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\EOT\DC3\STX\SYN\ETX\SUB& Account returns account permissions.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\DC3\ACK\SO\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\DC3\SI#\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\DC3.>\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\DC4\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\SOH\EOT\241\140\166\ENQ\DC2\ETX\DC4\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\EOT\DC2\ETX\NAK\EOTO\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\SOH\EOT\176\202\188\"\STX\DC2\ETX\NAK\EOTO\n\
    \D\n\
    \\EOT\ACK\NUL\STX\STX\DC2\EOT\EM\STX\FS\ETX\SUB6 DisabledList returns a list of disabled message urls\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\EM\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\EM\DC3+\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\EM6J\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\SUB\EOT6\n\
    \\DLE\n\
    \\t\ACK\NUL\STX\STX\EOT\241\140\166\ENQ\DC2\ETX\SUB\EOT6\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\EOT\DC2\ETX\ESC\EOTS\n\
    \\DC1\n\
    \\n\
    \\ACK\NUL\STX\STX\EOT\176\202\188\"\STX\DC2\ETX\ESC\EOTS\n\
    \W\n\
    \\STX\EOT\NUL\DC2\EOT \NUL\"\SOH\SUBK QueryAccountRequest is the request type for the Query/Account RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX \b\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX!\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX!\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX!\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX!\DC3\DC4\n\
    \T\n\
    \\STX\EOT\SOH\DC2\EOT%\NUL'\SOH\SUBH AccountResponse is the response type for the Query/Account RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX%\b\ETB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX&\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX&\STX\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX&\SO\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX&\ESC\FS\n\
    \Y\n\
    \\STX\EOT\STX\DC2\EOT*\NUL-\SOH\SUBM QueryAccountsRequest is the request type for the Query/Accounts RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX*\b\FS\n\
    \I\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX,\STX7\SUB< pagination defines an optional pagination for the request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX,\STX'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX,(2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX,56\n\
    \V\n\
    \\STX\EOT\ETX\DC2\EOT0\NUL4\SOH\SUBJ AccountsResponse is the response type for the Query/Accounts RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX0\b\CAN\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX1\STX2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\ETX1\v$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX1%-\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX101\n\
    \A\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX3\STX8\SUB4 pagination defines the pagination in the response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX3\STX(\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX3)3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX367\n\
    \_\n\
    \\STX\EOT\EOT\DC2\ETX7\NUL#\SUBT QueryDisableListRequest is the request type for the Query/DisabledList RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX7\b \n\
    \^\n\
    \\STX\EOT\ENQ\DC2\EOT:\NUL<\SOH\SUBR DisabledListResponse is the response type for the Query/DisabledList RPC method.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX:\b\FS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX;\STX$\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX;\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX;\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX;\"#b\ACKproto3"