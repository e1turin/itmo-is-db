/*
- Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры
  по указанным условиям: 

  Таблицы: `Н_ЛЮДИ`, `Н_ВЕДОМОСТИ`. 

  Вывести атрибуты: `Н_ЛЮДИ.ИМЯ`, `Н_ВЕДОМОСТИ.ИД`. 

  Фильтры (`AND`):
    - `Н_ЛЮДИ.ФАМИЛИЯ < Афанасьев`.
    - `Н_ВЕДОМОСТИ.ИД > 39921`.
    - `Н_ВЕДОМОСТИ.ИД < 1250981`. 

  Вид соединения: `INNER JOIN`. 
*/

SELECT Н_ЛЮДИ.ИМЯ, Н_ВЕДОМОСТИ.ИД
FROM Н_ЛЮДИ
INNER JOIN Н_ВЕДОМОСТИ 
   ON Н_ЛЮДИ.ИД = Н_ВЕДОМОСТИ.ЧЛВК_ИД
WHERE Н_ЛЮДИ.ФАМИЛИЯ < 'Афанасьев'
   AND Н_ВЕДОМОСТИ.ИД > 39921
   AND Н_ВЕДОМОСТИ.ИД < 1250981;

/* "QUERY PLAN"
"Gather  (cost=1111.39..7614.95 rows=8324 width=17) (actual time=0.650..25.405 rows=7295 loops=1)"
"  Workers Planned: 2"
"  Workers Launched: 2"
"  ->  Hash Join  (cost=111.39..5782.55 rows=3468 width=17) (actual time=0.423..19.373 rows=2432 loops=3)"
"        Hash Cond: (""Н_ВЕДОМОСТИ"".""ЧЛВК_ИД"" = ""Н_ЛЮДИ"".""ИД"")"
"        ->  Parallel Seq Scan on ""Н_ВЕДОМОСТИ""  (cost=0.00..5456.25 rows=81802 width=8) (actual time=0.016..11.892 rows=65438 loops=3)"
"              Filter: ((""ИД"" > 39921) AND (""ИД"" < 1250981))"
"              Rows Removed by Filter: 8709"
"        ->  Hash  (cost=108.68..108.68 rows=217 width=17) (actual time=0.338..0.339 rows=214 loops=3)"
"              Buckets: 1024  Batches: 1  Memory Usage: 19kB"
"              ->  Bitmap Heap Scan on ""Н_ЛЮДИ""  (cost=5.96..108.68 rows=217 width=17) (actual time=0.166..0.292 rows=214 loops=3)"
"                    Recheck Cond: ((""ФАМИЛИЯ"")::text < 'Афанасьев'::text)"
"                    Heap Blocks: exact=78"
"                    ->  Bitmap Index Scan on ""ФАМ_ЛЮД""  (cost=0.00..5.91 rows=217 width=0) (actual time=0.146..0.146 rows=214 loops=3)"
"                          Index Cond: ((""ФАМИЛИЯ"")::text < 'Афанасьев'::text)"
"Planning Time: 0.491 ms"
"Execution Time: 25.809 ms" 
*/
