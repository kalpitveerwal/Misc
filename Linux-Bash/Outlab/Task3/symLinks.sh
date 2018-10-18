#! /bin/bash
OIFS="$IFS"
IFS=$'\n'
for item in $(find $1 -type l)
do
    echo -n "$item">>$2
echo -n " ">>$2
    echo -n `readlink $item `>>$2
echo -n " ">>$2
    if [[ -d $item ]]
     then echo -n "@">>$2
    else
       echo -n `md5sum $item | cut -f 1 -d " " `>>$2
    fi
echo -n " ">>$2
    if [[ -d $item ]]
      then
       echo -n "1">>$2
    else
        echo -n "0">>$2
fi
echo "">>$2
      
done
IFS="$OIFS"
sort -o $2 $2

  
