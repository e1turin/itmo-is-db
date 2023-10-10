with loc as (
	insert into s335047.location (name) 
	values ('Африка') 
	returning id
)
insert into s335047.character (name, location)
select 'Джони', id
from loc;