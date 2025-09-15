```
sudo apt install fuff
```
 
### 1. Input és helyettesítés

- `-u URL` → cél URL, pl. `http://site.com/FUZZ`
    
- `-w wordlist.txt` → wordlist megadása
    
- `-request req.txt` → előre mentett HTTP requestből fuzzolás
    
- `-request-proto http/https` → ha request fájlt használsz, itt állíthatod a protokollt
    
- Több `-w` → több fuzz pozícióhoz több wordlist
    

### 2. Kimenet és szűrés

- `-o output.json` → mentés fájlba
    
- `-of json/csv/html/ecsv` → output formátum
    
- `-mc 200,302` → **match by status code**
    
- `-fc 404` → **filter by status code**
    
- `-ms <size>` → match by response size
    
- `-fs <size>` → filter by response size
    
- `-mw <words>` / `-fw <words>` → szűrés szavak száma alapján
    
- `-ml <lines>` / `-fl <lines>` → szűrés sorok száma alapján
    
- `-mr <regex>` → match regex
    
- `-fr <regex>` → filter regex
    

### 3. Sebesség és teljesítmény

- `-t 50` → szálak száma (default 40)
    
- `-timeout 10` → timeout (másodperc)
    
- `-p 0.1` → késleltetés a requestek között (pl. `0.1` másodperc)
    
- `-rate 100` → maximum requests/sec
    

### 4. Host header fuzzing

- `-H "Host: FUZZ"` → host header fuzzing
    
- `-w hosts.txt` → host lista
    

### 5. POST és adat fuzzing

- `-X POST` → HTTP metódus
    
- `-d "user=FUZZ&pass=test"` → POST adatok
    
- `-H "Content-Type: application/x-www-form-urlencoded"` → header hozzáadása
    

### 6. Speciális

- `-recursion` → rekurzív fuzzing
    
- `-recursion-depth 2` → mélység megadása
    
- `-x proxy:port` → proxy használata (pl. Burp: `-x http://127.0.0.1:8080`)
    
- `-ic` → ignore comments (ne vegye figyelembe a HTML megjegyzéseket)


Könyvtárak felsorolása:
```shell
fuff -w /opt/useful/seclists/Discovery/Web-Content/common.txt -u http://link.link:port/FUZZ
```
VHOST:
```
fuff -w /opt/useful/seclists/Discovery/Web-Content/common.txt -u http://link.link:port -H ""
```
Extension felsorolás:
```shell
ffuf -w /opt/useful/seclists/Discovery/Web-Content/web-extensions.txt:FUZZ -u http://link.link:port/indexFUZZ
```
Oldal felsorolás:
```shell
ffuf -w /usr/share/wordlists/seclists/Discovery/Web-Content/directory-list-2.3-big.txt:FUZZ -u http://link.link:port/blog/FUZZ.php
```
Rekurzív:
```shell
ffuf -w /usr/share/wordlists/seclists/Discovery/Web-Content/common.txt:FUZZ -u http://94.237.61.242:38820/FUZZ -mc 200-299,301,302 -recursion -recursion-depth 1 -e .php -v
```
Parameter Fuzzing:
- GET:
```shell
ffuf -w /opt/useful/seclists/Discovery/Web-Content/burp-parameter-names.txt:FUZZ -u http://admin.academy.htb:PORT/admin/admin.php?FUZZ=key -fs xxx
```

- POST:
```shell
ffuf -w /opt/useful/seclists/Discovery/Web-Content/burp-parameter-names.txt:FUZZ -u http://admin.academy.htb:PORT/admin/admin.php -X POST -d 'FUZZ=key' -H 'Content-Type: application/x-www-form-urlencoded' -fs xxx
```
