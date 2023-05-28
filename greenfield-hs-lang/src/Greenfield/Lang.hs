{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}

module Greenfield.Lang where

import qualified Data.Aeson as Aeson
import qualified Data.Aeson.TH as Aeson.TH
import Data.Coerce
import Data.Kind
import Data.Typeable
import Data.Void

data family RequestParams r :: Type

data family RequestInputChunk r :: Type

data family RequestOutputChunk r :: Type

data family RequestResult r :: Type

class
  ( Typeable r,
    Aeson.ToJSON r,
    Aeson.FromJSON r,
    Aeson.ToJSON (RequestInputChunk r),
    Aeson.FromJSON (RequestInputChunk r),
    Aeson.ToJSON (RequestOutputChunk r),
    Aeson.FromJSON (RequestOutputChunk r),
    Aeson.ToJSON (RequestResult r),
    Aeson.FromJSON (RequestResult r)
  ) =>
  StreamingRequest r

class
  ( StreamingRequest r,
    Coercible (RequestInputChunk r) Void,
    Coercible Void (RequestInputChunk r),
    Coercible (RequestOutputChunk r) Void,
    Coercible Void (RequestOutputChunk r)
  ) =>
  Request r

data ObjectUpload = ObjectUpload

newtype instance RequestInputChunk ObjectUpload
  = ObjectUploadInputChunk String

newtype instance RequestOutputChunk ObjectUpload
  = ObjectUploadOutputChunk Void

data instance RequestResult ObjectUpload
  = ObjectUploadResult

Aeson.TH.deriveJSON Aeson.TH.defaultOptions 'ObjectUpload
Aeson.TH.deriveJSON Aeson.TH.defaultOptions 'ObjectUploadInputChunk
Aeson.TH.deriveJSON Aeson.TH.defaultOptions 'ObjectUploadOutputChunk
Aeson.TH.deriveJSON Aeson.TH.defaultOptions 'ObjectUploadResult

instance StreamingRequest ObjectUpload

data ObjectDownload = ObjectDownload

newtype instance RequestInputChunk ObjectDownload
  = ObjectDownloadInputChunk Void

newtype instance RequestOutputChunk ObjectDownload
  = ObjectDownloadOutputChunk String

data instance RequestResult ObjectDownload
  = ObjectDownloadResult

Aeson.TH.deriveJSON Aeson.TH.defaultOptions 'ObjectDownload
Aeson.TH.deriveJSON Aeson.TH.defaultOptions 'ObjectDownloadInputChunk
Aeson.TH.deriveJSON Aeson.TH.defaultOptions 'ObjectDownloadOutputChunk
Aeson.TH.deriveJSON Aeson.TH.defaultOptions 'ObjectDownloadResult

instance StreamingRequest ObjectDownload

class
  ( forall m.
    RpcInstanceSupportMonad i m =>
    Monad m
  ) =>
  RpcInstance i
  where
  type RpcInstanceSupportMonad i (m :: Type -> Type) :: Constraint

  runRpcStreamingRequest ::
    (RpcInstanceSupportMonad i m, StreamingRequest r) =>
    i ->
    -- | An RPC connection or instance
    r ->
    -- | Request parameters
    m (Maybe (RequestInputChunk r)) ->
    -- | A generator of input chunks
    (RequestOutputChunk r -> m ()) ->
    -- | A consumer of output chunks
    m (RequestResult r)

  runRpcRequest ::
    (RpcInstanceSupportMonad i m, Request r) =>
    i ->
    -- | An RPC connection or instance
    r ->
    -- | Request parameters
    m (RequestResult r)
  runRpcRequest inst req =
    runRpcStreamingRequest
      inst
      req
      (pure Nothing)
      (absurd . coerce)

type RpcMonad i m = (RpcInstance i, RpcInstanceSupportMonad i m)
