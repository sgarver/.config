# Shell aliases shared between bash and zsh

# System aliases
alias ls='ls --color=auto'
alias l='ls -lh'
alias ll='ls -lah'
alias grep='grep --color=auto'
alias nv='nvim'
alias hx='helix'

# Custom shortcuts
alias generate='sh ~/.config/theme/generate.sh'
alias fzf='fzf -i -e --preview "bat --style=numbers --color=always --line-range :500 {}"'
alias bf='nvim $(fzf)'
alias theme='cd ~/code/.config/theme'
alias code='cd ~/code'

# Piper TTS
alias say='~/.local/bin/say'
