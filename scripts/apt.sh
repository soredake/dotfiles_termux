#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install sudo
#su -c "apt-get install sudo"

# Update packages list
sudo apt-get update

# Upgrade any already-installed packages.
sudo apt-get upgrade

# TODO: Wrote this line
sudo apt-get dist-upgrade

# Install packages
#sudo apt-get install cpufrequtils

# Install iojs
#su -c "curl -sL https://deb.nodesource.com/setup_iojs_3.x | bash -"
#sudo apt-get install iojs

# Install nvm
#curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | sudo NVM_DIR=/usr/local/nvm bash

# Install nvm package
#nvm install iojs

# Clean downloaded packages
sudo apt-get autoclean

# Upgrade firmware and kernel
sudo rpi-update
