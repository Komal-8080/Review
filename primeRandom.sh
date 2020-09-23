#!/bin/bash -x

j=0
f=0
while [ $j -eq 1 ]
do
num=`echo %((RANDOM%99999+1000))
echo "$num"
for (( i=2; i*i<=$num; i++ ))
do
if [ $((num%i)) -eq 0 ];
then
f=1
fi
done
if [ $f -eq 1 ];
then
echo "$num is not prime "
break
fi
((j++))
done
echo "count=$i"
