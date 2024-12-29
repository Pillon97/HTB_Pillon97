echo "Ip/hostname:" 
read host
gobuster dir -u $host  --wordlist common.txt
