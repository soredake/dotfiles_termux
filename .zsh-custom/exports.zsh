
# Make less the default pager, and specify some useful defaults.
less_options=(
  # If the entire text fits on one screen, just show it and quit. (Be more
  # like "cat" and less like "more".)
  --quit-if-one-screen

  # Do not clear the screen first.
  --no-init

  # Like "smartcase" in Vim: ignore case unless the search pattern is mixed.
  --ignore-case

  # Do not automatically wrap long lines.
  --chop-long-lines

  # Allow ANSI colour escapes, but no other escapes.
  --RAW-CONTROL-CHARS

  # Do not ring the bell when trying to scroll past the end of the buffer.
  --quiet

  # Do not complain when we are on a dumb terminal.
  --dumb
);

export LESS="${less_options[*]}";
unset less_options;
export PAGER='less';

# Don’t clear the screen after quitting a manual page.
export MANPAGER="less -X";

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Always enable colored `grep` output.
export GREP_OPTIONS="--color=auto";

# Link Homebrew casks in `/Applications` rather than `~/Applications`.
#export HOMEBREW_CASK_OPTS="--appdir=/Applications";

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
