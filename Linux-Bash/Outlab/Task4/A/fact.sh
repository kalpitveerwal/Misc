#!/bin/bash

fact ()
{
    if [ $1 -gt 1 ]; then
        y=`expr $1 - 1`
        fact $y

        x=$(( $1 * $? ))
        return $x

    else
        return 1
    fi
}

num=$1

if ! [[ "$num" =~ ^[0-9]+$ ]] 
  then
    echo "-"
    exit 1
elif ((num<0))
then 
  echo "-"
  exit 1
fi

fact $num

echo $?

































































































































