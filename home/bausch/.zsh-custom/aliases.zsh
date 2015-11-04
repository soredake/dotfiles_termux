alias ls='ls --color=auto -a'

# Enable simple aliases to be sudo'ed. ("sudone"?)
# http://www.gnu.org/software/bash/manual/bashref.html#Aliases says: "If the
# last character of the alias value is a space or tab character, then the next
# command word following the alias is also checked for alias expansion."
alias sudo='sudo ';

# Be nice!
alias please='sudo'
alias sudo='please'

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
alias update='sudo eix-sync; sudo eix-update; sudo env-update; sudo etc-update; sudo emerge -av --depclean; sudo emerge -uDU @world; sudo emerge --regen; sudo emerge @preserved-rebuild; sudo emerge @module-rebuild; sudo npm update -g; gem update --system; gem update;'

# What's my IP address.
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Enhanced WHOIS lookups.
alias whois="whois -h whois.internic.net"

# Currency conversions.
alias usd="cconv 1 usd uah"

# Update all Python packages installed via Pip.
#alias pip2update="pip2 freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip2 install -U"
