#!/usr/bin/env bash

set -oue pipefail

mkdir -p /usr/share/fonts/nerd-fonts
cd /usr/share/fonts/nerd-fonts
curl -fLO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraMono.zip
unzip FiraMono.zip
rm FiraMono.zip
fc-cache -f
