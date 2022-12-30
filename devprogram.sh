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
    
    mail -s 'Weekly Stock Update Request' c0033267@hallam.shu.ac.uk <<< 'Please reply to this email with an update of the weekly stocktakings'
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