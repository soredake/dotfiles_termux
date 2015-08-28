#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install sudo
su -c "apt-get install sudo"

# Update packages list
sudo apt-get update

# Upgrade any already-installed packages.
sudo apt-get upgrade

# Install packages
sudo apt-get install devuan-keyring
sudo apt-get install htop
sudo apt-get install nano
sudo apt-get install raspi-config
sudo apt-get install rpi-update
sudo apt-get install tor
sudo apt-get install xz-utils
sudo apt-get install zsh
sudo apt-get install git
sudo apt-get install tmux
sudo apt-get install wget
sudo apt-get install apt-utils

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

# Install nvm package
nvm install iojs

# Clean downloaded packages
sudo apt-get autoclean

# Upgrade firmware and kernel
sudo rpi-update
