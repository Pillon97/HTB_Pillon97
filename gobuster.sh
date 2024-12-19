echo "Ip/hostname:" 
read host
gobuster dir -u $host  --wordlist /home/kali/HTB/common.txt
