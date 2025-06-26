#!/bin/bash

# Basic tools
sudo pacman -S --needed zsh git curl wget neovim

# Terminal & shell tools
sudo pacman -S --needed kitty starship bat fzf ripgrep

# Dev tools
sudo pacman -S --needed base-devel gcc nodejs npm clang

# Optional: GUI tools
sudo pacman -S --needed firefox dolphin neofetch btop

# Tiling WM stuff (if used)
# sudo pacman -S --needed bspwm sxhkd rofi picom polybar

# Fonts (if you're using Nerd Fonts or special themes)
sudo pacman -S --needed ttf-nerd-fonts-symbols ttf-jetbrains-mono-nerd

