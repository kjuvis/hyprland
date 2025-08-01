#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"



echo "Installation started for hypr section"
echo "\nStarting hypr setup..."
echo "\nEverything is recommended to INSTALL"

sudo pacman -S --noconfirm hyprland xdg-desktop-portal-hyprland polkit-kde-agent dunst qt5-wayland qt6-wayland


sudo mkdir -p /home/$SUDO_USER/.config/hypr/ && cp -r /home/$SUDO_USER/simple-hyprland/configs/hypr/hyprland.conf /home/$SUDO_USER/.config/hypr/
sudo cp -r $SCRIPT_DIR/.../simple-hyprland/configs/dunst /home/$SUDO_USER/.config/


echo "------------------------------------------------------------------------"
