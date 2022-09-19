#!/bin/bash

result=$(git log --oneline | wc -l)
answer=3

if [[ $result != $answer ]]
then
    echo "FAIL: the number of commit should be ${answer}"
    exit -1
fi

result=$(git log --pretty=format:"%s" | sed -n 1p)
answer="Add conclusion"

if [[ $result != $answer ]]
then
    echo "FAIL: the merged equation is wrong (answer: $answer)"
    exit -1
fi

result=$(git log --pretty=format:"%s" | sed -n 2p)
answer="Add introduction"

if [[ $result != $answer ]]
then
    echo "FAIL: the merged equation is wrong (answer: $answer)"
    exit -1
fi


echo "CONGRATURATION!!"
