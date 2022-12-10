export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="mgutz"

plugins=(vi-mode git fzf fd keychain)

zstyle ":omz:update" frequency 90

zstyle :omz:plugins:keychain agents ssh
zstyle :omz:plugins:keychain options --quiet

export EDITOR="nvim"

if [ -d "$HOME/.local/bin" ]; then
   export PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Library/Python/3.10/bin" ]; then
   export PATH="$HOME/Library/Python/3.10/bin:$PATH"
fi

source $ZSH/oh-my-zsh.sh
