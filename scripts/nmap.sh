#!/bin/bash

# Ellenőrizzük, hogy megadtál-e argumentumot
if [ -z "$1" ]; then
  echo "Használat: ./nmap.sh <host>"
  exit 1
fi

# A megadott host
TARGET=$1

# Nmap futtatása az alap script és verzió detektálással
nmap -sC -sV "$TARGET"
