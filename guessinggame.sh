#!/bin/bash

#Function to play the guessing game
play_game(){
local correct_answer=$(ls -1 | wc -l)
local guess=-1

echo "Welcome to the guessing game!"
echo "Can you guess how many files are in the current directory?"

while[[ $guess -ne $correct_answer ]]; do
	read -p "Enter your guess: " guess
	if[[$guess -lt $correct_answer ]]; then
		echo "Too low! Try again."
	elif [[ $guess -gt $correct_guess]]; then
		echo "Too high! Try again."
	else
		echo "Congratulations! You guessed the correct number of the files!"
	fi
done
}

#Start the game
play_game
