{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeOperators #-}

module Server where

import API (GreenfieldAPI)
import Servant (Proxy (..), Server)
import Servant.API (type (:<|>) ((:<|>)))

greenfieldAPI :: Proxy GreenfieldAPI
greenfieldAPI = Proxy

server :: Server GreenfieldAPI
server =
  createAccountHandler
    :<|> depositHandler
    :<|> withdrawHandler
    :<|> listPaymentAccountsHandler
    :<|> getAccountBalanceHandler
    :<|> transferHandler

createAccountHandler = error "not implemented"

depositHandler = error "not implemented"

listPaymentAccountsHandler = error "not implemented"

getAccountBalanceHandler = error "not implemented"

withdrawHandler = error "not implemented"

transferHandler = error "not implemented"
