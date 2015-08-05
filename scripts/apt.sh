#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Update packages list
sudo apt-get update

# Upgrade any already-installed packages.
sudo apt-get upgrade

# Install packages
sudo apt-get install tor
sudo apt-get install raspi-config

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash

# Install nvm package
nvm install iojs

# Clean downloaded packages
sudo apt-get autoclean
