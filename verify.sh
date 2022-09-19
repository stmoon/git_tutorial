#!/bin/bash

result=$(git log --oneline | wc -l)
answer=2

if [[ $result != $answer ]]
then
    echo "FAIL: the number of commit should be ${answer}"
    exit -1
fi

result=$(git log --pretty=format:"%s" -1)
answer="Add Hello world"

if [[ $result != $answer ]]
then
    echo "FAIL: the merged equation is wrong (answer: $answer)"
    exit -1
fi

echo "CONGRATURATION!!"
