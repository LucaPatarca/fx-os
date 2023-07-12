#!/usr/bin/env bash

set -oue pipefail

mkdir -p /usr/local/share/fonts/
cd /usr/local/share/fonts/
curl -fLO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraMono.zip
unzip FiraMono.zip
rm FiraMono.zip
fc-cache -f
