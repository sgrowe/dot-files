function fish_prompt --description 'Write out the prompt'
    set -l exit_status_text (fish_prompt_text_for_exit_status)

    if test $CMD_DURATION -gt $fish_show_cmd_duration_threshold
        printf '%s> %sms%s\n' (set_color $fish_color_autosuggestion) (echo $CMD_DURATION) (set_color normal)
    end

    if test -n $exit_status_text
        echo $exit_status_text
    end

    echo -n (fish_prompt_git_info)

    if test -z $WINDOW
        printf '%s %s%s%s> ' (whoami) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    else
        printf '%s (%s)%s%s>%s ' (whoami) (echo $WINDOW) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    end
end
