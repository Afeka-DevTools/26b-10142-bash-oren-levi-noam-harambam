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

if [ "$days" -le 0 ]; then
	echo "Please enter positive amout of days!"
	exit 1
fi

if [ $(find "$directory" -type f -mtime -"$days" | wc -l) -eq 0 ]; then
  echo "No files were modified in the last $days days"
fi

find "$directory" -type f -mtime -"$days"