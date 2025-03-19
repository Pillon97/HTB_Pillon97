Alap command:
 ```
 grep "valami" file
```

Rekurzív keresés:
```
grep -r "valami" /elérési/út
```

Kis-nagy betű ignore:

```
grep -i "valami" fájl
```
Előtte utána sorok kiírása:
	- A  – kiírja a megfelelő bejegyzés utáni sort.
	- B – a megfelelő bejegyzés előtti sort adja ki.
	- C -  a bejegyzés utáni és előtti sorokat is megjeleníti.
```
grep -A1 "valami" fájl
```
