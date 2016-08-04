#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
export PATH
name='x'

for n in $(seq 1 17768) #seq是连续的意思，从1到100
do
  #通过awk和printf将数字变为三位并前面补0的数字，并赋值给num，
  num=$(echo $n|awk '{printf("%010d\n",$0)}') 
  echo ${name}${num}
done
