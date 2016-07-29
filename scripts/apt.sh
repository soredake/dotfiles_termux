#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure were using the latest Portage tree.
apt update

# Upgrade any already-installed packages.
apt upgrade

# Install other useful binaries.
packages=(
    ccache
    coreutils
    git
    python
    zsh
    htop
    nodejs
    rsync
    w3m
    ranger
    emacs
    play-audio
    remind
    unrar
    openssh
    bzip2 # extract zsh-plugin dependecety
    net-misc/whois
    net-misc/youtube-dl
    sys-fs/e2fsprogs
    sys-fs/fuse
    docker # https://github.com/termux/termux-packages/issues/320
    veracrypt # https://github.com/termux/termux-packages/issues/313
    ncmpcpp # https://github.com/termux/termux-packages/issues/314
    mpdscribble # not exist
    # Ranger deps
    sudo emerge www-client/w3m
    sudo emerge media-video/ffmpegthumbnailer
    sudo emerge media-video/mediainfo

    sshfs # not exist?
    mpc # not exist
    obfs4proxy # not exist?
    unrar # exist?
    zuluCrypt # not exist
    libvirt # not exist
    wine
    mc
    tmux
    netcat # exist?
    nmap # exist?
    bind-tools # exist?
    stow
    mpdscribble # not exist
    sys-apps/{ethtool,lshw,pciutils,usbutils}
    sys-block/ms-sys
    sys-fs/simple-mtpfs
    sys-fs/{f2fs-tools,dosfstools,e2fsprogs,fuse,ntfs3g,xfsprogs}
    trackma # not exist
    livestreamer
    man

);
apt install ${packages[@]}
