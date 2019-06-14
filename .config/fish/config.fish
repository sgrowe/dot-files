
set -x EDITOR nano
set -x VISUAL nano

status is-interactive; and string length (which nodenv) > /dev/null; and source (nodenv init -|psub)

abbr --add --global dot_git git --git-dir=$HOME/.cfg/ --work-tree=$HOME

set PATH $PATH ~/.local/bin
