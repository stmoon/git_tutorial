#!/bin/bash

result=$(git log --oneline | wc -l)
answer=5

if [[ $result != $answer ]]
then
    echo "FAIL: the number of commit should be ${answer}"
    exit -1
fi

result=$(git status -s  equation.txt)
if [[ $result != "" ]]
then
    echo "FAIL: the equation.txt is not correctly committed"
    exit -1
fi

result=$(cat equation.txt)
answer="2 + 3 = 5"

if [[ $result != $answer ]]
then
    echo "FAIL: the merged equation is wrong (answer: $answer)"
    exit -1
fi

echo "CONGRATURATION!!"
