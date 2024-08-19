#!/bin/bash

DOTFILES=$(pwd)

rm "$HOME/.zshrc"
ln -s "$DOTFILES/zshrc" "$HOME/.zshrc"

rm "$HOME/.editorconfig"
ln -s "$DOTFILES/editorconfig" "$HOME/.editorconfig"

rm "$HOME/.tmux.conf"
ln -s "$DOTFILES/tmux.conf" "$HOME/.tmux.conf"

rm "$HOME/.config/helix"
ln -s "$DOTFILES/helix" "$HOME/.config/helix"
