echo "Ip/hostname:" 
if [ -z "$1" ]; then
  echo "Használat: ./gobuster.sh <host>"
  exit 1
fi
HOST=$1
OUT=$2
gobuster dir -u "$HOST"  --wordlist /usr/share/seclists/Discovery/Web-Content/common.txt -o "$OUT/gobuster.txt"
