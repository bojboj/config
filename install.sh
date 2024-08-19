#!/bin/bash

myconfigDir=$(pwd)

cd ~
ln -sf "$myconfigDir/zshrc" .zshrc
ln -sf "$myconfigDir/editorconfig" .editorconfig
ln -sf "$myconfigDir/tmux.conf" .tmux.conf
