setopt PROMPT_SUBST
autoload -Uz colors && colors

RESET="%{${reset_color}%}"
RED="%{$fg[red]%}"
GREEN="%{$fg[green]%}"
YELLOW="%{$fg[yellow]%}"
BLUE="%{$fg[blue]%}"
PURPLE="%{$fg[magenta]%}"
WHITE="%{$fg[white]%}"

PS1="
   ${WHITE}%~${BLUE}\$(parse_git_branch) ${PURPLE}»${RESET} "
