# This file has to be symlinked to ~/.oh-my-zsh/themes/

#------------------------------------------------------------------------------
#----- Color Variables
#------------------------------------------------------------------------------

typeset -A COLOR
COLOR[green]='%F{#4FA544}'
COLOR[purple]='%F{#C064C7}'
COLOR[red]='%F{#FF0000}'
COLOR[blue]='%F{#569CD6}'
COLOR[orange]='%F{#E8BF6A}'


#------------------------------------------------------------------------------
#----- Git Signs
#------------------------------------------------------------------------------

ZSH_THEME_GIT_PROMPT_PREFIX="${COLOR[green]}\ue0a0 ${COLOR[purple]}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="${COLOR[red]} \u25cf"
ZSH_THEME_GIT_PROMPT_CLEAN="${COLOR[green]} \u25cf"
ZSH_THEME_GIT_PROMPT_STASHED="${COLOR[blue]} \u2699"
ZSH_THEME_GIT_PROMPT_ADDED="${COLOR[orange]} \u25cf"



#------------------------------------------------------------------------------
#----- Prompt Design
#------------------------------------------------------------------------------

function prompt_char {
    if [ $UID -eq 0 ]; then
        echo "${COLOR[red]}#%{$reset_color%}";
    else
        echo $;
    fi
}

PROMPT='%(?, ,${COLOR[red]}FAIL%{$reset_color%}
)
${COLOR[orange]}%D{%a, %Y-%m-%d} ${COLOR[green]}@%{$reset_color%} ${COLOR[orange]}%D{%I:%M:%S %p}%{$reset_color%}
${COLOR[blue]}%~%{$reset_color%} $(git_prompt_info)
${COLOR[green]}▶%{$reset_color%}%(prompt_char) '

