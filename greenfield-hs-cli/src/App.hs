{-# LANGUAGE ApplicativeDo #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}

module App where

import Account.Cli qualified as Account
import Bucket qualified
import Control.Monad.IO.Class (MonadIO (..))
import Control.Monad.Reader (MonadReader)
import Data.Text (Text)
import Iris qualified
import Object qualified
import Options.Applicative qualified as Opt
import Paths_greenfield_hs_cli qualified as Autogen

data Command
  = Account Account.Options
  | Bucket Bucket.Options
  | Object Object.Options

data Options = Options
  { optionsHost :: Text,
    optionsRpcAddr :: Text,
    optionsChainId :: Text,
    optionsPasswordFile :: FilePath,
    optionsKeyStore :: FilePath,
    optionsCommand :: Command
  }

optionsP :: Opt.Parser Options
optionsP =
  Options
    <$> Opt.strOption (mconcat [Opt.long "host", Opt.help "host name of request"])
    <*> Opt.strOption (mconcat [Opt.long "rpcAddr", Opt.help "greenfield chain client rpc address"])
    <*> Opt.strOption (mconcat [Opt.long "chainId", Opt.help "greenfield chainId"])
    <*> Opt.strOption (mconcat [Opt.long "passwordFile", Opt.help "password file for encrypting and decoding the private key"])
    <*> Opt.strOption (mconcat [Opt.long "keystore", Opt.short 'k', Opt.help "key file path"])
    <*> Opt.hsubparser
      ( mconcat
          [ Opt.command "payment" $ Opt.info (Account <$> Account.optionsP) (Opt.progDesc "Support the payment operation functions"),
            Opt.command "bucket" $ Opt.info (Bucket <$> Bucket.optionsP) (Opt.progDesc "Support the bucket operation functions"),
            Opt.command "object" $ Opt.info (Object <$> Object.optionsP) (Opt.progDesc "Support the object operation functions")
          ]
      )

newtype App a = App {unApp :: Iris.CliApp Options () a}
  deriving newtype
    ( Functor,
      Applicative,
      Monad,
      MonadIO,
      MonadReader (Iris.CliEnv Options ())
    )

appSettings :: Iris.CliEnvSettings Options ()
appSettings =
  Iris.defaultCliEnvSettings
    { Iris.cliEnvSettingsHeaderDesc = "Greenfield Haskell CLI",
      Iris.cliEnvSettingsProgDesc = "CLI tool for making request to greenfield",
      Iris.cliEnvSettingsVersionSettings =
        Just
          (Iris.defaultVersionSettings Autogen.version)
            { Iris.versionSettingsMkDesc = ("Greenfield Haskell CLI v" <>)
            },
      Iris.cliEnvSettingsCmdParser = optionsP
    }
