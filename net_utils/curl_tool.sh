#!/bin/bash
# 函数返回值见https://github.com/koalaman/shellcheck/wiki/SC2152
# 发送http请求并获取http状态码
doHttpGet() {
  resultCode=$(curl -X GET -s -H "$2" -w %{http_code} "$1" -o /dev/null)
  echo "$resultCode"
  return 0
}

# 发送http请求并获取内容
doHttpGetData() {
  data=$(curl -X GET -s -H "$2" "$1")
  echo "$data"
  return 0
}

# 发送http请求并获取http状态码
doHttpPost() {
  resultCode=$(curl -X POST -s -H "$2" -d "$3" -w %{http_code} "$1" -o /dev/null)
  echo "$resultCode"
  return 0
}

# 发送http请求并获取内容
doHttpPostData() {
  data=$(curl -X POST -s -H "$2" -d "$3" "$1")
  echo "$data"
  return 0
}