#!/usr/bin/env bash

echo "repeticao 1"

for (( i = 0; i < 3; i++ )); do
 echo $i
done

echo "repeticao 2"

for i in $(seq 3)
do 
 echo $i
done

echo "repeticao 3"

Frutas=(
'Laranja',
'Limao',
'Pera',
'Uva',
'Abacaxi'
)

for i in "${Frutas[@]}"; do
 echo "$i"
done

echo "repeticao 4"

contador=0
while [ $contador -lt ${#Frutas[@]} ]; do
 echo $contador
 contador=$(($contador+1))
done
