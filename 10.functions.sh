#!/bin/bash

ID=(id -u)
AKHLI(){
    if [ $1 -ne 0 ]
then
echo "ERROR : $2.....failed"
else
echo "$2.......success"
fi
}

ID=( id -u 0)
if [ $ID -ne 0 ]
then 
echo "ERROR ::- you can as a root user"
else
echo "you r the root user u can run"
fi

yum install mariadb -y

AKHIL $? "Installing mariadb

yum install git -y

AKHIL $? "installing Git"