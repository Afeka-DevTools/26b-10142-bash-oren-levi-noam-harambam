#!/bin/bash

directory=$1

separator="--------------------------------------------------"

if [ -z "$directory" ]; then
	echo "No directory specified! Please pass directory path as argument"
	exit 1
fi

if [ ! -d "$directory" ]; then 
	echo "Directory doesn't exist!"
	exit 1
fi

echo "Analyzing directory \"$directory\" \n"

if [ $(find "$directory" -type f | wc -l) -eq 0 ]; then
	echo "No files exist in the directory!"
	exit 1
fi

echo "Lines | Words | Bytes | File Name"
echo "$separator"

for file in "$directory"/*; do
	if [ -f "$file" ]; then
		wc "$file" | awk '{print $1 "\t" $2 "\t" $3 "\t" "'$(basename "$file")'"}'
		echo "$separator"
	fi
done
