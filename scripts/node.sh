#!/usr/bin/env bash

# Install command-line tools globally using Node.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

npm install -g caniuse
npm install -g eslint
npm install -g grunt-cli
npm install -g gulp
npm install -g jspm
npm install -g karma-cli
npm install -g node-gyp
npm install -g nodemon
npm install -g npm-check-updates
npm install -g peerflix
npm install -g protractor
npm install -g slush
npm install -g yo
