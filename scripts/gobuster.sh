echo "Ip/hostname:" 
read host
gobuster dir -u $host  --wordlist /usr/share/wordlists/seclists/Discovery/Web-Content/common.txt
