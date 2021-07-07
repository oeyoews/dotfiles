# OS: Linux Manjaro 
# 2021年 07月 06日 星期二 23:53:25 CST

function install_software_on_manjaro() {
  sudo pacman -S --noconfirm vim ranger trash-cli base-devel neofetch lolcat\
    translate-shell ripgrep duf tokei cloc

  yay fcitx-qt5 fcitx-configtool nvm  virtual-desktop com.qq.tim.spark\
    wechat-uos wudao-dict-git fcitx-sogoupinyin gnome-keyring

  pip install magic-wormhole netease-musicbox
}

function main() {
  install_software_on_manjaro
}

main
