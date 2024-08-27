#!/bin/bash


# USERID=$(id -u)
# R="\e[31m"
# G="\e[32m"
# Y="\e[33m"
# N="\e[0m"

# VALIDATE(){
# if [ $? -ne 0 ]
#     then
#         echo -e " $1 command is... $R ERROR $N"
#         exit 1
#     else   
#         echo -e "Installing $1... $G SUCCESS $N"
#     fi
# }

# #check user has ROOT access or not
# if [ $USERID -ne 0 ]
# then
#     echo -e " $R You don't have root acces, please login as ROOT USER $N"
#     exit 1
# fi

# #Neat and clean script with MYSQL INSTALLATION
# dnf list installed mysql
# if [ $? -ne 0 ]
# then 
#     echo -e " $R MYSQL is not installed please Install MYSQL $N"

#     dnf install mysql -y 
#     VALIDATE $? 

# else 
#     echo -e " $Y MYSQL already installed $N"
# fi    

# dnf list installed git
# if [ $? -ne 0 ]
# then 
#     echo -e " $R GIT is not installed please Install GIT $N"

#     dnf install git -y 
#      VALIDATE $? 

# else 
#     echo -e " $Y GIT already installed $N"
# fi   


# USERID=$(id -u)
# R="\e[31m"
# G="\e[32m"
# Y="\e[33m"
# N="\e[0m"

# VALIDATE(){
# if [ $? -ne 0 ]
#     then
#         echo -e " $1 command is... $R ERROR $N"
#         exit 1
#     else   
#         echo -e "Installing $1... $G SUCCESS $N"
#     fi
# }

# #check user has ROOT access or not
# if [ $USERID -ne 0 ]
# then
#     echo -e " $R You don't have root acces, please login as ROOT USER $N"
#     exit 1
# fi

# #Neat and clean script with MYSQL INSTALLATION
# dnf list installed mysql
# if [ $? -ne 0 ]
# then 
#     echo -e " $R MYSQL is not installed please Install MYSQL $N"

#     dnf install mysql -y 
#     VALIDATE $? 

# else 
#     echo -e " $Y MYSQL already installed $N"
# fi    

# dnf list installed git
# if [ $? -ne 0 ]
# then 
#     echo -e " $R GIT is not installed please Install GIT $N"

#     dnf install git -y 
#      VALIDATE $? 

# else 
#     echo -e " $Y GIT already installed $N"
# fi   


#Checking and is=suing $1 $2 dollars 
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
if [ $1 -ne 0 ]
    then
        echo -e " $2 command is... $R ERROR $N"
        exit 1
    else   
        echo -e " $2 is... $G SUCCESS $N"
    fi 
}

#check user has ROOT access or not
if [ $USERID -ne 0 ]
then
    echo -e " $R You don't have root acces, please login as ROOT USER $N"
    exit 1
fi

#Neat and clean script with MYSQL INSTALLATION
dnf list installed git
if [ $? -ne 0 ]
then 
    echo -e " $R GIT is not installed please Install GIT $N"

    dnf install git -y 
     VALIDATE $? "Installing GIT"

else 
    echo -e " $Y GIT already installed $N"
fi   

dnf list installed mysqlll
if [ $? -ne 0 ]
then 
    echo -e " $R MYSQL is not installed please Install MYSQL $N"

    dnf install mysqlvg -y 
    VALIDATE $? "Installing MYSQL"

else 
    echo -e " $Y MYSQL already installed $N"
fi    
