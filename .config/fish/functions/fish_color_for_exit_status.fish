function fish_color_for_exit_status --description "Used by fish_prompt to color prompt based upon exit code of previous command"
    if test $status -eq 0
        echo (set_color normal)
    else
        echo (set_color $fish_color_error)
    end
end
