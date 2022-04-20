#!/bin/bash
read
a=($(echo $REPLY | grep . -o))
let end=${#a[*]}/2
# for ((i=end-1;i>=0;i--))                                                        
# do                                                                              
# echo -n ${a[$i]}                                                                
# done                                                                            
printf "%s" ${a[*]:0:$end} | rev
printf "%s" ${a[*]:$end}
echo
