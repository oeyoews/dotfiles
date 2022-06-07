[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)
[![Latest Release](https://gitlab.com/oeyoews/dotfiles/-/badges/release.svg)](https://gitlab.com/oeyoews/dotfiles/-/releases)

## [🔵 Welcom to dotfiles](#)

## Dependencies

* ttf-fira-code by arch system
* jetbrains for kitty

## Softwares

* vscode

> pacman -S vscode(code-Oss)

## TODO

* add ssh related files
* add install.sh, install chezmoi automatically

## NOTE

> Note recommand use `rm -i $(chezmoi managed)`

## 🗞️ Run

```zsh
curl oeyoew.fun/install-dot.sh | bash  # fast metho use dotfiles
```

```zsh
pacman -S chezmoi  # install chezmoi
chezmoi init  --depth 1 gitlab.com/oeyoews   # gitlab repo
or
chezmoi init oeyoews  # github repo
```

```git
chezmoi -R update  # update external repo
```
