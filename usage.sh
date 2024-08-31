#!/bin/bash


#when you are executing the script but forgot enter arguments, then this is the usage
USAGE(){
    echo "USAGE:: is sh <filename> arument1 arhument2 ,...., Please check"
    exit 1
}

#Script started or not
echo " Script execution is started at: $(date)" | tee -a $LOG_FILE
