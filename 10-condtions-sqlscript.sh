#!/bin/bash

#install MYSQL through shell script
#check it has root user or not, if he has root access procedd
#if he doesn't root access, exit
#install MYSQL server


USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "You don't have root acces, please login with ROOT USER"
    exit 1
else 
    echo "You have ROOT ACCESS"
fi