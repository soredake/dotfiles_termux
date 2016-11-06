#!/system/bin/sh

# Setup dotfiles.
../dotfiles.sh

# Install portage packages.
./apt.sh

# Setup linux.
./linux.sh

# Install Node plugins.
./node.sh
