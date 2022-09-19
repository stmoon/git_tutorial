#!/bin/bash

result=$(git log --oneline hello.txt 2>/dev/null | cut  -d ' ' -f2-)
answer="add hello.txt"

if [[ $result != $answer ]]
then
    echo "FAIL"
    exit -1
fi

result=$(git log --oneline world.txt 2>/dev/null | cut  -d ' ' -f2-)
answer="add world.txt"

if [[ $result != $answer ]]
then
    echo "FAIL"
    exit -1
fi

echo "CONGRATURATION!!"

