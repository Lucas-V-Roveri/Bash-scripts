#! /bin/bash



for palavra in $(cat brutedns.txt) 
do host -t cname $palavra.$1 | grep "alias for"
done

