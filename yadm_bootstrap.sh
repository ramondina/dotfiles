#!/bin/sh

set -eu

YADM="$HOME/.local/bin/yadm"

echo "🚀 setting up dotfiles..."

mkdir -p "$HOME/.local/bin"

if [ ! -x "$YADM" ]; then
    echo "Installing yadm..."
    
    curl -sfLo \
        ~/.local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm \
        -o "$YADM"

    chmod 700 "$YADM"
fi

"$YADM" clone \
    --bootstrap -f https://github.com/ramondina/dotfiles.git

echo "👌 dotfiles setup done!"