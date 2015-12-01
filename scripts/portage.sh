#!/usr/bin/env bash

# Install command-line tools using Portage and Layman overlays.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure were using the latest Portage tree.
sudo emerge --sync

# Upgrade any already-installed packages.
sudo emerge -uDU @world

# Add some overlays

# Install other useful binaries.
sudo emerge app-editors/emacs
sudo emerge media-sound/pulseaudio
sudo emerge x11-base/xorg-server
sudo emerge dev-util/ccache
sudo emerge sys-devel/bc
sudo emerge app-arch/p7zip
sudo emerge app-crypt/gnupg
sudo emerge app-misc/ranger
sudo emerge app-misc/screenfetch
sudo emerge dev-java/oracle-jre-bin
sudo emerge media-sound/mpc
sudo emerge media-sound/mpd
sudo emerge media-sound/ncmpcpp
sudo emerge sys-auth/consolekit
sudo emerge net-libs/nodejs
sudo emerge net-misc/aria2
sudo emerge net-misc/livestreamer
sudo emerge net-misc/netifrc
sudo emerge net-misc/ntp
sudo emerge net-misc/openssh
sudo emerge net-misc/whois
sudo emerge net-misc/youtube-dl
sudo emerge sys-apps/ethtool sys-apps/lshw sys-apps/pciutils sys-apps/usbutils
sudo emerge sys-fs/e2fsprogs
sudo emerge sys-fs/fuse
sudo emerge sys-power/pm-utils
sudo emerge sys-process/htop
sudo emerge x11-misc/urxvt-perls
sudo emerge x11-terms/rxvt-unicode

# Ranger deps
brew install highlight
brew install exiftool
sudo emerge www-client/w3m sudo media-gfx/w3mimgfb
sudo emerge media-video/ffmpegthumbnailer
sudo emerge media-video/mediainfo

# Remove outdated versions from the cellar.
sudo emerge -av --depclean
