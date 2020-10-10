#!/bin/bash -x

echo "Welcome To Flip Coin Simulation Problem"

headcount=0
tailcount=0

while [[ $headcount -ne 10 && $tailcount -ne 11 ]]
do
	coinoutput=$((RANDOM % 2))
	if [[ $coinoutput -eq 1 ]]
	then
		((headcount++))
	else
		((tailcount++))
	fi

	if [[ $headcount -eq 10 ]]
	then
		echo "Head count 10..Head Is Won"

	elif [[ $tailcount -eq 10 ]]
	then
		echo "Tail count 10.. Tail Is Won"
		exit
	fi
done
