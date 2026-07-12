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

find "$directory" -type f -name "*.*" | \
    sed 's/.*\.//' | \
    sort | \
    uniq -c | \
    sort -rn | \
    while read -r count ext; do
        echo ".$ext files - $count"
    done
    
