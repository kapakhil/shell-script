#!/bin/bash

ID=$( id -u )
if [ $ID -ne 0 ]
then
    echo " you are root user"
else 
    echo "ERROR :- pls run with root user"
fi 

yum install mysql -y
