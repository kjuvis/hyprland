#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"



echo "Installation started for theming section"
echo "\nStarting theming setup..."

sudo pacman -S --noconfirm nwg-look qt5ct qt6ct kvantum

sudo tar -xvf ~/simple-hyprland/assets/themes/Catppuccin-Mocha.tar.xz -C /usr/share/themes/

sudo tar -xvf ~/simple-hyprland/assets/icons/Tela-circle-dracula.tar.xz -C /usr/share/icons/

yay -S --sudoloop --noconfirm kvantum-theme-catppuccin-git



# Add instructions to configure theming
echo "\nPost-installation instructions:"
echo "Set themes and icons:"
echo "   - Run 'nwg-look' and  set the global GTK and icon theme"
echo "   - Open 'kvantummanager' (run with sudo for system-wide changes) to select and apply the Catppuccin theme"
echo "   - Open 'qt6ct' to set the icon theme"

echo "------------------------------------------------------------------------"
