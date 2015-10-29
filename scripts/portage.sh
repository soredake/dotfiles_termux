#!/usr/bin/env bash

# Install command-line tools using Portage and Layman overlays.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure were using the latest Portage tree.
sudo emerge-webrsync

# Upgrade any already-installed packages.
sudo emerge -uDU @world

# Set use profile
sudo eselect profile set 3

# Add some overlays
#sudo layman -a libressl
sudo layman -a ShyPixie
sudo layman -a abadonna-overlay
sudo layman -a booboo
sudo layman -a devpump-gor
sudo layman -a dilfridge
sudo layman -a emc
sudo layman -a fkmclane
sudo layman -a jorgicio
sudo layman -a mpd
sudo layman -a soft
sudo layman -a octopus
sudo layman -a open-overlay
sudo layman -a petkovich
sudo layman -a pinkpieea
sudo layman -a steam-overlay
sudo layman -a tox-overlay
sudo layman -a wine-a-holics

# Install other useful binaries.
# TODO: ADD https://wiki.archlinux.org/index.php/List_of_applications#Screen_lockers light-locker
# TODO: ADD https://wiki.archlinux.org/index.php/List_of_applications#System_monitoring
#@TODO: jack audio server (also needs USE flag) or pulseaudio mixing (команду которую я нашел когда пытался запустить наушники) and monitor
#brew cask install pongsaver
#sudo emerge -a =www-client/firefox-41.0.1::pinkpieea
brew cask install dupeguru
brew cask install dupeguru-me
brew cask install dupeguru-pe
brew cask install libreoffice
brew cask install musicbrainz-picard
brew cask install retroarch
brew cask install shotcut
brew cask install vagrant
brew install avidemux
brew install dnscrypt-proxy --with-plugins
brew install git-extras
brew install pgcli
brew install thefuck
sudo emerge -a =app-editors/atom-bin-1.0.19::emc
sudo emerge -av =www-client/tor-browser-5.0.2 #TODO: update ebuild to new version
sudo emerge =app-emulation/wine-staging-9999
sudo emerge =media-sound/mpdscribble-9999
sudo emerge =kde-apps/kdenlive-15.08.2
sudo emerge media-font/profont
sudo emerge app-editors/neovim
sudo emerge x11-wm/awesome
sudo emerge app-admin/sudo
sudo emerge app-arch/p7zip
sudo emerge app-crypt/gnupg
sudo emerge app-crypt/veracrypt
sudo emerge app-crypt/zuluCrypt
sudo emerge app-emulation/virtualbox-bin
sudo emerge app-emulation/winetricks #TODO: needs vanilla wine, fail to install with wine-staging
sudo emerge app-eselect/eselect-opengl
sudo emerge app-misc/double-commander #TODO: compile fail
sudo emerge app-misc/ranger
sudo emerge app-misc/screenfetch
sudo emerge app-portage/eix app-portage/gentoolkit app-portage/layman
sudo emerge app-shells/zsh
sudo emerge dev-java/oracle-jre-bin
sudo emerge dev-python/pip
sudo emerge mail-client/thunderbird
sudo emerge media-gfx/gimp
sudo emerge media-gfx/maim
sudo emerge media-gfx/mypaint
sudo emerge media-gfx/nomacs
sudo emerge media-libs/fontconfig-infinality
sudo emerge media-sound/audacity
sudo emerge media-sound/easytag
sudo emerge media-sound/mpc
sudo emerge media-sound/mpd
sudo emerge media-sound/ncmpcpp
sudo emerge media-sound/pavucontrol
sudo emerge media-sound/volumeicon
sudo emerge media-video/aegisub
sudo emerge media-video/guvcview
sudo emerge media-video/luvcview
sudo emerge media-video/mpv
sudo emerge media-video/obs-studio
sudo emerge media-video/openshot
sudo emerge net-im/qtox
sudo emerge net-libs/nodejs
sudo emerge net-misc/aria2
sudo emerge net-misc/livestreamer
sudo emerge net-misc/modemmanager net-misc/netifrc
sudo emerge net-misc/ntp
sudo emerge net-misc/openssh
sudo emerge net-misc/trackma
sudo emerge net-misc/whois
sudo emerge net-misc/youtube-dl
sudo emerge net-p2p/amule
sudo emerge net-p2p/transmission
sudo emerge net-p2p/twister
sudo emerge net-wireless/wpa_supplicant
sudo emerge sys-apps/ethtool sys-apps/lshw sys-apps/pciutils sys-apps/usbutils
sudo emerge sys-block/ms-sys
sudo emerge sys-boot/os-prober
sudo emerge sys-fs/e2fsprogs
sudo emerge sys-fs/fuse
sudo emerge sys-fs/ntfs3g
sudo emerge sys-fs/xfsprogs
sudo emerge sys-power/pm-utils
sudo emerge sys-process/htop
sudo emerge x11-apps/mesa-progs
sudo emerge x11-misc/lightdm
sudo emerge x11-misc/urxvt-perls
sudo emerge x11-terms/rxvt-unicode

# Closed source stuff
#https://wiki.gentoo.org/wiki/Steam
#sudo emerge net-im/skypetab-ng
sudo emerge =net-misc/megasync-2.3.1::pinkpieea
sudo emerge net-misc/dropbox

# Font for firefox
sudo emerge media-fonts/dejavu

# Thai font
sudo emerge media-fonts/thaifonts-scalable

# Chinese font
sudo emerge media-fonts/arphicfonts

# Korean font
sudo emerge media-fonts/baekmuk-fonts

# Japanese font
sudo emerge kochi-substitute

# Tamil font
media-fonts/lohit-tamil

# Tear-free compozitor
sudo emerge x11-misc/compton

# Games
brew install dwarf-fortress
brew install ppsspp
brew install rogue
brew install openttd
brew install freeciv
brew install cataclysm
brew install chocolate-doom

# Ranger deps
brew install highlight
brew install exiftool
sudo emerge www-client/w3m sudo media-gfx/w3mimgfb
sudo emerge media-video/ffmpegthumbnailer
sudo emerge media-video/mediainfo

# brew install bfg
# brew install ctags
brew install ack
brew install colordiff
brew install dos2unix
brew install dtrx
brew install hub
brew install rename

# Remove outdated versions from the cellar.
sudo emerge -av --depclean
