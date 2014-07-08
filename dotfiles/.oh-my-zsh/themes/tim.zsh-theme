# zsh theme -- tim

local return_code="%(?..%{$fg[red]%}%?)%{$reset_color%}"

PROMPT=$'%{\033[35m%}%D{%F %H:%M:%S}%{$reset_color%} %{$fg_bold[blue]%}%n@%m%{$fg[blue]%} %c%{$reset_color%} %!%{$reset_color%} $(git_prompt_info)\
$ '

RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
