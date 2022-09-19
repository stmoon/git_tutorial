#!/bin/bash

result=$(git log --oneline | wc -l)
answer=2

if [[ $result != $answer ]]
then
    echo "FAIL: the number of commit is expected as ${answer}"
    exit -1
fi

result=$(git log --oneline hello.txt 2>/dev/null | cut  -d ' ' -f2-)
answer="add hello.txt"

if [[ $result != $answer ]]
then
    echo "FAIL"
    exit -1
fi

echo "CONGRATURATION!!"

