#!/bin/bash

cp ./pseudotransfer/ptransfer.sh ./bin/ptransfer
export PATH="$(pwd)/bin:$PATH"
chmod -R +x ./

cd pseudotransfer
cargo build --release
cd target/release
cp ptransfer ../../../bin/rsptransfer
export PATH="$(pwd)/bin:$PATH"
chmod -R +x ./

ptransfer ./file.ps
# rsptransfer ../file.ps