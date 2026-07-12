#!/bin/bash

user_name=$(whoami)

main_directory=$HOME

dedicated_shell=$SHELL

user_groups=$(id -Gn)

echo "User Name: $(whoami)"
echo "Main Directory: $HOME"
echo "Dedicated Shell: $SHELL"
echo "Groups: $(id -Gn)"