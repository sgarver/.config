# Load oh-my-zsh
export ZSH="/usr/share/oh-my-zsh"
source "$ZSH/oh-my-zsh.sh"

# Use empty theme (we'll use custom prompt)
ZSH_THEME=""

# Default plugins
plugins=(git docker npm)

# Load your custom colors
source ~/.config/zsh/colors.zsh

# Explicitly set PS1 to ensure it overrides oh-my-zsh
PS1="
   ${GRAY}%~${BLUE}\$(parse_git_branch) ${PURPLE}»${RESET} "

# Load shared aliases
if [ -f ~/.config/shell/aliases.sh ]; then
    source ~/.config/shell/aliases.sh
fi

# Custom prompt (keep exactly as-is)
parse_git_branch() {
  local BRANCH_COLOR="${BLUE}"
  local WHITE_COLOR="${WHITE}"
  local DIRTY_COLOR="${YELLOW}"
  local RESET_COLOR="${RESET}"

  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null)
  if [[ -z "$branch" ]]; then
    return
  fi

  local dirty=""
  if ! git diff --quiet 2>/dev/null || ! git diff --cached --quiet 2>/dev/null; then
    dirty="${DIRTY_COLOR}*${RESET_COLOR}"
  fi

  echo -e " ${BRANCH_COLOR} ${WHITE_COLOR}${branch}${dirty}${RESET_COLOR}"
}

# LM Studio
export PATH="$PATH:/home/sdg/.lmstudio/bin"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
