#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Source helper file
source $SCRIPT_DIR/helper.sh

log_message "Installation started for utilities section"
print_info "\nStarting utilities setup..."

run_command "pacman -S --noconfirm waybar" "Install Waybar - Status Bar" "yes"
run_command "cp -r /home/$SUDO_USER/simple-hyprland/configs/waybar /home/$SUDO_USER/.config/"

run_command "yay -S --sudoloop --noconfirm tofi" "Install Tofi - Application Launcher"
run_command "cp -r /home/$SUDO_USER/simple-hyprland/configs/tofi /home/$SUDO_USER/.config/"

run_command "pacman -S --noconfirm cliphist"

run_command "yay -S --sudoloop --noconfirm swww"
run_command "mkdir -p /home/$SUDO_USER/.config/assets/backgrounds && cp -r /home/$SUDO_USER/simple-hyprland/assets/backgrounds /home/$SUDO_USER/.config/assets/" "Copy sample wallpapers to assets directory (Recommended)" "yes" "no"

run_command "yay -S --sudoloop --noconfirm hyprpicker"

run_command "yay -S --sudoloop --noconfirm hyprlock"
run_command "cp -r /home/$SUDO_USER/simple-hyprland/configs/hypr/hyprlock.conf /home/$SUDO_USER/.config/hypr/" "Copy Hyprlock config" "yes" "no"

run_command "yay -S --sudoloop --noconfirm wlogout"
run_command "cp -r /home/$SUDO_USER/simple-hyprland/configs/wlogout /home/$SUDO_USER/.config/ && cp -r /home/$SUDO_USER/simple-hyprland/assets/wlogout /home/$SUDO_USER/.config/assets/" "Copy Wlogout config and assets" "yes" "no"

run_command "yay -S --sudoloop --noconfirm grimblast"

run_command "yay -S --sudoloop --noconfirm hypridle"
run_command "cp -r /home/$SUDO_USER/simple-hyprland/configs/hypr/hypridle.conf /home/$SUDO_USER/.config/hypr/" "Copy Hypridle config" "yes" "no"

echo "------------------------------------------------------------------------"
