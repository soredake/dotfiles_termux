#!/usr/bin/env bash

HOMEDIR="home/bausch"
SOURCE_DIR="$(cd "$(dirname "$0")" > /dev/null; pwd)";
cd $SOURCE_DIR

git pull origin master;

function doIt() {
  # Copy the ".init/private" file only if it doesn't already exist.
  if [ ! -f ~/.init/.private ]; then
    cp $HOMEDIR/.init/.private ~/.init/.private
  fi

  # Symlink some home config directories.
  symlinked_dirs_home=(
    .config/mpv
    .config/ranger
    .config/htop
    .tmuxinator
    .mozilla
  );
  for symlinked_dir_home in "${symlinked_dirs_home[@]}"; do
    if ! [[ -L "$HOME/$symlinked_dir_home" && -d "$HOME/$symlinked_dir_home" ]]; then
      ln -s "$SOURCE_DIR/$HOMEDIR/$symlinked_dir_home" "$HOME/$symlinked_dir_home"
      echo "Create symlink from $HOMEDIR/$symlinked_dir_home to $HOME/$symlinked_dir_home"
    else
      echo "Link for $HOMEDIR/$symlinked_dir_home already exists"
    fi
  done;

  rsync --exclude ".atom/" --exclude ".init/.private" --exclude ".config" --exclude ".mozilla" --exclude ".tmuxinator/" \
  -rv --progress --stats $HOMEDIR $HOME;

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
