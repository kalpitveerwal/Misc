#! /bin/bash

sourc=$1
dest=$2

for i in $(find $sourc -type f)
do
  bash superdupe.sh $i $2${i#$1}
done
