

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
export EDITOR="helix"
export SUDO_EDITOR="$EDITOR"
export PGHOST="/var/run/postgresql"


export PATH=$PATH:/usr/local/go/bin

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000

#setopt inc_append_history

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$HOME/.local/share/omarchy/bin:$PATH"
#eval "$(~/.local/bin/mise activate zsh)"

alias hx=helix
alias ls='ls --color=auto'
alias l='ls -lah'

export PATH="$PATH:$HOME/.local/bin"
export OLLAMA_MODEL="phi3"

. "$HOME/.local/share/../bin/env"
