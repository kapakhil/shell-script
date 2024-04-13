#!/bin/bash

ID=( id -u 0)
if [ $ID -ne 0 ]
then 
echo "ERROR ::- you can as a root user"
else
echo "you r the root user u can run"
fi

yum install mariadb -y 

if [ $? -ne 0 ]
then
echo "ERROR : installing mariadb is failed"
else
echo "Mariadb installation is success"
fi 

yum install git -y

if [ $? -ne 0 ]
then
echo "ERROR : installing git is failed"
else
echo "git installation is success"
fi
