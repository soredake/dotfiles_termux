# Confirm before overwriting
# I know it is bad practice to override the default commands, but this is for
# my own safety. If you really want the original "instakill" versions, you can
# use "command rm", "\rm", or "/bin/rm" inside your own commands, aliases, or
# shell functions. Note that separate scripts are not affected by the aliases
# defined here.
alias cp='cp -i';
alias mv='mv -i';

# better ls
alias ls='ls --color=auto -ah'

# Enable simple aliases to be sudo'ed. ("sudone"?)
# http://www.gnu.org/software/bash/manual/bashref.html#Aliases says: "If the
# last character of the alias value is a space or tab character, then the next
# command word following the alias is also checked for alias expansion."
alias sudo='sudo '

# update everything
alias update='apt update && apt upgrade && upgrade_oh_my_zsh'

# What's my IP address.
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

# Enhanced WHOIS lookups.
alias whois='whois -h whois.internic.net'

# tmux alias with xdg config location
alias tmux='tmux -f $HOME/.config/tmux/tmux.conf'

alias hostsupdate='cd $HOME/git/hosts && peth=$(realpath .) && git reset --hard && git pull && python3 updateHostsFile.py --extensions gambling -a && /system/bin/su -c "mount -o remount,rw /system && mv $peth/hosts /etc/hosts && mount -o remount,ro /system"'
