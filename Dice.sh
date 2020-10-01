#!/bin/bash -x

declare -A DiceArray
DiceArray=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0)

while [ True ]
do
        Ran=`echo $((RANDOM%6+1));`
        ((DiceArray[$Ran]++));
        if [ "${DiceArray[$Ran]}" -eq 10 ]
        then
        Maximum=$Ran;
break
fi
done
echo "${DiceArray[@]}"
for value in "${!DiceArray[@]}"
do
        echo "$value comes ${DiceArray[$value]} times";
done

