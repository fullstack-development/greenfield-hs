module Account.Impl where

import App
import Control.Monad.IO.Class (MonadIO (..))
import Greenfield.Main as Node
import Text.Printf (printf)

createPaymentAccount :: App ()
createPaymentAccount = do
  txHash <- liftIO $ Node.createPaymentAccount Node.testConfig Node.testAddr Node.testSecKey -- TODO: parse account address from password file
  liftIO $ printf "Create payment account success. TxHash: %s" (show txHash)

deposit toAddress amount = undefined

withdraw fromAddress amount = undefined

listPaymentAccounts ownerAddress = undefined

getAccountBalance address = undefined

transfer toAddress amount = undefined
