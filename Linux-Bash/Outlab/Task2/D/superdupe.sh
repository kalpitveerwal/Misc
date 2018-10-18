#! /bin/bash

sourc=$1
dest=$2

if  [ ! -e $dest ]
then
    mkdir -p -- "${dest%/*}" && touch -- "$dest"
    echo "Copied $sourc"
else
    echo "Not copied $sourc"
fi 
