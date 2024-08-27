#!/bin/bash

#install MYSQL through shell script
#check it has root user or not, if he has root access procedd
#if he doesn't root access, exit
#install MYSQL server

#chekc user has ROOT access or not
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo -e "\e[31m You don't have root acces, please login as ROOT USER \e[0m"
    exit 1
fi

dnf install gittt -y
if [ $? -ne 0 ]
then
    echo -e "command i... \e[31m ERROR \e[31m"
else 
    echo -e "Installing GIT... \e[32m SUCCESS \e[0m"
fi