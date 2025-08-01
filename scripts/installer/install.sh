#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"



# Trap for unexpected exits
trap 'trap_message' INT TERM

# Script start
log_message "Installation started"
print_bold_blue "\nYan Hyprland"
echo "---------------"

# Check if running as root
check_root

# Check if OS is Arch Linux
check_os

# Run child scripts
bash prerequisites.sh "Prerequisites Setup"
bash hypr.sh "Hyprland & Critical Softwares Setup"
bash utilities.sh "Basic Utilities & Configs Setup"
bash theming.sh "Themes and Tools Setup"
bash final.sh "Final Setup"

print_bold_blue "\n🌟 Setup Complete\n"
log_message "Installation completed successfully"
