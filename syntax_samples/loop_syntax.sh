#!/bin/sh

#循环开始>>>>>>>>>>>>>>
# while循环
try_while() {
	count=1
	while [ $count -lt 3 -a $count -gt 0 ];
	do
		let count++
		echo "try while count is $count"
		sleep 1
	done
}

# 遍历数组，方法一，直接遍历元素
try_for_1() {
	names=("jack" "amy")
	for name in ${names[@]};
	do
		echo "try for, name is $name"
	done
}

# 遍历数组，方法二，遍历游标
try_for_2() {
	names=("jack" "amy")
	for idx in ${!names[@]};
	do
		echo "try_for_2, name is ${names[$idx]}"
	done
}

# 遍历数组，方法三
try_for_3() {
	names=("jack" "amy")
	for ((idx=0;idx<${#names[@]};idx++));
	do
		echo "try_for_3, ${names[${idx}]}"
	done
}

try_until() {
	count=1
	until [ $count -gt 3 ];
	do
		let count++
		echo "try_until, $count"
	done
}