#!/bin/bash

DOTFILES=$(pwd)

if [ -f "$HOME/.zshrc" ]; then
    rm "$HOME/.zshrc"
fi
ln -s "$DOTFILES/zshrc" "$HOME/.zshrc"

if [ -f "$HOME/.editorconfig" ]; then
    rm "$HOME/.editorconfig"
fi
ln -s "$DOTFILES/editorconfig" "$HOME/.editorconfig"

if [ -f "$HOME/.tmux.conf" ]; then
    rm "$HOME/.tmux.conf"
fi
ln -s "$DOTFILES/tmux.conf" "$HOME/.tmux.conf"

if [ -f "$HOME/.ideavimrc" ]; then
    rm "$HOME/.ideavimrc"
fi
ln -s "$DOTFILES/ideavimrc" "$HOME/.ideavimrc"

if [ -f "$HOME/.local/share/code-server/Machine/settings.json" ]; then
    rm "$HOME/.local/share/code-server/Machine/settings.json"
fi
ln -s "$DOTFILES/vscode/settings.json" "$HOME/.local/share/code-server/Machine/settings.json"

if [ -d "$HOME/.config/nvim" ]; then
    rm "$HOME/.config/nvim"
fi
ln -s "$DOTFILES/nvim" "$HOME/.config/nvim"
