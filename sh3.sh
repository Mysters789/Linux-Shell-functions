#!/bin/bash
$ cat $@ > parameters.txt
$sum=0; while read num ; do sum=$(($sum + $num)); done < parameters.txt ;
echo added=$sum
count=1
for i in $*
do
echo parameter $count is $i
let count=count+1
done
echo "number of input numbers =" $#
echo $((($sum) / ($#)))
rm parameters.txt
