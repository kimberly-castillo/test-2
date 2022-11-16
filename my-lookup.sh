#!/bin/bash

# checking if the user input is not empty and checking for the txt extension
# also briefing user on the proper format
if [ -z $1 ] && [ -z $2 ] && [ -z $3 ] && [[ $1 == *".txt" ]]; then
    echo " "
    echo "You need to provide three arguments for this script to work."
    echo "Usage: my-lookup <name of text file> <last name>"
    echo "Be sure to put '.txt' when entering the text file name"
    echo " "
fi

echo "working..."

    FILENAME="$HOME/$1"

# checking if the file exists
    if [ -f "$FILENAME" ]; then
    # if the file exists use the regex below to return the names with letters only
        grep -P "^[a-zA-Z]+(?: [a-zA-Z]+)* ($2)$" $FILENAME
        echo " "
        echo "Goodbye!"
    else
    # if the file does not exist, we brief the user with an error
        echo " "
        echo "There is no such file as $1"
        echo " "
    fi
