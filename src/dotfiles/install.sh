#!/bin/sh

set -e
set -x

SCRIPT_DIR=$(dirname "$(realpath "$0")")

# Creates root directories if they don't exist
mkdir -p "/home/$HOMEUSER/.config"

# Remove existing files if they exist
rm -f "/home/$HOMEUSER/.config/starship.toml"
rm -f "/home/$HOMEUSER/.vimrc"
sudo rm -f "/etc/fish/config.fish"

cp "$SCRIPT_DIR/config/starship/starship.toml" "/home/$HOMEUSER/.config/starship.toml"
cp "$SCRIPT_DIR/config/vim/.vimrc" "/home/$HOMEUSER/.vimrc"
sudo cp "$SCRIPT_DIR/config/fish/config.fish" "/etc/fish/config.fish"
