export ZSH=$HOME/.oh-my-zsh

export EDITOR='nvim'
export LESS='-SRXF'

ZSH_THEME="mgutz"

plugins=(git fzf keychain)

zstyle ':omz:update' frequency 90

zstyle :omz:plugins:keychain agents ssh
zstyle :omz:plugins:keychain options --quiet

source $ZSH/oh-my-zsh.sh
