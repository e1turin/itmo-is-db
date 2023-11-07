/* 
- Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры
  по указанным условиям: 

  Таблицы: `Н_ЛЮДИ`, `Н_ВЕДОМОСТИ`, `Н_СЕССИЯ`. 

  Вывести атрибуты: `Н_ЛЮДИ.ФАМИЛИЯ`, `Н_ВЕДОМОСТИ.ЧЛВК_ИД`, `Н_СЕССИЯ.ДАТА`. 

  Фильтры (`AND`):
    - `Н_ЛЮДИ.ФАМИЛИЯ = Иванов`.
    - `Н_ВЕДОМОСТИ.ДАТА < 2022-06-08`. 

  Вид соединения: `RIGHT JOIN`. 
*/

/* Returns nothing */
SELECT Н_ЛЮДИ.ФАМИЛИЯ, Н_ВЕДОМОСТИ.ЧЛВК_ИД, Н_СЕССИЯ.ДАТА
FROM Н_ЛЮДИ
RIGHT JOIN Н_ВЕДОМОСТИ 
  ON Н_ЛЮДИ.ИД = Н_ВЕДОМОСТИ.ЧЛВК_ИД
RIGHT JOIN Н_СЕССИЯ
  ON Н_ЛЮДИ.ИД = Н_СЕССИЯ.ЧЛВК_ИД
WHERE Н_ЛЮДИ.ФАМИЛИЯ = 'Иванов'
  AND Н_ВЕДОМОСТИ.ДАТА < '2022-06-08'; -- all records before 2012

/* "QUERY PLAN"
"Nested Loop  (cost=86.53..400.69 rows=1237 width=28) (actual time=0.964..0.966 rows=0 loops=1)"
"  Join Filter: (""Н_ЛЮДИ"".""ИД"" = ""Н_ВЕДОМОСТИ"".""ЧЛВК_ИД"")"
"  ->  Hash Join  (cost=86.24..204.62 rows=28 width=32) (actual time=0.458..0.949 rows=5 loops=1)"
"        Hash Cond: (""Н_СЕССИЯ"".""ЧЛВК_ИД"" = ""Н_ЛЮДИ"".""ИД"")"
"        ->  Seq Scan on ""Н_СЕССИЯ""  (cost=0.00..108.52 rows=3752 width=12) (actual time=0.007..0.449 rows=3752 loops=1)"
"        ->  Hash  (cost=85.68..85.68 rows=45 width=20) (actual time=0.097..0.097 rows=45 loops=1)"
"              Buckets: 1024  Batches: 1  Memory Usage: 11kB"
"              ->  Bitmap Heap Scan on ""Н_ЛЮДИ""  (cost=4.63..85.68 rows=45 width=20) (actual time=0.034..0.079 rows=45 loops=1)"
"                    Recheck Cond: ((""ФАМИЛИЯ"")::text = 'Иванов'::text)"
"                    Heap Blocks: exact=30"
"                    ->  Bitmap Index Scan on ""ФАМ_ЛЮД""  (cost=0.00..4.62 rows=45 width=0) (actual time=0.024..0.024 rows=45 loops=1)"
"                          Index Cond: ((""ФАМИЛИЯ"")::text = 'Иванов'::text)"
"  ->  Index Scan using ""ВЕД_ЧЛВК_FK_IFK"" on ""Н_ВЕДОМОСТИ""  (cost=0.29..6.15 rows=68 width=4) (actual time=0.002..0.002 rows=0 loops=5)"
"        Index Cond: (""ЧЛВК_ИД"" = ""Н_СЕССИЯ"".""ЧЛВК_ИД"")"
"        Filter: (""ДАТА"" < '2022-06-08 00:00:00'::timestamp without time zone)"
"Planning Time: 0.641 ms"
"Execution Time: 1.018 ms" 
*/
