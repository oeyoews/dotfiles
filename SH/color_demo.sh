#!/usr/bin/bash
# https://www.cnblogs.com/gentlemanhai/p/11803596.html 介绍

function Green_Success(){
  printf '\033[1;32;40m[Success]==>  %b\033[0m\n' "$1";
  echo -e "\e[42m $now 美化成功！注销登录后即可看到效果^_^ \e[0m"
}

function Yellow_Warnning(){
  printf '\033[1;33;40m[Warnning]  %b\033[0m\n' "$1";
}

function Red_Error(){
  printf '\033[1;31;40m[Error]  %b\033[0m\n' "$1";
}


now=`date +"%Y-%m-%d %H:%M:%S"`
cat>titlebar.ini<<EOF
# $now
[Active]
height=28
# https://www.fontke.com/tool/rgb/e9e9e9/
#backgroundColor=#E9E9E9
# https://www.fontke.com/tool/rgb/f6f8fa/
#backgroundColor=#F6F8FA
backgroundColor=#F0F0F4

[Inactive]
height=28
# https://www.fontke.com/tool/rgb/e3e3e3/
backgroundColor=#E3E3E3
EOF

