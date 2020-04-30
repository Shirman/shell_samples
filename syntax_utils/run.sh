#!/bin/bash
source ../net_utils/curl_tool.sh
source ./loop_tool.sh

# 发起一个get请求，直到返回码为201，尝试10次，每秒间隔1s
until_ctrl "doHttpGet 'http://www.baidu.com'" "201" 10 1