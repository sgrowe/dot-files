function fish_prompt_text_for_exit_status --description "Printed by fish_prompt to indicate exit code of previous command"
    set -l status_code (echo $status)

    if test $status_code -ne 0
        printf '%s> %i%s' (set_color $fish_color_error) (echo $status_code) (set_color normal)
    else
        echo ""
    end
end
