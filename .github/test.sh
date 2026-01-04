#!/bin/bash

correct=`cat /proc/loadavg | echo "$(awk -F " " '{ print $1 }') > 0.7" | bc`
if [[ $correct  == 1 ]]; then
   echo "Passed"
else
   echo "Failed"
   exit 1
fi
