#!/bin/bash

fact ()
{
    if [ $1 -gt 1 ]; then
        let y=`expr $1 - 1`
        let res=$(fact $y)

        x=$(( $1 * $res ))
        echo $x 

    else
        echo 1
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

ans=$(fact $num)
echo $ans
#echo "$?"

exit 0

































































































































