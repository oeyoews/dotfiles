#!/usr/bin/env bash

spin() {
  local i=0
  local sp='/-\|'
  # local n=${#sp}
  # printf ' '
  sleep 0.1
  while true; do
    # printf '\b%s' "${sp:i++%4:1}"
    printf '\b%s' "${sp::1}"
    sleep 0.1
  done
}

function demo() {
  for ((i=0;$i<=20;i++))
  do
    let jinshu=$i*5
    printf "[%-20s]%d%%\r" $b $jinshu
    sleep 0.1
    b=#$b
  done
  echo
}

function demo2() {
  i=0
  str=""
  label=('|' '/' '-' '\\')
  index=0
  while [ $i -le 20 ]
  do
    let index=i%4
    let jinshu=$i*5
    printf "\e[47m\e[31m[%-20s]\e[0m\e[47;32m[%c]\e[1;0m\e[47;35m[%-3d%%]\e[1;0m\r" $str ${label[$index]} $jinshu
    let i++
    str+="#"
    sleep 0.1
  done
  echo

}

function demo3() {
  # echo "准备中..."
  i=0
  str=""
  # arr=("|" "/" "-" "\\")
  while [ $i -le 20 ]
  do
    let index=i%4
    let indexcolor=i%8
    let color=30+indexcolor
    let NUmbER=$i*5
    printf "\e[0;$color;1m[%-20s][%d%%]%c\r" "$str" "$NUmbER" "${arr[$index]}"
    sleep 0.1
    let i++
    str+='+'
  done
  printf "\n"
  # printf "正在执行...稍候！"
}

function demo4() {

  for ((i=1;i<=10;i++))
  do
    (
    echo "$i"
    sleep 10
    ) &
    done
        wait
        echo -E "########## $SECONDS ##########"
      }
    demo4
