#!/usr/bin/env bash

# Install command-line tools globally using Node.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# sudo npm install -g gitbanner
# sudo npm install -g gitgoodies
# sudo npm install -g phonegap
#npm install -g firebase-tools
#sudo npm install -g bower
#sudo npm install -g bower-update
#sudo npm install -g browserify
#sudo npm install -g cordova
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

# Yeoman generators.
# sudo npm install -g generator-angular
# sudo npm install -g generator-angularjs-cordova
# sudo npm install -g generator-atom
# sudo npm install -g generator-generator
# sudo npm install -g generator-gulp-angular
# sudo npm install -g generator-gulp-angularfire
# sudo npm install -g generator-gulp-bootstrap
# sudo npm install -g generator-hedley
# sudo npm install -g generator-ionic
# sudo npm install -g generator-nm
# sudo npm install -g generator-node-express
# sudo npm install -g generator-symfony
# sudo npm install -g generator-webapp
