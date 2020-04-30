#!/bin/sh
#case开始>>>>>>>>>>>>
try_case() {
	read aNum
	case "$aNum" in
		"1") echo "echo 1"
		;;
		"2") echo "echo 2"
		;;
		"start") echo  "exec start ..."
		;;
		*) echo  "$aNum"
		;;
	esac
}