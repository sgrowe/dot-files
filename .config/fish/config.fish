
set -x EDITOR nano
set -x VISUAL nano

status is-interactive; and source (nodenv init -|psub)

abbr --add --global dotgit git --git-dir=$HOME/.cfg/ --work-tree=$HOME
