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
brew tap homebrew/command-not-found
brew tap caskroom/unofficial

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
brew install homebrew/dupes/grep --with-default-names
brew install homebrew/dupes/openssh --with-libressl
brew install homebrew/dupes/rsync

# Install other useful binaries.
brew install --HEAD tox/tox/qtox
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
brew install gnupg
brew install htop-osx
brew install httpie
brew install mpv-player/mpv/mpv --with-x11
brew install node --with-openssl
brew install openssl && brew link --force openssl
brew install openttd
brew install p7zip
brew install pgcli
brew install php56 --with-homebrew-curl
brew install ppsspp
brew install python3
brew install ranger --build-from-source
brew install reattach-to-user-namespace --with-wrap-pbcopy-and-pbpaste --with-wrap-launchctl
brew install rogue
brew install ruby
brew install screenbrightness
brew install screenfetch
brew install shellcheck
brew install thefuck
brew install twister --HEAD
brew install unrar
brew install winetricks --ignore-dependencies
brew install youtube-dl

# Ranger deps
brew install highlight
brew install exiftool
brew install w3m
brew install ffmpegthumbnailer
brew install media-info

# Other deps
brew install binutils
brew install cabextract

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

# Link a some formulas
brew linkapps mpv avidemux ppsspp openttd

# Link formulas
brew link --force curl
brew link --force gettext

# Remove outdated versions from the cellar.
brew cleanup
