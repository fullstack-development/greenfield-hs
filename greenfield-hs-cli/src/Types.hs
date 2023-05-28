{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Types where

import Data.String (IsString)
import Data.Text (Text)

newtype Address = Address Text
  deriving newtype (IsString, Read)

data Visibility
  = PublicReadType
  | PrivateType
  | InheritType
  deriving stock (Read)

data Effect = Deny | Allow
  deriving stock (Read)

newtype ObjectUrl = ObjectUrl Text
  deriving newtype (IsString)

newtype BucketUrl = BucketUrl Text
  deriving newtype (IsString)

newtype Amount = Amount Int
  deriving newtype (Read)

data Action
  = ActionCreate
  | ActionDelete
  | ActionCopy
  | ActionGet
  | ActionExecute
  | ActionList
  | ActionAll
  deriving stock (Read)
