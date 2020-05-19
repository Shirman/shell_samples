#!/bin/bash
source file_tool.sh

setProp age 15 ../test_data/.env

name=$(getProp name ../test_data/.env)

echo $name