#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Setup dotfiles.
source dotfiles.sh

# Install portage packages.
source portage.sh

# Install zsh.
chsh -s /bin/zsh

# Install Mode modules.
source node.sh

# Install Atom plugins.
source node.sh

# Setup linux.
source linux.sh

# Install ruby gems.
source ruby.sh

# Create dirs
mkdir ~/.rtorrent-session
mkdir ~/Documents/git
