# OS: Linux Manjaro 
# 2021年 07月 06日 星期二 23:53:25 CST

function pacman() {
  SW="vim ranger trash-cli base-devel neofetch lolcat translate-shell ripgrep duf tokei cloc netease-cloud-music google-chrome foliate emacs obs-studio typora visual-studio-code-bin libreoffice-fresh intellij-idea-ultimate-edition"
  sudo pacman -S --noconfirm ${SW}
}

function misc() {
  yay fcitx-qt5 fcitx-configtool nvm  virtual-desktop com.qq.tim.spark wechat-uos wudao-dict-git fcitx-sogoupinyin gnome-keyring xunlei-bin
}

function pip() {
  pip install magic-wormhole netease-musicbox
}

function main() {
  pacman
  # pip
  # yay
}

main
