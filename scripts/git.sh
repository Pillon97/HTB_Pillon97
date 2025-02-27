#!/bin/bash

# Színek a könnyebb olvashatóság érdekében
GREEN="\e[32m"
YELLOW="\e[33m"
RED="\e[31m"
RESET="\e[0m"

# Ellenőrizzük, hogy Git mappában vagyunk-e
if [ ! -d ".git" ]; then
    echo -e "${RED}Ez nem egy git tároló!${RESET}"
    exit 1
fi

# Aktuális dátum és idő lekérdezése
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")

# Változások hozzáadása
echo -e "${YELLOW}➤ Változások hozzáadása...${RESET}"
git add .

# Commit létrehozása
echo -e "${YELLOW}➤ Commit létrehozása...${RESET}"
git commit -m "$CURRENT_DATE"

# Push a távoli tárolóra
echo -e "${YELLOW}➤ Változások feltöltése a távoli tárolóra...${RESET}"
git push

# Sikeres üzenet
echo -e "${GREEN}✔ A változások sikeresen feltöltve a távoli tárolóra.${RESET}"
