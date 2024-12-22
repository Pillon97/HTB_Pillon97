#!/bin/bash

# Banner megjelenítése
clear
echo "#########################################################################"
echo "#                                                                       #"
echo "#     ██████╗ ██╗██╗     ██╗      ██████╗ ███╗   ██╗ █████╗ ███████╗    #"
echo "#     ██╔══██╗██║██║     ██║     ██╔═══██╗████╗  ██║██╔══██╗╚════██║    #"
echo "#     ██████╔╝██║██║     ██║     ██║   ██║██╔██╗ ██║╚██████║    ██╔╝    #"
echo "#     ██╔═══╝ ██║██║     ██║     ██║   ██║██║╚██╗██║ ╚═══██║   ██╔╝     #"
echo "#     ██║     ██║███████╗███████╗╚██████╔╝██║ ╚████║ █████╔╝   ██║      #"
echo "#     ╚═╝     ╚═╝╚══════╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝ ╚════╝    ╚═╝      #"
echo "#                                                                       #"
echo "#########################################################################"
echo "#                                 Tools:                                #"
echo "#                         1. vpn      4. gobuster                       #"
echo "#                         2. nmap     5. feezer                         #"
echo "#                         3. ncat     6. ncat                           #"
echo "#                                 7. git                                #"
echo "#                                                                       #"
echo "#########################################################################"

# Választási lehetőségek megjelenítése
echo ""
echo "Válassz egy eszközt (1-7), vagy nyomj Ctrl+C-t a kilépéshez:"
read -p "> " choice

# Választás kezelése
case $choice in
    1) echo "VPN indítása..." ;;
    2) echo "Nmap indítása..." ;;
    3) echo "Ncat indítása..." ;;
    4) echo "Gobuster indítása..." ;;
    5) echo "Feezer indítása..." ;;
    6) echo "Ncat újraindítása..." ;;
    7) echo "Git indítása..." ;;
    *) echo "Érvénytelen választás!" ;;
esac
