#!/bin/bash -x

valid=true
i=0
sumofrolls=0
while [ $valid ]
do
dice1=$((RANDOM%6+1))
dice2=$((RANDOM%6+1))
sum=$((dice1+dice2))
if [ $sum -eq 12 ];
then
echo "double 6 occurs"
break
fi
sumofrolls=$((sumofrolls+dice1+dice2))
echo "sum of rolls=$sumofrolls"
((i++))
echo "number of rolls =$i"
done
