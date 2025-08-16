#!/bin/bash

# Ellenőrizzük, hogy megadtál-e argumentumot
if [ -z "$1" ]; then
  echo "Használat: ./nmap.sh <host>"
  exit 1
fi
# A megadott host
HOST=$1
MACHINE=$2
# Nmap futtatása az alap script és verzió detektálással
whoami
nmap -sC -sV "$HOST" -oN $HOME/HTB_Pillon97/machines/$MACHINE/$HOST/nmap.txt
