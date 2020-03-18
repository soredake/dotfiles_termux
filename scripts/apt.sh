#!/system/bin/env bash

# Make sure were using the latest Portage tree.
apt update

# Upgrade any already-installed packages.
apt upgrade -y

# Install other useful binaries.
packages=(
    bc
    busybox
    coreutils
    curl
    dnsutils
    git
    htop
    man
    mc
    neofetch
    nmap
    openssh
    play-audio
    procps
    python
    ranger
    remind
    rsync
    stow
    termux-exec
    tmux
    unrar
    unzip
    vitetris
    w3m
    zsh
)
apt install -y "${packages[@]}"
