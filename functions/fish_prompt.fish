function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    echo

    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal

    __terlar_git_prompt
    __fish_hg_prompt
    echo

    if test $last_status -ne 0
        set_color $fish_color_error
    end

    echo -n '$ '

    set_color normal
end
