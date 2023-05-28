buf generate --template "
version: v1
plugins:
  - name: protoc-gen-haskell
    path: $(stack exec -- which proto-lens-protoc)
    out: .
    opt: logtostderr=true,allow_colon_final_segments=true
" --output "$(dirname "$0")/src" buf.build/bnb-chain/greenfield --include-imports

buf generate --template "
version: v1
plugins:
  - name: protoc-gen-haskell
    path: $(stack exec -- which proto-lens-protoc)
    out: .
    opt: logtostderr=true,allow_colon_final_segments=true
" --output "$(dirname "$0")/src" buf.build/cosmos/cosmos-sdk