#!/bin/bash
awk '{array[$1]++}END{for(word in array)print "Word: ",word,"-"," Count of repetation: ",array[word]}' RS="\n|" $1
