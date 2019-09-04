#!/bin/bash

tar -zxf "$1" --directory "$2"

dirString="$1"
newDir=${dirString/.tgz}

cd "$newDir"

#SAFETY FIRST! Use this variable so we don't get the target grep pattern in our script
deleteStr="DELETE"

# remove the list of files (found by grep) that contain the target pattern (DELETE + ME!)
rm $(grep "${deleteStr} ME!" $(ls) -l)

cd ..

cleanedStr="cleaned_${newDir}.tgz"
tar -czf $cleanedStr $newDir 

echo "done"
