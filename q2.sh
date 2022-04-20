#!/bin/bash

cut -d "~" -f 2 quote.txt > b.txt
cut -d "~" -f 1 quote.txt > a.txt

awk -i inplace '{ print "\""$0"\""}' a.txt
awk -i inplace '{ print "once said, " $0}' a.txt

file1="a.txt"
file2="b.txt"

#x=$(wc -l a.txt | cut -d " " -f 1)

#for (( i=1 ; i<=$x ; i++ ))
#do 

paste b.txt a.txt > speech.txt
rm -f a.txt
rm -f b.txt


