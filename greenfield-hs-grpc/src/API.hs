{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TypeOperators #-}

module API where

import Data.Aeson
import Data.Text (Text)
import GHC.Generics (Generic)
import Servant.API

type GreenfieldAPI =
  "payment"
    :> ( "create-account" :> Post '[JSON] TxHash
           :<|> "deposit" :> ReqBody '[JSON] DepositData :> Post '[JSON] TxHash
           :<|> "withdraw" :> ReqBody '[JSON] WithdrawData :> Post '[JSON] TxHash
           :<|> "ls" :> QueryParam "ownerAddress" Text :> Get '[JSON] [Account]
           :<|> "balance" :> QueryParam "address" Text :> Get '[JSON] Amount
           :<|> "transfer" :> ReqBody '[JSON] TransferBody :> Post '[JSON] TxHash
       )

data Account = Account {accountId :: Int, accountAddress :: Text}
  deriving stock (Generic)

instance FromJSON Account where
  parseJSON = genericParseJSON defaultOptions {fieldLabelModifier = camelTo2 '_' . drop 7}

instance ToJSON Account where
  toJSON = genericToJSON defaultOptions {fieldLabelModifier = camelTo2 '_' . drop 7}

newtype Amount = Amount Rational
  deriving newtype (ToJSON, FromJSON)

newtype TxHash = TxHash Text
  deriving newtype (ToJSON, FromJSON)

data DepositData = DepositData
  { depositToAddress :: Text,
    depositAmount :: Int
  }
  deriving stock (Generic)

instance FromJSON DepositData where
  parseJSON = genericParseJSON defaultOptions {fieldLabelModifier = camelTo2 '_' . drop 7}

instance ToJSON DepositData where
  toJSON = genericToJSON defaultOptions {fieldLabelModifier = camelTo2 '_' . drop 7}

data WithdrawData = WithdrawData
  { withdrawFromAddress :: Text,
    withdrawAmount :: Int
  }
  deriving stock (Generic)

instance FromJSON WithdrawData where
  parseJSON = genericParseJSON defaultOptions {fieldLabelModifier = camelTo2 '_' . drop 8}

instance ToJSON WithdrawData where
  toJSON = genericToJSON defaultOptions {fieldLabelModifier = camelTo2 '_' . drop 8}

data TransferBody = TransferBody
  { transferToAddress :: Text,
    transferAmount :: Int
  }
  deriving stock (Generic)

instance FromJSON TransferBody where
  parseJSON = genericParseJSON defaultOptions {fieldLabelModifier = camelTo2 '_' . drop 8}

instance ToJSON TransferBody where
  toJSON = genericToJSON defaultOptions {fieldLabelModifier = camelTo2 '_' . drop 8}
