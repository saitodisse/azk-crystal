#!/bin/bash

if [[ ! -e shards/bin/shards ]]; then
  if [[ ! -d crystal-lang/shards ]]; then
    git clone https://github.com/crystal-lang/shards
  fi

  cd shards
  crystal build src/shards.cr -o bin/shards --release
fi

cp bin/shards /usr/local/bin
