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
readfile