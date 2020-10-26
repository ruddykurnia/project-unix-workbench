#!/usr/bin/env bash
# File: guessinggame.sh

echo "Guessing number of file in the current directory"

num_file=$(ls -1 | wc -l)

echo "Input your guess:"
read userinput

while [[ $userinput -ne num_file ]]
do
  if [[ $userinput -gt num_file ]]
  then
  echo "Your guess is too high!"
  else
  echo "Your guess is too low!"
  fi
  
  read userinput
done

echo "Congratulation, your guess is correct!"

