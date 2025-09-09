
A HTTP válaszkódok 5 fő kategóriába tartoznak, az első számjegy alapján:

- **1xx – Információs**
    
- **2xx – Sikeres**
    
- **3xx – Átirányítás**
    
- **4xx – Kliens hiba**
    
- **5xx – Szerver hiba**
    

---

## 🔹 1xx – Információs

Ezek ritkán fontosak fuzzingnál.

- **100 Continue** – a kérés első része rendben van, a kliens küldheti tovább
    
- **101 Switching Protocols** – protokollváltás (pl. HTTP → WebSocket)
    
- **102 Processing** – a szerver dolgozik rajta, de még nincs kész
    

---

## 🔹 2xx – Sikeres

Ez jelzi, hogy a kérés **sikeresen lefutott**.

- **200 OK** – minden rendben, tipikusan jó találat
    
- **201 Created** – új erőforrás jött létre (pl. POST után)
    
- **202 Accepted** – a kérés elfogadva, de még nincs feldolgozva
    
- **204 No Content** – sikeres, de nincs tartalom a válaszban
    

---

## 🔹 3xx – Átirányítás

Valami máshova mutat.

- **301 Moved Permanently** – végleges átirányítás
    
- **302 Found** – ideiglenes átirányítás (gyakran login után)
    
- **303 See Other** – másik URL-en érhető el az erőforrás
    
- **307 Temporary Redirect** – átmeneti átirányítás, metódus megtartva
    
- **308 Permanent Redirect** – végleges átirányítás, metódus megtartva
    

---

## 🔹 4xx – Kliens hibák

A kliens (te) rossz kérést küldtél – fuzzingnál gyakori.

- **400 Bad Request** – hibás kérés (szintaxis hiba)
    
- **401 Unauthorized** – hitelesítés kell
    
- **403 Forbidden** – tilos a hozzáférés (de létezik az oldal → fontos jelzés!)
    
- **404 Not Found** – nem található (klasszikus "nincs ilyen könyvtár/fájl")
    
- **405 Method Not Allowed** – a HTTP metódus nem engedélyezett
    
- **408 Request Timeout** – a kliens túl lassan küldte a kérést
    
- **429 Too Many Requests** – túl sok kérés (rate limit)
    

---

## 🔹 5xx – Szerver hibák

A szerver oldali hiba történt. Sokszor érdekes, mert hibás konfigurációt vagy sérülékenységet jelezhet.

- **500 Internal Server Error** – általános szerverhiba
    
- **501 Not Implemented** – a szerver nem támogatja ezt a funkciót
    
- **502 Bad Gateway** – a szerver upstream hibát kapott
    
- **503 Service Unavailable** – túlterhelt, vagy karbantartás alatt
    
- **504 Gateway Timeout** – proxy/időzítés hiba
    
- **505 HTTP Version Not Supported** – a szerver nem támogatja a kért HTTP verziót
    

---

## 🚀 Pentest / Fuzzing szempontból fontos

- **200** – jó találat (oldal létezik)
    
- **204** – oldal létezik, de üres → lehet érdekes endpoint
    
- **301 / 302** – átirányítás, érdemes megnézni hova
    
- **403** – létezik, de tiltott → gyakran érzékeny könyvtár
    
- **404** – tipikus "nem létezik", de ha más méretű, lehet trükkös
    
- **500+** – hibás konfiguráció vagy sérülékeny backend jele lehet