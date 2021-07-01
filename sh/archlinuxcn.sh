echo "[archlinuxcn]\n Server = https://mirrors.sjtug.sjtu.edu.cn/archlinux-cn/$arch" >> /etc/pacman.conf
echo success add archlinux-cn
yes | sudo pacman -S archlinuxcn-keyring
yes | sudo pacman -S yay
