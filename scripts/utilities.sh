#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


echo "Installation started for utilities section"
echo "\nStarting utilities setup..."

sudo pacman -S --noconfirm waybar
cp -r ~/simple-hyprland/configs/waybar /home/$SUDO_USER/.config/

yay -S --sudoloop --noconfirm tofi
cp -r ~/simple-hyprland/configs/tofi /home/$SUDO_USER/.config/

sudo pacman -S --noconfirm cliphist

yay -S --sudoloop --noconfirm swww
sudo mkdir -p /home/$SUDO_USER/.config/assets/backgrounds 
cp -r ~/simple-hyprland/assets/backgrounds /home/$SUDO_USER/.config/assets/

yay -S --sudoloop --noconfirm hyprpicker

yay -S --sudoloop --noconfirm hyprlock
cp -r ~/simple-hyprland/configs/hypr/hyprlock.conf /home/$SUDO_USER/.config/hypr/

yay -S --sudoloop --noconfirm wlogout
cp -r ~/simple-hyprland/configs/wlogout /home/$SUDO_USER/.config/ 
cp -r ~/simple-hyprland/assets/wlogout /home/$SUDO_USER/.config/assets/

yay -S --sudoloop --noconfirm grimblast

yay -S --sudoloop --noconfirm hypridle
cp -r ~/simple-hyprland/configs/hypr/hypridle.conf /home/$SUDO_USER/.config/hypr/

cp -r ~/simple-hyprland/configs/alacritty /home/$SUDO_USER/.config/

sudo mkdir -p /home/$SUDO_USER/.config/hypr/ 
cp -r ~/simple-hyprland/configs/hypr/hyprland.conf ~/.config/hypr/hyprland.conf
cp -r ~/simple-hyprland/configs/dunst ~/.config/

echo "------------------------------------------------------------------------"
