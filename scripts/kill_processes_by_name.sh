#!/bin/bash

process_name=$1

if [ pgrep -c "$process_name" -eq 0 ]; then
    echo "No processes with the name $process_name exist!"
fi

pkill $process_name
echo "All processes with the name $process_name were killed"