#!/bin/bash

USERID=$(id -u)
#/var/log/loops-log-file redirectors<timestamp>.log
LOG_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIME_STAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME-$TIME_STAMP.log"
mkdir -p $LOG_FOLDER

#colors
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#Check user has root access or not
ROOT(){
    if [ $USERID -ne 0 ]
    then    
        echo -e "$R USER does not have root access, Please login as ROOT USER $N" | tee -a $LOG_FILE
        exit 1
    else    
        echo -e "$Y USER has ROOT ACCESS $N"| tee -a $LOG_FILE
    fi
}
#validate using functions
CHECK(){
    if [ $1 -ne 0 ]
    then    
        echo -e "$2 is $R ERROR $N" | tee -a $LOG_FILE
        exit 1
    else
        echo -e "$2 is $G SUCCESS $N" | tee -a $LOG_FILE
    fi
}
ROOT
#Installing packages
for package in $@
do 
    dnf list installed $package &>>$LOG_FILE
        if [ $? -ne 0 ]
        then
            echo -e "$package is not installed, $R please install $package $N" | tee -a $LOG_FILE
            dnf install $package -y &>>$LOG_FILE
            CHECK $? "Installing $package" 
        else
            echo -e "$package is $Y Alraedy instaaled, Please ignore $N" | tee -a $LOG_FILE
        fi
done