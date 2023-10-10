-- with loc as (
-- -- 	insert into location (name) 
-- -- 	values ('Африка') 
-- -- 	returning id
-- ---or---
-- 	select id
-- 	from location
-- 	where name = 'Африка'
-- )
-- insert into s335047.character (name, location)
-- select 'Джони', id
-- from loc;
--
-- select * from character;
--
-- with le as (
-- 	insert into "live_epoch" (description, time_interval)
-- 	values ('16 век', '{"century": 16}')
-- 	returning id
-- ), bh as (
-- 	insert into "biology_hierarchy" (name, characteristics)
-- 	values ('Камыши', '{"род":"камышовые"}')
-- 	returning id 
-- ), loc as (
-- 	insert into "location" (name)
-- 	values ('Болота')
-- 	returning id
-- )
-- INSERT INTO "biology_entity" ("hierarchy", "name", "live_epoch", "location") 
--      SELECT bh.id, 'Длинные камыши', le.id, loc.id
--      FROM bh, le, loc;
--
-- select * from biology_entity;
--
-- delete from location where id in (13, 14);
--
-- delete from character where id in (7);
--
-- select * from location;
--
-- select * from biology_entity;
--
-- select * from live_epoch where (live_epoch.time_interval->'century')::int between 15 and 16; --jsonb::int
--
-- SELECT * FROM location;
-- 
-- explain 
with loc as (
    select id 
    from location
    where name ~ '^А\S{4,}'
), chrid as (
    select character_id
-- 	select *
    from character_join_biology_entity cjbe
    join protection_method pm 
        on cjbe.biology_entity_id = pm.owner_entity_id
    join biology_entity be 
        on pm.aim_entity_id = be.id
    join live_epoch le
        on be.live_epoch = le.id
    where 
	length(pm.description) > 10
    and 
	length(be.name) in (5, 7)
    and (le.time_interval->'century')::int between 15 and 16
)
select distinct name 
-- select *
from character, loc, chrid
where character.location = loc.id
and character.id = chrid.character_id
order by name;
