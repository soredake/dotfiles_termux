#!/system/bin/env bash

# Make sure were using the latest Portage tree.
apt update

# Upgrade any already-installed packages.
apt upgrade

# Install other useful binaries.
packages=(
    bind-tools # exist?
    busybox
    coreutils
    docker # https://github.com/termux/termux-packages/issues/320
    fuse # not exists?
    git
    htop
    man
    mc
    silversearcher-ag
    ncmpcpp # https://github.com/termux/termux-packages/issues/314
    nmap
    nodejs
    openssh
    play-audio
    python
    ranger
    remind
    rsync
    sshfs # not exist?
    stow
    tmux
    trackma # not exists
    unrar
    unzip
    veracrypt # https://github.com/termux/termux-packages/issues/313
    w3m
    zsh
);
apt install "${packages[@]}"
