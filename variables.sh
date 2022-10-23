#!/usr/bin/env bash

NAME="AlessandroDev"
AGE=21

echo "$NAME $AGE"

items=5
itemPrice=18
total=$((items * itemPrice))

echo "$total"

ON_TERMINAL="$(cat /etc/passwd | grep alessandro)"

echo "$ON_TERMINAL"
