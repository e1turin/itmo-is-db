with loc as (
    insert into locations (name)
    values ('Северный край')
    RETURNING id
)
insert into aviaries (name, location_id)
select 'Арктический', loc.id
from loc;


insert into animals_foods (animal_id, food_id)
select a.id, f.id
from ( 
    select id 
    from animals 
    where name ~* 'медведь'
) a, (
    select id
    from foods,
    where name ~* 'медвежий'
    and amount > 10
) f;