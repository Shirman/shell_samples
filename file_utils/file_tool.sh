#!/bin/bash

# 在文件中替换,入参：被替换字符 替换字符 文件名
replaceStrInFile() {
  sed -i "s/$1/$2/g;" "$3"
}

# 设置键值对
setProp() {
  replaceStrInFile "$1=.*" "$1=$2" "$3"
}