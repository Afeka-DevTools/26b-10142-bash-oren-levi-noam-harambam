#!/bin/bash

get_uptime(){
       	uptime -p
}

result=$(get_uptime)
echo "$result"
