#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Setup dotfiles.
source dotfiles.sh

# Install Homebrew packages.
source apt.sh

# Install Atom plugins.
source node.sh

# Install Pyton packages.
source python.sh

# Setup linux.
source linux.sh

# Install zsh.
ZSHPATH=/usr/bin/zsh
echo $ZSHPATH | sudo tee -a /etc/shells
chsh -s $ZSHPATH

# Install ruby gems.
source ruby.sh

# Create dirs
mkdir ~/Downloads/torrents
mkdir ~/.rtorrent-session
mkdir ~/Documents/soft
mkdir ~/Documents/github
mkdir ~/Movies/records
mkdir ~/Library/Application\ Support/Firefox/Profiles/u4u84drs.default
