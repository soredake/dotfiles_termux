#!/system/bin/env bash

# Make sure were using the latest Portage tree.
apt update

# Upgrade any already-installed packages.
apt upgrade

# Install other useful binaries.
packages=(
    bc
    busybox
    # neeeded to build pycryptodome
    clang
    coreutils
    curl
    git
    htop
    man
    mc
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
    w3m
    zsh
)
apt install -y "${packages[@]}"
