#!/bin/bash

DOTFILES=$(pwd)

# Install oh-my-zsh.
if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

sudo chsh -s $(which zsh) $USER

ln -fs $DOTFILES/zshrc $HOME/.zshrc
ln -fs $DOTFILES/editorconfig $HOME/.editorconfig
ln -fs $DOTFILES/tmux.conf $HOME/.tmux.conf
ln -fs $DOTFILES/ideavimrc $HOME/.ideavimrc
ln -fs $DOTFILES/vscode/settings.json $HOME/.local/share/code-server/Machine/settings.json
ln -fs $DOTFILES/nvim $HOME/.config/
