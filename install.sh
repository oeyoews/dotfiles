#!/usr/bin/env bash

# TODO: add remove old or bk odl chezmoi and acquire user if to bk or delete
chezmoi init  --depth 1 https://gitlab.com/oeyoews/dotfiles.git
chezmoi apply
