#!/bin/bash

SOURCE_DIR="/tmp/old_logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"

if [ ! -d $SOURCE_DIR ] #! donates opposite IFS=Internal field separator.
then
  echo "source directory   $SOURCE_DIR  is does not exist"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +1 -name "*.log")

while IFS= read -r line
do 
   echo "Deleting line: $line"
   rm -rf $line

done <<< $FILES_TO_DELETE