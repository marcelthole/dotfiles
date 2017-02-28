PROMPT=$'\[%{$fg_bold[yellow]%}%n%{$fg_bold[green]%}\@%{$fg_bold[red]%}%m%{$reset_color%}\] %{$fg[blue]%}%D{[%X]} %{$reset_color%}%{$fg[white]%}[%~]%{$reset_color%} $(parse_git_dirty) $(git_remote_status)\
%{$fg[blue]%}❯%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✘%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔"

ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX=$ZSH_THEME_GIT_PROMPT_PREFIX
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX=$ZSH_THEME_GIT_PROMPT_SUFFIX

ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="⇡"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR=%{$fg[green]%}

ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="⇣"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR=%{$fg[red]%}