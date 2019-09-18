function cleanup_branches --description "Delete all git branches that are up to date with origin (except master)"
    git checkout master; and \
    git branch | grep -v '^*' | xargs git branch -d
end
