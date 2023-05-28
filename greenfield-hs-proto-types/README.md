To keep the build process simple, the *.hs files generated from the [Greenfield's Protobuf schema](https://buf.build/bnb-chain/greenfield) are committed to the repository.

To re-generate these files, when the public schema changes, clear the `src` folder in this package and execute the `generate.sh` script. This script requires Buf CLI, refer to [https://buf.build/docs/bsr/quick-start/#step-3:-download-and-install-buf-cli] for the instructions on how to install it.
