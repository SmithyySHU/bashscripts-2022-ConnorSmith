#!/bin/bash

#Declaring each function ready for user input menu

readfile(){
    file='stock.txt'
    while read line; do
    echo $line
    done < $file
}

listdir(){
    pwd
    ls
}

readwrite(){
    gedit 'stock.txt'
    cat  'stock.txt'
}

email(){
   

    TO_ADDRESS="warehouse@furnitas.com"
    FROM_ADDRESS="c0033267@hallam.shu.ac.uk"
    SUBJECT= "Weekly Stock Update Request"
    BODY= "Please reply to this email with an update of the weekly stocktakings"

    echo ${BODY} | mail -s ${SUBJECT} ${TO_ADDRESS} -- -r ${FROM_ADDRESS}

   
}

cat menu.txt

read response

if [[ response -eq 1 ]]; 
then
    readfile
elif [[ response -eq 2 ]];
then
    readwrite
elif [[ response -eq 3 ]];
then
    listdir
elif [[ response -eq 4 ]];
then
    email
else 
    echo "You have inputted an invallid option please choice from 1-4"
fi