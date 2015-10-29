#!/usr/bin/env bash

# Install command-line tools globally using Node.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# sudo npm install -g gitbanner
# sudo npm install -g gitgoodies
sudo npm install -g caniuse
sudo npm install -g eslint
sudo npm install -g grunt-cli
sudo npm install -g gulp
sudo npm install -g jspm
sudo npm install -g karma-cli
sudo npm install -g magnet2torrent
sudo npm install -g node-gyp
sudo npm install -g nodemon
sudo npm install -g npm-check-updates
sudo npm install -g peerflix
sudo npm install -g protractor
sudo npm install -g slush
sudo npm install -g torrent-mount
sudo npm install -g yo
