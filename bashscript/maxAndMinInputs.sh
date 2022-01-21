#!/bin/bash
intRegExp='^[+-]?[1-9]*\.?([0-9]+)+$';
minArg=$1;
maxArg=$1;

if [ $# -lt 2 ]
 then
 echo "Arguments count must be greather then 1"
 exit 1
else
 for i in $@
 do
    if ! [[ $i =~ $intRegExp ]]
    then
    echo $i "is not a number";
    exit 1;
    fi
    if [[ $i -gt $maxArg ]]
    then
    maxArg=$i;
    fi
    if [[ $i -lt $minArg ]]
    then
    minArg=$i;
    fi
 done
echo "Max argument is: " $maxArg;
echo "Min argument is: " $minArg;
exit 0;
fi
