function fish_prompt_git_info
    if git rev-parse --is-inside-work-tree > /dev/null 2> /dev/null
        printf '%s❯ %s%s' (set_color $fish_color_autosuggestion) (git symbolic-ref --short HEAD) (set_color normal)
    else
        echo ""
    end
end
