#!/system/bin/env bash

# Make sure were using the latest Portage tree.
apt update

# Upgrade any already-installed packages.
apt upgrade

# Install other useful binaries.
packages=(
    bc
    busybox
    clang # neeeded to build pycryptodome
    coreutils
    curl
    fish
    git
    htop
    man
    mc
    neofetch
    nmap
    openssh
    play-audio
    python
    ranger
    remind
    rsync
    stow
    tmux
    unrar
    unzip
    w3m
    zsh
)
apt install -y "${packages[@]}"
