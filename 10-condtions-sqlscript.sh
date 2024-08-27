#!/bin/bash

#install MYSQL through shell script
#check it has root user or not, if he has root access procedd
#if he doesn't root access, exit
#install MYSQL server


USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo -e "\e[31m You don't have root acces, please login as ROOT USER \e[0m"
    exit 1
else 
    echo -e "\e[32m You have ROOT ACCESS \e[0m"
fi