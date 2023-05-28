{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE RecordWildCards #-}

module Main where

import Account qualified
import App (App (..), Command (..), Options (..), appSettings)
import Iris qualified

app :: App ()
app = do
  Options {..} <- Iris.asksCliEnv Iris.cliEnvCmd

  case optionsCommand of
    Account opt -> Account.execCmd opt

main :: IO ()
main = Iris.runCliApp appSettings $ unApp app
