#!/bin/bash

find_recent(){
	local days=$1
	find . -type f -mtime -"${days}"
}

find_recent $1
