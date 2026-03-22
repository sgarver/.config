setopt PROMPT_SUBST

RESET="%F{default}"
RED="%F{203}"
GREEN="%F{107}"
YELLOW="%F{221}"
BLUE="%F{109}"
PURPLE="%F{141}"
WHITE="%F{188}"
GRAY="%F{240}"

PS1="
   ${GRAY}%~${BLUE}\$(parse_git_branch) ${PURPLE}»${RESET} "