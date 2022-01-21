#!/bin/bash
###############################################################
# the scrips gets integers(0 and positive) parameters         #
# returned factorial for each parameter                       #
###############################################################
positiveIntRegExp='^[0-9]+$'
function sumIntFactorial() {
  local n=$1
  if [[ $n -eq 0 ]]; then
    echo 1
  else
    echo $((n * $(sumIntFactorial $n-1)))
  fi
}

if [ $# -lt 1 ]; then
  echo "Arguments count must be less then 1"
  exit 1
else
  for i in $@; do
    if ! [[ $i =~ $positiveIntRegExp ]]; then
      echo $i "is not a factorial based number, it should be positive int"
       continue
    fi
    echo "$i factorial is " $(($(sumIntFactorial $i)))
  done

  exit 0
fi
