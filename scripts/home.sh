#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Setup dotfiles.
../dotfiles.sh

# Install portage packages.
. portage.sh

# Install zsh.
chsh -s /bin/zsh

# Install Mode modules.
. node.sh

# Install Atom plugins.
. node.sh

# Setup linux.
. linux.sh

# Install ruby gems.
. ruby.sh

# Create dirs
mkdir ~/git
