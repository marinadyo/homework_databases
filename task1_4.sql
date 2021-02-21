-- 4. (по желанию) Ознакомьтесь более
-- подробно с документацией утилиты mysqldump.
--Создайте дамп единственной таблицы help_keyword
--базы данных mysql. Причем добейтесь того, чтобы дамп
--содержал только первые 100 строк таблицы.

marinade@MacBook-Air-Marina ~ % mysqldump -uroot -p mysql help_keyword --where="1 limit 100" > new_keys.sql

--Enter password:
marinade@MacBook-Air-Marina ~ %