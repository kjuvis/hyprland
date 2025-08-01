#!/bin/bash

# Verzeichnis des Skripts bestimmen
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Ziel-Benutzer und Home-Verzeichnis bestimmen
TARGET_USER="${SUDO_USER:-$USER}"
USER_HOME=$(eval echo "~$TARGET_USER")

echo "Installation started for utilities section"
echo "-------------------------------------------"

# Waybar
echo "[*] Installing Waybar..."
sudo pacman -S --noconfirm waybar
mkdir -p "$USER_HOME/.config"
cp -r "$SCRIPT_DIR/../simple-hyprland/configs/waybar" "$USER_HOME/.config/"

# Tofi
echo "[*] Installing Tofi..."
yay -S --sudoloop --noconfirm tofi
cp -r "$SCRIPT_DIR/../simple-hyprland/configs/tofi" "$USER_HOME/.config/"

# Cliphist
echo "[*] Installing Cliphist..."
sudo pacman -S --noconfirm cliphist

# Swww
echo "[*] Installing Swww..."
yay -S --sudoloop --noconfirm swww
mkdir -p "$USER_HOME/.config/assets"
cp -r "$SCRIPT_DIR/../simple-hyprland/assets/backgrounds" "$USER_HOME/.config/assets/"

# Hyprpicker
echo "[*] Installing Hyprpicker..."
yay -S --sudoloop --noconfirm hyprpicker

# Hyprlock
echo "[*] Installing Hyprlock..."
yay -S --sudoloop --noconfirm hyprlock
mkdir -p "$USER_HOME/.config/hypr"
cp "$SCRIPT_DIR/../simple-hyprland/configs/hypr/hyprlock.conf" "$USER_HOME/.config/hypr/"

# Wlogout
echo "[*] Installing Wlogout..."
yay -S --sudoloop --noconfirm wlogout
cp -r "$SCRIPT_DIR/../simple-hyprland/configs/wlogout" "$USER_HOME/.config/"
cp -r "$SCRIPT_DIR/../simple-hyprland/assets/wlogout" "$USER_HOME/.config/assets/"

# Grimblast
echo "[*] Installing Grimblast..."
yay -S --sudoloop --noconfirm grimblast

# Hypridle
echo "[*] Installing Hypridle..."
yay -S --sudoloop --noconfirm hypridle
cp "$SCRIPT_DIR/../simple-hyprland/configs/hypr/hypridle.conf" "$USER_HOME/.config/hypr/"

# Alacritty
echo "[*] Installing Alacritty config..."
cp -r "$SCRIPT_DIR/../simple-hyprland/configs/alacritty" "$USER_HOME/.config/"

# Hyprland.conf
echo "[*] Copying Hyprland config..."
mkdir -p "$USER_HOME/.config/hypr"
cp "$SCRIPT_DIR/../simple-hyprland/configs/hypr/hyprland.conf" "$USER_HOME/.config/hypr/"

# Dunst
echo "[*] Copying Dunst config..."
cp -r "$SCRIPT_DIR/../simple-hyprland/configs/dunst" "$USER_HOME/.config/"

echo "-------------------------------------------"
echo "✅ Utilities installation complete."

# Rechte korrigieren
chown -R "$TARGET_USER":"$TARGET_USER" "$USER_HOME/.config"
