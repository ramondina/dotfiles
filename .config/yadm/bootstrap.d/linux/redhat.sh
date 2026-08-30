#!/usr/bin/env bash

set -euo pipefail

info "Installing os packages..."

sudo dnf install -y \
    zsh \
    git \
    fontconfig