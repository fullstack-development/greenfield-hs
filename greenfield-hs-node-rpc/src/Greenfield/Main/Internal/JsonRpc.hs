module Greenfield.Main.Internal.JsonRpc
  ( performJsonRpc,
  )
where

import Control.Lens
import Control.Monad.Catch
import qualified Data.Aeson as Aeson
import Data.IORef
import qualified Data.Text as Text
import Data.Word
import qualified Greenfield.Main.Internal.Types as G.Types
import qualified Network.HTTP.Req as HttpReq
import qualified System.IO.Unsafe

requestIdCounter :: IORef Word32
requestIdCounter =
  System.IO.Unsafe.unsafePerformIO $
    newIORef 0
{-# NOINLINE requestIdCounter #-}

genRequestId :: IO Word32
genRequestId = do
  atomicModifyIORef'
    requestIdCounter
    (\i -> (i + 1, i))

performJsonRpc ::
  forall b a.
  (Aeson.ToJSON a, Aeson.FromJSON b) =>
  G.Types.RpcConfig ->
  Text.Text ->
  a ->
  IO b
performJsonRpc G.Types.RpcConfig {..} requestMethod requestParams = do
  requestId <- genRequestId
  let request =
        G.Types.JsonRpcRequest
          { _jsonrpc = "2.0",
            _method = requestMethod,
            _id = requestId,
            _params = requestParams
          }
  response <-
    HttpReq.runReq rpcConfigHttpConfig $ do
      HttpReq.req
        HttpReq.POST
        rpcConfigUrl
        (HttpReq.ReqBodyJson request)
        (HttpReq.jsonResponse @(G.Types.JsonRpcResponse b))
        rpcConfigUrlOption
  case HttpReq.responseBody response ^. #_result of
    Just result ->
      pure result
    Nothing ->
      case HttpReq.responseBody response ^. #_error of
        Just err ->
          throwM err
        Nothing ->
          throwM $
            G.Types.JsonRpcResponseError
              { _code = -1,
                _message = Just "No result",
                _data = Nothing
              }
