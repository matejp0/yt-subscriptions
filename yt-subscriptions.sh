#!/bin/bash

let num=0
while IFS=, read -r id url name
do
    if [[ $num -gt 0 ]]
        then echo "$name	$id" >> "$2"
        else num=$((var++))
    fi
done < "$1"
