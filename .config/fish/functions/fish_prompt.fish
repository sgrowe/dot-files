function fish_prompt --description 'Write out the prompt'
    set -l prompt_color (fish_color_for_exit_status)

    if test -z $WINDOW
        printf '%s %s%s%s>%s ' (whoami) (set_color $fish_color_cwd) (prompt_pwd) (echo $prompt_color) (set_color normal)
    else
        printf '%s (%s)%s%s%s>%s ' (whoami) (echo $WINDOW) (set_color $fish_color_cwd) (prompt_pwd) (echo $prompt_color) (set_color normal)
    end
end
