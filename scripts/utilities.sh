#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


echo "Installation started for utilities section"
echo "\nStarting utilities setup..."

sudo pacman -S --noconfirm waybar
sudo cp -r $SCRIPT_DIR/../simple-hyprland/configs/waybar /home/$SUDO_USER/.config/

yay -S --sudoloop --noconfirm tofi
sudo cp -r $SCRIPT_DIR/../simple-hyprland/configs/tofi /home/$SUDO_USER/.config/

sudo pacman -S --noconfirm cliphist

yay -S --sudoloop --noconfirm swww
sudo mkdir -p /home/$SUDO_USER/.config/assets/backgrounds 
sudo cp -r $SCRIPT_DIR/../simple-hyprland/assets/backgrounds /home/$SUDO_USER/.config/assets/

yay -S --sudoloop --noconfirm hyprpicker

yay -S --sudoloop --noconfirm hyprlock
sudo cp -r $SCRIPT_DIR/../simple-hyprland/configs/hypr/hyprlock.conf /home/$SUDO_USER/.config/hypr/

yay -S --sudoloop --noconfirm wlogout
sudo cp -r $SCRIPT_DIR/../simple-hyprland/configs/wlogout /home/$SUDO_USER/.config/ 
sudo cp -r $SCRIPT_DIR/../simple-hyprland/assets/wlogout /home/$SUDO_USER/.config/assets/

yay -S --sudoloop --noconfirm grimblast

yay -S --sudoloop --noconfirm hypridle
sudo cp -r $SCRIPT_DIR/../simple-hyprland/configs/hypr/hypridle.conf /home/$SUDO_USER/.config/hypr/

sudo cp -r $SCRIPT_DIR/../simple-hyprland/configs/alacritty /home/$SUDO_USER/.config/

echo "------------------------------------------------------------------------"
