#!/bin/bash

for n in 10 100 
do
    for maxxy in 10 100 500 
    do
	area=$(($maxxy * $maxxy))
	if [ "$n" -lt "$area" ]
	then
   	     cmd="./testgen.py $n $maxxy";
             fname="test"
             fname+="$n"
	     fname+="x"
             fname+="$maxxy"
             fname+=".test"
             $cmd > $fname;
        fi
    done
done
