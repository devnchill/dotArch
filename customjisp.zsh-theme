local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ :%s)"

PROMPT=$'%{$fg[cyan]%}  %{$reset_color%}%{$fg[blue]%}%~ %{$reset_color%}%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}\n${ret_status} %{$reset_color%} '

PROMPT2="%{$fg_bold[black]%}%_> %{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%} git(%{$fg[red]%}"  
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"  # Dirty state handled here
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"  # Clean state closes the parenthesis

prompt_color="%F{#00FFFF}"
