#!/usr/bin/env bash
# OS: Linux_Manjaro 
# 2021-07-08 22:25:21 

set -e

function pacman() {
  # use gvim to instead vim
  sh -c "sudo pacman -S --noconfirm  \
        gvim ranger trash-cli tldr   \
        base-devel neofetch lolcat   \
        translate-shell ripgrep duf  \
        tokei cloc  google-chrome    \
        foliate emacs obs-studio     \
        typora putty tree shotwell   \
        ventoy fzf  shellcheck latte-dock \
        cmake clang
      "
    }

  function fcitx_config5() {
    # not recommend, have some bug
      sh -c "sudo pacman -S fcitx5-im fcitx5-chinese-addons \
            fcitx5-pinyin-zhwiki fcitx5-material-color \
            manjaro-asian-input-support-fcitx5"
  }


  function remove_fcitx_config5() {
      # NOTE: fcitx 与fcitx5 有冲突
      sh -c "sudo pacman -Rscn fcitx5"
  }

function sogoupinyin_for_fcitx() {
  sh -c " sudo pacman -S fcitx-configtool"
  # NOTE:
  # yay fcitx-sogoupinyin 
  # yay manjaro-asian-input-support-fcitx or # add .pam_environment (todo: test
  # .pam_env)
}

  function large_pacman() {
    sh -c "sudo pacman -S --noconfirm \
      filezilla # file transfer
visual-studio-code-bin libreoffice-fresh intellij-idea-ultimate-edition netease-cloud-music
    "
  }

function misc() {
  cat>/tmp/system_software_install<<EOF
  manjaro-settings-manjaro   # kernel manager
  fcitx-qt5 fcitx-configtool # 输入法 deprecated
  fcitx-sogoupinyin          # sogou  deprecated
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
  qqmusic-bin
EOF
}
function clean_package() {
  sh -c "yes | sudo pacman -Scc"
}

function main() {
  # remove_fcitx_config5
  # pacman
  # large_pacman
  # misc
  clean_package
}

main
