#! /bin/bash

echo "::::::::::::::::::::::::::::::::::::::::"

echo "::Brute-curl::Criado:por::Lucas:Vilela::"
echo ":::Modo de uso::::$0 Site:::"
echo "::::::::::::::::::::::::::::::::::::::::"

echo ":::::::::::Consultando:o:Host:::::::::::"
for diretorios in $(cat /usr/share/dirb/wordlists/common.txt)
do
resp=$(curl -s -H "User-Agent: AOTN" -o /dev/null -w "%{http_code}" $1/$diretorios)
if [ $resp == "200" ]
then
echo "===> Diretorio:encontrado::$1/$diretorios"
fi
done

