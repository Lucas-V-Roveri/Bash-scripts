#! /bin/bash
for ip in $(seq $2 $3 )
do
host -t ptr $1.$ip
done

