#!/bin/bash

# Script starten mit sudo!
if [ "$EUID" -ne 0 ]; then
  echo "❌ Bitte führe dieses Skript mit sudo aus!"
  exit 1
fi

# Arbeitsverzeichnisse setzen
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCE_DIR="$SCRIPT_DIR/../simple-hyprland"
TARGET_USER="${SUDO_USER:-$USER}"
USER_HOME=$(eval echo "~$TARGET_USER")

echo "✅ Installation gestartet für $TARGET_USER"
echo "------------------------------------------"

# Hilfsfunktion zum Kopieren
copy_config() {
  local src="$1"
  local dst="$2"

  if [ ! -e "$src" ]; then
    echo "⚠️  Quelle nicht gefunden: $src"
    return
  fi

  mkdir -p "$(dirname "$dst")"
  cp -r "$src" "$dst"
  echo "📁 Kopiert: $src → $dst"
}

# Beginne Installationen und Kopieren
sudo pacman -S --noconfirm waybar
copy_config "$SOURCE_DIR/configs/waybar" "$USER_HOME/.config/waybar"

yay -S --sudoloop --noconfirm tofi
copy_config "$SOURCE_DIR/configs/tofi" "$USER_HOME/.config/tofi"

sudo pacman -S --noconfirm cliphist

yay -S --sudoloop --noconfirm swww
copy_config "$SOURCE_DIR/assets/backgrounds" "$USER_HOME/.config/assets/backgrounds"

yay -S --sudoloop --noconfirm hyprpicker

yay -S --sudoloop --noconfirm hyprlock
copy_config "$SOURCE_DIR/configs/hypr/hyprlock.conf" "$USER_HOME/.config/hypr/hyprlock.conf"

yay -S --sudoloop --noconfirm wlogout
copy_config "$SOURCE_DIR/configs/wlogout" "$USER_HOME/.config/wlogout"
copy_config "$SOURCE_DIR/assets/wlogout" "$USER_HOME/.config/assets/wlogout"

yay -S --sudoloop --noconfirm grimblast

yay -S --sudoloop --noconfirm hypridle
copy_config "$SOURCE_DIR/configs/hypr/hypridle.conf" "$USER_HOME/.config/hypr/hypridle.conf"

copy_config "$SOURCE_DIR/configs/alacritty" "$USER_HOME/.config/alacritty"
copy_config "$SOURCE_DIR/configs/hypr/hyprland.conf" "$USER_HOME/.config/hypr/hyprland.conf"
copy_config "$SOURCE_DIR/configs/dunst" "$USER_HOME/.config/dunst"

# Besitzerrechte setzen
chown -R "$TARGET_USER":"$TARGET_USER" "$USER_HOME/.config"

echo "✅ Fertig! Alles wurde installiert und konfiguriert."
