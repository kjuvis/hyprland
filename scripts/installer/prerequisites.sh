#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Source helper file
source $SCRIPT_DIR/helper.sh

log_message "Installation started for prerequisites section"
print_info "\nStarting prerequisites setup..."

run_command "pacman -Syyu --noconfirm"

if run_command "pacman -S --noconfirm --needed git base-devel" ; then #
    run_command "git clone https://aur.archlinux.org/yay.git && cd yay"
    run_command "makepkg --noconfirm -si && cd .. # builds with makepkg"
fi
run_command "pacman -S --noconfirm pipewire wireplumber pamixer brightnessctl"

run_command "pacman -S --noconfirm ttf-cascadia-code-nerd ttf-cascadia-mono-nerd ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-firacode-nerd ttf-iosevka-nerd ttf-iosevkaterm-nerd ttf-jetbrains-mono-nerd ttf-jetbrains-mono ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-mono"

run_command "pacman -S --noconfirm sddm && systemctl enable sddm.service"

run_command "pacman -S --noconfirm tar"

echo "------------------------------------------------------------------------"
