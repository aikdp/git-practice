#!/bin/bash

echo "All passed varaibles: $@"
echo "total paased arguments in the script: $#"
echo "Script Name: $0"
echo "current working dorctory of user: $PWD"
echo "Home diractory of current user: $HOME"
echo "PID of script executing now: $$"
sleep 100 &
echo "PID if last background for sleep 100 & command: $!" 