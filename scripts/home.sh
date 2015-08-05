#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Setup dotfiles.
source dotfiles.sh

# Install Homebrew packages.
source apt.sh

# Install Mode modules.
source node.sh

# Install Atom plugins.
source node.sh

# Install Pyton packages.
source python.sh

# Setup OSX.
source osx.sh
