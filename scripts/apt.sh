#!/system/bin/env bash

# Make sure were using the latest Portage tree.
apt update

# Upgrade any already-installed packages.
apt upgrade

# Install other useful binaries.
packages=(
    busybox
    coreutils
    docker # https://github.com/termux/termux-packages/issues/320
    git
    htop
    man
    mc
    ncmpcpp # https://github.com/termux/termux-packages/issues/314
    neofetch
    nmap
    nodejs
    openssh
    play-audio
    python
    ranger
    remind
    rsync
    silversearcher-ag
    stow
    tmux
    unrar
    unzip
    veracrypt # https://github.com/termux/termux-packages/issues/313
    w3m
    zsh
);
apt install "${packages[@]}"
