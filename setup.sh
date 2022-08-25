#!/usr/bin/env bash

dir=$(pwd)

ln -sf ${dir}/.mbsyncrc ~/.mbsyncrc
mkdir -p ~/.config/kitty
ln -sf ${dir}/kitty.conf ~/.config/kitty/kitty.conf
ln -sf ${dir}/.zshrc ~/.zshrc
ln -sf ${dir}/.zimrc ~/.zimrc
ln -sf ${dir}/.gitconfig ~/.gitconfig
