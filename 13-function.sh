#!/bin/bash


USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#check user has ROOT access or not
if [ $USERID -ne 0 ]
then
    echo -e " $R You don't have root acces, please login as ROOT USER $N"
    exit 1
fi

#Neat and clean script with MYSQL INSTALLATION
dnf list installed mysql
if [ $? -ne 0 ]
then 
    echo -e " $R MYSQL is not installed please Install MYSQL $N"

    dnf install mysql -y 
    if [ $? -ne 0 ]
    then
        echo -e "command is... $R ERROR $N"
        exit 1
    else   
        echo -e "Installing MYSQL... $G SUCCESS $N"
    fi

else 
    echo -e " $Y MYSQL already installed $N"
fi    

dnf list installed git
if [ $? -ne 0 ]
then 
    echo -e " $R GIT is not installed please Install GIT $N"

    dnf install git -y 
    if [ $? -ne 0 ]
    then
        echo -e "command is... $R ERROR $N"
        exit 1
    else   
        echo -e "Installing GIT... $G SUCCESS $N"
    fi

else 
    echo -e " $Y GIT already installed $N"
fi   
