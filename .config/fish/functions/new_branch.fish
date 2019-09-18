function new_branch --description "Create a new git branch based off of latest master"
    git checkout master; and \
    git pull; and \
    git checkout -b $argv[1]
end