#!/usr/bin/env bash

: '

Neste pequeno exercício, vamos validar um pouco do conhecimento adquirido em relação às variáveis reservadas, bem como a correta utilização da condicional If.



Então, escreva um código que faça o seguinte:

Validar se o primeiro parâmetro enviado é maior que 10

Se for maior, mostre uma mensagem na tela com o nome do script e seu respectivo PID de execução



DICA: Tem um anexo neste módulo com TODAS as opções possíveis para o comando If.



Bons estudos! :)

Questions for this assignment
Qual código em Shell Script irá atingir o que foi requisitado?

'

ARG=$1
IS_NUM=0

echo $ARG | grep -q "^[0-9]*$" && IS_NUM=1 || IS_NUM=0

if [ $IS_NUM -eq 0 ]
then
	echo "Argumento numerico requerido"
	exit 1
fi

NPID=$$
SCRIPT_NAME=$0

[ $ARG -gt 10 ] && echo "O primeiro argumento é maior que 10: file: $SCRIPT_NAME pid: $NPID"
