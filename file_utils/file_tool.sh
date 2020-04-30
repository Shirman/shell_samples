#!/bin/bash
source ../os_utils/os_utils.sh

# 在文件中替换,入参：被替换字符 替换字符 文件名
replace() {
  if [ "$(is_mac_os)" ]; then
      sed -i.bak "s/$1/$2/g;" "$3"
  else
      sed -i "s/$1/$2/g;" "$3"
  fi

}

# 设置键值对
setProp() {
  replace "$1=.*" "$1=$2" "$3"
}