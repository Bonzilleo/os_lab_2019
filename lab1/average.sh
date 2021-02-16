#!/bin/bash

summ_av=0
count=0
for num in "$@"
do
    summ_av=$((summ_av+num))
    count=$((count+1))
done

if [ $count -gt 0 ]
then
    echo $((100*summ_av/count)) | sed 's/..$/.&/'
else
    echo "User Input"
fi

    
