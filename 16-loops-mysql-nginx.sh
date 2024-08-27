#!/bin/bash

USERID=$(id -u)
CHECK(){
    if [ $1 eq 0]
    then    
        echo "$2 is SUCCESS"
    else
        echo "$2 is ERROR"
    fi
}

if [ $USERID eq 0]
then    
    echo "USER has ROOT ACCESS"
else    
    echo "USER doesn't have root access, Please login as ROOT USER"
    exit 1
fi


for package in $@
do 
    dnf list installed $package
        if [ $? -ne 0 ]
        then
            echo "$package is not installed, please install"
            dnf install $package 
            CHECK $? "Installing $package"
        else 
            echo "$package is Alraedy instaaled, Please ignore"

        fi
done
        