
A tűzfal egy hálózatbiztonsági rendszer, amely figyeli és szabályozza a hálózati forgalmat a beállított biztonsági szabályok alapján. Célja a jogosulatlan hozzáférések megakadályozása és a biztonság növelése.

A tűzfal működése a következő elveken alapul:

1. **Csomagszűrés (Packet Filtering)** – Elemzi az adatcsomagok fejlécét (IP-címek, portok, protokollok) és összeveti az előre meghatározott szabályokkal.
2. **Állapotfüggő szűrés (Stateful Inspection)** – Nyomon követi az aktív kapcsolatok állapotát, és csak a már engedélyezett kapcsolatokhoz tartozó csomagokat engedi át.
3. **Proxyszerver alapú szűrés** – A tűzfal közvetítőként működik a kliensek és a szerverek között, elrejtve a belső hálózat struktúráját és ellenőrizve a forgalmat.
4. **Tartalomszűrés (Deep Packet Inspection, DPI)** – Az adatcsomagok tartalmát is elemzi (pl. kártevőket vagy tiltott fájlokat keres).

---

### **Tűzfalak típusai**

#### **1. Hardveres tűzfal**

- Különálló eszközként működik, általában routerekbe vagy vállalati hálózatokba építve.
- Nagy teljesítményű, mivel nem terheli az egyes végpontokat.
- Példa: Cisco ASA, Fortinet, Palo Alto Networks tűzfalak.

#### **2. Szoftveres tűzfal**

- Operációs rendszerre telepíthető alkalmazás.
- Egyéni eszközök védelmére szolgál.
- Példa: iptables (Linux), Windows Defender Firewall.

#### **3. Hálózati tűzfal (Network Firewall)**

- A hálózat és az internet közötti forgalmat szabályozza.
- Gyakran alkalmazzák vállalati környezetben.
- Lehet hardveres vagy szoftveres is.

#### **4. Hosztalapú tűzfal (Host-based Firewall)**

- Egy adott számítógépre vagy szerverre van telepítve.
- Képes egyéni alkalmazásszintű szűrésre is.

#### **5. Felhőalapú tűzfal (Cloud Firewall)**

- Távoli szerveren fut, és felhőszolgáltatáson keresztül nyújt védelmet.
- Skálázható, és nincs szükség helyi telepítésre.
- Példa: Cloudflare, AWS WAF.