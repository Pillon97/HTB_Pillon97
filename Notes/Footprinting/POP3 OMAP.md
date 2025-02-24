https://donsutherland.org/crib/imap
NMAP
```
nmap 10.129.14.128 -sV -p110,143,993,995 -sC
```
OPENSSL
```
openssl s_client -connect 10.129.14.128:imaps
```
CURL
```
curl -k 'imaps://10.129.14.128' --user user:p4ssw0rd
```
valami