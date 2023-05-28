# Greenfield Haskell Tools

Greenfield client CLI tool written in Haskell.

# Installation

You will need `stack` tools in order to build binaries from source. [GHCUP](https://www.haskell.org/ghcup/) is recommended for easy install.

```bash
stack build
stack run greenfield-hs-cli-exe -- -h
```
You should see the following output if all done correctly:

```
Greenfield Haskell CLI

Usage: greenfield-hs-cli-exe [--version] [--numeric-version] [--no-input]
                             --host ARG --rpcAddr ARG --chainId ARG
                             --passwordFile ARG (-c|--config ARG)
                             (-k|--keystore ARG) COMMAND
                             [--colour | --no-colour]

  CLI tool for making request to greenfield

Available options:
  -h,--help                Show this help text
  --version                Show application version
  --numeric-version        Show only numeric application version
  --no-input               Enter the terminal in non-interactive mode
  --host ARG               host name of request
  --rpcAddr ARG            greenfield chain client rpc address
  --chainId ARG            greenfield chainId
  --passwordFile ARG       password file for encrypting and decoding the private
                           key
  -c,--config ARG          Load configuration from `FILE`
  -k,--keystore ARG        key file path
  --colour                 Always output colours
  --no-colour              Never output colours

Available commands:
  payment                  Support the payment operation functions
  bucket                   Support the bucket operation functions
  object                   Support the object operation functions
```

## secp256k1

Some components of this project use the `secp256k1` cryptographic library, which needs to be present
during compilation.

On Linux, it can be installed through a system's package manager, for example, on Ubuntu:

```sh
sudo apt update
sudo apt install libsecp256k1-dev
```

# Reference

* [Greenfield GO cmd](https://github.com/bnb-chain/greenfield-cmd)
