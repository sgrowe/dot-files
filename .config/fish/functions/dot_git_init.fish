function dot_git_init --description "One time set up of git repo for managing dot files"
    git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
end