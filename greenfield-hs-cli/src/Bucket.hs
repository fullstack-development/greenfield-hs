{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE StrictData #-}

module Bucket where

import Options.Applicative qualified as Opt
import Types (Action, Address, BucketUrl, Effect (Allow), Visibility (PrivateType))

data Options
  = CreateBucket BucketUrl Address Address Visibility Int
  | UpdateBucket BucketUrl Visibility Address Int
  | ListBuckets
  | PutBucketPolicy BucketUrl Int [Action] Address Effect Int

createBucketP :: Opt.Parser Options
createBucketP =
  CreateBucket
    <$> Opt.strArgument mempty
    <*> Opt.strOption (mconcat [Opt.long "primarySP"])
    <*> Opt.strOption (mconcat [Opt.long "payment"])
    <*> Opt.option Opt.auto (mconcat [Opt.long "visibility", Opt.value PrivateType])
    <*> Opt.option Opt.auto (mconcat [Opt.long "chargeQuota", Opt.value 0])

updateBucketP :: Opt.Parser Options
updateBucketP =
  UpdateBucket
    <$> Opt.strArgument mempty
    <*> Opt.option Opt.auto (mconcat [Opt.long "visibility", Opt.value PrivateType])
    <*> Opt.strOption (mconcat [Opt.long "payment"])
    <*> Opt.option Opt.auto (mconcat [Opt.long "chargeQuota"])

listBucketsP :: Opt.Parser Options
listBucketsP = pure ListBuckets

putBucketPolicyP :: Opt.Parser Options
putBucketPolicyP =
  PutBucketPolicy
    <$> Opt.strArgument mempty
    <*> Opt.option Opt.auto (mconcat [Opt.long "groupID", Opt.value 0])
    <*> Opt.option Opt.auto (mconcat [Opt.long "actions"])
    <*> Opt.strOption (mconcat [Opt.long "grantee"])
    <*> Opt.option Opt.auto (mconcat [Opt.long "effect", Opt.value Allow])
    <*> Opt.option Opt.auto (mconcat [Opt.long "expireTime"])

optionsP :: Opt.Parser Options
optionsP =
  Opt.hsubparser
    ( mconcat
        [ Opt.command "create" $ Opt.info createBucketP (Opt.progDesc ""),
          Opt.command "update" $ Opt.info updateBucketP (Opt.progDesc ""),
          Opt.command "ls" $ Opt.info listBucketsP (Opt.progDesc ""),
          Opt.command "put-bucket-policy" $ Opt.info putBucketPolicyP (Opt.progDesc "")
        ]
    )
