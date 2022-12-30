#!/bin/bash

cat menu.txt

read response

if [[ response = "1" ]]; 
then
    readfile
elif [[ response = "2" ]];
then
    readwrite
elif [[ response = "3" ]];
then
    listdir
elif [[ response = "4" ]];
then
    email
else 
    echo "You have inputted an invallid option please choice from 1-4"
fi