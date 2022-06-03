#!/usr/bin/env bash

chezmoi init  --depth 1 https://gitlab.com/oeyoews/dotfiles.git
chezmoi apply
