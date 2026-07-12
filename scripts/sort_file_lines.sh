#!/bin/bash

file=$1

if [ -z "$file" ]; then
  echo "No file specified! Please enter file path as argument"
  exit 1
fi

if [ ! -e "$file" ]; then
	echo "File doesn't exist!"
	exit 1
fi

sort -o "$file" "$file"

file_name=$(basename "$file")
echo "File $file_name sorted successfully"
