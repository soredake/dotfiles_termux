#!/system/bin/env bash

# Upgrade any already-installed packages.
pkg upgrade

# Install other useful binaries.
packages=(
  fish
  git
  stow
  vitetris
)
pkg install -y "${packages[@]}"
