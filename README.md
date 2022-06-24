[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)
[![Latest Release](https://gitlab.com/oeyoews/dotfiles/-/badges/release.svg)](https://gitlab.com/oeyoews/dotfiles/-/releases)

## Welcom to dotfiles

         ┏━━━━━━━━━┓
         +DOTFILES ┃
         ┗━━━━━━━━━┛

## Dependencies

* ttf-fira-code by arch system
* jetbrains for kitty

## Software

* vscode

> pacman -S vscode(code-Oss)

## TODO

* learn tmux
* [ ] how to add comment for completion or alias
* add ssh related files
* add install.sh, install chezmoi automatically
* the completion with chezmoi in another not work

## NOTE

* Note recommend use `rm -i $(chezmoi managed)`

## 🗞️ Run

```bash
curl -fSsL oeyoew.fun/install-dot.sh | bash  # fast metho use dotfiles
```

```bash
pacman -S chezmoi  # install chezmoi
chezmoi init  --depth 1 gitlab.com/oeyoews   # gitlab repo
or
chezmoi init oeyoews  # github repo
```

```bash
chezmoi -R update  # update external repo
```

## Bug

* if new files, or new folders, will not delete target
* q: what's the different between target and destermination
