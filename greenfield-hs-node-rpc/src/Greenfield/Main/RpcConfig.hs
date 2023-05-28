module Greenfield.Main.RpcConfig
  ( G.Types.RpcConfig (..),
    defaultRpcConfig,
  )
where

import qualified Data.Text as Text
import qualified Greenfield.Main.Internal.Types as G.Types
import qualified Network.HTTP.Req as HttpReq
import qualified Text.URI

defaultRpcConfig ::
  Text.Text ->
  G.Types.RpcConfig
defaultRpcConfig url = do
  case Text.URI.mkURI url >>= HttpReq.useURI of
    Nothing -> error $ "invalid URL: " <> show url
    Just (Left (reqUrl, reqUrlOption)) ->
      G.Types.RpcConfig
        { rpcConfigHttpConfig = HttpReq.defaultHttpConfig,
          rpcConfigUrl = reqUrl,
          rpcConfigUrlOption = reqUrlOption
        }
    Just (Right (reqUrl, reqUrlOption)) ->
      G.Types.RpcConfig
        { rpcConfigHttpConfig = HttpReq.defaultHttpConfig,
          rpcConfigUrl = reqUrl,
          rpcConfigUrlOption = reqUrlOption
        }
