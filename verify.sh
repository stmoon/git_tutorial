#!/bin/bash

result=$(git log --oneline | wc -l)
answer=2

if [[ $result != $answer ]]
then
    echo "FAIL: the number of commit should be ${answer}"
    exit -1
fi

result=$(git log --pretty=format:"%s" -1 file.txt 2>/dev/null)
answer="lowercase filename"

if [[ $result != $answer ]]
then
    echo "FAIL: the merged equation is wrong (answer: $answer)"
    exit -1
fi


echo "CONGRATURATION!!"
