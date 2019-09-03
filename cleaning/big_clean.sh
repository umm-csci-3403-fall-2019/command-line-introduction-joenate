#!/bin/bash

tar -zxf $1 --directory $2
cd big_dir

#SAFETY FIRST
var1="DELETE"
rm $(grep "${var1} ME!" $(ls) -l)
echo "done"
