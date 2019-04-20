#!/system/bin/env bash

# Make sure were using the latest Portage tree.
apt update

# Upgrade any already-installed packages.
apt upgrade -y

# Install other useful binaries.
packages=(
    bc
    busybox
    #clang # neeeded to build pycryptodome
    coreutils
    curl
    dnsutils
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
    procps
    ranger
    remind
    rsync
    stow
    tmux
    termux-exec
    unrar
    unzip
    w3m
    zsh
)
apt install -y "${packages[@]}"
