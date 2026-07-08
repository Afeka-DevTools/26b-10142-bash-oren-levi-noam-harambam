#!/bin/bash

sort_lines(){
	file=$1
	if [ -e "$file" ]; then 
		sort -o $file $file
		echo "File successfully sorted"
	else
		echo "File doesnt exist"
	fi
} 
result=$(sort_lines $1)
echo $result 
