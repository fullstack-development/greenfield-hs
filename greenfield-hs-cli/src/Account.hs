{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE StrictData #-}

module Account where

import Account.Cli
import Account.Impl
import App (App)

execCmd :: Options -> App ()
execCmd CreatePaymentAccount = createPaymentAccount
execCmd (Deposit toAddress amount) = deposit toAddress amount
execCmd (Withdraw fromAddress amount) = withdraw fromAddress amount
execCmd (ListPaymentAccounts ownerAddress) = listPaymentAccounts ownerAddress
execCmd (GetAccountBalance address) = getAccountBalance address
execCmd (Transfer toAddress amount) = transfer toAddress amount
