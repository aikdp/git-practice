#!/bin/bash

USERID=$(id -u)
#/var/log/loops-log-file redirectors<timestamp>.log
LOG_FOLDER="/var/log/expense"
SCRIPT_NAME=$($0 | cut -d "." -f1)
TIME=$(date +%Y-%m-%d-%H-%M-%S)
mkdir -p $LOG_FOLDER
LOG_FILE=$($LOG_FOLDER/$SCRIPT_NAME/$TIME.log)

#colors
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#Check user has root access or not
if [ $USERID -eq 0 ]
then    
    echo -e "$Y USER has ROOT ACCESS $N" &>>LOG_FILE
else    
    echo -e "$R USER doesn't have root access, Please login as ROOT USER $N" &>>LOG_FILE
    exit 1
fi

#validate using functions
CHECK(){
    if [ $1 -eq 0 ]
    then    
        echo -e "$2 is $G SUCCESS $N" &>>LOG_FILE
    else
        echo -e "$2 is $R ERROR $N" &>>LOG_FILE
        exit 1
    fi
}

#Installing packages
for package in $@
do 
    dnf list installed $package &>>LOG_FILE
        if [ $? -ne 0 ]
        then
            echo -e "$R $package is not installed, please install $N" &>>LOG_FILE
            dnf install $package -y
            CHECK $? "Installing $package" 
        else 
            echo -e "$Y $package is Alraedy instaaled, Please ignore $N" &>>LOG_FILE

        fi
done
        