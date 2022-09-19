#!/usr/bin/env bash

echo "1. Introduction" > file.txt
echo "    This is the first line." >> file.txt
git add file.txt
git commit -am "Add introduction"
echo "    This is the second line I have forgotten." >> file.txt
git commit -am "Oops!, I have forgotten to add this line."
echo "2. Conclusion" >> file.txt
echo "    This is end of line" >> file.txt
git commit -am "Add conclusion"
