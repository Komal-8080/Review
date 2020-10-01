#!/bin/bash -x

shopt -s extglob

echo "Enter The Word"
read word
pat="^[codinclub]{1,9}"
if [[ $word =~ $pat ]];
then
echo "Match Found"
else
echo "Match not Found"
fi
