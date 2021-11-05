* Desktop gnome for arch
** pacman gnome gdm networkmanager(nmtui)
** systemctl enable gdm --now
** sysytemctl enable NetworkManager
** pacman -S base-devel git vim
** add archlinuxcn ..
** modify /etc/pacman.conf , like color para = 5
** sudo pacman -S yay zsh
** chsh -s /bin/zsh
** yay stow
** yay v2raya v2ray kitty neofetch
** sudo systemctl enable v2raya --now
** pacman -S fcitx5-im
** yay fcitx5-rime
** yay mkfontscale
** yay dejavu font
** yay wqy-zenyai
** yay nerd-fonts-bigblue-terminus or ttf-nerd-font-symbols
** yay fastfetch
** bluetooth: dmesg| grep -i blue

* gnome-tweak gpaste

* cp --paresents .. .. # like stow dir # NOTE: in ~/
* preview nautilus (space and f <full_screen>)
* xdg-user-dirs-update
* 使用 anarchy,先退出 C-c， 首先链接网络然后，输入 anarchy

[archlinuxcn]
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
sudo pacman -Syu && sudo pacman -S archlinuxcn-keyring
https://www.archlinuxcn.org/gnupg-2-1-and-the-pacman-keyring/
yay powerline

### Fonts
> cd /usr/share/fonts/
> sudo mkdir zfont
> cp .. .
> fc-cache -fv # 查看是否加载 reload font cache
intall arch https://zhuanlan.zhihu.com/p/113615452


[[https://mirrors.tuna.tsinghua.edu.cn/osdn/storage/g/a/an/anarchy/][arch-iso]]

https://teaper.dev/ArchLinux-java-febe1fe5bc764929aaeb02ed933c04f8


* Virtual
- uefi: ovmf




* Guide
** uefi


** reflector
1. systemctl stop reflector


** network
1. iwctl
2. station wlan0 <wifi_name>
3. exit
4. ping bing.com


** time
timedatectl set-ntp true
timedatectl status


** mirrorlist
vim /etc/pacman.d/mirrorlist


** table
|------+-------+------------+
| sda1 | /efi  | 256M       |
| sda2 | /     | 100G       |
| sda3 | /home | <the rest> |
|------+-------+------------+
1. lsblk
parted /dev/sda
3. mktable
4. gpt
5. quit
6. cfdisk </dev/sda/>
7. fdisk -l
8. mkfs.vfat /dev/sda1
9. mkfs.ext4 /dev/sda2
10. mkfs.ext4 /dev/sda3


** mount
 mount /dev/sda2 /mnt
 mkdir /mnt/home
 mkdir /mnt/boot/EFI -p
 mount /dev/sda3 /mnt/home
 mount /dev/sda1 /mnt/boot/EFI


** install software
pacstrap /mnt base base-devel linux linux-firmware vim sudo iwd dhcpcd bash-completion


** fstab
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
3. echo "myarch" >> /etc/hostname
4. vim /etc/hosts
127.0.0.1   localhost
::1         localhost
127.0.1.1   myarch.localdomain    myarch


** timezone
1. ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
2. hwclock --systohc


** locale
 1. sudo vim /etc/locale.gen
 2. locale-gen
 3. sudo echo 'LANG=en_US.UTF-8'  > /etc/locale.conf
 4. passwd root
 5. useradd -m myarch
 6. passwd myarch
 7. pacman -S intel-ucode   #Intel
 8. pacman -S grub efibootmgr
 9. grub-install /boot/EFI
 10. grub-mkconfig -o /boot/grub/grub.cfg
 11. pacman gnome gdm
 12. systemctl enable gdm
 13. systemctl enable networkmanager ?
