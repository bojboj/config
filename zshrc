export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="mgutz"

plugins=(git fzf fd keychain)

zstyle ':omz:update' frequency 90

zstyle :omz:plugins:keychain agents ssh
zstyle :omz:plugins:keychain options --quiet

export FZF_DEFAULT_COMMAND="fdfind --type file --color=always"
export FZF_DEFAULT_OPTS="--ansi"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export EDITOR='nvim'
export LESS='-SFR'

source $ZSH/oh-my-zsh.sh
