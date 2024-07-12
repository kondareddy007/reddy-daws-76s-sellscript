#Install my sql through shell script
#1.chech user is root ot not
# root user id is always 0. if not 0 then it is not root user 
# id -u (command for check root or not)
# if root then proceed if not root then show the error
# 2.Now install mysql
# 3.check weather mysql is installed properly or not
# $? --> to check the previous commad run properly or not
#if installed then good other wise send error

#!/bin/bash
ID=$(id -u)
echo "user id is $ID"
if [ $ID -ne 0 ]
then 
    echo "Error:: Please run this script with root user"
    exit 1 #You can give otherthan 0.
else 
    echo "you are root user"  
fi #if reverse indication is fi. means condition end.

yum install mysql -y

#$? --> it will check the previous command run successfully or not
if [ $? -ne 0 ]
then 
    echo "ERROR::Installing mysql is failed"
    exit 1
else
    echo "Installing my sql is success"
fi

yum install git -y 

if [ $? -ne 0 ]
then 
    echo "ERROR::Installing GIT is failed"
    exit 1
else
    echo "Installing GIT is success"
fi