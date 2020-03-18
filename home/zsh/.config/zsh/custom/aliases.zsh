# shellcheck disable=2034,2148
# Confirm before overwriting
# I know it is bad practice to override the default commands, but this is for
# my own safety. If you really want the original "instakill" versions, you can
# use "command rm", "\rm", or "/bin/rm" inside your own commands, aliases, or
# shell functions. Note that separate scripts are not affected by the aliases
# defined here.
alias cp='cp -i'
alias mv='mv -i'

# better ls
alias ls='ls --color=auto -ah --quoting-style=escape --group-directories-first'

# update everything
alias update='apt update; apt upgrade -y; zplugin self-update; zplugin update'

# tmux alias with xdg config location
alias tmux='tmux -f $HOME/.config/tmux/tmux.conf'
