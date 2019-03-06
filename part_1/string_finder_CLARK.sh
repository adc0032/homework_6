#!/bin/bash



string_finder () {

linenum=$(grep -i -w -n "$2" $1 |cut -d : -f 1|sed ':a;N;$!ba;s/\n/ /g')
count=$(grep -i -w -c "$2" $1)
filename=$1

echo -------------------------------------------------
echo
echo "Searching Filename: $filename"
echo
echo "There were $count matching lines with the search word"
echo
echo "The search word was found on the following lines: "
echo "$linenum"
}

string_finder $1 $2
