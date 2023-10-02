<div align="center">
<img src="https://img.shields.io/badge/Maintain-Yes-blueviolet.svg?style=flat-square&logo=Chakra-Ui&color=90E59A&logoColor=green" alt="status" >
<img src="https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-Semantic-e10079.svg?style=flat-square" alt="Semantic Release"/>
<img src="https://img.shields.io/gitlab/v/tag/oeyoews/dotfiles?color=green&logo=FastAPI&style=flat-square" alt="tag">
<hr>
</div>

## Dependencies

-  python-pygments(ranger)

## 🗞️ Usage

```bash
chezmoi init  --depth 1 github.com/oeyoews   # gitlab repo
or
chezmoi init oeyoews  # github repo
chezmoi -R update  # update external repo
```

## NOTE

- Note recommend use `rm -i $(chezmoi managed)`

## Bug

- if new files, or new folders, will not delete target
- q: what's the different between target and destermination

### Tmux

- cd ~ && ln -s .tmux
