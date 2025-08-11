
Néha előfordul, hogy egy weboldal **git-es aldomainnel** rendelkezik, és az ügyetlen beállítások miatt lehetőség nyílik a forráskód kinyerésére. Ez nem csak izgalmas, de hasznos gyakorlat is lehet, ha az ember a HTB-n (Hack The Box) vagy más laborkörnyezetben tanul.

**Lépésről lépésre:**
```shell 
mkdir dump 
virtualenv env 
source env/bin/activate 
pip3 install git-dumper 
git-dumper http://domain.com/ dump
git restore .
```
 **Mit csinálunk itt?**

- Létrehozunk egy `dump` könyvtárat, ahová a fájlok kerülnek.
    
- Elkülönített Python környezetet hozunk létre (`virtualenv`), hogy a telepített csomagok ne kavarjanak össze mást a rendszerünkön.
    
- Aktiváljuk a környezetet, majd telepítjük a **git-dumper** eszközt.
    
- A `git-dumper` segítségével letöltjük a `.git` mappát és tartalmát.
    
- Végül a `git restore .` paranccsal visszaállítjuk az eredeti projektfájlokat.
    

💡 **Tipp:** Ez remekül gyakorolható például a HTB “DOG” nevű gépén.