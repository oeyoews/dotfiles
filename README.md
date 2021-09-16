<!-- vim-markdown-toc Marked -->

- [Environment](#environment)
- [Dependencies](#dependencies)
- [Installation](#installation)
- [Configuration](#configuration)
  - [examples](#examples)

<!-- vim-markdown-toc -->

Environment
---
- **Terminal**: kitty(extra: alacritty, tmux) 
- **Shell** : zsh
- **Editor**: vim(:SpaceVim), emacs(Doomemacs, Spacemacs), typora
- **Font:** Droid Sans Mono, DejaVu Sans Mono
- **Input:** fcitx5
- **Linux:**  mangaro gdm gnome40
- **Networktools:** qv2ray, v2raya(kernel: v2ray)
- **Misc:** cheat, crontab

Dependencies
-
```
- stow: link for configure file
```

Installation
-
```zsh
# for gitlab
git clone --depth=1  https://gitlab.com/oeyoews/dotfiles.git ~

# for github
git clone --depth=1  https://github.com/oeyoews/dotfiles.git ~
```

```
# NOTE: this reposonity location in your directory  must be like this : ~/dotfiles
```

Configuration
-
### examples

```zsh
  1. cd ~/dotfiles
  2. stow omz
```
```zsh 
# other configure in ~/dotfiles/archive
  1. cd ~/dotfiles/archive
  2. stow -t ~ ideavimrc
```
