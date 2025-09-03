#!/bin/bash

# Function to check if a directory or file exists
check_exists() {
  if [ ! -e "$1" ]; then
    echo "Warning: $1 does not exist. Skipping."
    return 1
  fi
  return 0
}

# Function to sync directories except .local/bin
sync_directory() {
  local src=$1
  local dest=$2
  check_exists "$src" && rsync -av --delete --exclude='.git' --itemize-changes "$src/" "$dest/$(basename "$src")/"
}

# Special function to sync only .sh scripts from .local/bin
sync_shell_scripts_from_bin() {
  local src="$HOME/.local/bin"
  local dest="./bin"
  mkdir -p "$dest"
  rsync -av --delete --include="*/" --include="*.sh" --exclude="*" --itemize-changes "$src/" "$dest/"
}

# Directories to sync (excluding .local/bin for now)
directories=(
  "$HOME/.config/nvim"
  "$HOME/.config/hypr"
  "$HOME/.config/kitty"
  "$HOME/.config/cava"
  "$HOME/.config/waybar"
  "$HOME/.tmux"
  "$HOME/Pictures/wallpapers/"
)

# Loop over directories and sync them
for dir in "${directories[@]}"; do
  sync_directory "$dir" ./
done

# Sync only .sh scripts from .local/bin
sync_shell_scripts_from_bin

# Sync individual files
check_exists "$HOME/.zshenv" && rsync -av --itemize-changes "$HOME/.zshenv" ./
check_exists "$HOME/.tmux.conf" && rsync -av --itemize-changes "$HOME/.tmux.conf" ./

# Logging: Add a message when done
echo "Dotfiles update completed successfully."
