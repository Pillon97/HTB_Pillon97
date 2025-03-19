### **A SIEM rendszerek fő funkciói**

1. **Adatgyűjtés (Log Collection)**
    
    - A SIEM rendszerek különböző forrásokból gyűjtik a naplóadatokat, például:
        - Rendszerek (Windows Event Log, Linux Syslog)
        - Hálózati eszközök (tűzfalak, IDS/IPS rendszerek, routerek)
        - Alkalmazások és adatbázisok
        - Felhőszolgáltatások és VPN-ek
        - Felhasználói aktivitások
2. **Normalizálás és indexelés**
    
    - A különböző formátumú naplókat egységes struktúrába alakítja, hogy könnyebben feldolgozhatóak legyenek.
    - Példa: Egy Windows és egy Linux napló más formátumú, de a SIEM rendszer egységesíti ezeket.
3. **Eseménykorreláció**
    
    - Összeveti a különböző rendszerekből érkező adatokat, hogy összefüggéseket találjon és gyanús viselkedéseket azonosítson.
    - Példa:
        - Egy felhasználó rövid időn belül több helyről próbál bejelentkezni (lehetséges brute-force támadás).
        - Egy tűzfalon tömeges bejövő kapcsolatblokkolás után egy szerver szokatlan adatforgalmat generál (esetleges támadás).
4. **Riasztások és incidenskezelés**
    
    - A gyanús vagy veszélyes tevékenységekről automatikusan riasztást küld a biztonsági csapatnak.
    - Beállíthatók **automatizált válaszok**, például:
        - Gyanús IP-címek blokkolása
        - Felhasználói fiókok zárolása
        - Tűzfal szabályok frissítése
5. **Vizualizáció és riportok**
    
    - Grafikonokat, táblázatokat és jelentéseket készít, hogy a biztonsági csapat könnyebben átláthassa az eseményeket.
    - Segít az **auditálásban** és a megfelelőségben (pl. GDPR, ISO 27001).

---

### **SIEM rendszerek működésének folyamata**

1️⃣ **Naplók és események gyűjtése**  
2️⃣ **Adatok normalizálása és feldolgozása**  
3️⃣ **Eseménykorreláció és anomáliaérzékelés**  
4️⃣ **Riasztások küldése és incidenskezelés**  
5️⃣ **Riportok készítése és biztonsági elemzés**