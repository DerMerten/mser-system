#!/bin/bash

## Install / Update packages

yay -S --noconfirm - < needed.txt

## Add my dotfiles

git clone https://github.com/DerMerten/myDotFiles.git
sudo cp -r myDotFiles/* ~/.config/

## oh-my-zsh

sudo cp .zshrc ~/
sudo cp
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

## Add wallpaper

sudo cp bg.jpg ~/Pictures/

## Add scripts

sudo cp scripts/auto-cpufreq-status.sh /usr/local/bin/