function dot_git --description "Alias for working with the git repo that stores dot files"
    git --git-dir=$HOME/.cfg/ --work-tree=$HOME $argv
end
