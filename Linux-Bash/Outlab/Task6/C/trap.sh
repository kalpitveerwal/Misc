#! bin/bash

applyLure() {
   (awk -f lure.awk $1) | cat > loki.csv
   exit 0
}

trap 'applyLure $1' 2


while (true)
do
    sleep 1
   
done


