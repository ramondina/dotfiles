#!/usr/bin/env bash

set -euo pipefail

info "Installing common tools..."

#-- Install Hack Nerd Font if it isn't already installed
if ! fc-list | grep -qi "Hack Nerd Font"; then
    font_dir="$HOME/.local/share/fonts/nerdfonts"

    mkdir -p "$font_dir"

    curl -L \
        https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.tar.xz \
        | tar -xJ -C "$font_dir"

    fc-cache -f
fi

#-- Install Starship if it isn't already installed
if ! command -v starship >/dev/null 2>&1; then
    curl -sS https://starship.rs/install.sh | sh -s -- -y
fi