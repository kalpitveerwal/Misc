BEGIN{
    FS=","
 }
{   if(NR>1){
    { if ($4>=2000) a[$3]+=$5}
}
}
END {
    for (i in a)
    {print i","a[i] | "sort"
    }
}
