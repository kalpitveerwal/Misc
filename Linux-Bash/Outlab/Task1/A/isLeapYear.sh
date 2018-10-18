#! /bin/bash

year=$1
if ! [[ $year =~ ^[0-9]+$ ]] 
  then
    echo "Invalid argument!"
elif (( $year<=0 ))
then
  echo "Invalid argument!" 
elif (( $year%100==0 ))
then
  if (( ($year/100)%4 ==0))
     then echo "Leap Year!"
  else 
     echo "Not a leap year."
  fi
elif (( $year%4==0 ))
then
  echo "Leap Year!"
else
  echo "Not a leap year."
fi
  

