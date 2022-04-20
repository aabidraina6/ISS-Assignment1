#!/bin/bash

read
for i in $(echo $REPLY | grep . -o)
do
printf "\x$(printf %x $(expr $(printf %d "'$i'") + 1))"
done
echo
