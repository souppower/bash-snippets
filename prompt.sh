#!/bin/bash -Ceu

echo -n "Are you sure? (Y/n)"

answer=
while [[ ! $answer ]]; do
    read -r -n 1 -s answer
    if [[ $answer = [Yy] ]]; then
        answer="yes"
    elif [[ $answer = [Nn] ]]; then
        answer="no"
    fi
done

printf "\n%s\n" $answer