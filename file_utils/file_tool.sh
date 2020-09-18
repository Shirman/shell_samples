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

# 获取属性值
getProp() {
  prop=$(sed -n "/$1/p" "$2" | sed "s/$1=//g")
  echo "$prop"
}

# 改变文件中的ip值，ip_change 192.168.200.200
ip_change() {
	files=$(ls)
	for file in ${files}
	do
		if [[ ${file} =~ (.*)conf ]]; then
			echo "change ${file} ip to $1"
			sed -i "s/[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/$1/g" "${file}"
		fi
	done
}