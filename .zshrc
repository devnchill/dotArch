export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="jispowocustomized"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias ls='eza  --icons'
alias l='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
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

. /opt/asdf-vm/asdf.sh
export PATH="$PATH:$HOME/.local/bin:$HOME/.config/.npm-global/bin:$HOME/.spicetify"
source <(fzf --zsh)
bindkey -v

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

