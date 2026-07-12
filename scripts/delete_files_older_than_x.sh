#!/bin/bash

directory=$1
days=$2

if [ -z "$directory" ]; then
  echo "No directory specified! Please pass directory path as argument"
  exit 1
fi

if [ -z "$days" ]; then
  echo "Amount of days not specified! Please pass amount of days as argument"
  exit 1
fi

if [ ! -d "$directory" ]; then
  echo "Directory doesn't exist!"
  exit 1
fi

if [ "$days" -le 0 ]; then
	echo "Please enter positive amout of days!"
	exit 1
fi

old_files_amount=$(find "$directory" -type f -mtime +$days | wc -l)
if [ "$old_files_amount" -eq 0 ]; then
	echo "No files exist in the directory!"
	exit 1
fi

find "$directory" -type f -mtime +$days -delete
echo "$old_files_amount files have been deleted successfully"