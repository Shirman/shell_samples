#!/bin/bash
until_ctrl() {
  count=1
  until [ $(eval "$1") -eq "$2" ]; do
      echo "$count"
      let count++
      if [ $count -gt "$3" ]; then
          break
      fi
      sleep "$4"
  done
}