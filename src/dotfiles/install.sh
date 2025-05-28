#!/bin/sh

SCRIPT_DIR=$(dirname "$(realpath "$0")")

# Creates root directories if they don't exist
mkdir -p "$HOME/.config"

# Remove existing files if they exist
rm -f "$HOME/.config/starship.toml"
rm -f "$HOME/.vimrc"
rm -f "/etc/fish/config.fish"

cp "$SCRIPT_DIR/config/starship/starship.toml" "$HOME/.config/starship.toml"
cp "$SCRIPT_DIR/config/vim/.vimrc" "$HOME/.vimrc"
cp "$SCRIPT_DIR/config/fish/config.fish" "/etc/fish/config.fish"
