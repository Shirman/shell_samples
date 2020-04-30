#!/bin/sh
# 条件判断开始>>>>>>>>>>>

# 字符串判断
try_if_str_1() {
	name="jack"
	if [ $name == "jack" ]; then
		echo "jack in"
	fi
}

try_if_str_2() {
	name="amy"
	if [ $name == "jack" ]; then
		echo "jack in"
	elif [ $name == "amy" ]; then
		echo "amy in"
	fi
}

try_if_str_3() {
	name="jone"
	if [ $name == "jack" ]; then
		echo "jack in"
	elif [ $name == "amy" ]; then
		echo "amy in"
	else
		echo "unknown"
	fi
}

try_if_str_4() {
	name="amy"
	age=17
	if [ $name != "jack" -a $age -lt 18 ]; then
		echo "not jack in"
	fi
}