--Установите СУБД MySQL.
-- Создайте в домашней директории файл .my.cnf,
--задав в нем логин и пароль, который указывался при установке.

marinade@MacBook-Air-Marina ~ % mysql
--zsh: command not found: mysql
marinade@MacBook-Air-Marina ~ % export PATH=$PATH:/usr/local/mysql/bin
marinade@MacBook-Air-Marina ~ % mysql -u root -p
--Enter password:
--ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: YES)

marinade@MacBook-Air-Marina ~ % sudo nano my.cnf
--[client]
--user=root
--password=*********

--Password:
marinade@MacBook-Air-Marina ~ % mysql -u root -p
--Enter password:
--Welcome to the MySQL monitor.  Commands end with ; or \g.
--Your MySQL connection id is 27
--Server version: 8.0.23 MySQL Community Server - GPL
--
--Copyright (c) 2000, 2021, Oracle and/or its affiliates.
--
--Oracle is a registered trademark of Oracle Corporation and/or its
--affiliates. Other names may be trademarks of their respective
--owners.
--
--Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SELECT 'Hello world!';
--+--------------+
--| Hello world! |
--+--------------+
--| Hello world! |
--+--------------+
--1 row in set (0.00 sec)

mysql> select * from mysql.user LIMIt 1\G
--*************************** 1. row ***************************
--                    Host: localhost
--                    User: mysql.infoschema
--             Select_priv: Y
--             Insert_priv: N
--             Update_priv: N
--             Delete_priv: N
--             Create_priv: N
--               Drop_priv: N
--             Reload_priv: N
-- (...)