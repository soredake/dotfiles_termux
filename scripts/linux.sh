#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# TODO: Add settings here
adduser user --quiet
adduser user sudo

# Login as user
su - user

# Create dirs
mkdir ~/.npm

# Own npm folder
sudo chown -R $USER ~/.npm
