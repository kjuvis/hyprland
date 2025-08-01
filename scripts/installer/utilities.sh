#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


echo "Installation started for utilities section"
echo "\nStarting utilities setup..."

pacman -S --noconfirm waybar" "Install Waybar - Status Bar" "yes
cp -r /home/$SUDO_USER/simple-hyprland/configs/waybar /home/$SUDO_USER/.config/

yay -S --sudoloop --noconfirm tofi" "Install Tofi - Application Launcher
cp -r /home/$SUDO_USER/simple-hyprland/configs/tofi /home/$SUDO_USER/.config/

pacman -S --noconfirm cliphist

yay -S --sudoloop --noconfirm swww
mkdir -p /home/$SUDO_USER/.config/assets/backgrounds && cp -r /home/$SUDO_USER/simple-hyprland/assets/backgrounds /home/$SUDO_USER/.config/assets/

yay -S --sudoloop --noconfirm hyprpicker

yay -S --sudoloop --noconfirm hyprlock
cp -r /home/$SUDO_USER/simple-hyprland/configs/hypr/hyprlock.conf /home/$SUDO_USER/.config/hypr/

yay -S --sudoloop --noconfirm wlogout
cp -r /home/$SUDO_USER/simple-hyprland/configs/wlogout /home/$SUDO_USER/.config/ && cp -r /home/$SUDO_USER/simple-hyprland/assets/wlogout /home/$SUDO_USER/.config/assets/

yay -S --sudoloop --noconfirm grimblast

yay -S --sudoloop --noconfirm hypridle
cp -r /home/$SUDO_USER/simple-hyprland/configs/hypr/hypridle.conf /home/$SUDO_USER/.config/hypr/

echo "------------------------------------------------------------------------"
