#!/usr/bin/env bash

: '
Agora, já sabemos trabalhar com variáveis e condicionais. Hora de testar os nossos conhecimentos com laços.

Faça o seguinte código:



Um laço que conte de 0 a 10

A cada iteração, verifique se o número é divisível por 2

Se ele for divisível por 2, escreva uma mensagem na tela confirmando isso



DICA: Se o resto da divisão por 2 for...



Bons estudos! :)



Questions for this assignment
Qual código em Shell Script irá atingir o que foi requisitado?
'


for i in $(seq 0 10);
do
 result=$(($i%2))
 [ $result -eq 0 ] && echo "$i é par"
done
