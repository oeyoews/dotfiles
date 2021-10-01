### shell
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
### PATH
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

### tomcat
* /usr/share/tomcat10/ # 程序目录
cat /etc/shells

### curl
* curo -o/-O 
* who /var/log/wtmp

### alias
* alias -L 
* unalias <alias_name>
* passwd -d <user_name>
passwd -S user_name
fstrim sctl

### trans
* trans -T

### termux
* https://mirrors.tuna.tsinghua.edu.cn/help/termux/ 
* termux-change-repo  [x]
* sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list
sed -i 's@^\(deb.*games stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/game-packages-24 games stable@' $PREFIX/etc/apt/sources.list.d/game.list
sed -i 's@^\(deb.*science stable\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/science-packages-24 science stable@' $PREFIX/etc/apt/sources.list.d/science.list
apt update && apt upgrade
*  vim zsh git
* watch -n 1 -d ls demo/ # watch file change

### ZSH
* C-r 
