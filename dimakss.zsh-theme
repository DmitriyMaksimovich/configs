# The prompt

PROMPT='%{$fg[magenta]%}[%c] %{$reset_color%}'

# The right-hand prompt

RPROMPT='${time} %{$fg[magenta]%}$(git_prompt_info)%{$reset_color%}'

# local time, color coded by last return code
time_enabled="%(?.%{$fg[green]%}.%{$fg[red]%})%*%{$reset_color%}"
time_disabled="%{$fg[green]%}%*%{$reset_color%}"
time=$time_enabled

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

