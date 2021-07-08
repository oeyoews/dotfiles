#!/usr/bin/bash

function Green_Success(){
  printf '\033[1;32;40m[success]==>  %b\033[0m\n' "$1";
}

function Yellow_Warnning(){
  printf '\033[1;33;40m[warnning]  %b\033[0m\n' "$1";
}

function Red_Error(){
  printf '\033[1;31;40m[error]  %b\033[0m\n' "$1";
  exit 1;
}


