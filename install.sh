#!/bin/bash


echo "==> install packages from dependecies.txt"
    cd dotfiles
    yay -S $( cat dependencies.txt ) --noconfirm --needed

sleep 3

echo "==> installing dotfiles"
    export DOTFILES=".config .vimrc .zprofile .xinitrc .fehbg"
    cp -R $DOTFILES ~

sleep 3 

echo "==> removing dotfiles dir from computer"
    cd ~
    rm -rf dotfiles