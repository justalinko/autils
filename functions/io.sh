#!/bin/bash

# function get files.
get_file()
{
    cat $1
}

# function write_file
# $1 = filename , $2 = content , $3 = type ( append , write )
write_file()
{
    touch $1
    
    if [ $3 != "" ]
    then
        
        if [  $3 == "append" ]
        then
            echo "$2" >> $1
        else if [ $3 == "write" ]
            echo "$2" > $1
        fi
        
    else
        echo "$2" > $1
    fi
    
}

# function str_replace
# $1 = search , $2 = replace , $3 = string
str_replace() {
    replace=$(echo $3 | sed "s|$1|$2|g")
    echo $replace
}