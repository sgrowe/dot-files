
set -x EDITOR nano
set -x VISUAL nano

status is-interactive; and source (nodenv init -|psub)

abbr --add dot_git git --git-dir=$HOME/.cfg/ --work-tree=$HOME
