## Language
  - [[https://wiki.archlinux.org/title/Locale_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)#LANGUAGE%EF%BC%9A%E5%90%8E%E5%A4%87%E5%8C%BA%E5%9F%9F%E8%AE%BE%E7%BD%AE][locale]]
  - /etc/locale.gen
  - zh_CN.UTF-8 UTF-8
  - en_US.UTF .....
  - sudo locale-gen
      ( will have some warning like language  use export LC_ALL="en_US.UTF-8" to /etc/profile and relogin)


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

### tmp
- localedef --list-archive
- LC_ALL=en_US.UTF-8 for /etc/locale.conf to resolve ago zh-CN questions


## cp
```shell
eg: dir: 1/2/3
cp -r 1/ 2 like copy 1/*
```


## crontab
```shell
- sudo su
- sudo crontab -u root -e
```


## lyx

insert => math => latex
insert latex environment, and you can directly input latex code
shortkey: ctrl + m


## mysql

- sudo vim /etc/my.cnf
- add

    ```mysql
    [mysqld]
    skip-grant-tables=1
    ```

- sudo mysql
- set password for root@localhost=password('2956');
- ...
- [mysql](https://blog.51cto.com/lxsym/477027)

- 2021-11-23T15:55:44 localhost's mysql password is oeyoew


## lua

[make_lua_plugin](https://www.2n.pl/blog/how-to-write-neovim-plugins-in-lua)

###  NOTE:
- unpack(v5.1)  ==> table.unpack(v5.4)

    lspinstaller site: .local/share/lsp-servers/...

    system yay site : /usr/libs/lua....(by pkgbuild)

### logical operator
- and: if has false, return fasle
- or: if has true (this order is not important), return this true

    path: /usr/share/lua/5.1...

    print(package.path)

### Type
- number string
- nil boolean function
- table userdata thread

## nginx

- ports confict to docker's nginx 8080
- how to config this config : change this default directory
- sudo systemctl reload nginx.versice

- sudo lsof i:80
- kill -9 <PID>


## npm

- npm root -g  # show path for packages globally
- npm list -g  # show all packages globally
- /usr/lib/node_modules/


## wudao

- https://github.com/ChestnutHeng/Wudao-dict
- clone this repo to ~/.local/share


## go

- go env -json
- 1.13
- go env -w GO111MODULE=on
- go env -w GOPROXY=https://goproxy.cn,direct
-  go env -u GOPROXY


## Learn go
- go run ..
- go build ...
  - go build -o <path_filename> <original_path_filename>
- go mod init hello(root directory name)


## Path
  - (default is enable for goland, remove it and projeco's gopath), only 开启go  moudles ![go](./images/go.png)
- go install .../src/xxx  安装二进制文件到~/go (default)
  - 使用到了绝对绝对路径 项目名/src/package, go.md 的项目名关系到import 首先要包括模块名
  - go.mod: location put this file in src/ generally

  - go mod dir: ![godir](./images/gomoddir.png)
- go.mod  moudle github.com/oeyoews(no slash)


## wine

```
  - use wine64 *.exe to use huawei idea to install it
  - cd .wine/....
  - wine64 launcher.exe

  ```


## nvim
  - mv binary file `nvim` to .local/bin or /usr/local/bin
  - if your want deprecate it, the sample method is rename nvim to nvim_bk etc.


## kvm

- qemu iptables ebtables virt-manager libguestfs(分区)
- openbsd-netcat (ssh link)
- bridge-utils( 桥接)
- libvirt(提供管理虚拟机、存储、网络的功能)
- dnsmasq 用于 default NAT 网络
# 启动 default NAT 网络
sudo virsh net-start default
# start kvm
- sudo start/enable  libvirtd.service
  - network problems(no internet), must restart libvird.service
- for network, you must restart libvirtd.service.(reason ???)
  - libvirt: library virtualization
  - libvirtd is a daemon

- use 复制主机拓扑地址 (select it)

  * Install
  - 如果第一次进入系统没有安装，再次启动遇到 no boot device, 在设置中， 设置引导选项 和sata path

  - use redirect mode will leat to your virtual matchine no network, use tproxy for v2raya.

## v2raya
<!--link-->
- system proxy for telegram need open system network by manual (http 20272)

    <!--close-->
  - when shutdown varaya.service, if open system proxy, need shut it by manual.

  - if use latern, it's have some problems for your computer.



## translate

```shell
* trans -T
https://github.com/soimort/translate-shell
https://www.clloz.com/programming/assorted/2019/11/19/translate-shell-usage/
bug: translate a text file, ues it will failed again
fix: ip close your ladder network! and you can use `trans --debug "hello, translate-shell" to find problem from this debug info
your ladder is used by abuntant
trans(late-shell)
trans --speak demo
trans -R
trans -I/E
to chinese
trans :zsh demo
trans en:ja -p
trans -id demo
trans :fr url(file:///)
trans -browser firefox :fr http://www.w3.org/
trans -S
trans -M
trans :ja xxx -p -b
```

## markdown

```shell

  * *~~ ~~* # deline
  ```

  - demo^demo^
  - demo~demo~
      <big> demo <big>
      <small> demo <small>
      <mark> demo <mark>

  - [text](url "popup tips")
      This is [an example][id] reference-style link.


[id]: http://example.com/  "Optional Title Here"


## sound
  - no sound ?
  - https://bbs.archlinuxcn.org/viewtopic.php?id=10479
  - sudo pacman -S sof-firmware
  - reboot and toggle soundcards in settings

  - speaker-test
  - aplay -l
  - arecord -l


## timedatectl
  - timedatectl set-ntp true
  - timedatectl status
  - timedatectl set-local-rtc 0


## ssh
  - systemctl enable sshd --now

  - 1: ssh remoteusername@remoteip

  - ssh-copy-id <id>
  - copy your public ssh-id to your server, the first time, you need input password
      ssh-copy-id 将本机的公钥复制到远程机器的authorized_keys文件中，
  - konw-host: record ip

  - ssh-keygen -R <server-id>
  - 会出现这些信息是因为，第一次SSH连接时，会生成一个认证，储存在客户端（也就是用SSH连线其他电脑的那个，自己操作的那个）中的known_hosts，但是如果服务器验证过了，认证资讯当然也会更改，服务器端与客户端不同时，就会跳出错误啦～因此，只要把电脑中的认证资讯删除，连线时重新生成，就一切完美啦～要删除很简单，只要在客户端输入一个指令


## shellscripts
``` shell
  - $() and ``:  命令替换
  - $(()) : 数学计算，**等运算符号不会被shell解析其他含义
            - $[] : 数学计算， need \*
            - (()): 支持高级运算， 比如++
                    - ${} : 变量替换引用
                    - () : 数组变量
                           - []: 等同于test
                           - [[ ]]: 提供字符串比较(add two space)
                           - {}: codeblock
                           ```


## google-chrome

                           - select some text, and click right
                           - [link](https://github.com/SirVer/ultisnips/blob/master/doc/UltiSnips.txt#:~:text=4.1.3%20Snippet%20Options%3A%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20*UltiSnips%2Dsnippet%2Doptions*)
                           - have some bug, need put this addredd input url blank directly.

                           - install app in chrome, and can search it in mylauncher


## staruml
                           * pack StarUML
                           - sudo npm i -g asar
                           - cd /opt/StarUML/resources
  - sudo asar extract app.asar app
- sudo vim ./app/src/engine/licence.js....(130, false => true, and comment nextline)
  - asar pack app asar.app

  ## gitlab

  - deploy ==> release


### gitlab 推送失败
  - kex_exchange_identification:
  - delete .ssh/konw-host/(about gitlab), git push again


## gnome
  * Solve Automatic Screen
  - Start the application "Settings"Choose "Privacy" under the "Personal" heading.
  - Choose "Screen Lock"Toggle "Automatic Screen Lock" from the default "ON" to "OFF"
  - and reboot or relogin
  That's all!

  * Plugins
  - [tray](https://extensions.gnome.org/extension/615/appindicator-support/)

  ##  WallPaper
  - cd /usr/share/backgrounds


* Settings
  - win + alt + 8
- 开启放大镜, 在辅助功能 -> 缩放 ->(should disable)

  - 大号文本字体较为清晰
- 字号缩放为1.5(可以配置快捷键)

  * Gesture
  - win + alt + <directions>
  - win + mouse

  * power
  - wired: power-profile-daemon.service

  - font: 1.50(settings) 大号文本(优化tweaks)

  ## github
  - using ssh:..... to resolve no permission for .github/workflow
  Github
  - click dot to enter github.dev(web vscode)
  - [github.dev](https://github.dev/github/dev)

* Email
  - commit id add .patch to check it

* git-filter-repo
#将所有用户名中包含的foo替换成ttys3 （注意，不支持中文)
git filter-repo --name-callback 'return name.replace(b"foo", b"ttys3")'

#将所有commit信息的email中包含的 foo@example.com 替换成 my-email@example.com
git filter-repo --email-callback 'return email.replace(b"foo@example.com", b"my-email@example.com")'




systemd-analyze
ls | nl
man -f gdb
man -K gdb
man -L en man  # show English-man
 - glxinfo | grep rendering
 - glxgears
 - glxinfo | grep -i opengl

 ###
 mkdir 1\ 2     # mkdir (1 2) folder.  space 使用转义实现
 mkdir -p # rescursion make dir.
 poweroff # shutdown
 halt -p # shutdown
 lsb_release -a    # 查看manjaro的版本号
 uname -a
 hostname // 查看主机名字

 sudo archlinux-java set java-11-openjdk     //设置默认Java版本
 archlinux-java status

 ls  /usr/lib/jvm/   //查看所有的Java版本

 mkdir dem/die     -p      # 创建递归目录

 neofetch --ascii_distro arch/centos/fedora.....

- 由于dos风格的换行使用\r\n，把这样的文件上传到unix，有些版本的vi不能识别\r，所以vi显示时在行尾会出现^M出来，但是有些就能识别\r\n，正常显示回车换行。

git config --global core.autocrlf=false    # 解决lf/cr 的警告问题  换行符  回车符

LF: Line Feed换行  # 再来一行

CRLF: Carriage Return Line Feed 回车换行

Carriage n.马车,火车车厢;运输费用

在carriage return中,carriage译为“车”,return译为“回”

 - 回车 \r 本义是光标重新回到本行开头，r的英文return，控制字符可以写成CR，即Carriage Return
 - 换行 \n 本义是光标往下一行（不一定到下一行行首），n的英文newline，控制字符可以写成LF，即Line Feed
 -
 - 在不同的**操作系统**这几个字符表现不同，比如在WIN系统下，这两个字符就是表现的本义，在UNIX类系统，换行\n就表现为光标下一行并回到行首，在MAC上，\r就表现为回到本行开头并往下一行，至于ENTER键的定义是与操作系统有关的。通常用的Enter是两个加起来。
 -
 - \n: UNIX 系统行末结束符
 - \n\r: window 系统行末结束符
 - \r: MAC OS 系统行末结束符
 -
 - 一个直接后果是，Unix/Mac系统下的文件在**Windows**里打开的话，所有文字会变成一行；而Windows里的文件在Unix/Mac下打开的话，在每行的结尾可能会多出一个^M符号。（这也是经常说见到的现象，哈哈，原来是这样的）
 -
 - c++语言编程时（windows系统）\r 就是return 回到 本行 行首 这就会把这一行以前的输出 覆盖掉

 ## PATH

 export PATH=$PATH:/........

 export PATH=/usr/local/bin:$PATH
 // PATH是变量名，这里是指添加到PATH这个环境变量中
 // =后面是要添加的环境变量
 // :$PATH是指把新添加的环境变量与原先的环境变量重新赋值给PATH这个变量，这里可以看出如果有多个环境变量时，应该使用:进行分隔，如
 // export PATH=/usr/local/php/bin:/usr/local/mysql/bin:$PATH
 // 当然$PATH是放在开头还是最后是没有影响的

 tar xvf ... # tar a file
 tar zcvf back.tar.gz 1.html 2.html  # - can ben ignore  or use backup.tgz
 tar zxvf path/demo.tar.gz # zip demo.tar.gz
 tar ztvf 1.tgz # show files about 1.tgz
 tar zxvf 1.tgz 1.c # unzip some files in 1.tgz ?
 tar zcvf 1.tgz 1.cpp -w # show second confirm

 tat zxvf 1.tgz -C <path> # 将tgz 包解压到制定的目录

 z  --- 利用gzip方式进行压缩文件信息
 c  --- creat 创建出一个压缩包
 t  list
 v  --- 显示压缩数据过程
 f  --- 指定压缩包保存路径


- ln -sf absolute(path) ~/new-name
- ln -s -f ...... # delete the existing symlinks.
- unzip #  to unzip like xxx.zip
- echo $(date) # comands replace
- echo $((2#111011))
- \rm # temporary ban this command
- rm -- -g # use '--' or ./-g to delete this special file more information to man rm

- $(RM) * .o \
-r # \ newline
- # we usually to set some settings in .xprofil or .profile

- df -Th # count this system disk
- du -sh  # or use du -sh filename.
- bg fg # background foreground C-z: suspend

- make -f Makefile # custom this makefile is the Makefile
- go env -w GOPROXY=https://goproxy.cn # solve golang error .

### IPTABLES
- systemctl status iptables.service # check firewall

- crontab -e # show this default editor
- export EDITOR=/your_path # modify your default editor.
- C-d # exit terminal
sudo su #
fd -e png
rg -i demo. # ignore-case
rg -S demo # smart-case
- echo $path # show env
rg vim # in on dir and search vim
env | rg EDI # 对visudo 不起作用
sudo EDITOR=vim visudo
- rg \-Q
- sudo tlp-stat -s # check up warnings.
- unstable
- sudo pacman-mirrors -aS testing && sudo pacman -Syyu

echo $? # show return status (0-255)

sudo netstat -tunlp | rg pid # default port is 8080
which gitu # show git add . && git commit && git push

echo $XDG_SESSION_TYPE # show x11 or wayland
systemctl --failed
figlet -f slant -W demo
exit 1 # this file is no exist
exit 127 # this command is not exit
exit 126 # this file is not execute

## tomcat

* /usr/share/tomcat10/ # 程序目录
cat /etc/shells

## curl

* curo -o/-O
* who /var/log/wtmp

## alias

* alias -L
* unalias <alias_name>
* passwd -d <user_name>
passwd -S user_name
fstrim sctl


## yay
- when change this branch, please use sudo pacman -Syyu to force update this config file
- yay -G [name]
- sudoedit /etc/pacman.conf, and add orphan package name to ignore to reduce warning in upgrade your system
- yay -Qi neovim
- yay slides and yay -S slides

- /var/cache/pacman/pkg


* Pacman
- pacman -Qi [name]
- pactree -r
- pacman -U ...(must cd /var/cache/pacman/pkg)
- vim /var/log/pacman.log

<!--show linux kernel-->
- pacman -Q linux

- yay -S kb is different yay kb


## Ranger

- (bug)filetype is not suit filname.extend
  - can't show images in tmux for ranger
  r # choose open file's tool.

  [ or ] # choose parent folder.

  zh or ctrl h  to show hidden files.

  cw # rename file_name. or use 'a' 'A'

  i  # preview like vim but not vim for work.

  v  or space  # select file

  w # task manager.

  always look for github_wikis.

  tsz -i file_name.

  cw # rename

  S   //进入指定的文件夹，进入一个新的终端，退出当前的终端，会再次回到ranger中

  / #search

  gg G # same vim

  yy dd pp # 复制剪切 粘贴

  f # 查找

  A # 在当前的基础上进行重命名

  I  # 同上   same vim

  dD   # 彻底删除

  on/ob   根据文件名进行排序(natural/basename)
  oc      根据改变时间进行排序 (Change Time 文件的权限组别和文件自身数据被修改的时间)
  os      根据文件大小进行排序(Size)
  ot      根据后缀名进行排序 (Type)

  oa      根据访问时间进行排序 (Access Time 访问文件自身数据的时间)
  om      根据修改进行排序 (Modify time 文件自身内容被修改的时间)

  zp   # 预览代码

  zP # 打开目录预览

  cat file_name | tsz

  cd ~/.config/ranger/rifle.conf
  export RANGER_LOAD_DEFAULT_RC=FALSE
  sudo pacman -S  --noconfirm libcaca highlight atool lynx w3m elinks  mediainfo   # install  depencies

  #找出含有docx的一行，然后将其注释起来：
  #ext docx?, has catdoc,       terminal = catdoc -- "$@" | "$PAGER"
  s # enter this shell environment.
  git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
  echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf   # add devicons

  - ranger --copy-config=all  # configure some files
  - [ranger_tutor](https://blog.csdn.net/lxyoucan/article/details/115671189)

  ## Tmux

  mod: ctrl + a or ctrl + b
  mod <nu>
  mod ?
  mod -  # vsplit

  `prefix> C-c`表示您必须先按Ctrl+a或Ctrl+，b再按Ctrl+c

  prefix C c  # 新建会话  creat

  prefix s   # 选择窗口 select    安装x进行关闭窗口
  prefix ?   # show all shortkeys
  prefix x   # 关闭整个tmux

  prefix  d # 临时退出tmux   deattch

  tmux  a -t  (nu)  # 连接已经存在的session  panel->window->session

  tmux ls   # 列出所有的window

  prefix t  # show time

  prefix [   # 进入复制模式    进入可视模式    prefix ] 粘贴

  q # 退出

  prefix nu # 切换窗口

*  tmux  new -s daily # creat a session called daily.
*  C-b , # rename this window's name
*  C-b w # show all window
*  tmux kill-session -t session-name # kill one session
*  tmux kill-pane -t pane-name .
*  tmux a # defult to connect the first session.
*  C-b z # zoom in or reset this pane
*  C-b r # source this .tumu.conf
*  [tmux-tutor](https://louiszhai.github.io/2017/09/30/tmux/#%E4%BF%9D%E5%AD%98Tmux%E4%BC%9A%E8%AF%9D)

## jetbrain
- when change this branch, please use sudo pacman -Syyu to force update this config file
- yay -G [name]
- sudoedit /etc/pacman.conf, and add orphan package name to ignore to reduce warning in upgrade your system
- yay -Qi neovim
- yay slides and yay -S slides

- /var/cache/pacman/pkg

* Pacman
- pacman -Qi [name]
- pactree -r
- pacman -U ...(must cd /var/cache/pacman/pkg)
- vim /var/log/pacman.log

<!--show linux kernel-->
- pacman -Q linux

- yay -S kb is different yay kb

## obs
- FullScreen: 变换=> 拉伸至全屏
-  shortkey can't modifed(toggle record and pause record)


## mpv
- mpv [url]
  - bili鼠标右键复制地址, (some bug, for more pages, just at the beginning of video)
  - [link](https://hooke007.github.io/mpv-lazy/mpv.html#3%E9%80%89%E9%A1%B9%E8%AE%BE%E7%BD%AE)

* Shortcuts
  - ] adjust music or video playspeed
  - 9 0 sound
  - m silent
  - I :information
  - o show processbar
  - l : toggle loop video or clear it


##  Grub
- cd /etc/default/grub
- 在 GRUB_CMDLINE_LINUX_DEFAULT 的引号内添加 i8042.dumbkbd ,具体搜索联想小新安装 manjaro 键盘失灵的问题
- GRUB_TIMEOUT_STYLE=hidden # show menu
- sudo update-grub          # regenerate
- sudo vim /etc/default/grub  `quiet` 删除后，在开机的时候会去除很多的打印信息




##  Direction
# modify chinese-dir for system
- vim ~/.config/user-dirs.dirs


##  add user
- userlist
- userdel -r username
- passwd <username>
- useradd -m <username>
- su == switch user
- sudo visudo # add <username> ALL .....
- sudo usermod new_usermod old_usermod # 只能修改用户名，不能修改主目录， 不要修改主目录的名称


* fonts
- /usr/share/fonts/winfonts/   # 建立软链接 可以使用$PWD
- path: $HOME/.config/libreoffice/4/fonts/  # 将 C:\Windows\Fonts 的字体拷贝到此文件加下. libreoffice 使用的 font 来自 /usr/share/fonts


* journalctl
- * journalctl --disk-usage
- * sudo vim /etc/systemd/journald.conf
- * SystemMaxUse=512M
- * systemctl restart systemd-journald.service
- * systemctl enable fstrim.timer
- * systemctl list-timers --all
- * journalctl --vacuum-size=256M
- * jctl -u (-f) tlp.service
-
- # new archwikich for mariadb
- * sudo mysql_secure_installation # interactive config
- * SET PASSWORD FOR 'root'@'localhost' = PASSWORD('password');
- * SELECT user,authentication_string,plugin,host FROM mysql.user;
- set password for root@localhost =password('123');
- - mysqladmin -u root password 'newpassword' # use sudo su;
- - mysqladmin -uroot -p123 password 2956            # easy
- - updtae user set password=password('123') where user='root';
- flush privileges;                               #  关键  mysql
- - mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql # initalize this mysql
- * mysqld --initialize --user=mysql --basedir=/usr --datadir=/var/lib/mysql
- - systemctl start mysql https://wiki.archlinux.org/title/MariaDB
- mycli -uroot -p 123
- * set password for root@localhost=password('2956');
- * flush privileges; (optional)
- * mysqladmin -uroot -p 123 password 2956
- * vim /etc/mysql/my.cnf # 修改/etc/my.cnf，在 [mysqld] 小节下添加一行：skip-grant-tables=1 这一行配置让 mysqld 启动时不对密码进行验证...https://blog.csdn.net/qq_31854907/article/details/81235991
-


* Cronie(crontab)
- sudo crontab -e -u root (shutdown -now)
- crontab file


* Jetbrain
- add https://plugins.zhile.io and install IDE Eval Reset
- systemctl enable fstrim.timer

- ###
- * inxi -G # show
- * mhwd -li
- ### downgrade
- * yay -Syyuu
-
- ### Date-synchronize
- * date -S <time> # manual modify system time
- * `tzselect`  command
- * `timedatectl`
- * timedatectl set-local-rtc 1
- * yay ntp && sudo ntpdate -u  ntp5.aliyun.com
- * sudo vim /etc/systemd/timesyncd.conf add `NTP=ntp1.aliyun.com ntp2.aliyun.com`
- * timedatectl status
-
- ### Auto login
- - gdm https://help.gnome.org/admin/gdm/stable/configuration.html.zh_CN#xsessionscript
- * comment /etc/sddm.conf `relogin` (for sddm)
-
- ### fast shutdown
- * sudo vim /etc/systemd/system.conf( timeout stop )
-
- ### Logout
- * sudo pkill -u username # relogin
- * killall -9 name
- * systemctl set-default multi-user.target # auto to cli
- * systemctl set-default graphical.target
-
- ### Terminal background-color
- * #2F3341
- * #292d3e
-
- ### Redirect
- * man stow | cat >> <filename>
-
- ### Stow
- * stow -t target_dir object_dir # target_dit default is current's paresent
-
- ###  键盘背光灯
- * fn+space 开启 或者调节亮度 #  manjaro linux default
-
- # pacman error
- - https://www.archlinuxcn.org/gnupg-2-1-and-the-pacman-keyring/
-
- ### Gnome
- - gnome-session-quit # logout linux desktop
- - C-alt delete # shutdown
- - C-alt 2 # rerurn desktop
- - C-r in shell
-
- # Tim dpi
- env WINEPREFIX="$HOME/.deepinwine/Deepin-TIM" winecfg # 弹窗 下载 点击取消  需要提前退出 qq
- env WINEPREFIX="$HOME/.deepinwine/Deepin-WeChat" /usr/bin/deepin-wine winecfg # deepin-wine
- env WINEPREFIX="$HOME/.deepinwine/Deepin-WeChat" winecfg
-
- ### livecd grubk mount
- - lsblk
- - sudo mount /dev/nvme0 /mnt/
- - https://www.w3cschool.cn/working_on_gnu_linux/working_on_gnu_linux-v8s527ok.html ### ascii
- showkey -a
- xkeymaps # gui
- * systemd
- systemctl --failed
- systemctl restart xxx.service
- systemctl status xxx.service

- python sit-packages 报错，删除相关的包

- Virtual error fix
-第二次 安装 iso 时，需要重新挂载 iso， 使用 stat 引导


* font
- setfont ter0-132n


* uefi
- efivar -l


free -h
swapon --show

pacman -Syu iwd

https://starrycat.me/archlinux-install-gnome-desktop.html
https://zhuanlan.zhihu.com/p/157260502


- mktemp -d /tmp/jst.XXXXX
- nslookup oeyoew.top
- ctrl-space type some text, and save it
- systemd-analyze
- ldd <exec>

- if can't uninstall jupyter, you can use yay -Rns jupyter

##  Version
- ^ v1.1.2  (v1.x.x) first number
- ~ v1.1.2  (v1.1.x) second number
- api, function, patch


## rar
- unrar e *.rar
- if pdf file is scan file, you can't select text, need use oct tool


- mv ./*/*.mp3 /tmp/xxx
- scrapy  # directly exe this command
- fc-list
- yarn global add xxx
- yarn global list
- ls [dir] | wc -l
- the  first input method is not active  in default

## cp
- cp --parents .. ..  # copy all path and folder, it's different for -p

## keyboard
ek861: win is doesn't work
first press fn + w and press fn + win(lock win key)

## Reset passwd
  - boot => click `e`, and find linux, add `init=/bin/bash`(may you can add single to replace it) at the end of sentence, click `ctrl+x` enter single user
      mode
  - type `mount -n -o remount,rw /`
  - passwd .....
  - reboot -f(important)
  - [passwd](https://wiki.archlinux.org/title/Reset_lost_root_password_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)

  - systemctl is-enabled tlp

##  Games for browser

  - [edge](edge://surf/)
  - [chrome](chrome://dino/)
  - bash-completion : /etc/bash... and /usr/share/bash-completion
  - sudo pacman-mirrors -c China -m rank -i -aS unstable
  - halt -p
  - lsb_release -a

- xournal: 点击缺省工具 ![xournal](images/xournal.png)

- scp lighthouse@101.43.122.185:/home/lighthouse/testscp.md .
- rsync lighthouse@101.43.122.185:/home/lighthouse/testscp.md 1/
  - need password


## gnome-keyring

  - 由于密码管理， 很多依赖于gnome-keyring(or kwallet), 如果是自动登陆， 则需要输入密码为gnome-keyring
  - [link](https://wiki.archlinux.org/title/GNOME_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)/Keyring_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87))
  - current-passwd: 2956
  - uname -a

  - 不建议升级idea版本（include android-studio)

  - ctrl + alt + F4 : enter tty

##  Howdy

auth      sufficient   pam_python.so /lib/security/howdy/pam.py

##  Norg
  - creat norg file occured header cant's recronized

  - (like inter @ symbol, it will have soem error tips in minbuffer)

  - like crontab.norg, it will can's recronized

##  Java
  - jframe can't show gui !!!


##  Vim
  - for #123, to use C-a to add this number , this # and number will change locations
  - 对于emaoj or icon file, 屏幕的自动绘制有一些问题


fcitx5 shring
  - for stow , if have .gitignore, it no effect


* networkmanager
  - [x] 由于链接文件找不到， 网络启动失败
  - [x] sudo /usr/bin/networkmanager/conf.d/...  --no-daemon
  - tips: sudo /usr/bin/networkmanager  --no-daemon  it will output some errout

## netease-cloud-music
1. Q: netease-cloud-music font is too small in high-resoluation?
A: 找到 Exec=这行，替换如下代码 netease-cloud-music --force-device-scale-factor=1.5 %U

2. Q: can't open exist ipynb file?
A: must open in folder, like code jupyter.

## wezterm
     - chinese fonts have some delay

## GTD
  - wolai.com
  - notion.com
  - trello(@deprecated: network is not well)

## memory
  - wps and qq etc need kill by manual

## reveal
  - reveal.md xxx.md -w
  - f(fullscreen)
  - (h/l/j/k/n/p)
  - esc: show all slides
  - ctrl + mouse click zoom(everywhere)
  - s(speakview)
  - b(board)(need install plugin)
  - b
  - reveal.md xxx.md --print xx.pdf
### bug
  - this reveal-md.json staticDir is different to static-dir???

## youtube double cc
  - change youtube language to english, and setup this plugin, reboot again

## yarn
  - yarn init -y

## disk
  - df -l
  - lsblk
  - fdisk -l
  - df -Th
  demo
