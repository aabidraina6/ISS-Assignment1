#!/bin/bash

read
a=(${REPLY//,/ })
l=${#a[*]}
for ((i=0;i<l-1;i++))
do
    for ((j=0;j<l;j++))
    do
        if ((a[j] > a[j+1]))
        then
            temp=${a[j]}
            a[$j]=${a[j+1]}
            a[$j+1]=$temp
        fi
    done
done
# echo ${a[*]}
s=$(echo ${a[*]})
echo ${s// /,}
