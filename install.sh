#!/bin/bash
# Install pyperclip
pip install --user pyperclip

# Set the installation paths
icon_path="$HOME/.local/share/icons/hicolor/256x256/apps"

# Create the directories if they don't exist
mkdir -p "$icon_path"

install -m 644 imgur.png "$icon_path"

install -m 644 imgur.desktop `kf5-config --path services | cut -f1 -d':'`
install -m 755 imgur $HOME/.local/bin/
if ! echo "$PATH" | grep -q "$HOME/.local/bin"; then
    echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.bashrc
    source ~/.bashrc
fi



