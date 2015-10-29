alias ls='ls --color=auto'

# Enable simple aliases to be sudo'ed. ("sudone"?)
# http://www.gnu.org/software/bash/manual/bashref.html#Aliases says: "If the
# last character of the alias value is a space or tab character, then the next
# command word following the alias is also checked for alias expansion."
alias sudo='sudo ';

# Be nice!
alias please='sudo'
alias plz='please'

# Auto-correct last input. @TODO: This works?
alias fuck='$(thefuck $(fc -ln -1))'

# Shortcut to edit hosts file.
alias hosts='sudo $EDITOR /etc/hosts'

# Git.
alias g="git"
alias h="history"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Update Portage tree, update Layman overlays, update installed packages, update installed Ruby gems, npm, and their
# installed packages.
alias update='plz eix-sync; plz eix-update; plz env-update; plz etc-update; plz emerge -av --depclean; plz emerge -uDU @world; plz emerge --regen; plz emerge @preserved-rebuild; plz emerge @module-rebuild; plz npm update -g; gem update --system; gem update;'

# What's my IP address.
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Enhanced WHOIS lookups.
alias whois="whois -h whois.internic.net"

# Empty the Trash on all mounted volumes and the main HDD. Also, clear Apple’s
# System Logs to improve shell startup speed
#alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Kill all the tabs in Chrome to free up memory.
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
#alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Lock the screen (when going AFK).
#alias afk2="pmset displaysleepnow"

# Currency conversions.
alias usd="cconv 1 usd uah"

# Update all Python packages installed via Pip.
#alias pip2update="pip2 freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip2 install -U"

# Help firefox
alias fxhelp="find ~/.mozilla/firefox/ -name '*.sqlite' -print -exec sqlite3 {} 'VACUUM; REINDEX;' \;"
