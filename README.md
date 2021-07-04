<!-- 2021年 07月 01日 星期四 14:01:45 CST -->
## INSTALL_LINK.SH
cd $HOME/src/DOTFILES/ && sh link.sh

## PATH
### vscode (setting.json)
- .config/Code/User/setting.json
### ranger 
- ln -s ~/src/DOTFILES/ranger/ ~/.config/'
### p10k
- .p10k.zsh 
### nvim
nvim  ln -sf ~/dotfiles/.vim .config/nvim
### grub
* path: /etc/default/grub backup it, 
### dotfiles
* ln -s all dotfiles to $HOME
### neofetch 
.config/neofetch/config.conf
