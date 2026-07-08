#!/bin/bash
backup_directory(){
	local directory=$1
	if [ -d "$directory" ]; then 
		tar -czf backup.tar.gz $directory 
		echo "backup file created successfully"
	else
		echo "directory doesnt exist"
	fi 
}
result=$(backup_directory $1)	
echo $result 
