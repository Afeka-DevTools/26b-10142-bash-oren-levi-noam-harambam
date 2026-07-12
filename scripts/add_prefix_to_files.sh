#!/bin/bash

directory=$1
prefix=$2

if [ -z "$directory" ]; then
  echo "No directory specified! Please pass directory path as argument"
  exit 1
fi

if [ -z "$prefix" ]; then
  echo "No prefix specified! Please pass prefix as argument"
  exit 1
fi

if [ ! -d "$directory" ]; then
  echo "Directory doesn't exist!"
  exit 1
fi

if [ $(find "$directory" -type f -name "*.txt" | wc -l) -eq 0 ]; then
	echo "No .txt files exist in the directory!"
	exit 1
fi

for file in "$directory"/*; do
	if [ -f "$file" ] && [[ "${file##*.}" == "txt" ]]; then
        file_name=$(basename "$file")
        new_file_name="$prefix$file_name"

		mv "$file" "$directory/$new_file_name"
        echo "$file_name --> $new_file_name"
	fi
done

echo "Suffix was added to files successfully"