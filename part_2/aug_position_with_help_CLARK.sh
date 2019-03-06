#!/bin/bash


if [[ $1 == "-h" ]]; then

    echo "Enter three arguments with script. Script returns entered arguments in reverse order. Script will not function without three arguments"

elif [[ $# -lt 3 ]]; then

        echo "Not enough arguments given. Try -h for help"
        exit 0
else

    echo $3 $2 $1

fi
