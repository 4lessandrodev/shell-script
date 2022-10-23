#!/usr/bin/env bash

VAR1=""
VAR2=""

if [ "$VAR1" = "$VAR2" ]; then
  echo "Primeira condicional"
fi

if [ "$VAR1" = "$VAR2" ]
then
  echo "Segunda condicional"
fi

if test "$VAR1" = "$VAR2"
then 
  echo "Terceira condicional"
fi

if [ "$VAR1" = "$VAR2" ]
then
  echo "Quarta condicional"
fi

[ "$VAR1" = "$VAR2" ] && echo "Quinta condicional"
