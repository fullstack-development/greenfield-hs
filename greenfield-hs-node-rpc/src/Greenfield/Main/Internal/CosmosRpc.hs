{-# OPTIONS_GHC -Wno-redundant-constraints #-}

module Greenfield.Main.Internal.CosmosRpc where

import Control.Lens
import Control.Monad
import Control.Monad.Catch
import qualified Data.ByteString.Base16 as BS.Base16
import qualified Data.ByteString.Base64 as BS.Base64
import Data.Int
import qualified Data.ProtoLens as ProtoLens
import qualified Data.ProtoLens.Service.Types as ProtoLens.Service
import Data.Proxy
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text.Encoding
import GHC.TypeLits (symbolVal)
import qualified Greenfield.Main.Internal.JsonRpc as G.JsonRpc
import qualified Greenfield.Main.Internal.Types as G.Types
import qualified Proto.Google.Protobuf.Any as Proto.Any
import qualified Proto.Google.Protobuf.Any_Fields as Proto.Any_Fields

invalidResultEncoding :: G.Types.CosmosRpcResponseError
invalidResultEncoding =
  G.Types.CosmosRpcResponseError
    { _code = -1,
      _log = Just "Invalid result encoding"
    }

prepareGrpcRequest ::
  forall s n.
  s ->
  (ProtoLens.Service.MethodStreamingType s n ~ 'ProtoLens.Service.NonStreaming) =>
  G.Types.MethodProxy s n ->
  ProtoLens.Service.MethodInput s n ->
  (Text.Text, Text.Text, Maybe Int64, Bool)
prepareGrpcRequest _ G.Types.MethodProxy input = do
  (path, hexData, Nothing, False)
  where
    hexData =
      BS.Base16.encodeBase16 $
        ProtoLens.encodeMessage input
    path =
      "/" <> serviceQualName <> "/" <> methodName
    serviceQualName =
      servicePackage <> "." <> serviceName
    servicePackage =
      Text.pack $ symbolVal $ Proxy @(ProtoLens.Service.ServicePackage s)
    serviceName =
      Text.pack $ symbolVal $ Proxy @(ProtoLens.Service.ServiceName s)
    methodName =
      Text.pack $ symbolVal $ Proxy @(ProtoLens.Service.MethodName s n)

performAbciQuery ::
  forall s n.
  G.Types.RpcConfig ->
  s ->
  (ProtoLens.Service.MethodStreamingType s n ~ 'ProtoLens.Service.NonStreaming) =>
  G.Types.MethodProxy s n ->
  ProtoLens.Service.MethodInput s n ->
  IO (ProtoLens.Service.MethodOutput s n)
performAbciQuery rpcConfig service methodProxy@G.Types.MethodProxy input = do
  let requestParams = prepareGrpcRequest service methodProxy input
  response <-
    G.JsonRpc.performJsonRpc @G.Types.AcbiQueryResponseWrapper
      rpcConfig
      "abci_query"
      requestParams
  case response ^. #_response . #_value of
    Nothing ->
      throwM $
        G.Types.CosmosRpcResponseError
          { _code = response ^. #_response ^. #_code,
            _log = Just $ response ^. #_response ^. #_log
          }
    Just valueBase64 -> do
      valueBytes <-
        either (const $ throwM invalidResultEncoding) pure $
          BS.Base64.decodeBase64 $
            Text.Encoding.encodeUtf8 $
              valueBase64
      value <-
        either (const $ throwM invalidResultEncoding) pure $
          ProtoLens.decodeMessage
            @(ProtoLens.Service.MethodOutput s n)
            valueBytes
      pure value

performGenesisQuery ::
  G.Types.RpcConfig ->
  IO G.Types.GenesisInfo
performGenesisQuery rpcConfig = do
  response <-
    G.JsonRpc.performJsonRpc @G.Types.GenesisInfoWrapper
      rpcConfig
      "genesis"
      ()
  pure $ response ^. #_genesis

parseProtoAny ::
  forall a.
  (ProtoLens.Message a) =>
  Proto.Any.Any ->
  IO a
parseProtoAny input =
  maybe
    (throwM invalidResultEncoding)
    pure
    (parseProtoAnyPure True input)

parseProtoAnyUnchecked ::
  forall a.
  (ProtoLens.Message a) =>
  Proto.Any.Any ->
  IO a
parseProtoAnyUnchecked input =
  maybe
    (throwM invalidResultEncoding)
    pure
    (parseProtoAnyPure False input)

parseProtoAnyPure ::
  forall a.
  (ProtoLens.Message a) =>
  Bool ->
  Proto.Any.Any ->
  Maybe a
parseProtoAnyPure checkTypeUrl input = do
  when checkTypeUrl $ do
    let actualTypename = input ^. Proto.Any_Fields.typeUrl
    let expectedTypename = "/" <> ProtoLens.messageName (Proxy @a)
    guard (actualTypename == expectedTypename)
  let actualValueBytes = input ^. Proto.Any_Fields.value
  case ProtoLens.decodeMessage actualValueBytes of
    Left _ -> Nothing
    Right r -> Just r

toProtoAny ::
  forall a.
  (ProtoLens.Message a) =>
  a ->
  Proto.Any.Any
toProtoAny x =
  ProtoLens.defMessage @Proto.Any.Any
    & Proto.Any_Fields.typeUrl
      .~ ("/" <> ProtoLens.messageName (Proxy @a))
    & Proto.Any_Fields.value
      .~ ProtoLens.encodeMessage x
