#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Setup linux.
source linux.sh

# Setup dotfiles.
source dotfiles.sh

# Install Homebrew packages.
source brew.sh

# Install Bash 4.
ZSHPATH=$(brew --prefix)/bin/zsh
echo $ZSHPATH | sudo tee -a /etc/shells
chsh -s $ZSHPATH

# Install Homebrew Casks.
source cask.sh

# Install Mode modules.
source node.sh

# Install Atom plugins.
source node.sh

# Install Pyton packages.
source python.sh

# Setup OSX.
source osx.sh

# Install ruby gems.
source ruby.sh

# Create dirs
mkdir ~/Downloads/torrents
mkdir ~/.rtorrent-session
mkdir ~/Documents/soft
mkdir ~/Documents/github
mkdir ~/Movies/records
/Applications/FirefoxDeveloperEdition.app/Contents/MacOS/firefox -CreateProfile "User $HOME/Library/Application Support/Firefox/Profiles/profile"
