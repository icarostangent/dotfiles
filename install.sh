#!/bin/bash


echo "[*] Installing dot files to $HOME"

BASENAME=$( basename $0 )
DIR=$(dirname $0 )

for file in $( ls -A -I .git -I $BASENAME $DIR ); 
    do echo "[+] Copying file $file" && cp -R $DIR/$file $HOME; 
done 

