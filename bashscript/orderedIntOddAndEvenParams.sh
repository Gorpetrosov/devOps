#!/bin/bash
intRegExp='^[+]?[1-9]*\.?([0-9]+)+$'

unorderedOddList=()
unorderedEvenList=()

if [ $# -lt 1 ]; then
  echo "Arguments missing"
  exit 1
else
  for i in $@; do
    if ! [[ $i =~ $intRegExp ]]; then
      echo $i "is not a sortable number"
      continue
    fi
    if [[ $(expr $i % 2) == 0 ]]; then
      unorderedEvenList+=($i)
    fi
    if [[ $(expr $i % 2) == 1 ]]; then
      unorderedOddList+=($i)
    fi
  done
  echo "Even arguments are: " "${unorderedEvenList[@]}" | sort;
  echo "Odds arguments are: " "${unorderedOddList[@]}" | sort;
  exit 0
fi
