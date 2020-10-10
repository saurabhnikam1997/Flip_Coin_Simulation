#!/bin/bash -x

echo "Welcome To Flip Coin Simulation Problem"

if [[ $((RANDOM%2)) -eq 1 ]]
then
	echo Heads
else
	echo Tails
fi
