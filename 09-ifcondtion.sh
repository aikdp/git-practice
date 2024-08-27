#!/bin/bash

# DATE=$(date +%F)

# echo "Today date is: $DATE"

# NUMBER=$1
# if [ $NUMBER -gt 17 ]
# then
# echo "Given: $NUMBER is greater than 17"
# else 
# echo "Given: $NUMBER is lessthan 17"
# fi

# NUMBER=$1
# if [ $NUMBER -lt 17 ]
# then
# echo "Given: $NUMBER is less than 17"
# else 
# echo "Given: $NUMBER is greater than 17"
# fi
NUMBER=$1
if [ $NUMBER -le 17 ]
then
echo "Given: $NUMBER is less than 17"
else 
echo "Given: $NUMBER is greater than 17"
fi