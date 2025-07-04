Pentest:
- A "Pentest" célja teljes rendszer sebezhetőségének feltárása és azonosítása, valamint a tesztelt rendszerek biztonságának javítása.
Risk management:
- Az IT-biztonsági kockázatkezelés fő célja a szervezet információs rendszereinek és adatainak bizalmasságát, integritását és rendelkezésre állását károsító potenciális kockázatok azonosítása, értékelése és enyhítése, valamint az általános kockázat elfogadható szintre csökkentése.
- Fontos megjegyezni, hogy egy behatolásvizsgálat nem az informatikai infrastruktúra vagy rendszerek monitorozása, hanem a biztonsági állapot pillanatképének elkészítése.
Vulnerability Assessments:
- Egy y általános kifejezés, amely magában foglalhatja a sebezhetőségi vagy biztonsági felméréseket és a penetrációs teszteket. A penetrációs tesztekkel ellentétben a sebezhetőségi vagy biztonsági felméréseket tisztán automatizált eszközökkel végzik.
**Vizsgálati módszerek:**
- Külső vizsgálat:
	- Sok behatolásvizsgálatot külső szemszögből vagy anonim felhasználóként hajtunk végre az interneten. 
	- A legtöbb ügyfél a lehető legnagyobb mértékben szeretné biztosítani magát a külső hálózati peremén lévő támadásokkal szemben. 
	- A tesztelést elvégezhetjük saját hostunkról (remélhetőleg VPN-kapcsolatot használva, hogy elkerüljük az internetszolgáltatónk blokkolását), vagy VPS-ről. 
	- Egyes ügyfeleket nem érdekel a lopakodás, míg mások azt kérik, hogy a lehető legcsendesebben járjunk el, a célrendszerekhez úgy közelítve meg a rendszert, hogy elkerüljük a tűzfaltiltásokat, az IDS/IPS észlelését és a riasztásokat. Kérhetnek lopakodó vagy „hibrid” megközelítést, ahol fokozatosan „zajosabbá” válunk az észlelési képességeik tesztelése érdekében. 
	- Végső soron a célunk a külső hosztokhoz való hozzáférés, az érzékeny adatok megszerzése vagy a belső hálózathoz való hozzáférés.
- Belső vizsgálat:
	- A külső behatolásvizsgálattal ellentétben a belső behatolásvizsgálat az, amikor a vállalati hálózaton belülről végzünk tesztelést. 
	- Ez a szakasz végrehajtható a vállalati hálózatba való sikeres behatolás után a külső behatolásvizsgálaton keresztül, vagy egy feltételezett behatolási forgatókönyvből kiindulva. 
	- A belső behatolásvizsgálatok elszigetelt, internet-hozzáférés nélküli rendszerekhez is hozzáférhetnek, ami általában megköveteli a fizikai jelenlétünket az ügyfél telephelyén.
