#!/bin/bash
intRegExp='^[+-]?[1-9]*\.?([0-9]+)+$'

unorderedOddList=()
unorderedEvenList=()

sortFunction(){
    printf '%s\n' "$@" | sort -n
}

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
echo "even list contain $( printf "%s\n" "${unorderedEvenList[@]}" | sort -n )";
echo "odd list contain $( printf "%s\n" "${unorderedOddList[@]}" | sort -n )";
  exit 0
fi
