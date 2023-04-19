#! /bin/bash



for palavra in $(cat brutedns.txt) 
do host $palavra.$1 | grep -v "NXDOMAIN" | grep -v "53"
done

