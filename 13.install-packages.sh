#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
  if [ $1 - ne 0 ]
   then 
    echo "$2 ....$R FAILED $N"
   else
    echo "$2 ....$G SUCCESS $N"
   fi 
}

if [ $ID -ne 0 ]
 then 
  echo "$R ERROR ::- get the sudo access and run script $N"
else 
  echo " $G you are the root user $N"
fi  

for package in $@
 do 
    yum list install $package
    if ( $? - ne 0)
       then
           yum install $package -y 
           VALIDATE $? "Installation of $package"
    else
        echo "$package is already installed...$Y SKIPPING $N "
    fi        
 done

 if ( $akhil - ne 0)
 do 
    echo "akhil"
 done

