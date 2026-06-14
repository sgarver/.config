#!/usr/bin/env bash

set -euo pipefail

BASE="$HOME/.config/vim/pack/plugins/start"

mkdir -p "$BASE"

repos=(
  "https://github.com/tpope/vim-rails.git"
  "https://github.com/junegunn/fzf.vim.git"
  "https://github.com/junegunn/fzf.git"
  "https://github.com/tpope/vim-sensible.git"
  "https://github.com/catppuccin/vim.git"
)

echo "==> Syncing Vim plugins into: $BASE"

for repo in "${repos[@]}"; do
  name=$(basename "$repo" .git)
  target="$BASE/$name"

  if [ ! -d "$target/.git" ]; then
    echo "→ cloning $name"
    git clone "$repo" "$target"
  else
    echo "→ updating $name"
    git -C "$target" fetch --all --prune
    git -C "$target" reset --hard origin/HEAD 2>/dev/null || \
    git -C "$target" reset --hard origin/main 2>/dev/null || \
    git -C "$target" reset --hard origin/master 2>/dev/null || true
    git -C "$target" pull --ff-only || true
  fi
done

echo "✓ Vim plugins synced"
