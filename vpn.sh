echo "Valassz ki melyik vpn-re szeretnl csatlakozni:"
echo "1. Academy"
echo "2. Lab"

read -p "Vlaszd ki a szamot:" valasz

case $valasz in
	1)
		vpn=academy-regular.ovpn
	;;
	2)
		vpn=lab_Pillon97.ovpn
	;;
esac


sudo openvpn $vpn
