export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="mgutz"

plugins=(git fzf keychain)

zstyle ':omz:update' frequency 90

zstyle :omz:plugins:keychain agents ssh
zstyle :omz:plugins:keychain options --quiet

export EDITOR='nvim'

source $ZSH/oh-my-zsh.sh
