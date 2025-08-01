#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"



echo "Installation started for hypr section"
echo "\nStarting hypr setup..."
echo "\nEverything is recommended to INSTALL"

pacman -S --noconfirm hyprland
mkdir -p /home/$SUDO_USER/.config/hypr/ && cp -r /home/$SUDO_USER/simple-hyprland/configs/hypr/hyprland.conf /home/$SUDO_USER/.config/hypr/

pacman -S --noconfirm xdg-desktop-portal-hyprland

pacman -S --noconfirm polkit-kde-agent

pacman -S --noconfirm dunst
cp -r /home/$SUDO_USER/simple-hyprland/configs/dunst /home/$SUDO_USER/.config/

pacman -S --noconfirm qt5-wayland qt6-wayland

echo "------------------------------------------------------------------------"
