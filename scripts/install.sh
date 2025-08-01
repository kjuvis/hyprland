#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Run child scripts
bash prerequisites.sh "Prerequisites Setup"
bash hypr.sh "Hyprland & Critical Softwares Setup"
bash utilities.sh "Basic Utilities & Configs Setup"
bash theming.sh "Themes and Tools Setup"
bash final.sh "Final Setup"

echo "\n🌟 Setup Complete\n"
echo "Installation completed successfully"
