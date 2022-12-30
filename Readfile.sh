#!/bin/bash

file='stock.txt'
while read line; do
echo $line
done < $file
