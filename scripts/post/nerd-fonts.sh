#!/usr/bin/env bash

set -oue pipefail

mkdir -p /usr/share/fonts/nerd-fonts
cd /usr/share/fonts/nerd-fonts
curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/FiraMono/Regular/FiraMonoNerdFontMono-Regular.otf
