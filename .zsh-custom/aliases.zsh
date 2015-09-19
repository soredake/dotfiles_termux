

# Enable simple aliases to be sudo'ed. ("sudone"?)
# http://www.gnu.org/software/bash/manual/bashref.html#Aliases says: "If the
# last character of the alias value is a space or tab character, then the next
# command word following the alias is also checked for alias expansion."
alias sudo='sudo ';

# Be nice! @TODO: It needed?
alias please='sudo'
alias plz='please'

# Auto-correct last input. @TODO: This works?
alias fuck='$(thefuck $(fc -ln -1))'

# I <3 u cask.
alias cask='brew cask'

# Shortcut to edit hosts file.
alias hosts='sudo $EDITOR /etc/hosts'

# Git.
alias g="git"
alias h="history"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Get OS X Software Updates, update installed Ruby gems, Homebrew, npm, and their
# installed packages.
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update -g; pip2update; pip3update; gem update --system; gem update;'

# What's my IP address.
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Enhanced WHOIS lookups.
alias whois="whois -h whois.internic.net"

# OS X checksum fallbacks.
command -v md5sum > /dev/null || alias md5sum="md5"
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# Empty the Trash on all mounted volumes and the main HDD. Also, clear Apple’s
# System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder.
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons.
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Kill all the tabs in Chrome to free up memory.
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Lock the screen (when going AFK).
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias afk2="pmset displaysleepnow"

# Rebuild caches
alias rebkcache="rm -r -v /System/Library/Caches/com.apple.kext.caches/Startup/*"
alias rebkcache2="touch /System/Library/Extenshions && touch /Library/Extenshions"
alias rebkcache3="kextcache"

# Currency conversions.
alias usd="cconv 1 usd uah"

# Update all Python packages installed via Pip.
alias pip2update="pip2 freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip2 install -U"
alias pip3update="pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U"

# Help firefox
alias fxhelp="find ~/Library/Application\ Support/Firefox/Profiles/ -name '*.sqlite' -print -exec sqlite3 {} 'VACUUM; REINDEX;' \;"
