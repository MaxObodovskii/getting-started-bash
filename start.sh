#! /usr/local/bin/bash

printf "Hello `whoami`!\n"
printf "Today's date is $(date)\n"
printf "You are here => $(pwd)\n"
read -p "Give me the answer to the universe: " answer
if [ $answer = "42" ]
then
    echo "Damn right it is!"
else
    echo "So wrong!"
fi
