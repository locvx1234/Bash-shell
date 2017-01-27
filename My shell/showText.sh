#!/bin/bash
# Filename : showText.sh 
# Date 28/01/2017

if ! which toilet > /dev/null; then
        apt-get install toilet -y
fi

if [ $# -gt 0 ]
then
        filename=$1
else
        echo "Need input arguments"
        echo "Usage : "showText.sh agrs1 args2 agrs3""
        exit 1
fi
clear
for f in $*
do
                toilet $f |
                while IFS= read -r line
                do
                COLOR="\e[1;$((31 + RANDOM % 7));40;5m" ; COLORNOMAL="\e[0m"
                printf "$COLOR$line$COLORNOMAL\n"
                sleep 0.1
                done
done

read
