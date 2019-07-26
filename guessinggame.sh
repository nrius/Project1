#!/usr/bin/env bash
#File: guessinggame.sh
#Usage: Ask the user for a guess on the number of files in the directory. After every guess say if the guess was correct, too high or too low. Keep asking until the guess is correct.
#Author: NRius 2019/07

function game {
n_files=$(  ls | wc -l )

while [[ $guess != $n_files ]]
do

echo "Try to guess the number of files in this directory. Enter a number:"
read guess

	if [[ $guess = $n_files ]]; then
		echo "Congratulations! Your guess is right!!!"

	elif [[ $guess -lt $n_files ]]; then
		echo "Your guess is too low"
		
	elif [[ $guess -gt $n_files ]]; then
		echo "Your guess is too high"
	else
		echo "There is something wrong with your guess"
		exit 1
	fi
done	
}

game