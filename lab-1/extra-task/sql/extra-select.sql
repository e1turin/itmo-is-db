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