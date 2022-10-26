#!/usr/bin/env bash

# lista-usuarios.exercicio - Extrai usuários de /etc/passwd
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
#	$ ./lista-usuarios.exercicio.sh -s -m
# 	Neste exemplo a saída será em maiúsculo e em ordem alfabética
# 
# -------------------------------------------------------------------
# 
# Histórico:
#
# v1.0.0 25-10-2022
#	- Início do programa
# 	- Funcionalilidade menu de opções
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
	 $FILE_NAME - [OPTIONS]

	 -h - Help Menu
	 -v - Version
	 -s - Sort
"
# ------------------------------------------------------------------


# -------------------------------------------------------------TESTS


# ------------------------------------------------------------------


# ---------------------------------------------------------EXECUTION
[ "$1" = "-h" ] && echo "$MESSAGE" && exit 0
[ "$1" = "-v" ] && echo "$VERSION" && exit 0
[ "$1" = "-s" ] && echo "$USERS" | sort && exit 0

echo "$USERS"
# ------------------------------------------------------------------
