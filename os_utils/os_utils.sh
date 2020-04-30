#!/bin/bash

# 判断是否为mac os 系统
is_mac_os(){
  result="$(uname)"
  if [ "$result" ==  "Darwin" ]; then
      echo "is Darwin"
      return 0
  fi
  result 1
}