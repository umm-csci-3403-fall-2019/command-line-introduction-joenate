#!/bin/bash

tar -zxf $1 --directory $2

dirString=$1
newDir=${dirString/.tgz}

cd $newDir

#SAFETY FIRST!
deleteStr="DELETE"
rm $(grep "${deleteStr} ME!" $(ls) -l)

cleanedStr="../cleaned_${newDir}.tgz"
tar -czf $cleanedStr ../$newDir 

echo "done"
