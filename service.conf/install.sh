#!/usr/bin/env bash

SOURCE_DIR="$(cd "$(dirname "$0")" > /dev/null; pwd)";
cd $SOURCE_DIR

for d in `ls .`;
do
    ( sudo stow -d $SOURCE_DIR -t /etc/systemd/system/ $d )
done
