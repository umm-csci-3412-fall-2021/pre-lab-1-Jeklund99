#!/usr/bin/env bash

#Variable Names
#input file is assigned to the value given in the first argument
input_file=$1

#name is set to the value given as the second argument
name=$2

#created_file is set to the value given as the third argument
created_file=$3

#Find the header, footer, and the file we want to wrap between them
footer=$(find . -name "${name}_footer.html")
header=$(find . -name "${name}_header.html")
content=$(find . -name "$input_file")

#Combine the header, content file, and the footer and put the output in a file that has the name of whatever is stored  in the created_file variable
cat "$header" "$content" "$footer" > "$created_file"

