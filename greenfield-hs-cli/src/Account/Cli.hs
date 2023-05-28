{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}

module Account.Cli where

import Options.Applicative qualified as Opt
import Types (Address, Amount)

data Options
  = CreatePaymentAccount
  | Deposit Address Amount
  | Withdraw Address Amount
  | ListPaymentAccounts Address
  | GetAccountBalance Address
  | Transfer Address Amount

createAccountP :: Opt.Parser Options
createAccountP = pure CreatePaymentAccount

depositP :: Opt.Parser Options
depositP =
  Deposit
    <$> Opt.strOption
      ( mconcat
          [ Opt.long "toAddress",
            Opt.help "the stream account"
          ]
      )
    <*> Opt.option
      Opt.auto
      ( mconcat
          [ Opt.long "amount",
            Opt.help "the amount to be deposited"
          ]
      )

withdrawP :: Opt.Parser Options
withdrawP =
  Withdraw
    <$> Opt.strOption
      ( mconcat
          [ Opt.long "fromAddress",
            Opt.help "the stream account"
          ]
      )
    <*> Opt.option
      Opt.auto
      ( mconcat
          [ Opt.long "amount",
            Opt.help "the amount to be withdrawed"
          ]
      )

lsP :: Opt.Parser Options
lsP =
  ListPaymentAccounts
    <$> Opt.strOption
      ( mconcat
          [ Opt.long "ownerAddress",
            Opt.help "incicate a owner's payment accounts to be list, account address can be omitted for current user's accounts listing"
          ]
      )

balanceP :: Opt.Parser Options
balanceP =
  GetAccountBalance
    <$> Opt.strOption
      ( mconcat
          [ Opt.long "address",
            Opt.help "indicate the address's balance to be retrieved"
          ]
      )

transferP :: Opt.Parser Options
transferP =
  Transfer
    <$> Opt.strOption
      ( mconcat
          [ Opt.long "toAddress",
            Opt.help "the receiver address in BSC"
          ]
      )
    <*> Opt.option
      Opt.auto
      ( mconcat
          [ Opt.long "amount",
            Opt.help "the amount to be sent"
          ]
      )

optionsP :: Opt.Parser Options
optionsP =
  Opt.hsubparser $
    mconcat
      [ Opt.command "create-account" $ Opt.info createAccountP (Opt.progDesc "Create a payment account"),
        Opt.command "deposit" $ Opt.info depositP (Opt.progDesc "Deposit into stream(payment) account"),
        Opt.command "withdraw" $ Opt.info withdrawP (Opt.progDesc "Withdraw from stream(payment) account"),
        Opt.command "ls" $ Opt.info lsP (Opt.progDesc "List payment accounts of the owner"),
        Opt.command "balance" $ Opt.info balanceP (Opt.progDesc "Query an account's balance"),
        Opt.command "transfer" $ Opt.info transferP (Opt.progDesc "Transfer from your account to a dest account")
      ]
