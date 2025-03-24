 NMAP: 
```
namp "ip" -sV -sC -p 25
```
METASPLOIT (use, options, set, run):
```
msfconsole
```

```
search smtp enum
```
SMTP-USER-ENUM:
```
apt install smtp-user-enum
```

```
smtp-user-enum -U HTB/footprinting-wordlist.txt -t 10.129.42.195 25 
```