#!/bin/bash -x

headcount=0
tailcount=0
count=0

while [[ $headcount -ne 21 && $tailcount -ne 21 ]]
do
        coinoutput=$((RANDOM % 2))
        if [[ $coinoutput -eq 1 ]]
        then
                ((headcount++))

        else
                ((tailcount++))

        fi

        if [[ $headcount -eq 21 ]]
        then
                count1=$(($headcount-$tailcount ))
                echo "Head count 21 ..Head Won"
                echo "Head Won by $count1"

        elif [[ $tailcount -eq 21 ]]
        then
                count2=$(($tailcount-$headcount ))
                echo "Tail Count 21..Tail Won"
                echo "Tail Won by $count2"

        elif [[ $headcount -eq $tailcount ]]
        then
                echo "Tie condition"
        fi
done

