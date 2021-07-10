# OS: Linux_Manjaro 
# 2021-07-08 22:25:21 

function pacman() {
  SW1="vim ranger trash-cli base-devel neofetch lolcat translate-shell ripgrep duf tokei cloc  google-chrome foliate emacs obs-studio typora putty"
  sudo pacman -S --noconfirm ${SW1}
}

function large_pacman() {
  SW2="visual-studio-code-bin libreoffice-fresh intellij-idea-ultimate-edition netease-cloud-music"
  sudo pacman -S --noconfirm ${SW2}
}

  # TODO fcitx-qt5 fcitx-configtool nvm  virtual-desktop com.qq.tim.spark wechat-uos wudao-dict-git fcitx-sogoupinyin gnome-keyring xunlei-bin jdk8-openjdk font-manager-git cronie



function main() {
  pacman
  large_pacman
}

main
