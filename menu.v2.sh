#!/usr/bin/env bash

# menu - Extrai usuários de /etc/passwd
#
# site:       https://4lessandrodev.com
# Autor:      Alessandro
# Manutenção  Alessandro
#
# -------------------------------------------------------------------
#
# Irá extrais usuários de /etc/passwd, havera a possibilidade
# de colocar em uppercase e em ordem alfabetica
#
# Exemplos:
#	$ ./menu.sh -s -m
# 	Neste exemplo a saída será em maiúsculo e em ordem alfabética
# 
# -------------------------------------------------------------------
# 
# Histórico:
#
# v1.0.0 25-10-2022
#	- Início do programa
# 	- Funcionalilidade menu de opções
#	- Opções de comandos -s -v -h
# v1.1.0
#	- Refatorar o menu para utilizar case
# 	- Implementado a opção -m para colocar em uppercase
#
# ------------------------------------------------------------------
#
# Testado em:
#	bash v5.1.16
#
# ------------------------------------------------------------------


# ---------------------------------------------------------VARIABLES
USERS="$(cat /etc/passwd | cut -d : -f 1)"
FILE_NAME="$0"
VERSION="v1.0.0"
MESSAGE="
	 $(basename $FILE_NAME) - [OPTIONS]

	 -h - Help Menu
	 -v - Version
	 -s - Sort
	 -m - To Upper Values
"
SORT_VALUES=0;
UPPER_VALUES=0;
# ------------------------------------------------------------------


# ---------------------------------------------------------EXECUTION
case "$1" in 
	-h) echo "$MESSAGE" && exit 0      ;;
	-v) echo "$VERSION" && exit 0      ;;
	-m) UPPER_VALUES=1 	           ;;
	-s) SORT_VALUES=1		   ;;
	 *) echo "$USERS"                  ;;
 esac

 [ $SORT_VALUES -eq 1 ] && echo "$USERS" | sort
 [ $UPPER_VALUES -eq 1 ] && echo "$USERS" | tr [a-z] [A-Z]
# ------------------------------------------------------------------
