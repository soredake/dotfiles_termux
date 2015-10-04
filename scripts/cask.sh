#!/usr/bin/env bash

# Install native apps using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Install brew-cask.
brew install caskroom/cask/brew-cask

# Upgrade brew-cask if already installed.
brew upgrade brew-cask

# Add versions cask tap (betas, nightly releases, old versions).
brew tap caskroom/versions

# Install apps.
# brew cask install gitter
# brew cask install google-drive
# brew cask install google-earth
# brew cask install kaleidoscope
# brew cask install moom
# brew cask install vienna
#brew cask install alfred
#brew cask install appzapper
#brew cask install battle-net
#brew cask install ccleaner
#brew cask install dash
#brew cask install gitup
#brew cask install mmex
#brew cask install noizio
#brew cask install openemu
#brew cask install screenflow
brew cask install adobe-creative-cloud
brew cask install aegisub
brew cask install atom
brew cask install audacity
brew cask install cuda
brew cask install double-commander
brew cask install dropbox
brew cask install dupeguru
brew cask install dupeguru-me
brew cask install dupeguru-pe
brew cask install fenque/veracrypt/veracrypt
brew cask install firefodeveloperedition
brew cask install gimp
brew cask install imagealpha
brew cask install imageoptim
brew cask install iterm2-nightly
brew cask install java
brew cask install lastfm
brew cask install libreoffice-ru
brew cask install megasync
brew cask install musicbrainz-picard
brew cask install mypaint
brew cask install obs
brew cask install paragon-ntfs
brew cask install pongsaver
brew cask install popcorn-time
brew cask install retroarch
brew cask install sdformatter
brew cask install shiftit
brew cask install shotcut
brew cask install skype
brew cask install smcfancontrol
brew cask install soundflower
brew cask install spotify
brew cask install steam
brew cask install thunderbird-ru
brew cask install torbrowser-ru
brew cask install transmission
brew cask install vagrant
brew cask install virtualbox
brew cask install xquartz

# Remove outdated versions from the cellar.
brew cleanup
brew cask cleanup

# Modify Alfred's search scope to include installed Casks.
#brew cask alfred
