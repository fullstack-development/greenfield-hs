{-# LANGUAGE TemplateHaskell #-}

module Greenfield.Main.Internal.Types where

import Control.Exception
import qualified Data.Aeson as Aeson
import qualified Data.Aeson.TH as Aeson.TH
import Data.Generics.Labels ()
import Data.Kind
import qualified Data.ProtoLens.Service.Types as ProtoLens.Service
import qualified Data.Text as Text
import Data.Typeable
import Data.Word
import GHC.Generics
import GHC.OverloadedLabels
import GHC.TypeLits (Symbol)
import qualified Greenfield.Main.Internal.Types.Util as G.Types.Util
import qualified Network.HTTP.Req as HttpReq

data MethodProxy (s :: Type) (n :: Symbol)
  = (ProtoLens.Service.HasMethod s n) =>
    MethodProxy

instance (n ~ x, ProtoLens.Service.HasMethod s n) => IsLabel x (MethodProxy s n) where
  fromLabel = MethodProxy

data RpcConfig = forall scheme.
  (Typeable scheme) =>
  RpcConfig
  { rpcConfigHttpConfig :: HttpReq.HttpConfig,
    rpcConfigUrl :: HttpReq.Url scheme,
    rpcConfigUrlOption :: HttpReq.Option scheme
  }

data JsonRpcRequest a = JsonRpcRequest
  { _jsonrpc :: Text.Text,
    _method :: Text.Text,
    _id :: Word32,
    _params :: a
  }
  deriving (Show, Generic)

data JsonRpcResponse a = JsonRpcResponse
  { _jsonrpc :: Text.Text,
    _id :: Word32,
    _result :: Maybe a,
    _error :: Maybe JsonRpcResponseError
  }
  deriving (Show, Generic)

data JsonRpcResponseError = JsonRpcResponseError
  { _code :: Int,
    _message :: Maybe Text.Text,
    _data :: Maybe Aeson.Value
  }
  deriving (Show, Generic)

instance Exception JsonRpcResponseError

data AcbiQueryResponseWrapper = AcbiQueryResponseWrapper
  { _response :: AcbiQueryResponse
  }
  deriving (Show, Generic)

data AcbiQueryResponse = AcbiQueryResponse
  { _code :: Int,
    _log :: Text.Text,
    _info :: Text.Text,
    _index :: Text.Text,
    _key :: Maybe Text.Text,
    _value :: Maybe Text.Text,
    _height :: Text.Text,
    _codespace :: Text.Text
  }
  deriving (Show, Generic)

data GenesisInfoWrapper = GenesisInfoWrapper
  { _genesis :: GenesisInfo
  }
  deriving (Show, Generic)

data GenesisInfo = GenesisInfo
  { _chain_id :: Text.Text
  }
  deriving (Show, Generic)

data CosmosRpcResponseError = CosmosRpcResponseError
  { _code :: Int,
    _log :: Maybe Text.Text
  }
  deriving (Show, Generic)

instance Exception CosmosRpcResponseError

Aeson.TH.deriveJSON G.Types.Util.stripUnderscoreOptions ''GenesisInfo
Aeson.TH.deriveJSON G.Types.Util.stripUnderscoreOptions ''GenesisInfoWrapper
Aeson.TH.deriveJSON G.Types.Util.stripUnderscoreOptions ''AcbiQueryResponse
Aeson.TH.deriveJSON G.Types.Util.stripUnderscoreOptions ''AcbiQueryResponseWrapper
Aeson.TH.deriveJSON G.Types.Util.stripUnderscoreOptions ''JsonRpcResponseError
Aeson.TH.deriveJSON G.Types.Util.stripUnderscoreOptions ''JsonRpcResponse
Aeson.TH.deriveJSON G.Types.Util.stripUnderscoreOptions ''JsonRpcRequest
