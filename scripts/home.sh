#!/system/bin/sh

# Setup dotfiles.
../dotfiles.sh

# Install portage packages.
./apt.sh

# Setup linux.
./linux.sh

# Install Mode modules.
./node.sh

# Install Atom plugins.
./node.sh


# Install ruby gems.
./ruby.sh

# Create dirs
mkdir ~/git
