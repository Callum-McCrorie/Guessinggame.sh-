#!/usr/bin/env bash
# file: guessinggame.sh


function guessloop {
  while [[ $response -ne $correct_number ]]
  do
    if [[ $response -lt $correct_number ]]
    then 
      echo "your guess is two low. Try again."
      read response 
    elif [[ $response -gt correct_number ]]
    then
      echo "your guess is two high. try again"
      read response 
    fi 
  done 
  echo "congratulations"
}
echo "please enter how meany files you think are in the current directory"
read response 
correct_number=$(ls | wc -l)
guessloop response correct_number
