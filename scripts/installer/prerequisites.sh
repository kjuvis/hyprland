#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


log_message "Installation started for prerequisites section"
print_info "\nStarting prerequisites setup..."

pacman -Syyu --noconfirm

pacman -S --noconfirm pipewire wireplumber pamixer brightnessctl

pacman -S --noconfirm ttf-cascadia-code-nerd ttf-cascadia-mono-nerd ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-firacode-nerd ttf-iosevka-nerd ttf-iosevkaterm-nerd ttf-jetbrains-mono-nerd ttf-jetbrains-mono ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono

pacman -S --noconfirm sddm && systemctl enable sddm.service

pacman -S --noconfirm tar

echo "------------------------------------------------------------------------"
