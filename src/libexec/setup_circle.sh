#!/bin/bash

clone_dir=`pwd`/shards

if [[ ! -e $clone_dir/bin/shards ]]; then
  if [[ ! -d $clone_dir ]]; then
    git clone https://github.com/crystal-lang/shards $clone_dir
  fi

  cd $clone_dir
  crystal build src/shards.cr -o bin/shards --release
fi

sudo install -m 755 $clone_dir/bin/shards /usr/local/bin
