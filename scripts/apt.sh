#!/system/bin/env bash

# Make sure were using the latest Portage tree.
apt update

# Upgrade any already-installed packages.
apt upgrade -y

# Install other useful binaries.
packages=(
  busybox
  coreutils
  curl
  fish
  git
  htop
  man
  mc
  neofetch
  openssh
  rsync
  stow
  termux-exec
  unrar
  unzip
  vitetris
  w3m
)
apt install -y "${packages[@]}"
