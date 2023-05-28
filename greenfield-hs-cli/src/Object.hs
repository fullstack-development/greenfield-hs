{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE StrictData #-}

module Object where

import Options.Applicative qualified as Opt
import Types (Action, Address, Effect (Allow), ObjectUrl, Visibility (InheritType, PrivateType))

data Options
  = Put ObjectUrl FilePath [Address] String Visibility FilePath
  | CreateFolder ObjectUrl Visibility String
  | Get ObjectUrl FilePath Int Int
  | Cancel ObjectUrl
  | List ObjectUrl
  | PutPolicy ObjectUrl Int Address [Action] Effect Int
  | Update ObjectUrl Visibility
  | GetProgress ObjectUrl

putP :: Opt.Parser Options
putP =
  Put
    <$> Opt.strArgument mempty
    <*> Opt.strArgument mempty
    <*> Opt.option Opt.auto (mconcat [Opt.long "secondarySP", Opt.value []])
    <*> Opt.strOption (mconcat [Opt.long "contentType"])
    <*> Opt.option Opt.auto (mconcat [Opt.long "visibility", Opt.value InheritType])
    <*> Opt.strOption (mconcat [Opt.long "folder"])

createFolderP :: Opt.Parser Options
createFolderP =
  CreateFolder
    <$> Opt.strArgument mempty
    <*> Opt.option Opt.auto (mconcat [Opt.long "visibility", Opt.value InheritType])
    <*> Opt.strOption (mconcat [Opt.long "object"])

getP :: Opt.Parser Options
getP =
  Get
    <$> Opt.strArgument mempty
    <*> Opt.strArgument mempty
    <*> Opt.option Opt.auto (mconcat [Opt.long "startOffset", Opt.value 0])
    <*> Opt.option Opt.auto (mconcat [Opt.long "endOffset", Opt.value 0])

cancelP :: Opt.Parser Options
cancelP =
  Cancel
    <$> Opt.strArgument mempty

listP :: Opt.Parser Options
listP =
  List
    <$> Opt.strArgument mempty

putPolicyP :: Opt.Parser Options
putPolicyP =
  PutPolicy
    <$> Opt.strArgument mempty
    <*> Opt.option Opt.auto (mconcat [Opt.long "groupID", Opt.value 0])
    <*> Opt.strOption (mconcat [Opt.long "grantee"])
    <*> Opt.option Opt.auto (mconcat [Opt.long "actions", Opt.value []])
    <*> Opt.option Opt.auto (mconcat [Opt.long "effect", Opt.value Allow])
    <*> Opt.option Opt.auto (mconcat [Opt.long "expireTime", Opt.value 0])

updateP :: Opt.Parser Options
updateP =
  Update
    <$> Opt.strArgument mempty
    <*> Opt.option Opt.auto (mconcat [Opt.long "visibility", Opt.value PrivateType])

getProgressP :: Opt.Parser Options
getProgressP =
  GetProgress
    <$> Opt.strArgument mempty

optionsP :: Opt.Parser Options
optionsP =
  Opt.hsubparser
    ( mconcat
        [ Opt.command "put" $ Opt.info putP (Opt.progDesc ""),
          Opt.command "create-folder" $ Opt.info createFolderP (Opt.progDesc ""),
          Opt.command "get" $ Opt.info getP (Opt.progDesc ""),
          Opt.command "cancel" $ Opt.info cancelP (Opt.progDesc ""),
          Opt.command "ls" $ Opt.info listP (Opt.progDesc ""),
          Opt.command "put-object-policy" $ Opt.info putPolicyP (Opt.progDesc ""),
          Opt.command "update" $ Opt.info updateP (Opt.progDesc ""),
          Opt.command "get-progress" $ Opt.info getProgressP (Opt.progDesc "")
        ]
    )
