#!/bin/bash

print_files_stats(){
	local directory=$1
	if [ ! -d "$directory" ]; then 
		echo "directory doesnt exist"
		exit 1
	fi
	
	for file in "$directory"/*; do
		if [ -f "$file" ]; then
			print_file_stats "$file"
		fi
	done
}

print_file_stats(){
	local file=$1
        wc "$file"
}

print_files_stats "$1"
