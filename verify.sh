#!/bin/bash

result=$(git log --oneline | wc -l)
answer=2

if [[ $result != $answer ]]
then
    echo "FAIL: the number of commit should be ${answer}"
    exit -1
fi

result=$(git ls-files --others --exclude-standard | wc -l)
answer=0

if [[ $result != $answer ]]
then
    echo "FAIL: the number of untracked file should be ${answer}"
    exit -1
fi



result=$(git log --oneline hello.txt 2>/dev/null | cut  -d ' ' -f2-)
answer="add other files"

if [[ $result != $answer ]]
then
    echo "FAIL"
    exit -1
fi

result=$(git log --oneline world.txt 2>/dev/null | cut  -d ' ' -f2-)
answer="add other files"

if [[ $result != $answer ]]
then
    echo "FAIL"
    exit -1
fi

echo "CONGRATURATION!!"

