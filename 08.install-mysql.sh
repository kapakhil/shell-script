#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]
then
    echo "ERROR :- pls run with root user"
else 
    echo "you are root user "
    yum install mysql -y
fi 


