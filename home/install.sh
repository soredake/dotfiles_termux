#!/usr/bin/env bash

SOURCE_DIR="$(cd "$(dirname "$0")" > /dev/null; pwd)";
cd $SOURCE_DIR

for d in `ls .`;
do
    ( stow $1 -d $SOURCE_DIR -t $HOME $d )
done
