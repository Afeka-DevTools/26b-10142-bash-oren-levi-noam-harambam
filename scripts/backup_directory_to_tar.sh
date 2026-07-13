#!/bin/bash

directory=$1

if [ -z "$directory" ]; then
  echo "No directory specified! Please pass directory path as argument"
  exit 1
fi

if [ ! -d "$directory" ]; then
  echo "Directory doesn't exist!"
  exit 1
fi

echo "Creating backup for directory \"$directory\""
file_name="backup.tar.gz"
tar_file=$(tar -czf "$file_name" "$directory")

echo "Backup file '"$file_name"' was created successfully"