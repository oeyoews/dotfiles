# OS: Linux Manjaro 
# 2021年 07月 06日 星期二 23:53:25 CST

function pacman() {
  SW1="vim ranger trash-cli base-devel neofetch lolcat translate-shell ripgrep duf tokei cloc  google-chrome foliate emacs obs-studio typora"
  sudo pacman -S --noconfirm ${SW1}
}

function large_pacman() {
  SW2="visual-studio-code-bin libreoffice-fresh intellij-idea-ultimate-edition netease-cloud-music"
  sudo pacman -S --noconfirm ${SW2}
}

function misc() {
  SW3="fcitx-qt5 fcitx-configtool nvm  virtual-desktop com.qq.tim.spark wechat-uos wudao-dict-git fcitx-sogoupinyin gnome-keyring xunlei-bin jdk8-openjdk"
  yay ${SW3}
}

function npm() {
  npm i -g git-open
}

function pip() {
  pip install magic-wormhole netease-musicbox
}

function main() {
  pacman
  large_pacman
  # pip
  # yay
}

main
