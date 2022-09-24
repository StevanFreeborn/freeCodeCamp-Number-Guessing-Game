#!/bin/bash

PSQL="psql --csv -U freecodecamp number_guess --tuples-only -c"

SECRET_NUMBER=$((($RANDOM % 1000) + 1))

echo "Enter your username:"
read USERNAME

USER=$($PSQL "SELECT username, games_played, best_game FROM users WHERE username = '$USERNAME';")

if [[ -z $USER ]]
then
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES ('$USERNAME', 0, 0);")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  IFS=',' read USERNAME GAMES_PLAYED BEST_GAME <<< $USER
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:"
read GUESS

NUMBER_OF_GUESSES=1

while [[ $GUESS != $SECRET_NUMBER ]]
do
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  elif [[ $GUESS > $SECRET_NUMBER ]]
  then
    echo "It's lower than that guess again:"
  elif [[ $GUESS < $SECRET_NUMBER ]]
  then
    echo "It's higher than that guess again:"
  fi

  read GUESS

  NUMBER_OF_GUESSES=$(($NUMBER_OF_GUESSES + 1))
done

echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"