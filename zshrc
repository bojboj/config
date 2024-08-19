export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git fzf keychain)

zstyle ":omz:update" frequency 90

zstyle :omz:plugins:keychain agents ssh
zstyle :omz:plugins:keychain options --quiet

export EDITOR="hx"
export LESS="-SRX"

if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

source $ZSH/oh-my-zsh.sh
