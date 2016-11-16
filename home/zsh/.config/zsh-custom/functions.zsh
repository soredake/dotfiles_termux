# shellcheck disable=2034,2148
# Create a new directory and enter it.
function mkd() {
  mkdir -p "$@" && cd "$_";
}

# Convert currencies; cconv {amount} {from} {to}
function cconv() {
  curl -s "http://www.google.com/finance/converter?a=$1&from=$2&to=$3&hl=es" |  sed '/res/!d;s/<[^>]*>//g';
}
