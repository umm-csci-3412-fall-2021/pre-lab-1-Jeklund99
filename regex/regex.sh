#!/usr/bin/env bash

#Essentially, the following lines of code replace any line in the r*_input.txt file that matches the regex expression with "1. pattern in capture group 1"  and  "2. pattern in capture group 2" and then puts the output in a file called r*_output.txt
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt

#The -n flag in this line disables sed's automatic printing. The p right before the last quotation mark specifies that sed should only print out lines that match the regex expression. This ensures that the "I am awesome. I love puppies, but I don't like sandwiches." line doesn't appear in the r1_output.txt file.
sed -En 's/\* I am ([a-zA-Z]+)\. My favorite sandwich is ([a-z]+)\./1. \1\n2. \2\n/p' < r1_input.txt > r1_output.txt

sed -E 's/\* sandwich with ([a-zA-Z]+\.?[a-z]+\.?[a-z]+\.) ([a-z]+ [a-z]+)/1. \1\n2. \2\n/' < r2_input.txt > r2_output.txt

 
