#!/bin/bash

# DATE=$(date +%F)

# echo "Today date is: $DATE"

#Given number is Greaterthan
# NUMBER=$1
# if [ $NUMBER -gt 17 ]
# then
# echo "Given: $NUMBER is greater than 17"
# else 
# echo "Given: $NUMBER is lessthan 17"
# fi

#Given number is lessthan
# NUMBER=$1
# if [ $NUMBER -lt 17 ]
# then
# echo "Given: $NUMBER is less than 17"
# else 
# echo "Given: $NUMBER is greater than 17"
# fi

#Given number is less than equal
# NUMBER=$1
# if [ $NUMBER -le 17 ]
# then
# echo "Given: $NUMBER is less than 17"
# else 
# echo "Given: $NUMBER is greater than 17"
# fi

# #Given number is greater than equal
# NUMBER=$1
# if [ $NUMBER -ge 17 ]
# then
# echo "Given: $NUMBER is Greater than 17"
# else 
# echo "Given: $NUMBER is less than 17"
# fi

#Given number is not equal
NUMBER=$1
if [ $NUMBER -ne 17 ]
then
echo "Given number is not 17"
else 
echo "Given number is 17"
fi