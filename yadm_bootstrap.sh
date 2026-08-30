#!/bin/sh

echo "🚀 setting up dotfiles..."

mkdir -p ~/.local/bin

curl -sfLo ~/.local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm

chmod a+x ~/.local/bin/yadm

~/.local/bin/yadm clone --bootstrap -f https://github.com/ramondina/dotfiles.git

rm -rf ~/.local/bin/yadm

echo "👌 dotfiles setup done!"