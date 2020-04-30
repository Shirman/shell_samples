#!/bin/bash
source ../net_utils/curl_tool.sh
source ./loop_tool.sh

until_ctrl "doHttpGet 'http://www.baidu.com'" "201" 1 10

read a