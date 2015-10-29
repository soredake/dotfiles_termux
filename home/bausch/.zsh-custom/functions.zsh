
# Chaturbate records
function chatrec(){
  torify livestreamer -p "torify mpv --stream-capture=$1_$(date +%x-%T).mp4 --title=$1 --cache 8192" chaturbate.com/$1 best
}

# Create a new directory and enter it.
function mkd() {
  mkdir -p "$@" && cd "$_";
}

# `tre` is a shorthand for `tree` with hidden files and color enabled, ignoring
# the `.git` directory, listing directories first. The output gets piped into
# `less` with options to preserve color and line numbers, unless the output is
# small enough for one screen.
function tre() {
  tree -aC -I '.git|node_modules|bower_components' --dirsfirst "$@" | less -FRNX;
}

# Convert currencies; cconv {amount} {from} {to}
function cconv() {
  curl -s "http://www.google.com/finance/converter?a=$1&from=$2&to=$3&hl=es" |  sed '/res/!d;s/<[^>]*>//g';
}
