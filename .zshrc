export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias sup='sudo pacman -Syu'
alias yup='yay -Syu'
alias s='sudo pacman -S'
alias y='yay -S'
alias sr='sudo pacman -Rns'
alias yr='yay -Rns'
alias lg="lazygit"
alias v='nvim'
alias vv='nvim .'
alias ..='cd ..'
alias ../..='cd ../..'
alias z="cd ~ && cd \$(find * -type d | fzf)"

[ -f "/home/viena/.ghcup/env" ] && . "/home/viena/.ghcup/env" # ghcup-env
. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit -c
export PATH="$PATH:$HOME/.local/bin"
bindkey -v

source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
