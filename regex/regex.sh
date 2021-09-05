#!/usr/bin/env bash

sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt

sed -En 's/\* I am ([a-zA-Z]+)\. My favorite sandwich is ([a-z]+)\./1. \1\n2. \2\n/p' < r1_input.txt > r1_output.txt


 
