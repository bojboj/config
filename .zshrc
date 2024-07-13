export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(vi-mode git fzf fd keychain)

zstyle ":omz:update" frequency 60

zstyle :omz:plugins:keychain agents ssh
zstyle :omz:plugins:keychain options --quiet

export EDITOR="nvim"
export LESS="-SRX"

if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Library/Python/3.10/bin" ]; then
    export PATH="$HOME/Library/Python/3.10/bin:$PATH"
fi

if [ -d "/opt/homebrew/opt/ruby/bin:$PATH" ]; then
    export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
fi

source $ZSH/oh-my-zsh.sh
