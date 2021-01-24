#!/bin/bash
echo 'please enter the filename to be opened: '
read filename
file=$filename
if [[ -e $file ]]
then
less $filename 
read -n1 -r -p "press any button to open it in geany"
geany $filename
read -n1 -r -p "press any button to view edited file"
less $filename
else echo "file does not exist"
fi
