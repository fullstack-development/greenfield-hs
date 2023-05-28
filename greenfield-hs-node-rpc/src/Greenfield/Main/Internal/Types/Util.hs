module Greenfield.Main.Internal.Types.Util
  ( stripUnderscoreOptions,
  )
where

import qualified Data.Aeson as Aeson

stripUnderscoreOptions :: Aeson.Options
stripUnderscoreOptions =
  Aeson.defaultOptions
    { Aeson.fieldLabelModifier =
        dropWhile (== '_')
    }
