#!/bin/bash
echo 
echo Menu
echo
echo 'press 1 and enter: Open an editor to create/edit a poem '
echo 'press 2 and enter: Run a word count on the poem '
echo 'press 3 and enter: Open poem using MORE or LESS '
echo 'press 4 and enter: Sort the poem out, and display it using CAT or MORE '
echo 'press 5 and enter: exit '
read reply
echo 'enter filename: '
read $filename
case $reply in
"1") geany $filename ;;
"2") $filename | wc -c ;;
"3") echo 'Use MORE or LESS? '
read $ML
$ML $filename ;;
"4") sort -o $filename result.txt
echo 'Display result using CAT or MORE? '
read $responce
$responce result.txt ;;
"5")stop=1 ;;
*) echo illegal choice ;;
esac
done
