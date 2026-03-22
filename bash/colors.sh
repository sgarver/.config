RESET="\[\e[0m\]"
RED="\[\e[38;5;203m\]"
GREEN="\[\e[38;5;107m\]"
YELLOW="\[\e[38;5;221m\]"
BLUE="\[\e[38;5;109m\]"
PURPLE="\[\e[38;5;141m\]"
WHITE="\[\e[38;5;188m\]"
GRAY="\[\e[38;5;240m\]"

parse_git_branch() {
    local branch=$(git branch 2>/dev/null | sed -e 's/^\*\?.*/\&/' | head -1)
    if [ -n "$branch" ]; then
        echo " $branch"
    fi
}

PS1="
   \[\e[38;5;240m\]\w\[\e[38;5;109m\]\$(parse_git_branch) \[\e[38;5;141m\]»\[\e[0m\] "