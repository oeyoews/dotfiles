
<!-- vim-markdown-toc Marked -->

* [Environment](#environment)
* [Dependencies](#dependencies)
* [Installation](#installation)
* [NOTE](#note)
* [Configuration](#configuration)

<!-- vim-markdown-toc -->
![example2](./archive/img/example2.png)

Environment
---

- **Terminal**: kitty
- **Shell** : zsh
- **Editor**: nvim, emacs(Doomemacs), typora, vscode
- **Font:** Droid Sans Mono, DejaVu Sans Mono
- **Input_method:** fcitx5
- **Linux:**  mangaro gdm gnome40
- **Networktools:** qv2ray, v2raya(kernel: v2ray)
- **Misc:** cheat, crontab

Dependencies
---

- stow: my all dotfiles directory is fit for stow

Installation
---

```zsh
# gitlab
git clone --depth=1  https://gitlab.com/oeyoews/dotfiles.git ~
```

```zsh
# or use github(mirror from gitlab)
git clone --depth=1  https://github.com/oeyoews/dotfiles.git ~
```

```zsh
# or use gitee(mirror from gitlab)
git clone --depth=1  https://gitee.com/oeyoews/dotfiles.git ~
```

NOTE
---

- this last reposonity location in your directory  must be like this : ~/dotfiles

Configuration
---

```zsh
  # omz(improve version for oh-my-zsh)
  cd ~/dotfiles
  stow omz
```

```zsh 
# other configure in ~/dotfiles/archive
  cd ~/dotfiles/archive
  stow -t ~ ideavimrc
```
