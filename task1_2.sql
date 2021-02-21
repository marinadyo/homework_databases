-- Создайте базу данных example,
--разместите в ней таблицу users,
--состоящую из двух столбцов,
--числового id и строкового name.

marinade@MacBook-Air-Marina ~ % mysql -u root -p
--Enter password:
--Welcome to the MySQL monitor.  Commands end with ; or \g.
--Your MySQL connection id is 30
--Server version: 8.0.23 MySQL Community Server - GPL
--
--Copyright (c) 2000, 2021, Oracle and/or its affiliates.
--
--Oracle is a registered trademark of Oracle Corporation and/or its
--affiliates. Other names may be trademarks of their respective
--owners.
--
--Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
--+--------------------+
--| Database           |
--+--------------------+
--| information_schema |
--| mysql              |
--| performance_schema |
--| sys                |
--+--------------------+
--4 rows in set (0.12 sec)

mysql> create database Example;
--Query OK, 1 row affected (0.08 sec)

mysql> show databases;
--+--------------------+
--| Database           |
--+--------------------+
--| Example            |
--| information_schema |
--| mysql              |
--| performance_schema |
--| sys                |
--+--------------------+
--5 rows in set (0.00 sec)

mysql> use Example
--Database changed
mysql> create table users (id serial primary key, names varchar (255) not null);
--Query OK, 0 rows affected (0.15 sec)

mysql> create database Sample;
--Query OK, 1 row affected (0.01 sec)

mysql> show databases;
--+--------------------+
--| Database           |
--+--------------------+
--| Example            |
--| information_schema |
--| mysql              |
--| performance_schema |
--| Sample             |
--| sys                |
--+--------------------+
--6 rows in set (0.00 sec)

mysql> exit
--Bye
marinade@MacBook-Air-Marina ~ % mysqldump -uroot -p Example > Sample.sql
--Enter password:

