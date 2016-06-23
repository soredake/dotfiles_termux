#!/usr/bin/env bash

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
sudo emerge dev-util/ccache # move to stage4
sudo emerge app-misc/ranger
sudo emerge net-misc/openssh # move to stage4
sudo emerge net-misc/whois
sudo emerge net-misc/youtube-dl
sudo emerge sys-fs/e2fsprogs
sudo emerge sys-fs/fuse
sudo emerge sys-process/htop # move to stage4
sudo emerge =sys-kernel/raspberrypi-sources-4.4.9999
sudo emerge sys-fs/f2fs-tools # move to stage4
sudo emerge app-emulation/docker
sudo emerge media-video/mpv
sudo emerge media-sound/{audacity,mpdscribble,ncmpcpp,pavucontrol,pulseaudio}
sudo emerge x11-apps/{mesa-progs,setxkbmap,xhost,xset}
sudo emerge x11-base/{xorg-server,xorg-drivers}
sudo emerge x11-terms/rxvt-unicode
sudo emerge =x11-wm/enlightenment-0.20.6
sudo emerge media-gfx/gimp

# Ranger deps
sudo emerge www-client/w3m
sudo emerge media-video/ffmpegthumbnailer
sudo emerge media-video/mediainfo

# Remove outdated versions from the cellar.
sudo emerge -av --depclean
