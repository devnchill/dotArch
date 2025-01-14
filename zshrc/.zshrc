export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="customjisp"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias sup='sudo pacman -Syu'
alias yup='yay -Syu'
alias s='sudo pacman -S'
alias y='yay -S'
alias sr='sudo pacman -Rns'
alias yr='yay -Rns'
alias lg="lazygit"
alias v='nvim'
alias cc='clear'
alias ..='cd ..'
alias ../..='cd ../..'

. "$HOME/.asdf/asdf.sh"
export PATH="$PATH:$HOME/.local/bin"
source <(fzf --zsh)
bindkey -v

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
