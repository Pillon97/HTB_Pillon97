#!/bin/bash

TARGET="$HOME/HTB/git.sh"
SOURCE="$HOME/HTB/scripts/git.sh"

# Célkönyvtár létrehozása, ha nem létezik
mkdir -p "$(dirname "$TARGET")"

# Ha még nincs ott a link/fájl
if [ -e "$TARGET" ]; then
    echo "Már létezik: $TARGET"
else
    ln -s "$SOURCE" "$TARGET"
    echo "Szimbólikus link létrehozva: $TARGET → $SOURCE"
fi

# Színkódok
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
WHITE="\e[37m"
RESET="\e[0m"
BOLD="\e[1m"

# Banner megjelenítése
# clear
echo -e "${GREEN}#########################################################################"
echo -e "#                                                                       #"
echo -e "#     ██████╗ ██╗██╗     ██╗      ██████╗ ███╗   ██╗ █████╗ ███████╗    #"
echo -e "#     ██╔══██╗██║██║     ██║     ██╔═══██╗████╗  ██║██╔══██╗╚════██║    #"
echo -e "#     ██████╔╝██║██║     ██║     ██║   ██║██╔██╗ ██║╚██████║    ██╔╝    #"
echo -e "#     ██╔═══╝ ██║██║     ██║     ██║   ██║██║╚██╗██║ ╚═══██║   ██╔╝     #"
echo -e "#     ██║     ██║███████╗███████╗╚██████╔╝██║ ╚████║ █████╔╝   ██║      #"
echo -e "#     ╚═╝     ╚═╝╚══════╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝ ╚════╝    ╚═╝      #"
echo -e "#                                                                       #"
echo -e "#########################################################################"
echo -e "#                                 Tools:                                #"
echo -e "#                         1. vpn      4. gobuster                       #"
echo -e "#                         2. nmap     5. FFuF                           #"
echo -e "#                         3. ncat     6. ping                           #"
echo -e "#                                 7. git                                #"
echo -e "#                                                                       #"
echo -e "#########################################################################"

# Választási lehetőségek megjelenítése
echo ""
echo -e "${BOLD}Válassz egy eszközt (1-7), vagy nyomj Ctrl+C-t a kilépéshez:${RESET}"
read -p "> " choice

# Választás kezelése
case $choice in
    1)
	echo -e "${GREEN}VPN indítása...${RESET}" 
	./vpn.sh 
	;;
    2) echo -e "${GREEN}Nmap indítása...${RESET}"
	./nmap.sh
	;;
    3) echo -e "${GREEN}Ncat indítása...${RESET}"
	./ncat.sh
	;;
    4) echo -e "${GREEN}Gobuster indítása...${RESET}" 
	./gobuster.sh
	;;
    5) echo -e "${GREEN}FFuF indítása...${RESET}" 
	./ffuf.sh;;
    6) echo -e "${GREEN}Ping újraindítása...${RESET}" ;;
    7) echo -e "${GREEN}Git indítása...${RESET}" 
	./git.sh
	;;
    *) echo -e "${RED}Érvénytelen választás!${RESET}" ;;
esac
