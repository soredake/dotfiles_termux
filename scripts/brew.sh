#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
brew install coreutils

if ! [[ -L "/usr/local/bin/sha256sum" && -f "/usr/local/bin/sha256sum" ]]; then
  sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
fi

# Install some other useful utilities like `sponge`.
#brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install zsh.
brew install zsh

# Tap some repos
brew tap Homebrew/homebrew-games
brew tap Homebrew/homebrew-python
brew tap casidiablo/custom
brew tap yawara/twister
brew tap homebrew/php
brew tap homebrew/dupes

# Install wine needed libs
brew install libjpeg --universal
brew install libpng --universal
brew install libtiff --universal
brew install freetype --universal
brew install gettext --universal
brew install libgsm --universal
brew install little-cms2 --universal

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
# brew install vim --override-system-vi
brew install homebrew/dupes/grep --with-default-names
brew install homebrew/dupes/openssh --with-libressl
brew install homebrew/dupes/screen

# Install other useful binaries.
brew install --HEAD tox/tox/qtox
brew install aredridel/iojs/iojs
brew install avidemux
brew install cataclysm
brew install chocolate-doom
brew install cmus
brew install curl --with-libressl --with-c-ares --with-libidn --with-nghttp2 --with-rtmpdump --with-libmetalink --with-gssapi --with-libssh2
brew install dnscrypt-proxy --with-plugins
brew install dosbox
brew install dwarf-fortress
brew install ffmpeg --with-openssl --without-qtkit --with-libssh
brew install freeciv
brew install git-extras
brew install htop-osx
brew install mpv-player/mpv/mpv
brew install nvm
brew install openttd
brew install pgcli
brew install php56 --with-homebrew-curl
brew install ppsspp
brew install python3
brew install ranger
brew install rogue
brew install ruby
brew install screenbrightness
brew install shellcheck
brew install thefuck
brew install tree
brew install twister --HEAD
brew install unrar
brew install youtube-dl
brew install cabextract
brew install winetricks --ignore-dependencies
brew install gnupg
brew install binutils

# Ranger supplements
brew install highlight
brew install exiftool
brew install w3m
brew install ffmpegthumbnailer
brew install media-info

# brew install bfg
# brew install ctags
brew install ack
brew install colordiff
brew install dos2unix
brew install dtrx
brew install gettext
brew install git
brew install hub
brew install rename
brew install ssh-copy-id
brew install tree

# Use latest rsync rather than out-dated OS X rsync install separately from the
# main formulae list to fix gh-19.
brew install https://raw.github.com/Homebrew/homebrew-dupes/master/rsync.rb

# Link a some formulas
brew linkapps mpv avidemux ppsspp openttd

# Link formulas
brew link curl --force
brew link --force gettext

# Remove outdated versions from the cellar.
brew cleanup
