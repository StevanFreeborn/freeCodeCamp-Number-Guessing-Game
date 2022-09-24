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