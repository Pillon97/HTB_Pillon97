A **deobfuszkáció** (angolul _deobfuscation_) azt jelenti, hogy egy **szándékosan összezavart, nehezen olvasható vagy értelmezhető kódot vagy adatot visszaalakítunk** olyan formába, ami ember számára ismét átlátható és könnyen érthető.

Ez több területen előfordulhat:

### 1. **Programozásban / kártevőelemzésben**

- A rosszindulatú programok (malware) írói gyakran **obfuszkálnak**: vagyis elrejtik a kód logikáját, funkcióit, például:
    
    - változónevek értelmetlenre cserélése,
        
    - kód töredezetté vagy felesleges műveletekkel bonyolulttá tétele,
        
    - stringek titkosítása.
        
- A **deobfuszkáció** ezeknek a visszafejtése, hogy megértsük, mit csinál a program valójában.
    

### 2. **Webfejlesztésben / JavaScriptben**

- Gyakran obfuszkálják a JavaScriptet, hogy nehezebb legyen ellopni vagy módosítani a kódot.
    
- A deobfuszkáció itt az, amikor egy minified/összezavart kódot **újraformáznak, kicsomagolnak**, hogy olvasható legyen.
    

### 3. **Kriptográfiában / adatoknál**

- Ha adatsorokat elrejtenek (pl. string obfuszkáció), a deobfuszkáció a visszaalakítás az eredeti, tiszta szöveggé.
    

🔑 Röviden:  
**Az obfuszkáció a zavarosítás, a deobfuszkáció pedig ennek a visszafordítása, azaz a kód vagy adat "olvasóbaráttá" tétele.**

Szeretnéd, hogy mutassak egy **konkrét példát** (pl. egy obfuszkált Python vagy JavaScript kódot, és annak deobfuszkált verzióját)?

Hasznos oldalak:
- https://matthewfl.com/unPacker.html 
- https://jsfuck.com/
- https://prettier.io/playground/

Kódolás:
- Base64:
```shell-session
echo https://www.hackthebox.eu/ | base64
```

```shell-session
aHR0cHM6Ly93d3cuaGFja3RoZWJveC5ldS8K
```
- HEX:
```shell-session
echo https://www.hackthebox.eu/ | xxd -p
```

```shell-session
68747470733a2f2f7777772e6861636b746865626f782e65752f0a
```
- rot13
```shell-session
echo https://www.hackthebox.eu/ | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

```shell-session
uggcf://jjj.unpxgurobk.rh/
```