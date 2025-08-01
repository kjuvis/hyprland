#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Source helper file
source $SCRIPT_DIR/helper.sh

log_message "Installation started for hypr section"
print_info "\nStarting hypr setup..."
print_info "\nEverything is recommended to INSTALL"

run_command "pacman -S --noconfirm hyprland" "Install Hyprland (Must)" "yes"
run_command "mkdir -p /home/$SUDO_USER/.config/hypr/ && cp -r /home/$SUDO_USER/simple-hyprland/configs/hypr/hyprland.conf /home/$SUDO_USER/.config/hypr/"

run_command "pacman -S --noconfirm xdg-desktop-portal-hyprland"

run_command "pacman -S --noconfirm polkit-kde-agent"

run_command "pacman -S --noconfirm dunst"
run_command "cp -r /home/$SUDO_USER/simple-hyprland/configs/dunst /home/$SUDO_USER/.config/"

run_command "pacman -S --noconfirm qt5-wayland qt6-wayland"

echo "------------------------------------------------------------------------"
