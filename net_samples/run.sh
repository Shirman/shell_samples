#!/bin/bash
source curl_tool.sh

# doHttpGet,仅做演示
resultCode=$(doHttpGet http://www.baidu.com)
echo "$resultCode"

# doHttPost,仅做演示
data="{\"pageNum\": 1,\"pageSize\": 10}"
resultCode=$(doHttpPostData https://fanyi.baidu.com/langdetect "Content-Type:application/json; charset=utf-8" "$data")

echo "$resultCode"
read a