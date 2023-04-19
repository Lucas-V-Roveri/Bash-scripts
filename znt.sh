#! /bin/bash

if [ $1 == "" ]
then
	echo "::Zone:::::Tranfer::::::Tester::"
	echo ":Criado por Lucas Vilela Roveri:"
	echo ":::::Modo:de:uso:::$0:host::::::"
else
	for server in $(host -t ns $1 | cut -d " " -f4)
	do host -l -a $1 $server
	done
fi
