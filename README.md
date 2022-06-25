<h1 align="center">dotfiles</h1>

<div align="center">

<img src="https://img.shields.io/badge/Maintain-Yes-blueviolet.svg?style=flat-square&logo=Chakra-Ui&color=90E59A&logoColor=green" alt="status" >
<img src="https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-Semantic-e10079.svg?style=flat-square" alt="Semantic Release"/>
<img src="https://img.shields.io/badge/GIT-Yes-green.svg?style=flat-square&logo=git&label=GIT" alt="git">
<img src="https://img.shields.io/badge/Github-Yes-green.svg?style=flat-square&logo=github&label=Github&logoColor=cyan" alt="github">
<img src="https://img.shields.io/badge/Gitlab-Yes-ffcc00.svg?style=flat-square&logo=gitlab&label=Gitlab" alt="gitlab">
<img src="https://img.shields.io/badge/System-Linux-white.svg?style=flat-square&logo=linux&logoColor=white&color=BB9AF7" alt="system">
<img src="https://img.shields.io/gitlab/v/tag/oeyoews/dotfiles?color=green&logo=FastAPI&style=flat-square" alt="tag">

<img src="img/2022-06-25-11-11-25.png" width=28>

</div>

## Welcome

## Dependencies

* ttf-fira-code by arch system
* jetbrains for kitty

## Software

* vscode

> pacman -S vscode(code-Oss)

## TODO

* [ ] learn tmux
* [ ] how to add comment for completion or alias
* [ ] add ssh related files
* [x] add install.sh, install chezmoi automatically
* [ ] the completion with chezmoi in another not work

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
