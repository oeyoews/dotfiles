# OS: Linux_Manjaro 
# 2021-07-08 22:25:21 

set -e

function pacman() {
  # use gvim to instead vim
  SW1="gvim ranger trash-cli tldr base-devel neofetch lolcat translate-shell ripgrep duf tokei cloc  google-chrome foliate emacs obs-studio typora putty tree shotwell ventoy fzf qqmusic-bin" 
  sudo pacman -S --noconfirm ${SW1}
}

function large_pacman() {
  SW2="visual-studio-code-bin libreoffice-fresh intellij-idea-ultimate-edition netease-cloud-music"
  sudo pacman -S --noconfirm ${SW2}
}

function misc() {
  <<EOF
  fcitx-qt5 fcitx-configtool # 输入法
  fcitx-sogoupinyin          # sogou
  nvm                        # node 版本管理
  virtual-desktop            # plasma widget
  com.qq.tim.spark           # tim
  wechat-uos                 # wechat
  wudao-dict-git             # wudao directory
  gnome-keyring              # for vscode synchronize
  xunlei-bin                 # xunlei
  jdk8-openjdk               # jdk
  font-manager-git           # for gnome 40
  cronie                     # default is installed
  fgit                       # hub.fastgit.org
  deskreen                   # 投屏软件
  tcping-git  
EOF
}

function main() {
  pacman
  large_pacman
}

main
