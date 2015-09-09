#!/usr/bin/env bash

SOURCE_DIR="$(cd "$(dirname "$0")" > /dev/null; pwd)";
cd $SOURCE_DIR

git pull origin master;

function doIt() {
  # Copy the ".bash/private" file only if it doesn't already exist.
  if [ ! -f ~/.private ]; then
    cp .private ~/.private
  fi

  rsync --exclude ".private" \
  --exclude ".git/" --exclude "scripts/" --exclude ".config/cmus" --exclude "installer‑config.txt" --exclude "ZSH.md" \
  --exclude "BASH.md" --exclude "dotfiles.sh" --exclude "GIT.md" \
  --exclude "LICENSE" --exclude "README.md" \
  -avh --no-perms . ~;

}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt;
else
  # Removed the '-n 1' flag to accept a single char without requiring "Enter" to
  # be pressed because I don't care much for it.
  read -p "This will overwrite existing files in your home directory. Are you sure? (y/n) ";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;
unset doIt;
