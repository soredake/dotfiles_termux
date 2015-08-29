#!/usr/bin/env bash

# Install command-line tools globally using Node.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

npm config set prefix ~/npm

sudo chown -R `whoami` ~/npm

npm install -g grunt-cli
npm install -g bower
npm install -g phantomjs
