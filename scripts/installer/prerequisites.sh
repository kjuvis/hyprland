#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


echo "Installation started for prerequisites section"
echo "\nStarting prerequisites setup..."

sudo pacman -Syyu --noconfirm

sudo pacman -S --noconfirm pipewire wireplumber pamixer brightnessctl tar ttf-cascadia-code-nerd ttf-cascadia-mono-nerd ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-firacode-nerd ttf-iosevka-nerd ttf-iosevkaterm-nerd ttf-jetbrains-mono-nerd ttf-jetbrains-mono ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono

sudo pacman -S --noconfirm sddm && systemctl enable sddm.service

echo "------------------------------------------------------------------------"
