#!/usr/bin/env bash

# File: guessinggame.sh


echo "Can you guess the number of files in this directory?"

echo "Enter a number followed by the Enter key: "

read guess

function add_files {
	local total_files=$(ls -1 | wc -l)
	echo $total_files
}

secret=$(add_files)

while [[ $guess -ne $secret ]]
do

	if [[ $guess -gt $secret ]]
	then

		echo "Your guess was too high!"

	else [[ $guess -lt $secret ]]

		echo "Your guess was too low!"

	fi

	echo "Try again: "

	read guess


done

echo "Congratulations! Your guess was correct!"
