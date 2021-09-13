#!/usr/bin/env bash

set -e
# sh -c "$(curl -fsSl https://raw.githubusercontent.com/oeyoews/dotfiles/main/install.sh)"

## stow TODO
git clone --depth 1 https://github.com/oeyoews/dotfiles.git/ ~
cd dotfiles || exit 0
