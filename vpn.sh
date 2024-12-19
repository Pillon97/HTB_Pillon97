echo "Valassz ki melyik vpn-re szeretnl csatlakozni:"
echo "1. Academy"
echo "2. Lab"
echo "3. exit"

read -p "Vlaszd ki a szamot:" vpn1

case $vpn1 in
	1)
		vpn=academy
	;;
	2)
		vpn=lab
	;;
	3)
		exit
	;;
	*)
		echo "Rossz karaktert adtál meg!"
esac
echo "Válassz protocolt:"
echo  "1. tcp"
echo "2. udp"
echo "3. exit"

read -p "Válaszd ki a számot:" vpn2
case $vpn2 in
	1)
		prot=tcp
	;;
	2)
		prot=udp
	;;
	3)
		exit
	;;
	*)
		echo "Rossz karakter adtál meg!"
		exit
	;;
esac


sudo openvpn "$vpn-$prot.ovpn"
