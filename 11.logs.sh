#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE() {
if [ $1 -ne 0 ]
then
    echo "ERROR : $2.....failed"
else
    echo "$2.......success"
fi
}

if [ $ID -ne 0 ]
then 
    echo "ERROR ::- you can as a root user"
else
    echo "you r the root user u can run"
fi

yum install mariadb -y &>> $LOGFILE

VALIDATE $? "Installing mariadb"

yum install git -y &>> $LOGFILE

VALIDATE $? "installing Git"