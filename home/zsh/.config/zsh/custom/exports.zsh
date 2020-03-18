# shellcheck disable=2034,2148
# Ranger settings
export RANGER_LOAD_DEFAULT_RC=false

# When executing the same command twice or more in a row, only store it once.
# Ignore commands that start with spaces and duplicates
export HISTCONTROL=ignoreboth

# Zsh history file
export HISTFILE="$XDG_CACHE_HOME/zsh/history"

# Editor
export EDITOR=nano
