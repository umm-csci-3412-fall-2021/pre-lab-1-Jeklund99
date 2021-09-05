#!/usr/bin/env bash

file_name=$1

if [ "$file_name" == "r0_input.txt" ]; then
	sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt >r0_output.txt

fi
