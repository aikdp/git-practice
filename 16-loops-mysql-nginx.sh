#!/bin/bash

USERID=$(id -u)

#colors
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#validate using functions
CHECK(){
    if [ $1 -eq 0 ]
    then    
        echo -e "$2 is $G SUCCESS $N"
    else
        echo -e "$2 is $R ERROR $N"
        exit 1
    fi
}

#Check user has root access or not
if [ $USERID -eq 0 ]
then    
    echo -e "$Y USER has ROOT ACCESS $N"
else    
    echo -e "$R USER doesn't have root access, Please login as ROOT USER $N"
    exit 1
fi


#Installing packages
for package in $@
do 
    dnf list installed $package
        if [ $? -ne 0 ]
        then
            echo -e "$R $package is not installed, please install $N"
            dnf install $package -y
            CHECK $? "Installing $package"
        else 
            echo -e "$Y $package is Alraedy instaaled, Please ignore $N"

        fi
done
        