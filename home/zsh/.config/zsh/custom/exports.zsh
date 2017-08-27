# shellcheck disable=2034,2148
# Ranger settings
export RANGER_LOAD_DEFAULT_RC=false

# Keep a short history.
export HISTSIZE=500

# Keep even more history lines inside the file, so we can still look up
# previous commands without needlessly cluttering the current shell's history.
export HISTFILESIZE=10000

# When executing the same command twice or more in a row, only store it once.
# Ignore commands that start with spaces and duplicates
export HISTCONTROL=ignoreboth

# Keep track of the time the commands were executed.
# The xterm colour escapes require special care when piping; e.g. "| less -R".
export HISTTIMEFORMAT="${FG_BLUE}${FONT_BOLD}%Y/%m/%d %H:%M:%S${FONT_RESET}  "

# Make some commands not show up in history.
export HISTIGNORE="ls:cd:cd:ll:ls:la:history -:pwd:exit:date:* --help"

# Zsh history file
export HISTFILE="$HOME/.cache/zsh/history"

# Make new shells get the history lines from all previous shells instead of the
# default "last window closed" history.
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Editor
export EDITOR=nvim
