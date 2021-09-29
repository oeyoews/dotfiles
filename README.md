<!-- vim-markdown-toc Marked -->

* [Env](#env)
* [Features](#features)
* [Installation](#installation)
* [Caveats](#caveats)
* [Configuration](#configuration)

<!-- vim-markdown-toc -->

![img](./archive/img/example3.png) ![img](./archive/img/example4.png)

## Env

| Linux   | Terminal | Shell | Font  | Editor |
|---------|----------|-------|-------|--------|
| gnome40 | kitty    | zsh   | Droid | neovim |

## Features 
- [ ] todo

## Installation

```sh
# gitlab
git clone --depth=1  https://gitlab.com/oeyoews/dotfiles.git ~
```

```sh
# or use github(mirror from gitlab)
git clone --depth=1  https://github.com/oeyoews/dotfiles.git ~
```

```sh
# or use gitee(mirror from gitlab)
git clone --depth=1  https://gitee.com/oeyoews/dotfiles.git ~
```

## Caveats

```sh
1. Stow: my all dotfiles directory is fit for stow

2. this last reposonity location in your directory  must be like this : ~/dotfiles
```

## Configuration

```sh
  # omz(improve version for oh-my-zsh)
  cd ~/dotfiles
  stow omz
```

```sh 
# other configure in ~/dotfiles/archive
  cd ~/dotfiles/archive
  stow -t ~ tiny_vimrc
```
