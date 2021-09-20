![example2](./archive/img/example2.png)
<!-- vim-markdown-toc Marked -->

* [Environment](#environment)
* [Install](#install)
* [NOTE](#note)
* [Configuration](#configuration)

<!-- vim-markdown-toc -->

Environment
---

| Linux   | Terminal | Shell | Font  | Editor |
|---------|----------|-------|-------|--------|
| gnome40 | kitty    | zsh   | Droid | neovim |

Install
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

```text
1. Stow: my all dotfiles directory is fit for stow

2. this last reposonity location in your directory  must be like this : ~/dotfiles
```

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
  stow -t ~ tiny_vimrc
```

- [X] demo
