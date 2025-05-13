#!/usr/bin/env bash

# List of programming languages
languages=(
  golang
  solidity
  vlang
  v
  nodejs
  javascript
  tmux
  typescript
  zsh
  cpp
  c
  lua
  rust
  python
  bash
  php
  haskell
  ArnoldC
  css
  html
  gdb
)

# List of command-line tools
commands=(
  find
  man
  tldr
  sed
  awk
  tr
  cp
  ls
  grep
  xargs
  rg
  ps
  mv
  kill
  lsof
  less
  head
  tail
  tar
  rm
  rename
  jq
  cat
  ssh
  cargo
  git
  git-worktree
  git-status
  git-commit
  git-rebase
  docker
  docker-compose
  stow
  chmod
  chown
  make
)

# Combine both lists and show fuzzy finder
selected=$(printf "%s\n" "${languages[@]}" "${commands[@]}" | fzf)

# Exit if nothing is selected
if [[ -z $selected ]]; then
  exit 0
fi

# Prompt the user for a query
read -p "Enter Query: " query

# Replace spaces with + for URL formatting
query=$(echo "$query" | tr ' ' '+')

# Check if the selected item is a language or command
if printf "%s\n" "${languages[@]}" | grep -qx "$selected"; then
  tmux neww bash -c "curl cht.sh/$selected/$query & while true; do sleep 1; done"
else
  tmux neww bash -c "curl -s cht.sh/$selected~$query | less"
fi
