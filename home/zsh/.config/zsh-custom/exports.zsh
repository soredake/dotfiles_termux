# Tmux plugin settings
export ZSH_TMUX_AUTOSTART=false
export ZSH_TMUX_AUTOCONNECT=false
export ZSH_TMUX_AUTOQUIT=false

# Ranger settings
export RANGER_LOAD_DEFAULT_RC=false

# default pager
export PAGER='less';

# Don’t clear the screen after quitting a manual page.
export MANPAGER="less -X";

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Keep a reasonably long history.
# export HISTSIZE=4096;
# Keep a super long history.
export HISTSIZE=500;

# Keep even more history lines inside the file, so we can still look up
# previous commands without needlessly cluttering the current shell's history.
# export HISTFILESIZE=16384;
export HISTFILESIZE=65536;

# When executing the same command twice or more in a row, only store it once.
# export HISTCONTROL=ignoredups;
# Ignore commands that start with spaces and duplicates
export HISTCONTROL=ignoreboth

# Keep track of the time the commands were executed.
# The xterm colour escapes require special care when piping; e.g. "| less -R".
export HISTTIMEFORMAT="${FG_BLUE}${FONT_BOLD}%Y/%m/%d %H:%M:%S${FONT_RESET}  ";

# Make some commands not show up in history.
export HISTIGNORE="ls:cd:cd:ll:ls:la:history -:pwd:exit:date:* --help";

# Make new shells get the history lines from all previous shells instead of the
# default "last window closed" history.
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
