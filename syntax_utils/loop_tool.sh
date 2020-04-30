#!/bin/bash
until_ctrl() {
  count=1
  until [ $(eval "$1") -eq "$2" ]; do
      echo "$count"
      let count++
      if [ $count -gt "$4" ]; then
          break
      fi
      sleep "$3"
  done
}