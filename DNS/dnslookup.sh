#! /bin/bash

if [ "$1" == "" ]
then
echo ":::::::::::::::::::::::::::::::::"
echo "::::DNSlookup::::::::::::AOTN::::"
echo "::Modo de uso::$0::site.com.br::"
echo ":::::::::::::::::::::::::::::::::"
else
alvo=$1
func=("A" , "SOA")
contador=0
for funcoes in func
do
echo "############################################"
host -t ${func[$contador]} $alvo
contador=contador+1
echo "############################################"
done

fi
