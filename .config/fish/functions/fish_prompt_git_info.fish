function fish_prompt_git_info
    if git rev-parse --is-inside-work-tree 2> /dev/null
        set -l ahead (git rev-list origin..HEAD --count)
        set -l behind (git rev-list HEAD..origin --count)

        printf '%s> %s' (set_color $fish_color_autosuggestion) (git symbolic-ref --short HEAD)

        if test $ahead -gt 0
            echo -n ' $ahead ahead'
        end

        if test $behind -gt 0
            echo -n ' $behind behind'
        end

        echo (set_color normal)
    end
end