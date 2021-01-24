#!/bin/bash
echo 'please enter a number: '
read number
case $number in
"1") echo "number is 1";;
*) echo "number is not 1";;
esac
